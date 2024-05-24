uses crt;

var
  l, p, i, t, t2, k, max, w, v: integer;
  s, j: real;
   n: array[1..12] of integer;
   r: array[1..12] of string;
  r2: array[1..12] of string;
  r3: array[1..12] of string;
   a: array[1..12] of string;
   q: array[1..12] of integer; 

begin
  k := 0;
  max := 12;
  
r[1] := 'abdomen inis n - живот';
r[2] := 'animal alis n - животное';
r[3] := 'auris is f - ухо';
r[4] := 'calcar alis n - шпора';
r[5] := 'curatio onis f - лечение';
r[6] := 'cutis is f - кожа';
r[7] := 'frons frontis f - лоб';
r[8] := 'meninx ngis f - мозговая оболочка';
r[9] := 'naevus i m - родинка';
r[10] := 'pars partis f - часть';
r[11] := 'rete is n - сеть';
r[12] := 'vas vasis n - сосуд';  
  
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
    v:=0;
  while v=0 do begin
    v:=1;
    
      write ('Продолжите: ');
      write (r2[t]);
      readln (a[t]);
      if a[t]=('+') then begin
        if n[t2]=1 then begin
      writeln ('');
      writeln ('Предыдущий ответ итак верный');
      writeln ('');
      end
        else begin
        n[t2]:=1;
        i:=i+1;
        k:=k-1;
        q[t2]:=1;
      writeln ('');
      writeln ('Предыдущий ответ засчитан');
      writeln ('');
        end;
        v:=0;
      end;
      if a[t]=('-') then begin
        if n[t2]=0 then begin
      writeln ('');
      writeln ('Предыдущий ответ итак неверный');
      writeln ('');
      end
        else begin
        n[t2]:=0;
        i:=i-1;
        k:=k+1;
        q[t2]:=0;
      writeln ('');
      writeln ('Предыдущий ответ не засчитан');
      writeln ('');
        end;
        v:=0;
      end;
      end;
      
      if (a[t]= r3[t]) or
      (a[t]= r3[t])
        then begin
      write ('Правильно');
      i:=i+1;
      j:=i/max*100;
      writeln ('   (Прогресс: ',j:0:2,'%)');
      writeln ('');
      n[t]:=1;
      end
        else begin
      writeln ('Неправильно');
      write ('Правильный ответ: ');
      writeln (r3[t]);
      writeln ('');
      n[t]:=0;
      k:=k+1;
      q[t]:=0;
      end;
      t2:=t;
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