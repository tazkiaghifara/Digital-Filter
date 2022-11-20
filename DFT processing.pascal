procedure TForm1.btn3Click(Sender: TObject);
var i, j : Integer;
begin
  for i:=0 to ndat-1 do
  begin
    re := 0;
    im := 0;
    for j:=0 to ndat do
    begin
      re := re + signal[j]*cos(2*pi*i*j/ndat);
      im := im - signal[j]*sin(2*pi*i*j/ndat);
    end;
    Xre[i] := re;
    Xim[i] := im;
  end;

  for i := 0 to ndat-1 do
  begin
    ampdft[i] := (1/ndat)*sqrt(Sqr(xre[i])+Sqr(xim[i]));
  end;

  for i := 0 to Round(ndat-1) do
  begin
    Series4.AddXY((i*fs)/ndat, ampdft[i]);
  end;
end;
