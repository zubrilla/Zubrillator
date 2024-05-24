uses crt;

var
  l, p, i, t, k, max, w: integer;
  s: real;
   n: array[1..20] of integer;
   r: array[1..20] of string;
  r2: array[1..20] of string;
  r3: array[1..20] of string;
   a: array[1..20] of string;
   q: array[1..20] of integer; 

begin
  k := 0;
  max := 20;
  
  r[1] := 'dare - давать';
  r[2] := 'signare - обозначать';
  r[3] := 'servare - хранить';
  r[4] := 'sanare - врачевать';
  r[5] := 'curare - заботиться';
  r[6] := 'sterilisare - стерилизовать';
  r[7] := 'destillare - дистиллировать';
  r[8] := 'auscultare - выслушивать';
  r[9] := 'praeparare - приготавливать';
  r[10] := 'laborare - работать';
  r[11] := 'miscere - смешивать';
  r[12] := 'habere - иметь';
  r[13] := 'recipere - брать';
  r[14] := 'repetere - повторять';
  r[15] := 'praescribere - прописывать';
  r[16] := 'solvere - растворять';
  r[17] := 'dividere - делить';
  r[18] := 'finire - кончать';
  r[19] := 'audire - слушать';
  r[20] := 'linire - смазывать';  
  
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