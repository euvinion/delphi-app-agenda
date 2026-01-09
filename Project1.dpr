program Project1;

uses
  Vcl.Forms,
  FAgenda in 'src\view\FAgenda.pas' {FrmAgenda},
  Database in 'src\data\Database.pas' {DM: TDataModule},
  FCadastroNovo in 'src\view\cadastro\FCadastroNovo.pas' {FrmNovo},
  UValidarCampos in 'src\unit\UValidarCampos.pas',
  UCalcular in 'src\unit\UCalcular.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmAgenda, FrmAgenda);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmNovo, FrmNovo);
  Application.Run;
end.
