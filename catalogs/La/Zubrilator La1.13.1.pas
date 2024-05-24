uses crt;

var
  l, p, i, t, k, max, w: integer;
  s: real;
   n: array[1..23] of integer;
   r: array[1..23] of string;
  r2: array[1..23] of string;
  r3: array[1..23] of string;
   a: array[1..23] of string;
   q: array[1..23] of integer; 

begin
  k := 0;
  max := 23;
  
r[1] := 'caries ei f - кариес';
r[2] := 'combustio onis f - ожог';
r[3] := 'commotio onis f - сотрясение';
r[4] := 'congelatio onis f - обморожение';
r[5] := 'facies ei f - лицо, поверхность';
r[6] := 'mamma ae f - молочная железа';
r[7] := 'rabies ei f - бешенство';
r[8] := 'res ei f - дело, вещь';
r[9] := 'ruptura ae f - разрыв';
r[10] := 'scabies ei f - чесотка';
r[11] := 'series ei f - ряд';
r[12] := 'species ei f - сбор';
r[13] := 'superficies ei f - поверхность, наружная сторона';
r[14] := 'suppuratio onis f - нагноение';
r[15] := 'vulnus conquassatum - размозженная рана';
r[16] := 'vulnus contusum - рана от ушиба';
r[17] := 'vulnus incisum - резаная рана';
r[18] := 'vulnus laceratum - рваная рана';
r[19] := 'vulnus morsum - укушенная рана';
r[20] := 'vulnus punctum - колотая рана';
r[21] := 'vulnus sclopetarium - огнестрельная рана';
r[22] := 'vulnus venenatum - отравленная рана';
r[23] := 'dies ei m - день';  
  
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