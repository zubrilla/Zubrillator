uses crt;

var
  l, p, i, t, k, max, w: integer;
  s: real;
   n: array[1..46] of integer;
   r: array[1..46] of string;
  r2: array[1..46] of string;
  r3: array[1..46] of string;
   a: array[1..46] of string;
   q: array[1..46] of integer; 

begin
  k := 0;
  max := 46;
  
r[1] := 'abrasio onis f - выскабливание десен';
r[2] := 'acclusio onis f - смыкание';
r[3] := 'angulitis itidis f - заеда, ангулит';
r[4] := 'applicatio onis f - аппликация, наложение лекарства';
r[5] := 'articulatio onis f - сустав';
r[6] := 'carotis itidis f - сонная артерия';
r[7] := 'cavitas atis f - полость';
r[8] := 'cervix icis f - шея';
r[9] := 'dens accessorius - сверхкомплектный зуб';
r[10] := 'dens bifidus - раздвоенный зуб';
r[11] := 'dens caninus - клык';
r[12] := 'dens deciduus - выпадающий зуб';
r[13] := 'dens incisivus - резцовый зуб';
r[14] := 'dens multifidus - расщепленный зуб';
r[15] := 'dens permanens - постоянный зуб';
r[16] := 'dens serotinus - зуб мудрости';
r[17] := 'dens sapientiae - зуб мудрости';
r[18] := 'dentificatio onis f - образование зуба';
r[19] := 'dentitio onis f - прорезывание зуба';
r[20] := 'depulpatio onis f - удаление пульпы';
r[21] := 'desinfectio onis f - дезинфекция';
r[22] := 'epulis idis f - эпулис, опухоль десны';
r[23] := 'erosio onis f - эрозия';
r[24] := 'extractio onis f - извлечение, удаление';
r[25] := 'implantatio onis f - имплантация';
r[26] := 'impressio onis f - вдавление';
r[27] := 'incisio onis f - разрез';
r[28] := 'intubatio onis f - введение трубки';
r[29] := 'iris iridis f - радужка';
r[30] := 'mobilitas atis f - подвижность';
r[31] := 'parotis itidis f - околоушная железа';
r[32] := 'protrusio onis f - выпячивание';
r[33] := 'radix icis f - корень';
r[34] := 'regio onis f - область';
r[35] := 'resectio onis f - вырезание части органа';
r[36] := 'solutio onis f - раствор';
r[37] := 'tuberositas atis f - бугристость';
r[38] := 'canalis is m - канал';
r[39] := 'dens dentis m - зуб';
r[40] := 'larynx ngis m - гортань';
r[41] := 'margo inis m - край';
r[42] := 'pharynx ngis m - глотка';
r[43] := 'sanguis inis m - кровь';
r[44] := 'tendo inis m - сухожилие';
r[45] := 'pulvis eris m - порошок';
r[46] := 'pancreas atis n - поджелудочная железа';  
  
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