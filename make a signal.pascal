procedure TForm1.btn1Click(Sender: TObject);
var i, geser : Integer;
begin
  a1 := StrToFloat(edt1.Text);
  a2 := StrToFloat(edt2.Text);
  a3 := StrToFloat(edt3.Text);
  f1 := StrToFloat(edt4.Text);
  f2 := StrToFloat(edt5.Text);
  f3 := StrToFloat(edt6.Text);
  fs := StrToInt(edt7.Text);
  ndat := StrToInt(edt10.Text);

  for i:=1 to ndat do
  begin
    signal[i] := (a1*sin(2*f1*pi*i/fs)) + (a2*sin(2*f2*pi*i/fs)) + (a3*cos(2*pi*f3*i/fs));
    Series1.AddXY(i/fs, signal[i]);
  end;
end;
