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
    Label2: TLabel;
    ProgressBar1: TProgressBar;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSplash: TFormSplash;

implementation

{$R *.dfm}

end.
