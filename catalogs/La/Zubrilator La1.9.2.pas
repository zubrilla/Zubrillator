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
  
r[1] := 'анализ - analysis is f';
r[2] := 'основание - basis is f';
r[3] := 'перелом болезни - crisis is f';
r[4] := 'диагноз - diagnosis is f';
r[5] := 'доза - dosis is f';
r[6] := 'эпикриз - epicrisis is f';
r[7] := 'разложение - lysis is f';
r[8] := 'наркоз - narcosis is f';
r[9] := 'отмирание - necrosis is f';
r[10] := 'туберкулез, чахотка - phthisis is f';
r[11] := 'прогноз - prognosis is f';
r[12] := 'опущение - ptosis is f';
r[13] := 'гниение, заражение - sepsis is f';
r[14] := 'неподвижное состояние - stasis is f';
r[15] := 'туберкулез - tuberculosis is f';
r[16] := 'лихорадка - febris is f';
r[17] := 'таз - pelvis is f';
r[18] := 'коклюш - pertussis is f';
r[19] := 'кашель - tussis is f';
r[20] := 'диастема, промежуток между средними резцами - diastema atis n';
r[21] := 'полоскание - gargarisma atis n';
r[22] := 'признак, симптом - symptoma atis n';
r[23] := 'система - systema atis n';
r[24] := 'повреждение - trauma atis n';
r[25] := 'скула - zygoma atis n';
  
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