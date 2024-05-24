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
  
r[1] := 'caput itis n - головка';
r[2] := 'chiasma atis n - перекрест';
r[3] := 'corpus oris n - тело';
r[4] := 'cochlear aris n - ложка';
r[5] := 'femur oris n - бедренная кость';
r[6] := 'foramen inis n - отверстие';
r[7] := 'germen inis n - зачаток';
r[8] := 'hepar atis n - печень';
r[9] := 'neoplasma atis n - новообразование, опухоль';
r[10] := 'occiput itis n - затылок';
r[11] := 'oedema atis n - отек';
r[12] := 'pectus oris n - грудь';
r[13] := 'pus puris n - гной';
r[14] := 'semen inis n - семя';
r[15] := 'symptoma atis n - симптом';
r[16] := 'tempus oris n - висок, время';
r[17] := 'trema atis n - промежуток между зубами';
r[18] := 'vulnus eris n - рана';
r[19] := 'zygoma atis n - скула';
r[20] := 'arteriosus a um - артериальный';
r[21] := 'benignus a um - доброкачественный';
r[22] := 'contagiosus a um - заразный';
r[23] := 'cutaneus a um - кожный';
r[24] := 'lymphaticus a um - лимфатический';
r[25] := 'malignus a um - злокачественный';
r[26] := 'nutritius a um - питательный';
r[27] := 'venosus a um - венозный';  
  
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