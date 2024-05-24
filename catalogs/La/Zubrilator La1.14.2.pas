
uses crt;

var
  l, p, i, t, t2, k, max, w, v: integer;
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
  max := 56;
  
r[1] := 'Нет медицины без латинского языка = Non est medicina sine lingua Latina';
r[2] := 'Знание - сила = Scientia potentia est';
r[3] := 'Гигиена - подруга здоровья = Hygiena amica valetudinis';
r[4] := 'Неизведанная земля = Terra incognita';
r[5] := 'Чистая доска = Tabula rasa';
r[6] := 'Через тернии к звездам = Per aspera ad astra';
r[7] := 'В живом организме = In vivo';
r[8] := 'В склянке = In vitro';
r[9] := 'В черной склянке = In vitro nigro';
r[10] := 'Обрати внимание = Nota bene';
r[11] := 'Не навреди = Noli nocere';
r[12] := 'Торопись медленно = Festina lente';
r[13] := 'Выдай такие дозы числом = Da tales doses Numero';
r[14] := 'Выдать такие дозы числом = Dentur tales doses Numero';
r[15] := 'Почетный доктор = Doctor honoris causa';
r[16] := 'Для автора = Pro auctore';
r[17] := 'Через рот = Per os';
r[18] := 'Мягкая мозговая оболочка = Pia mater';
r[19] := 'Твердая мозговая оболочка = Dura mater';
r[20] := 'Неприятный запах изо рта = Foetor ex ore';
r[21] := 'Существует четыре признака воспаления: краснота и опухоль с жаром и болью = Notae inflammationis sunt quattuor: rubor et tumor cum calore et dolore';
r[22] := 'По закону искусства = Lege artis';
r[23] := 'Нарушенная функция = Functio laesa';
r[24] := 'Интубация через нос = Intubatio per nasum';
r[25] := 'Интубация через рот = Intubatio per os';
r[26] := 'Время лечит раны = Tempus vulnera sanat';
r[27] := 'Где гной, там разрез = Ubi pus, ibi incisio';
r[28] := 'О времена, о нравы = O tempora, o mores';
r[29] := 'Исходя из требований, тотчас же = Ex tempore';
r[30] := 'Человек разумный = Homo sapiens';
r[31] := 'В отсутствии больного = Absente aegroto';
r[32] := 'Хирург прежде действует разумом и глазами, чем вооруженной рукой = Chirurgus mente prius et oculis agat, quam armata';
r[33] := 'На прием = Pro dosi';
r[34] := 'Для наркоза = Pro narcosi';
r[35] := 'От кашля = Contra tussim';
r[36] := 'Против лихорадки = Contra febrim';
r[37] := 'Припоминание обстоятельств болезни = Anamnesis morbi';
r[38] := 'Припоминание обстоятельств жизни больного = Anamnesis vitae';
r[39] := 'Все мое ношу с собой = Omnia mea mecum porto';
r[40] := 'Полное восстановление = Restitutio ad integrum';
r[41] := 'Анатомическое восстановление = Restitutio anatomica';
r[42] := 'Функциональное восстановление = Restitutio functionalis';
r[43] := 'Жизнь коротка, искусство вечно = Vita brevis, ars longa';
r[44] := 'Первичным или вторичным натяжением = Per primam aut per secundam intentionem';
r[45] := 'Сколько потребуется = Quantum satis';
r[46] := 'Из всех искусств медицина самая благородная = Omnium artium medicina nobilissima est';
r[47] := 'Мыслю, следовательно, существую = Cogito, ergo sum';
r[48] := 'Быстрее, выше, сильнее = Citius, altius, fortius';
r[49] := 'Смертельный исход = Exitus letalis';
r[50] := 'Для внутреннего применения (наружного, собственного) = Ad usum internum (externum, proprium)';
r[51] := 'То же самое состояние = Status idem';
r[52] := 'Настоящее состояние = Status praesens';
r[53] := 'Неизменное состояние = Status quo';
r[54] := 'Хорошо распознается, хорошо лечится = Bene dignoscitur, bene curatur';
r[55] := 'Служа другим, сгораю сам = Aliis inserviendo consumor';
r[56] := 'Мать-кормилица = Alma mater';    
  
  for c: integer :=1 to max do begin
    p:= pos ('=',r[c]);
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