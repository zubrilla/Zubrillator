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
  
r[1] := 'abductor oris m - отводящая мышца';
r[2] := 'adductor oris m - приводящая мышца';
r[3] := 'aether ĕris m - эфир';
r[4] := 'apexicis m - верхушка';
r[5] := 'articulator oris m - артикулятор';
r[6] := 'buccinator oris m - щечная мышца';
r[7] := 'calor oris m - жар';
r[8] := 'carbo onis m - уголь';
r[9] := 'cortex icis m - кора';
r[10] := 'depressor oris m - опускающая мышца';
r[11] := 'dolor oris m - боль';
r[12] := 'extensor oris m - разгибающая мышца';
r[13] := 'flexor oris m - сгибающая мышца';
r[14] := 'herpes etis m - герпес';
r[15] := 'homo inis m - человек';
r[16] := 'levator oris m - поднимающая мышца';
r[17] := 'Liquor Ammonii caustici - нашатырный спирт';
r[18] := 'liquor oris m - жидкость';
r[19] := 'masseter ēris m - жевательная мышца';
r[20] := 'mordex icis m - прикус';
r[21] := 'paries etis m - стенка';
r[22] := 'pes pedis m - стопа';
r[23] := 'pulmo onis m - легкое';
r[24] := 'rubor oris m - краснота';
r[25] := 'tumor oris m - опухоль';
r[26] := 'cor cordis n - сердце';
r[27] := 'os ossis n - кость';
r[28] := 'os oris n - рот, устье';
r[29] := 'tuber eris n - бугор';  
  
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