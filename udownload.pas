unit udownload;

interface

uses
  System.Actions, System.UITypes,
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs,
  StdCtrls, Buttons, ComCtrls, Windows,
  ACBrBase, ACBrDownload, ACBrDownloadClass,
  httpsend, blcksock;

type
  Tfrmdownload = class(TForm)
    bDownload: TBitBtn;
    bStop: TBitBtn;
    bPause: TBitBtn;
    ProgressBar1: TProgressBar;
    fACBrDownload: TACBrDownload;
    procedure bStopClick(Sender: TObject);
    procedure bDownloadClick(Sender: TObject);
    procedure bPauseClick(Sender: TObject);
    procedure cbxBufferSizeChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure HookMonitor(Sender: TObject; const BytesToDownload, BytesDownloaded: Integer; const AverageSpeed: Double; const Hour, Min, Sec: Word);
    procedure HookStatus(Sender: TObject; Reason: THookSocketReason; const BytesToDownload, BytesDownloaded: Integer);
    procedure fACBrDownloadAfterDownload(Sender: TObject);
  private { private declarations }
    caminho : string;
    arquivo : string;
  public { public declarations }
  end;

var
  frmdownload: Tfrmdownload;

function dlg_atualizaco_quipos:boolean;

implementation

{$R *.dfm}

uses uConstantes;

function dlg_atualizaco_quipos:boolean;
begin
  frmdownload := Tfrmdownload.Create(nil);
  frmdownload.Show;
  Result := True;
end;

procedure Tfrmdownload.bDownloadClick(Sender: TObject);
begin
  fACBrDownload.DownloadDest    := caminho;
  fACBrDownload.DownloadNomeArq := arquivo;
  fACBrDownload.DownloadUrl     := _path_download_atualizacao;
  fACBrDownload.StartDownload;
end;

procedure Tfrmdownload.bPauseClick(Sender: TObject);
begin
  fACBrDownload.DownloadStatus := stPause;
end;

procedure Tfrmdownload.cbxBufferSizeChange(Sender: TObject);
begin
  fACBrDownload.SizeRecvBuffer := 65536;
end;

procedure Tfrmdownload.fACBrDownloadAfterDownload(Sender: TObject);
begin
  if fACBrDownload.DownloadStatus <> stDownload then
  begin
    exit;
  end;
  if messagedlg('Download concluído com sucesso!'#13'Realizar a atualização agora?', mtinformation, [mbyes, mbno], 0) = mryes then
  begin
    WinExec(PAnsiChar('atualizacao.exe'), 1);
    Application.Terminate;
  end;
  frmdownload.free;
end;

procedure Tfrmdownload.FormCreate(Sender: TObject);
begin
  fACBrDownload.Protocolo := protHTTP;
  caminho := ExtractFilePath(Application.ExeName);
  arquivo := 'atualizacao.exe';
end;

procedure Tfrmdownload.bStopClick(Sender: TObject);
begin
  fACBrDownload.DownloadStatus := stStop;
end;

procedure Tfrmdownload.HookMonitor(Sender: TObject; const BytesToDownload: Integer; const BytesDownloaded: Integer; const AverageSpeed: Double; const Hour: Word; const Min: Word; const Sec: Word);
var
  sConnectionInfo: string;
begin
  ProgressBar1.Position := BytesDownloaded;
  sConnectionInfo := sConnectionInfo + '  -  ' + Format('%.2d:%.2d:%.2d', [Sec div 3600, (Sec div 60) mod 60, Sec mod 60]);
  sConnectionInfo := FormatFloat('0.00 KB/s'  , AverageSpeed) + sConnectionInfo;
  sConnectionInfo := FormatFloat('###,###,##0', BytesDownloaded / 1024) + ' / ' +
                     FormatFloat('###,###,##0', BytesToDownload / 1024) +' KB  -  ' + sConnectionInfo;
end;

procedure Tfrmdownload.HookStatus(Sender: TObject; Reason: THookSocketReason; const BytesToDownload, BytesDownloaded: Integer);
begin
  case Reason of
    HR_Connect :
    begin
      ProgressBar1.Position := 0;
      bDownload.Enabled := False;
      bPause.Enabled    := True;
      bStop.Enabled     := True;
    end;
    HR_ReadCount :
    begin
      ProgressBar1.Max        := BytesToDownload;
      ProgressBar1.Position   := BytesDownloaded;
    end;
    HR_SocketClose :
    begin
      case fACBrDownload.DownloadStatus of
        stStop :
        begin
          ProgressBar1.Position  := 0;
          Caption := 'Download Encerrado...';
        end;
        stPause : Caption := 'Download Pausado...';
        stDownload : Caption := 'Download Finalizado.';
      end;
      bDownload.Enabled := True;
      bPause.Enabled    := False;
      bStop.Enabled     := False;
    end;
  end;
end;

end.

