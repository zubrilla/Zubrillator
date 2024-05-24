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
  
r[1] := 'головка - caput itis n';
r[2] := 'перекрест - chiasma atis n';
r[3] := 'тело - corpus oris n';
r[4] := 'ложка - cochlear aris n';
r[5] := 'бедренная кость - femur oris n';
r[6] := 'отверстие - foramen inis n';
r[7] := 'зачаток - germen inis n';
r[8] := 'печень - hepar atis n';
r[9] := 'новообразование, опухоль - neoplasma atis n';
r[10] := 'затылок - occiput itis n';
r[11] := 'отек - oedema atis n';
r[12] := 'грудь - pectus oris n';
r[13] := 'гной - pus puris n';
r[14] := 'семя - semen inis n';
r[15] := 'симптом - symptoma atis n';
r[16] := 'висок, время - tempus oris n';
r[17] := 'промежуток между зубами - trema atis n';
r[18] := 'рана - vulnus eris n';
r[19] := 'скула - zygoma atis n';
r[20] := 'артериальный - arteriosus a um';
r[21] := 'доброкачественный - benignus a um';
r[22] := 'заразный - contagiosus a um';
r[23] := 'кожный - cutaneus a um';
r[24] := 'лимфатический - lymphaticus a um';
r[25] := 'злокачественный - malignus a um';
r[26] := 'питательный - nutritius a um';
r[27] := 'венозный - venosus a um';
  
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