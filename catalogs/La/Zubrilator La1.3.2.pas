uses crt;

var
  l, p, i, t, k, max, w: integer;
  s: real;
   n: array[1..41] of integer;
   r: array[1..41] of string;
  r2: array[1..41] of string;
  r3: array[1..41] of string;
   a: array[1..41] of string;
   q: array[1..41] of integer; 

begin
  k := 0;
  max := 41;
  
r[1] := 'угол - angulus i m';
r[2] := 'рак - cancer i m';
r[3] := 'головка - capitulum i n';
r[4] := 'полость - cavum i n';
r[5] := 'цемент - cementum i n';
r[6] := 'головной мозг - cerebrum i n';
r[7] := 'мозжечок - cerebellum i n';
r[8] := 'шейка - collum i n';
r[9] := 'череп - cranium i n';
r[10] := 'дентин - dentinum i n';
r[11] := 'палец - digitus i m';
r[12] := 'эмаль - enamelum i n';
r[13] := 'есть - esse';
r[14] := 'уздечка - frenulum i n';
r[15] := 'дно - fundus i m';
r[16] := 'спазм половины органа - hemispasmus i m';
r[17] := 'заячья губа - labium leporinum';
r[18] := 'губа - labium i n';
r[19] := 'связка - ligamentum i n';
r[20] := 'болезнь - morbus i m';
r[21] := 'мышца - musculus i m';
r[22] := 'нос - nasus i m';
r[23] := 'нерв - nervus i m';
r[24] := 'блуждающий нерв - nervus vagus';
r[25] := 'узел - nodus i m';
r[26] := 'глаз - oculus i m';
r[27] := 'пародонт - parodontium i n';
r[28] := 'нёбо - palatum i n';
r[29] := 'надкостница зубного корня, корневая оболочка зуба - periodontium i n';
r[30] := 'ваяние, пластика - plastica ae f';
r[31] := 'ветвь - ramus i m';
r[32] := 'мешок, мешочек - saccus i m';
r[33] := 'скелет - sceleton i n';
r[34] := 'перегородка - septum i n';
r[35] := 'синдром - syndromum i n';
r[36] := 'пласт, слой - stratum i n';
r[37] := 'борозда - sulcus i m';
r[38] := 'бугорок - tuberculum i n';
r[39] := 'мазь - unguentum i n';
r[40] := 'преддверие - vestibulum i n';
r[41] := 'период - periodus i f';  
  
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