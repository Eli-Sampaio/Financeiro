program Financeiro;

uses
  Vcl.Forms,
  Financeiro.View.Principal in 'Financeiro.View.Principal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
