uses crt;

var
  l, p, i, t, k, max, w: integer;
  s: real;
   n: array[1..42] of integer;
   r: array[1..42] of string;
  r2: array[1..42] of string;
  r3: array[1..42] of string;
   a: array[1..42] of string;
   q: array[1..42] of integer; 

begin
  k := 0;
  max := 42;
  
r[1] := 'dentia ae f - потеря зубов';
r[2] := 'cochlea ae f - улитка';
r[3] := 'comissura ae f - спайка, соединение';
r[4] := 'contractura ae f - сведение';
r[5] := 'corona ae f - коронка';
r[6] := 'fissura ae f - щель, трещина';
r[7] := 'lingula ae f - язычок';
r[8] := 'tela ae f - ткань';
r[9] := 'tunica ae f - оболочка';
r[10] := 'acusticus a um - слуховой';
r[11] := 'acutus a um - острый';
r[12] := 'aegrotus a um - больной';
r[13] := 'albus a um - белый';
r[14] := 'caninus a um - клыковый';
r[15] := 'deciduus a um - молочный';
r[16] := 'cariosus a um - кариесный';
r[17] := 'compactus a um - плотный';
r[18] := 'dexter a um - правый';
r[19] := 'externus a um - наружный';
r[20] := 'flavus a um - желтый';
r[21] := 'incisivus a um - резцовый';
r[22] := 'internus a um - внутренний';
r[23] := 'latus a um - широкий';
r[24] := 'longus a um - длинный';
r[25] := 'massetericus a um - жевательный';
r[26] := 'medianus a um - срединный';
r[27] := 'mucosus a um - слизистый';
r[28] := 'osseus a um - костный';
r[29] := 'obliquus a um - косой';
r[30] := 'palatinus a um - небный';
r[31] := 'paroticus a um - околоушной';
r[32] := 'primarius a um - первичный';
r[33] := 'profundus a um - глубокий';
r[34] := 'proprius a um - собственный';
r[35] := 'pterygoideus a um - крыловидный';
r[36] := 'purulentus a um - гнойный';
r[37] := 'secundarius a um - вторичный';
r[38] := 'sinister a um - левый';
r[39] := 'spongiosus a um - губчатый';
r[40] := 'zygomaticus a um - скуловой';
r[41] := 'venosus a um - венозный';
r[42] := 'submucosus a um - подслизистый';  
  
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