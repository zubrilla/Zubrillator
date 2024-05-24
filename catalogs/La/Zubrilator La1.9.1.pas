uses crt;

var
  l, p, i, t, k, max, w: integer;
  s: real;
   n: array[1..25] of integer;
   r: array[1..25] of string;
  r2: array[1..25] of string;
  r3: array[1..25] of string;
   a: array[1..25] of string;
   q: array[1..25] of integer; 

begin
  k := 0;
  max := 25;
  
r[1] := 'analysis is f - анализ';
r[2] := 'basis is f - основание';
r[3] := 'crisis is f - перелом болезни';
r[4] := 'diagnosis is f - диагноз';
r[5] := 'dosis is f - доза';
r[6] := 'epicrisis is f - эпикриз';
r[7] := 'lysis is f - разложение';
r[8] := 'narcosis is f - наркоз';
r[9] := 'necrosis is f - отмирание';
r[10] := 'phthisis is f - туберкулез, чахотка';
r[11] := 'prognosis is f - прогноз';
r[12] := 'ptosis is f - опущение';
r[13] := 'sepsis is f - гниение, заражение';
r[14] := 'stasis is f - неподвижное состояние';
r[15] := 'tuberculosis is f - туберкулез';
r[16] := 'febris is f - лихорадка';
r[17] := 'pelvis is f - таз';
r[18] := 'pertussis is f - коклюш';
r[19] := 'tussis is f - кашель';
r[20] := 'diastema atis n - диастема, промежуток между средними резцами';
r[21] := 'gargarisma atis n - полоскание';
r[22] := 'symptomа atis n - признак, симптом';
r[23] := 'systema atis n - система';
r[24] := 'trauma atis n - повреждение';
r[25] := 'zygoma atis n - скула';  
  
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