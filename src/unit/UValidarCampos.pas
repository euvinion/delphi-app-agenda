unit UValidarCampos;

interface

uses
  System.SysUtils, Vcl.StdCtrls, Vcl.Dialogs;

function CampoObrigatorio(Edit: TCustomEdit; const Msg: string): Boolean;

implementation

function CampoObrigatorio(Edit: TCustomEdit; const Msg: string): Boolean;
begin
  Result := Trim(Edit.Text) <> '';

  if not Result then
  begin
    ShowMessage(Msg);
    Edit.SetFocus;
  end;
end;

end.

