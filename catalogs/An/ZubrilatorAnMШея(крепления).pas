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
  max := 34;
  
  r[1]:='Начало и крепление подкожной мышцы шеи = fascia pectoralis - basis mandibulae';
  r[2]:='Начало и крепление грудино-ключично-сосцевидной мышцы = facies anterior manubrii sterni, extremitas sternalis claviculae - processus mastoideus ossis temporalis, linea nuchalis superior ossis occipitalis';
  r[3]:='Начало и крепление заднего брюшка двубрюшной мышцы = incisura mastoidea ossis temporalis - corpus ossis hyoidei, cornu major ossis hyoidei';
  r[4]:='Начало и крепление переднего брюшка двубрюшной мышцы = corpus ossis hyoidei, cornu major ossis hyoidei - fossa digastrica mandibulae';
  r[5]:='Начало и крепление шилоподъязычной мышцы = processus styloideus ossis temporalis - corpus ossis hyoidei';
  r[6]:='Начало и крепление челюстно-подъязычной мышцы = linea mylohyoidea mandibulae - corpus ossis hyoidei';
  r[7]:='Начало и крепление подбородочно-подъязычной мышцы = spina mentalis inferior mandibulae - corpus ossis hyoidei';
  r[8]:='Начало и крпеление лопаточно-подъязычной мышцы = incisura scapulae - corpus ossis hyoidei';
  r[9]:='Начало и крепление грудино-подъязычной мышцы = facies interna manubrii sterni, extremitas sternalis claviculae - corpus ossis hyoidei';
  r[10]:='Начало и крепление грудино-щитовидной мышцы = facies interna manubrii sterni - linea obliqua cartilaginis thyroidei';
  r[11]:='начало и крепление щитоподъязычной мышцы = linea obliqua cartilaginis thyroidei - corpus ossis hyoidei, cornu major ossis hyoidei';
  r[12]:='Начало и крепление передней лестничной мышцы = processus transversi vertebrarum cervicalium 3-6 - corpus costae 1';
  r[13]:='Начало и крепление средней лестничной мышцы = processus transversi vertebrarum cervicalium 2-7 - corpus costae 1';
  r[14]:='Начало и крепление задней лестничной мышцы = processus transversi vertebrarum cervicalium 4-6 - corpus costae 2';
  r[15]:='Начало и крепление вертикальной части длинной мышцы шеи = corpora vertebrarum cervicalium 1-3, corpora vertebrarum cervicalium 5-7 - corpora vertebrae cervicalium 2-4';
  r[16]:='Начало и крпеление длинной мышцы головы = processus transversi vertabrarum cervicalium 3-6 - pars basilaris ossis occipitalis';
  r[17]:='Начало и крепление преденей прямой мышцы головы = arcus anterior atlantis - pars basilaris ossis occipitalis';
  r[18]:='Начало и крепление латеральной прямой мышцы головы = processus transversus atlantis - pars lateralis ossis occipitalis';
  r[19]:='Начало и крепление Ременной мышцы шеи = processus spinosi vertebrarum thoracicarum 3-4 - processus transversi vertebrarum cervicalium 1-3';
  r[20]:='Начало и крепление Ременной мышцы головы = ligamentum nuchae, processus spinosus vertebrae cervicalis 7, processus spinosi vertebrarum thoracicarum 1-4 - processus mastoideus';
  r[21]:='Начало и крепление Малой задней прямой мышцы головы = tuberculum posterius atlantis - linea nuchalis inferior ossis occipitalis';
  r[22]:='Начало и крепление Большой задней прямой мышцы головы = processus spinosus axis - linea nuchalis inferior ossis occipitalis';
  r[23]:='Начало и крепление Верхней косой мышцы головы = processus transversus atlantis - linea nuchalis inferior ossis occipitalis';
  r[24]:='Начало и крепление Нижней косой мышцы головы = processus spinosus axis - processus transversus atlantis';
  r[25]:='Начало и крепление мышцы, поднимающей лопатку = processus transversi vertebrarum cervicalium 1-4 - angulus superior scapulae';
  r[26]:='Начало и крепление Полуостистой мышцы головы = processus transversi vertebrarum cervicalium 4-7, processus transversi vertebrarum thoracicarum 1-6 - linea nuchalis superior ossis occipitalis';
  r[27]:='Начало и крепление Подвздошно-реберной мышцы шеи = anguli costarum 1-5 - processus transversi vertebrarum cervicalium 4-6';
  r[28]:='Начало и крепление Длиннейшей мышцы шеи = processus transversi vertebrarum thoracicarum 1-5 - processus transversi vertebrarum cervicalium 2-5';
  r[29]:='Начало и крепление Длиннейшей мышцы головы = processus transversi vertebrarum cervicalium 5-7, processus transversi vertebrarum thoracicarum 1-3 - processus mastoiedus ossis occipitalis';
  r[30]:='Начало и крепление нижней косой части длинной мышцы шеи = corpora vertebrarum thoracicarum 1-3 - processus transversi vertebrarum cervicalium 5-6';
  r[31]:='Начало и крепление верхней косой части длинной мышцы шеи = processus transversi vertebrarum cervicalium 3-5 - tuberculum anterius atlantis';
  r[32]:='Начало и крепление остистой мышцы шеи = processus spinosi vertebrarum cervicalium 6-7, processus spinosi vertebrarum thoracicarum 1-2 - processus spinosi vertebrarum cervicalium 2-4';
  r[33]:='Начало и крепление полуостистой мышцы шеи = processus transversus vertebrae cervicalis 7, processus transversi vertebrarum thoracicarum 1-6 - processus spinosi vertebrarum cervicalium 2-5';
  r[34]:='Начало и крепление трапецевидной мышци = protuberantia occipitalis externa, linea nuchalis superior ossis occipitalis, ligamentum nuchae, processus spinosus vertebrae cervicalis 7, processus spinosi vertebrarum thoracicarum 1-12, ligamentum supraspinale - clavicula, acromion, spina scapulae';
  
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