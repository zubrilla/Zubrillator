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
  max := 32;
  
  r[1]:='Затылочно-лобная мышца = musculus occipitofrontalis';
  r[2]:='Мышца гордецов = musculus procerus';
  r[3]:='Мышца, сморщивающая бровь = musculus corrugator supercilii';
  r[4]:='Глазничная часть круговой мышцы глаза = pars orbitalis musculi orbicularis oculi';
  r[5]:='Вековая часть круговой мышцы глаза = pars palpebralis musculi orbicularis oculi';
  r[6]:='Слезная часть круговой мышцы глаза = pars lacrimalis musculi orbicularis oculi';
  r[7]:='Поперечная часть носовой мышцы глаза = pars transversa musculi nasalis';
  r[8]:='Крыльная часть носовой мышцы глаза = pars alaris musculi nasalis';
  r[9]:='Мышца, опускающая перегородку носа = musculus depressor septi nasi';
  r[10]:='Затылочное брюшко (затылочно-лобной мышцы) = venter occipitalis musculi occipitofrontalis';
  r[11]:='Лобное брюшко (затылочно-лобной мышцы) = venter frontlis musculi occipitofrontalis';
  r[12]:='Сухожильный шлем (затылочно-лобной мышцы) = galea aponeurotica';
  r[13]:='Круговая мышца рта = musculus orbicularis oris';
  r[14]:='Мышца, опускающая угол рта = musculus depressor anguli oris';
  r[15]:='Мышца, опускающая нижнюю губу = musculus depressor labii inferioris';
  r[16]:='Подбородочная мышца = musculus mentalis';
  r[17]:='Щечная мышца = musculus buccinator';
  r[18]:='Мышца, поднимающая верхнюю губу = musculus levator labii superioris';
  r[19]:='Малая скуловая мышца = musculus zygomaticus minor';
  r[20]:='Большая скуловая мышца = musculus zygomaticus major';
  r[21]:='Мышца, поднимающая угол рта = musculus levator anguli oris';
  r[22]:='Мышца смеха = musculus risorius';
  r[23]:='Мышца, поднимающая верхнюю губу и крыло носа = musculus levator labii superioris alaeque nasi';
  r[24]:='Передняя ушная мышца = musculus auricularis anterior';
  r[25]:='Верхняя ушная мышца = musculus auricularis superior';
  r[26]:='Задняя ушная мышца = musculus auricularis posterior';
  r[27]:='Поверхностная часть жевательной мышцы = pars superficialis musculi masseteri';
  r[28]:='Глубокая часть жевательной мышцы = pars profunda musculi masseteri';
  r[29]:='Височная мышца = musculus temporalis';
  r[30]:='Верхняя головка латеральной крыловидной мышцы = caput superior musculi pterygoidei lateralis';  
  r[31]:='Нижняя головка латеральной крыловидной мышцы = caput inferior musculi pterygoidei lateralis';
  r[32]:='Медиальная крыловидная мышца = musculus pterygoideus medialis';

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