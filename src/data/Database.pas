unit Database;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Phys, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    FDManager1: TFDManager;
    FDConnection1: TFDConnection;
    QryAgenda: TFDQuery;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    DS: TDataSource;
    QryCadastro: TFDQuery;
    procedure DSDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses FAgenda;

{$R *.dfm}

procedure TDM.DSDataChange(Sender: TObject; Field: TField);
begin
  if not QryAgenda.IsEmpty then
    FrmAgenda.Memo.Text :=
      QryAgenda.FieldByName('obs').AsString
  else
    FrmAgenda.Memo.Clear;
end;

end.
