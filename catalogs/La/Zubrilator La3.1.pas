
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
  max := 110;
  
r[1]:='Aminazinum, i n = аминазин';
r[2]:='Phenolum, i n = фенол';
r[3]:='Analginum, i n = анальгин';
r[4]:='Chloroformium, i n = хлороформ';
r[5]:='Anaesthesinum, i n = анестезин';
r[6]:='Naphthalanum, i n = нафталан';
r[7]:='Novocainum, i n = новокаин';
r[8]:='Adrenalinum, i n = адреналин';
r[9]:='Atropinum, i n = атропин';
r[10]:='Lidocainum, i n = лидокаин';
r[11]:='Ephedrinum, i n = эфедрин';
r[12]:='Synthomycinum, i n = синтомицин';
r[13]:='Vaselinum, i n = вазелин';
r[14]:='Ichthyolum, i n = ихтиол';
r[15]:='Tetracyclinum, i n = тетрациклин';
r[16]:='Nystatinum, i n = нистатин';
r[17]:='Mentholum, i n = ментол';
r[18]:='Iodoformium, i n = йодоформ';
r[19]:='Streptocidum, i n = стрептоцид';
r[20]:='Vaselinum i n = вазелин';
r[21]:='Dimedrolum, i n = димедрол';
r[22]:='Cocainum, i n = кокаин';
r[23]:='Erythromycinum, i n = эритромицин';
r[24]:='Zincum, i n = цинк';
r[25]:='Talcum, i n = тальк';
r[26]:='Kalium, i n = калий';
r[27]:='Iodum, i n = йод';
r[28]:='Zincum, i n = цинк';
r[29]:='Hydrargyrum, i n = ртуть';
r[30]:='Hydrogenium, i n = водород';
r[31]:='purus, a, um = чистый';
r[32]:='camphoratus, a, um = камфорный';
r[33]:='ascorbinicus, a, um = аскорбиновый';
r[34]:='destillatus, a, um = дистиллированный';
r[35]:='piperītus, a, um = перечный';
r[36]:='spirituosus, a, um = спиртовой';
r[37]:='aethylicus, a, um = этиловый';
r[38]:='salicylicus, a um = салициловый';
r[39]:='tritus, a um = тертый';
r[40]:='ceratus, a, um = вощеный';
r[41]:='praecipitatus, a, um = осажденный';
r[42]:='medicinalis, e = медицинский';
r[43]:='dilutus, a, um = разведенный';
r[44]:='fluidus, a, um = жидкий';
r[45]:='vernalis, e = весенний';
r[46]:='Valeriana, ae f = валериана';
r[47]:='Mentha, ae f = мята';
r[48]:='Chamomilla, ae f = ромашка';
r[49]:='Eucalyptus, i f = эвкалипт';
r[50]:='Salvia, ae f = шалфей';
r[51]:='Adonis, idis f (m) = адонис, горицвет';
r[52]:='folium, i n = лист';
r[53]:='rhizomа, atis n = корневище';
r[54]:='Tricicum, i n = пшеница';
r[55]:='flos, oris m = цветок';
r[56]:='benzoas, ātis m = бензоат';
r[57]:='oxўdum, i n = окись';
r[58]:='Vitaminum, i n = витамин';
r[59]:='Sacchărum, i n = сахар';
r[60]:='iodĭdum, i n = йодид';
r[61]:='aqua, ae f = вода';
r[62]:='Ammonium, i n = аммоний';
r[63]:='spiritus, us m = спирт';
r[64]:='aether, eris m = эфир';
r[65]:='peroxydum, i n = перекись';
r[66]:='Talcum i n = тальк';
r[67]:='Thymolum, i n = тимол';
r[68]:='sulfur, uris n = сера';
r[69]:='Amylum, i n = крахмал';
r[70]:='acĭdum, i n = кислота';
r[71]:='oleum, i n = масло';
r[72]:='tabuletta, ae f = таблетка';
r[73]:='dragee = драже';
r[74]:='tinctura, ae f = настойка';
r[75]:='unguentum, i n = мазь';
r[76]:='pasta, ae f = паста';
r[77]:='aqua, ae f = вода';
r[78]:='pulvis, ĕris m = порошок';
r[79]:='bolus, i f = глина';
r[80]:='solutio, onis f = раствор';
r[81]:='infusum, i n = настой';
r[82]:='Linimentum, i n = линимент';
r[83]:='oleum Persicorum = персиковое масло';
r[84]:='Viride nitens, Viridis nitentis n = бриллиантовая зелень';
r[85]:='Da tales doses Numero = Выдай такие дозы числом';
r[86]:='quantum satis = сколько потребуется';
r[87]:='Misce ut fiat = Смешай, чтобы образовалось';
r[88]:='Misce ut fiant = Смешай, чтобы образовались';
r[89]:='Dentur tales doses Numero = Пусть будут выданы такие дозы числом';
r[90]:='Misceatur = Пусть будет смешано';
r[91]:='Signetur = Пусть будет обозначено';
r[92]:='ana = по, по ровну';
r[93]:='ad = до';
r[94]:='bene = хорошо';
r[95]:='cito = быстро';
r[96]:='Glycerinum, i n = глицерин';
r[97]:='Tanninum, i n = танин';
r[98]:='Gutta, ae f = капля';
r[99]:='extractum i n = экстракт';
r[100]:='in vitro nigro = в темной склянке';
r[101]:='in vitro = в склянке';
r[102]:='ex tempore = исходя из требований, немедленно';
r[103]:='contra tussim = от кашля';
r[104]:='contra febrim = от лихорадки';
r[105]:='Ad usum internum = Для внутреннего применения';
r[106]:='Ad usum externum = Для наружного применения';
r[107]:='Ad usum proprium = Для собственного применения';
r[108]:='radix icis f = корень';
r[109]:='rectificatus a um = очищенный';
r[110]:='subtilissimus a um = мельчайший';    
  
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