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
  
r[1] := 'кариес - caries ei f';
r[2] := 'ожог - combustio onis f';
r[3] := 'сотрясение - commotio onis f';
r[4] := 'обморожение - congelatio onis f';
r[5] := 'лицо, поверхность - facies ei f';
r[6] := 'молочная железа - mamma ae f';
r[7] := 'бешенство - rabies ei f';
r[8] := 'дело, вещь - res ei f';
r[9] := 'разрыв - ruptura ae f';
r[10] := 'чесотка - scabies ei f';
r[11] := 'ряд - series ei f';
r[12] := 'сбор - species ei f';
r[13] := 'поверхность, наружная сторона - superficies ei f';
r[14] := 'нагноение - suppuratio onis f';
r[15] := 'размозженная рана - vulnus conquassatum';
r[16] := 'рана от ушиба - vulnus contusum';
r[17] := 'резаная рана - vulnus incisum';
r[18] := 'рваная рана - vulnus laceratum';
r[19] := 'укушенная рана - vulnus morsum';
r[20] := 'колотая рана - vulnus punctum';
r[21] := 'огнестрельная рана - vulnus sclopetarium';
r[22] := 'отравленная рана - vulnus venenatum';
r[23] := 'день - dies ei m';
  
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