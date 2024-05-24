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
  
r[1] := 'bonus a um - хороший';
r[2] := 'melior ius - лучший';
r[3] := 'optimus a um - наилучший';
r[4] := 'malus a um - плохой';
r[5] := 'peior ius - худший';
r[6] := 'pessimus a um - наихудший';
r[7] := 'magnus a um - большой';
r[8] := 'major ius - больший';
r[9] := 'maximus a um - наибольший';
r[10] := 'parvus a um - малый';
r[11] := 'minor minus - меньший';
r[12] := 'minimus a um - наименьший';
r[13] := 'anterior ius - передний';
r[14] := 'inferior ius - нижний';
r[15] := 'posterior ius - задний';
r[16] := 'superior ius - верхний';
r[17] := 'adjuvans ntis - вспомогательный';
r[18] := 'constituens ntis - формообразующий';
r[19] := 'corrigens ntis - исправляющий';
r[20] := 'deformans ntis - деформирующий';
r[21] := 'latens ntis - скрытый';
r[22] := 'penetrans ntis - проникающий';
r[23] := 'perforans ntis - прободающий';
r[24] := 'permanens ntis - постоянный';
r[25] := 'prominens ntis - выступающий';
r[26] := 'recipiens ntis - получающий';
r[27] := 'subtilissimus a um - мельчайший';  
  
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