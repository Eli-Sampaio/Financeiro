unit Financeiro.View.Splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  dxGDIPlusClasses, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFormSplash = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    LabelStatusProgressBar: TLabel;
    ProgressBar1: TProgressBar;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSplash: TFormSplash;

implementation

{$R *.dfm}

procedure TFormSplash.Timer1Timer(Sender: TObject);
begin
  if ProgressBar1.Position <= 100 then
  begin
    ProgressBar1.StepIt;
    case ProgressBar1.Position of
      10 : LabelStatusProgressBar.Caption := 'Carregando Dependências...';
      25 : LabelStatusProgressBar.Caption := 'Conectando ao banco de dados...';
      50 : LabelStatusProgressBar.Caption := 'Carregando as Configurações...';
      75 : LabelStatusProgressBar.Caption := 'Iniciando o Sistema...';
    end;
  end;
  if ProgressBar1.Position = 100 then
    Close;
end;

end.
