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
  
r[1] := 'потеря зубов - dentia ae f';
r[2] := 'улитка - cochlea ae f';
r[3] := 'спайка, соединение - comissura ae f';
r[4] := 'контрактура, сведение (непроизвольное сокращение мышц) - contractura ae f';
r[5] := 'коронка - corona ae f';
r[6] := 'щель, трещина - fissura ae f';
r[7] := 'язычок - lingula ae f';
r[8] := 'ткань - tela ae f';
r[9] := 'оболочка - tunica ae f';
r[10] := 'слуховой - acusticus a um';
r[11] := 'острый - acutus a um';
r[12] := 'больной - aegrotus a um';
r[13] := 'белый - albus a um';
r[14] := 'клыковый (букв.: собачий) - caninus a um';
r[15] := 'молочный (букв.: отпадающий) - deciduus a um';
r[16] := 'поражённый кариесом - cariosus a um';
r[17] := 'плотный - compactus a um';
r[18] := 'правый - dexter a um';
r[19] := 'наружный - externus a um';
r[20] := 'жёлтый - flavus a um';
r[21] := 'резцовый - incisivus a um';
r[22] := 'внутренний - internus a um';
r[23] := 'широкий - latus a um';
r[24] := 'длинный - longus a um';
r[25] := 'жевательный - massetericus a um';
r[26] := 'срединный - medianus a um';
r[27] := '(под)слизистый - (sub)mucosus a um';
r[28] := 'костный - osseus a um';
r[29] := 'косой - obliquus a um';
r[30] := 'нёбный - palatinus a um';
r[31] := 'околоушной - paroticus a um';
r[32] := 'первичный - primarius a um';
r[33] := 'глубокий - profundus a um';
r[34] := 'собственный - proprius a um';
r[35] := 'крыловидный - pterygoideus a um';
r[36] := 'гнойный - purulentus a um';
r[37] := 'вторичный - secundarius a um';
r[38] := 'левый - sinister a um';
r[39] := 'губчатый - spongiosus a um';
r[40] := 'скуловой - zygomaticus a um';
r[41] := 'венозный - venosus a um';  
  
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