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
    Panel4: TPanel;
    ImageCarregaDependencia: TImage;
    ImageConectaDb: TImage;
    ImageCarregaConfig: TImage;
    ImageInciaSistema: TImage;
    procedure Timer1Timer(Sender: TObject);
  private
    procedure AtualizaStatus(Mensagem: String; Image: TImage);
  public
    { Public declarations }
  end;

var
  FormSplash: TFormSplash;

implementation

{$R *.dfm}

procedure TFormSplash.AtualizaStatus(Mensagem: String; Image: TImage);
begin
  LabelStatusProgressBar.Caption := Mensagem;
  Image.Visible := True;
end;

procedure TFormSplash.Timer1Timer(Sender: TObject);
begin
  if ProgressBar1.Position <= 100 then
  begin
    ProgressBar1.StepIt;
    case ProgressBar1.Position of
      10 : AtualizaStatus ('Carregando Dependências...', ImageCarregaDependencia);
      25 : AtualizaStatus ('Conectando ao banco de dados...', ImageConectaDb);
      50 : AtualizaStatus ('Carregando as Configurações...', ImageCarregaConfig);
      75 : AtualizaStatus ('Iniciando o Sistema...', ImageInciaSistema);
    end;
  end;
  if ProgressBar1.Position = 100 then
    Close;
end;

end.
