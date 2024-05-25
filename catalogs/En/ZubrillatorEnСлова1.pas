uses crt;

var
  c, l, p, i, t, t2, k, max, w, v: integer;
  s, j: real;
   n: array[1..500] of integer;
   r: array[1..500] of string;
  r2: array[1..500] of string;
  r3: array[1..500] of string;
   a: array[1..500] of string;
   q: array[1..500] of integer; 

begin
  
  Writeln ('Добро пожаловать в Zubrilator 2.0');
  Writeln ('Данная программа создана для простого и удобного заучивания того или иного учебного материала');
  Writeln ('Перед началом следует ознакомиться с принципами работы программы:');
  Writeln ('Вам будут выдаваться в случайном порядке заранее заложенные в код программы вопросы, формулировки, начала предложений и прочее');
  Writeln ('Ваша задача просто давать письменные ответы на них');
  Writeln ('В случае если ответ дан правильный, программа зачтет его и выдаст следующий вопрос');
  Writeln ('В случае неверно данного ответа, программа выдаст правильный ответ, а вопрос не будет засчитан и будет попадаться вам в числе следующих вопросов до тех пор, пока вы не дадите на него правильный ответ');
  Writeln ('Также все вопросы с неверными ответами попадут в число вопросов для закрепления, которое будет после того, как вы дадите правильные ответы на все вопросы');
  Writeln ('Нужно учитывать, что программа не идеальна, и она не может засчитывать вам те вопросы, на которые вы дали правильный по смыслу ответ, но отличный по формулировке от того, что заложен в программу');
  Writeln ('По этой причине вы также сами можете оценить свой ответ на вопрос');
  Writeln ('Для этого просто введите в ответе на следующий вопрос знак +, если считаете, что вы дали правильный ответ на вопрос, и не хотите, чтобы он встретился вам вновь');
  Writeln ('Либо вы можете ввести знак -, если считате этот вопрос достаточно сложным для себя, и хотите увидеть его вновь в числе вопросов');
  Writeln ('Также в конце программы вам будет выдан процент вашей правильности');
  Writeln ('Уделять ему внимание стоит только тогда, когда вы уже достаточно усвоили материал, и используете программу в качестве теста, для, скажем так, полировки ваших знаний');
  Writeln ('В принципе это все основные моменты, которые нужно знать');
  Writeln ('');
  Writeln ('');
  Writeln ('');
  
  k := 0;
  max := 75;
  
r[1] := 'Кислота = acid';
r[2] := 'Альвеола= alveolus';
r[3] := 'Клык = canine, cuspid';
r[4] := 'Углевод = carbohydrate';
r[5] := 'Причина = cause';
r[6] := 'Цемент = cementum';
r[7] := 'Проверять = to check-up';
r[8] := 'Жевать = chew';
r[9] := 'Распространенный = common';
r[10] := 'Осложнение = complication';
r[11] := 'Соединительная ткань = connective tissue';
r[12] := 'Поглощать = to consume';
r[13] := 'Поглощение = consumption';
r[14] := 'Зубной камень = dental calculus, dental tartar';
r[15] := 'Коронка = crown';
r[16] := 'Зубной налет = dental plaque';
r[17] := 'Зубная пломба = dental sealant';
r[18] := 'Дентин = dentine';
r[19] := 'Отложение = deposit';
r[20] := 'Разрушать = to destroy';
r[21] := 'Разрушительный = destructive';
r[22] := 'Растворять = to dissolve';
r[23] := 'Эмаль = enamel';
r[24] := 'Окружающая среда = environment';
r[25] := 'Прорезываться = to erupt';
r[26] := 'Прорезывание зубов = eruption';
r[27] := 'Пломбировать = to fill';
r[28] := 'Пломба = filling';
r[29] := 'Чистка зубной нитью = flossing';
r[30] := 'Зубная нить = floss';
r[31] := 'Гингивит = gingivitis';
r[32] := 'Перемалывать = to grind';
r[33] := 'Десна = gum';
r[34] := 'Вредный = harmful';
r[35] := 'Безвредный = harmless';
r[36] := 'Наследственность = heredity';
r[37] := 'Резец = incisor';
r[38] := 'Воспаление = inflammation';
r[39] := 'Нерастворимый = insoluble';
r[40] := 'Проникать = to invade';
r[41] := 'Раздражение = irritation';
r[42] := 'Слой = layer';
r[43] := 'Поддерживать = to maintain';
r[44] := 'Жевать = to masticate';
r[45] := 'Питательная среда = medium';
r[46] := 'Ротовая полость = oral cavity';
r[47] := 'Гигиена полости рта = oral hygiene';
r[48] := 'Постоянные зубы = permanent teeth, adult teeth';
r[49] := 'Премоляр = premolar, bicuspid';
r[50] := 'Предотвращать = to prevent';
r[51] := 'Молочные зубы = primary teeth';
r[52] := 'Зондирование = probing';
r[53] := 'Пульпа = pulp';
r[54] := 'Уменьшать = to reduce';
r[55] := 'Удалять = to remove';
r[56] := 'Удаление = removal';
r[57] := 'Восстановить зуб = to repair the tooth';
r[58] := 'Выявить = to reveal';
r[59] := 'Полоскать = to rinse';
r[60] := 'Корень зуба = root';
r[61] := 'Слюна = saliva';
r[62] := 'Чувствительность = sensitivity';
r[63] := 'Раствор = solution';
r[64] := 'Красящее вещество = stain, dye';
r[65] := 'Штамм бактерии = strain';
r[66] := 'Отечность = swelling';
r[67] := 'Отечный = swollen';
r[68] := 'Подверженный = susceptible';
r[69] := 'Язык = tongue';
r[70] := 'Кариес = tooth decay';
r[71] := 'Клинические испытания = trials';
r[72] := 'Зубы мудрости = wisdom teeth';
r[73]:= 'Вторгаться = to invade';
r[74]:= 'Сокращать = to reduce';
r[75]:= 'Обнаружить = to reveal';
  
  for c :=1 to max do begin
    p:= pos ('=',r[c]);
    r2[c]:=copy (r[c],1,p+1);
    l:= length (r[c]) - length (r2[c]);
    r3[c]:=copy (r[c],p+2,l);
  end;
  
  for c :=1 to max do begin
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
  
  for c :=1 to max do begin
  if q[c]=0 then w:=w+1;
  end;
  
    while i<w do begin
  
  t:= random (max)+1;
  if q[t] = 0 then begin
    v:=0;
  while v=0 do begin
    v:=1;
    
      write ('Продолжите: ');
      write (r2[t]);
      readln (a[t]);
      if a[t]=('+') then begin
        if q[t2]=1 then begin
      writeln ('');
      writeln ('Предыдущий ответ итак верный');
      writeln ('');
      end
        else begin
        q[t2]:=1;
        i:=i+1;
      writeln ('');
      writeln ('Предыдущий ответ засчитан');
      writeln ('');
        end;
        v:=0;
      end;
      if a[t]=('-') then begin
        if q[t2]=0 then begin
      writeln ('');
      writeln ('Предыдущий ответ итак неверный');
      writeln ('');
      end
        else begin
        q[t2]:=0;
        i:=i-1;
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
      q[t]:=0;
      end;
      t2:=t;
      end;
      end;
      end;
      
  writeln ('');
  writeln ('');
end.