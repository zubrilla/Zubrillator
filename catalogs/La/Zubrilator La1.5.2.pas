uses crt;

var
  l, p, i, t, k, max, w: integer;
  s: real;
   n: array[1..29] of integer;
   r: array[1..29] of string;
  r2: array[1..29] of string;
  r3: array[1..29] of string;
   a: array[1..29] of string;
   q: array[1..29] of integer; 

begin
  k := 0;
  max := 29;
  
r[1] := 'отводящая мышца - abductor oris m';
r[2] := 'приводящая мышца - adductor oris m';
r[3] := 'эфир - aether eris m';
r[4] := 'верхушка - apex icis m';
r[5] := 'артикулятор - articulator oris m';
r[6] := 'щечная мышца - buccinator oris m';
r[7] := 'жар - calor oris m';
r[8] := 'уголь - carbo onis m';
r[9] := 'кора - cortex icis m';
r[10] := 'опускающая мышца - depressor oris m';
r[11] := 'боль - dolor oris m';
r[12] := 'разгибающая мышца - extensor oris m';
r[13] := 'сгибающая мышца - flexor oris m';
r[14] := 'герпес - herpes etis m';
r[15] := 'человек - homo inis m';
r[16] := 'поднимающая мышца - levator oris m';
r[17] := 'нашатырный спирт - Liquor Ammonii caustici';
r[18] := 'жидкость - liquor oris m';
r[19] := 'жевательная мышца - masseter eris m';
r[20] := 'прикус - mordex icis m';
r[21] := 'стенка - paries etis m';
r[22] := 'стопа - pes pedis m';
r[23] := 'легкое - pulmo onis m';
r[24] := 'краснота - rubor oris m';
r[25] := 'опухоль - tumor oris m';
r[26] := 'сердце - cor cordis n';
r[27] := 'кость - os ossis n';
r[28] := 'рот, устье - os oris n';
r[29] := 'бугор - tuber eris n';
  
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