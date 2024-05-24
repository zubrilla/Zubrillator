uses crt;

var
  l, p, i, t, k, max, w: integer;
  s: real;
   n: array[1..27] of integer;
   r: array[1..27] of string;
  r2: array[1..27] of string;
  r3: array[1..27] of string;
   a: array[1..27] of string;
   q: array[1..27] of integer; 

begin
  k := 0;
  max := 27;
  
r[1] := 'хороший - bonus a um';
r[2] := 'лучший - melior ius';
r[3] := 'наилучший - optimus a um';
r[4] := 'плохой - malus a um';
r[5] := 'худший - peior ius';
r[6] := 'наихудший - pessimus a um';
r[7] := 'большой - magnus a um';
r[8] := 'больший - major ius';
r[9] := 'наибольший - maximus a um';
r[10] := 'малый - parvus a um';
r[11] := 'меньший - minor minus';
r[12] := 'наименьший - minimus a um';
r[13] := 'передний - anterior ius';
r[14] := 'нижний - inferior ius';
r[15] := 'задний - posterior ius';
r[16] := 'верхний - superior ius';
r[17] := 'вспомогательный - adjuvans ntis';
r[18] := 'формообразующий - constituens ntis';
r[19] := 'исправляющий - corrigens ntis';
r[20] := 'деформирующий - deformans ntis';
r[21] := 'скрытый - latens ntis';
r[22] := 'проникающий - penetrans ntis';
r[23] := 'прободающий - perforans ntis';
r[24] := 'постоянный - permanens ntis';
r[25] := 'выступающий - prominens ntis';
r[26] := 'получающий - recipiens ntis';
r[27] := 'мельчайший - subtilissimus a um';
  
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