
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
  
r[1]:='Non est medicina sine lingua Latina = Нет медицины без латинского языка';
r[2]:='Scientia potentia est = Знание - сила';
r[3]:='Hygiena amica valetudinis = Гигиена - подруга здоровья';
r[4]:='Terra incognita = Неизведанная земля';
r[5]:='Tabula rasa = Чистая доска';
r[6]:='Per aspera ad astra = Через тернии к звездам';
r[7]:='In vivo = В живом организме';
r[8]:='In vitro = В склянке';
r[9]:='In vitro nigro = В черной склянке';
r[10]:='Nota bene = Обрати внимание';
r[11]:='Noli nocere = Не навреди';
r[12]:='Festina lente = Торопись медленно';
r[13]:='Da tales doses Numero = Выдай такие дозы числом';
r[14]:='Dentur tales doses Numero = Выдать такие дозы числом';
r[15]:='Doctor honoris causa = Почетный доктор';
r[16]:='Pro auctore = Для автора';
r[17]:='Per os = Через рот';
r[18]:='Pia mater = Мягкая мозговая оболочка';
r[19]:='Dura mater = Твердая мозговая оболочка';
r[20]:='Foetor ex ore = Неприятный запах изо рта';
r[21]:='Notae inflammationis sunt quattuor: rubor et tumor cum calore et dolore = Существует четыре признака воспаления: краснота и опухоль с жаром и болью';
r[22]:='Lege artis = По закону искусства';
r[23]:='Functio laesa = Нарушенная функция';
r[24]:='Intubatio per nasum = Интубация через нос';
r[25]:='Intubatio per os = Интубация через рот';
r[26]:='Tempus vulnera sanat = Время лечит раны';
r[27]:='Ubi pus, ibi incisio = Где гной, там разрез';
r[28]:='O tempora, o mores = О времена, о нравы';
r[29]:='Ex tempore = Исходя из требований, тотчас же';
r[30]:='Homo sapiens = Человек разумный';
r[31]:='Absente aegroto = В отсутствии больного';
r[32]:='Chirurgus mente prius et oculis agat, quam armata = Хирург прежде действует разумом и глазами, чем вооруженной рукой';
r[33]:='Pro dosi = На прием';
r[34]:='Pro narcosi = Для наркоза';
r[35]:='Contra tussim = От кашля';
r[36]:='Contra febrim = Против лихорадки';
r[37]:='Anamnesis morbi = Припоминание обстоятельств болезни';
r[38]:='Anamnesis vitae = Припоминание обстоятельств жизни больного';
r[39]:='Omnia mea mecum porto = Все мое ношу с собой';
r[40]:='Restitutio ad integrum = Полное восстановление';
r[41]:='Restitutio anatomica = Анатомическое восстановление';
r[42]:='Restitutio functionalis = Функциональное восстановление';
r[43]:='Vita brevis, ars longa = Жизнь коротка, искусство вечно';
r[44]:='Per primam aut per secundam intentionem = Первичным или вторичным натяжением';
r[45]:='Quantum satis = Сколько потребуется';
r[46]:='Omnium artium medicina nobilissima est = Из всех искусств медицина самая благородная';
r[47]:='Cogito, ergo sum = Мыслю, следовательно, существую';
r[48]:='Citius, altius, fortius = Быстрее, выше, сильнее';
r[49]:='Exitus letalis = Смертельный исход';
r[50]:='Ad usum internum (externum, proprium) = Для внутреннего применения (наружного, собственного)';
r[51]:='Status idem = То же самое состояние';
r[52]:='Status praesens = Настоящее состояние';
r[53]:='Status quo = Неизменное состояние';
r[54]:='Bene dignoscitur, bene curatur = Хорошо распознается, хорошо лечится';
r[55]:='Aliis inserviendo consumor = Служа другим, сгораю сам';
r[56]:='Alma mater = Мать-кормилица';    
  
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