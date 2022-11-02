program Financeiro;

uses
  Vcl.Forms,
  Financeiro.View.Principal in 'View\Financeiro.View.Principal.pas' {FrmPrincipal},
  Financeiro.View.Splash in 'View\Financeiro.View.Splash.pas' {FormSplash};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
