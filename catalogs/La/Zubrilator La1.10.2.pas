uses crt;

var
  l, p, i, t, k, max, w: integer;
  s: real;
   n: array[1..47] of integer;
   r: array[1..47] of string;
  r2: array[1..47] of string;
  r3: array[1..47] of string;
   a: array[1..47] of string;
   q: array[1..47] of integer; 

begin
  k := 0;
  max := 47;
  
r[1] := '(не)подвижный - (im)mobilis e';
r[2] := '(не)излечимый - (in)curabilis e';
r[3] := '(не)операбельный - (in)operabilis e';
r[4] := 'альвеолярный - alveolaris e';
r[5] := 'суставной - articularis e';
r[6] := 'ушной - auricularis e';
r[7] := 'основной - basilaris';
r[8] := 'короткий - brevis e';
r[9] := 'щечный - buccalis e';
r[10] := 'капиллярный - capillaris e';
r[11] := 'центральный - centralis e';
r[12] := 'мозговой - cerebralis e';
r[13] := 'шейный - cervicalis e';
r[14] := 'общий - communis e';
r[15] := 'лобный - frontalis e';
r[16] := 'губной - labialis e';
r[17] := 'слезный - lacrimalis e';
r[18] := 'боковой - lateralis e';
r[19] := 'нижнечелюстной - mandibularis e';
r[20] := 'верхнечелюстной - maxillaris e';
r[21] := 'срединный - medialis e';
r[22] := 'молярный, большой коренной - molaris e';
r[23] := 'правильный - normalis e';
r[24] := 'затылочный - occipitalis e';
r[25] := 'ротовой - oralis e';
r[26] := 'глазничный - orbitalis e';
r[27] := 'ладонный - palmaris e';
r[28] := 'пристеночный, теменной - parietalis e';
r[29] := 'грудной - pectoralis e';
r[30] := 'премолярный, малый коренной - praemolaris e';
r[31] := 'легочный - pulmonalis e';
r[32] := 'лучевой - radialis e';
r[33] := 'поверхностный - superficialis e';
r[34] := 'такой - talis e';
r[35] := 'височный - temporalis e';
r[36] := 'тонкий - tenuis e';
r[37] := 'локтевой - ulnaris e';
r[38] := 'висцеральный, внутренностный - visceralis e';
r[39] := 'двуглавый - biceps cipitis';
r[40] := 'трехглавый - triceps cipitis';
r[41] := 'четырехглавый - guadriceps cipitis';
r[42] := 'равный - par paris';
r[43] := 'непарный - impar imparis';
r[44] := 'двойной - duplex icis';
r[45] := 'простой - simplex icis';
r[46] := 'круглый - teres teretis';
r[47] := 'свежий - recens ntis'; 
  
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