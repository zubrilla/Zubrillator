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
  max := 30;
  
r[1]:='Начало и крепление затылочно-лобной мышцы = linea nuchalis suprema - кожа бровей';
r[2]:='Начало и крепление мышцы гордецов = os nasalis - кожа лба';
r[3]:='Начало и крепление мышцы, сморщивающей бровь = arcus superciliaris - кожа брови';
r[4]:='Начало и крепление вековой части круговой мышцы глаза = ligamentum palpebrale mediale - ligamentum palpebrale laterale';
r[5]:='Начало и крепление глазничной части круговой мышцы глаза = processus frontalis maxillae, os lacrimalis, pars nasalis ossis frontalis, ligamentum palpebrale mediale - ligamentum laterale';
r[6]:='Начало и крепление слезной части круговой мышцы глаза = crista lacrimalis ossis lacrimalis - saccus lacrimalis, pars palpebralis musculi orbicularis oculi';
r[7]:='Начало и крепление поперечной части носовой мышцы = jugum alveolare dentis canini maxillae - aponeurosis nasi';
r[8]:='Начало и крепление крыльной части носовой мышцы = jugum alveolare dentis canini maxillae - кожа крыла носа';
r[9]:='Начало и крепление мышцы, опускающей перегородку носа = jugum alveolare dentis incisivi medialis - cartilago septi nasi, cartilagines alarum majores nasi';
r[10]:='Начало и крепление краевой части круговой мышцы рта = пучки других мышц - labium superior, labium inferior';
r[11]:='Начало и крепление губной части круговой мышцы рта = угол рта - угол рта';
r[12]:='Начало и крепление мышцы, опускающей угол рта = basis mandibulae - кожа угла рта';
r[13]:='Начало и крепление мышцы, опускающей нижнюю губу = basis mandibulae - labium inferior';
r[14]:='Начало и крепление подбородочной мышцы = juga alveolaria dentium incisivorum mandibulae - кожа подбородка';
r[15]:='Начало и крепление щечной мышцы = linea obliqua mandibulae, fossa retromolaris mandibulae, processus alveolaris maxillae, raphe pterygomandibularis - labium superior, labium inferior';
r[16]:='Начало и крепление мышцы, поднимающей верхнюю губу = margo infraorbitalis corporis maxillae - угол рта';
r[17]:='Начало и крепление малой скуловой мышцы = os zygomaticum - кожа угла рта';
r[18]:='Начало и крепление большой скуловой мышцы = os zygomaticum - кожа угла рта';
r[19]:='Начало и крепление мышцы, поднимающей угол рта = facies anterior corporis maxillae - угол рта';
r[20]:='Начало и крепление мышцы смеха = fascia masseterica - кожа угла рта';
r[21]:='Начало и крепление передней ушной мышцы = fascia tomporalis - кожа ушной раковины';
r[22]:='Начало и крепление верхней ушной мышцы = galea aponeurotica - хрящ ушной раковины';
r[23]:='Начало и крепление задней ушной мышцы = processus mastoideus ossis temporalis - хрящ ушной раковины';
r[24]:='Начало и крепление поверхностной части жевательной мышци = arcus zygomaticus - tuberositas masseterica mandibulae';
r[25]:='Начало и крепление глубокой части жевательной мышцы = arcus zygomatica - ramus mandibulae';
r[26]:='Начало и крепление височной мышцы = fossa temporalis, fascia temporalis - processus coronoideus mandibulae';
r[27]:='Начало и крепление медиальной крыловидной мышцы = fossa pterygoidea processus pterygoidei ossis sphenoidalis - tuberositas pterygoidea mandibulae';
r[28]:='Начало и крепление верхней головки латеральной крыловидной мышцы = crista infratemporalis alaris majoris ossis sphenoidalis, facies infratemporalis alaris majoris ossis sphenoidalis - capsula articularis temporomandibularis, discus articularis temporomandibularis';
r[29]:='Начало и крепление мышци, поднимающей верхнюю губу и крыло носа = processus frontalis mandibulae - alae nasi, labium superior';  
r[30]:='Начало и крепление нижней головки латеральной крыловидной мышцы = lamina lateralis processus pterygoidei ossis sphenoidalis - collum mandibulae';
  
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