uses crt;

var
  l, p, i, t, k, max, w: integer;
  s: real;
   n: array[1..30] of integer;
   r: array[1..30] of string;
  r2: array[1..30] of string;
  r3: array[1..30] of string;
   a: array[1..30] of string;
   q: array[1..30] of integer; 

begin
  k := 0;
  max := 30;
  
r[1] := 'ala ae f - крыло';
r[2] := 'apertura ae f - отверстие';
r[3] := 'arteria ae f - артерия';
r[4] := 'aqua ae f - вода';
r[5] := 'bucca ae f - щека';
r[6] := 'bursa ae f - сумка';
r[7] := 'clavicula ae f - ключица';
r[8] := 'concha ae f - раковина';
r[9] := 'crista ae f - гребень';
r[10] := 'dentura ae f - ряд зубов';
r[11] := 'eminentia ae f - возвышение';
r[12] := 'fibula ae f - малая берцовая кость';
r[13] := 'fossa ae f - ямка';
r[14] := 'fractura ae f - перелом';
r[15] := 'gingiva ae f - десна';
r[16] := 'glandula ae f - железа';
r[17] := 'gutta ae f - капля';
r[18] := 'incisura ae f - вырезка';
r[19] := 'lamina ae f - пластинка';
r[20] := 'linea ae f - линия';
r[21] := 'lingua ae f - язык';
r[22] := 'mandibula ae f - нижняя челюсть';
r[23] := 'maxilla ae f - верхняя челюсть';
r[24] := 'medulla ae f - спинной мозг';
r[25] := 'papilla ae f - сосочек';
r[26] := 'plica ae f - складка';
r[27] := 'pulpa ae f - пульпа';
r[28] := 'pustula ae f - гнойничок';
r[29] := 'rima ae f - щель';
r[30] := 'saliva ae f - слюна';  
  
  for c: integer :=1 to max do begin
    p:= pos ('-',r[c]);
    r2[c]:=copy (r[c],1,p+1);
    l:= length (r[c]) - length (r2[c]);
    r3[c]:=copy (r[c],p+2,l);
  end;
  
  for c: integer :=1 to max do begin
    n[c]:=0;
    q[c]:=1;
    end;
    
  i:=0;
  
  while i<max do begin
  
  t:= random (max)+1;
  if n[t] = 0 then begin
    
      write ('Продолжите: ');
      write (r2[t]);
      readln (a[t]);
      if (a[t]= r3[t]) or
      (a[t]= r3[t])
        
        then begin
      writeln ('Правильно');
      writeln ('');
      n[t]:=1;
      i:=i+1;
      end
        else begin
      writeln ('Неправильно');
      write ('Правильный ответ: ');
      writeln (r3[t]);
      writeln ('');
      k:=k+1;
      q[t]:=0;
      end;
      end;
      end;
  s:=(max-k)/max*100;
  if s<1 then s:=0.9;
  write ('Процент правильности: ',s:0:1,'%');
  if s<50 then
    write ('   Иди учись!');
  if s>90 then
    write ('   Браво!');
  writeln ('');
  
  if k>0 then begin
  writeln ('');
  writeln ('============================================================================================================================================================');
  writeln ('');
  writeln ('Закрепление:');
  writeln ('');
  
  i:=0;
  w:=0;
  
  for c: integer :=1 to max do begin
    if q[c]=0 then w:=w+1;
    end;
  
  while i<w do begin
  
  t:= random (max)+1;
  if q[t] = 0 then begin
 
      write ('Продолжите: ');
      write (r2[t]);
      readln (a[t]);
      if (a[t]= r3[t]) or
      (a[t]= r3[t])
        
        then begin
      writeln ('Правильно');
      writeln ('');
      q[t]:=1;
      i:=i+1;
      end
        else begin
      writeln ('Неправильно');
      write ('Правильный ответ: ');
      writeln (r3[t]);
      writeln ('');
      end;
      end;
      end;
      end;
      
  writeln ('');
  writeln ('');
end.