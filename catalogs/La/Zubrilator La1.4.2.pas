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
  
r[1] := 'давать - dare';
r[2] := 'обозначать - signare';
r[3] := 'хранить - servare';
r[4] := 'врачевать - sanare';
r[5] := 'заботиться - curare';
r[6] := 'стерилизовать - sterilisare';
r[7] := 'дистиллировать - destillare';
r[8] := 'выслушивать - auscultare';
r[9] := 'приготавливать - praeparare';
r[10] := 'работать - laborare';
r[11] := 'смешивать - miscere';
r[12] := 'иметь - habere';
r[13] := 'брать - recipere';
r[14] := 'повторять - repetere';
r[15] := 'прописывать - praescribere';
r[16] := 'растворять - solvere';
r[17] := 'делить - dividere';
r[18] := 'кончать - finire';
r[19] := 'слушать - audire';
r[20] := 'смазывать - linire'; 
  
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