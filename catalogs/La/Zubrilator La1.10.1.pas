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
  
r[1] := '(im)mobilis e - (не)подвижный';
r[2] := '(in)curabilis e - (не)излечимый';
r[3] := '(in)operabilis e - (не)операбельный';
r[4] := 'alveolaris e - альвеолярный';
r[5] := 'articularis e - суставной';
r[6] := 'auricularis e - ушной';
r[7] := 'basilaris - основной';
r[8] := 'brevis e - короткий';
r[9] := 'buccalis e - щечный';
r[10] := 'capillaris e - капиллярный';
r[11] := 'centralis e - центральный';
r[12] := 'cerebralis e - мозговой';
r[13] := 'cervicalis e - шейный';
r[14] := 'communis e - общий';
r[15] := 'frontalis e - лобный';
r[16] := 'labialis e - губной';
r[17] := 'lacrimalis e - слезный';
r[18] := 'lateralis e - боковой';
r[19] := 'mandibularis e - нижнечелюстной';
r[20] := 'maxillaris e - верхнечелюстной';
r[21] := 'medialis e - срединный';
r[22] := 'molaris e - молярный, большой коренной';
r[23] := 'normalis e - правильный';
r[24] := 'occipitalis e - затылочный';
r[25] := 'oralis e - ротовой';
r[26] := 'orbitalis e - глазничный';
r[27] := 'palmaris e - ладонный';
r[28] := 'parietalis e - пристеночный, теменной';
r[29] := 'pectoralis e - грудной';
r[30] := 'praemolaris e - премолярный, малый коренной';
r[31] := 'pulmonalis e - легочный';
r[32] := 'radialis e - лучевой';
r[33] := 'superficialis e - поверхностный';
r[34] := 'talis e - такой';
r[35] := 'temporalis e - височный';
r[36] := 'tenuis e - тонкий';
r[37] := 'ulnaris e - локтевой';
r[38] := 'visceralis e - висцеральный, внутренностный';
r[39] := 'biceps cipitis - двуглавый';
r[40] := 'triceps cipitis - трехглавый';
r[41] := 'guadriceps cipitis - четырехглавый';
r[42] := 'par paris - равный';
r[43] := 'impar imparis - непарный';
r[44] := 'duplex icis - двойной';
r[45] := 'simplex icis - простой';
r[46] := 'teres teretis - круглый';
r[47] := 'recens ntis - свежий';  
  
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