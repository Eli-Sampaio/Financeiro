unit Financeiro.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmPrincipal = class(TForm)
    MainMenu: TMainMenu;
    Cadastros1: TMenuItem;
    Cadastros2: TMenuItem;
    Ajuda1: TMenuItem;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses
  Financeiro.View.Splash;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  FormSplash := TFormSplash.Create(nil);
  try
    FormSplash.ShowModal;
  finally
    FreeAndNil(FormSplash);
  end;
end;

end.
