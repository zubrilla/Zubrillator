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
  
r[1] := 'крыло - ala ae f';
r[2] := 'отверстие - apertura ae f';
r[3] := 'артерия - arteria ae f';
r[4] := 'вода - aqua ae f';
r[5] := 'щека - bucca ae f';
r[6] := 'сумка - bursa ae f';
r[7] := 'ключица - clavicula ae f';
r[8] := 'раковина - concha ae f';
r[9] := 'гребень - crista ae f';
r[10] := 'ряд зубов - dentura ae f';
r[11] := 'возвышение - eminentia ae f';
r[12] := 'малая берцовая кость - fibula ae f';
r[13] := 'ямка - fossa ae f';
r[14] := 'перелом - fractura ae f';
r[15] := 'десна - gingiva ae f';
r[16] := 'железа - glandula ae f';
r[17] := 'капля - gutta ae f';
r[18] := 'вырезка - incisura ae f';
r[19] := 'пластинка - lamina ae f';
r[20] := 'линия строчка - linea ae f';
r[21] := 'язык - lingua ae f';
r[22] := 'нижняя челюсть - mandibula ae f';
r[23] := 'верхняя челюсть - maxilla ae f';
r[24] := 'спинной мозг - medulla ae f';
r[25] := 'сосочек - papilla ae f';
r[26] := 'складка - plica ae f';
r[27] := 'пульпа мякоть - pulpa ae f';
r[28] := 'гнойничок - pustula ae f';
r[29] := 'щель - rima ae f';
r[30] := 'слюна - saliva ae f';  
  
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