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
  
r[1] := 'angulus i m - угол';
r[2] := 'cancer i m - рак';
r[3] := 'capitulum i n - головка';
r[4] := 'cavum i n - полость';
r[5] := 'cementum i n - цемент';
r[6] := 'cerebrum i n - головной мозг';
r[7] := 'cerebellum i n - мозжечок';
r[8] := 'collum i n - шейка';
r[9] := 'cranium i n - череп';
r[10] := 'dentinum i n - дентин';
r[11] := 'digitus i m - палец';
r[12] := 'enamelum i n - эмаль';
r[13] := 'esse - есть';
r[14] := 'frenulum i n - уздечка';
r[15] := 'fundus i m - дно';
r[16] := 'hemispasmus i m - полуспазм';
r[17] := 'labium leporinum - заячья губа';
r[18] := 'labium i n - губа';
r[19] := 'ligamentum i n - связка';
r[20] := 'morbus i m - болезнь';
r[21] := 'musculus i m - мышца';
r[22] := 'nasus i m - нос';
r[23] := 'nervus i m - нерв';
r[24] := 'nervus vagus - блуждающий нерв';
r[25] := 'nodus i m - узел';
r[26] := 'oculus i m - глаз';
r[27] := 'parodontium i n - пародонт';
r[28] := 'palatum i n - небо';
r[29] := 'periodontium i n - периодонт';
r[30] := 'plastica ae f - пластика';
r[31] := 'ramus i m - ветвь';
r[32] := 'saccus i m - мешок';
r[33] := 'sceleton i n - скелет';
r[34] := 'septum i n - перегородка';
r[35] := 'syndromum i n - синдром';
r[36] := 'stratum i n - слой';
r[37] := 'sulcus i m - борозда';
r[38] := 'tuberculum i n - бугорок';
r[39] := 'unguentum i n - мазь';
r[40] := 'vestibulum i n - преддверие';
r[41] := 'periodus i f - период';  
  
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