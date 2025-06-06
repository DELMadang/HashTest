unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    Edit1: TEdit;
    benExcute: TButton;
    Memo1: TMemo;
    procedure benExcuteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  System.Hash;

procedure TfrmMain.benExcuteClick(Sender: TObject);
  procedure Log(const AName, AValue: string);
  begin
    Memo1.Lines.Add(Format('Alogrithm: %s', [AName]));
    Memo1.Lines.Add(AValue);
    Memo1.Lines.Add('');
  end;
begin
  var LData := Edit1.Text;

  Log('MD5', THashMD5.GetHashString(LData));
  Log('SHA1', THashSHA1.GetHashString(LData));
  Log('SHA2/SHA224', THashSHA2.GetHashString(LData, SHA224));
  Log('SHA2/SHA256', THashSHA2.GetHashString(LData, SHA256));
  Log('SHA2/SHA384', THashSHA2.GetHashString(LData, SHA384));
  Log('SHA2/SHA512', THashSHA2.GetHashString(LData, SHA512));
  Log('SHA2/SHA512_224', THashSHA2.GetHashString(LData, SHA512_224));
  Log('SHA2/SHA512_256', THashSHA2.GetHashString(LData, SHA512_256));
  Log('BobJenkins', THashBobJenkins.GetHashString(LData));
  Log('FNV1a32', THashFNV1a32.GetHashString(LData));
  Log('FNV1a64', THashFNV1a64.GetHashString(LData));
end;


end.
