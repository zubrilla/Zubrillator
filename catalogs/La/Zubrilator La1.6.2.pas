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
  
r[1] := 'выскабливание десен - abrasio onis f';
r[2] := 'смыкание - acclusio onis f';
r[3] := 'заеда, ангулит - angulitis itidis f';
r[4] := 'аппликация, наложение лекарства - applicatio onis f';
r[5] := 'сустав - articulatio onis f';
r[6] := 'сонная артерия - carotis itidis f';
r[7] := 'полость - cavitas atis f';
r[8] := 'шея - cervix icis f';
r[9] := 'сверхкомплектный зуб - dens accessorius';
r[10] := 'раздвоенный зуб - dens bifidus';
r[11] := 'клык - dens caninus';
r[12] := 'выпадающий зуб - dens deciduus';
r[13] := 'резцовый зуб - dens incisivus';
r[14] := 'расщепленный зуб - dens multifidus';
r[15] := 'постоянный зуб - dens permanens';
r[16] := 'зуб мудрости - dens serotinus';
r[17] := 'зуб мудрости - dens sapientiae';
r[18] := 'образование зуба - dentificatio onis f';
r[19] := 'прорезывание зуба - dentitio onis f';
r[20] := 'удаление пульпы - depulpatio onis f';
r[21] := 'дезинфекция - desinfectio onis f';
r[22] := 'эпулис, опухоль десны - epulis idis f';
r[23] := 'эрозия - erosio onis f';
r[24] := 'извлечение, удаление - extractio onis f';
r[25] := 'имплантация - implantatio onis f';
r[26] := 'вдавление - impressio onis f';
r[27] := 'разрез - incisio onis f';
r[28] := 'введение трубки - intubatio onis f';
r[29] := 'радужка - iris iridis f';
r[30] := 'подвижность - mobilitas atis f';
r[31] := 'околоушная железа - parotis itidis f';
r[32] := 'выпячивание - protrusio onis f';
r[33] := 'корень - radix icis f';
r[34] := 'область - regio onis f';
r[35] := 'вырезание части органа - resectio onis f';
r[36] := 'раствор - solutio onis f';
r[37] := 'бугристость - tuberositas atis f';
r[38] := 'канал - canalis is m';
r[39] := 'зуб - dens dentis m';
r[40] := 'гортань - larynx ngis m';
r[41] := 'край - margo inis m';
r[42] := 'глотка - pharynx ngis m';
r[43] := 'кровь - sanguis inis m';
r[44] := 'сухожилие - tendo inis m';
r[45] := 'порошок - pulvis eris m';
r[46] := 'поджелудочная железа - pancreas atis n';
  
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