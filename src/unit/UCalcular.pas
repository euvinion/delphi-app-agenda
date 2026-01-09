unit UCalcular;

interface

uses Vcl.Controls;

procedure ScaleBase(Base: TWinControl; W, H: Integer);

implementation

procedure ScaleBase(Base: TWinControl; W, H: Integer);
begin
  if (W = 0) or (H = 0) then Exit;
  Base.ScaleBy(Base.Parent.ClientWidth, W);
end;

end.
                     s
