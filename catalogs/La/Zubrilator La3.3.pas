
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
  
r[1]:='аминазин = Aminazinum i n';
r[2]:='фенол = Phenolum i n';
r[3]:='анальгин = Analginum i n';
r[4]:='хлороформ = Chloroformium i n';
r[5]:='анестезин = Anaesthesinum i n';
r[6]:='нафталан = Naphthalanum i n';
r[7]:='новокаин = Novocainum i n';
r[8]:='адреналин = Adrenalinum i n';
r[9]:='атропин = Atropinum i n';
r[10]:='лидокаин = Lidocainum i n';
r[11]:='эфедрин = Ephedrinum i n';
r[12]:='синтомицин = Synthomycinum i n';
r[13]:='вазелин = Vaselinum i n';
r[14]:='ихтиол = Ichthyolum i n';
r[15]:='тетрациклин = Tetracyclinum i n';
r[16]:='нистатин = Nystatinum i n';
r[17]:='ментол = Mentholum i n';
r[18]:='иодоформ = Iodoformium i n';
r[19]:='стрептоцид = Streptocidum i n';
r[20]:='вазелин = Vaselinum i n';
r[21]:='димедрол = Dimedrolum i n';
r[22]:='кокаин = Cocainum i n';
r[23]:='эритромицин = Erythromycinum i n';
r[24]:='цинк = Zincum i n';
r[25]:='тальк = Talcum i n';
r[26]:='калий = Kalium i n';
r[27]:='йод = Iodum i n';
r[28]:='цинк = Zincum i n';
r[29]:='ртуть = Hydrargyrum i n';
r[30]:='водород = Hydrogenium i n';
r[31]:='чистый = purus a um';
r[32]:='камфорный = camphoratus a um';
r[33]:='аскорбиновый = ascorbinicus a um';
r[34]:='дистиллированный = destillatus a um';
r[35]:='перечный = piperitus a um';
r[36]:='спиртовой = spirituosus a um';
r[37]:='этиловый = aethylicus a um';
r[38]:='салициловый = salicylicus a um';
r[39]:='тертый = tritus a um';
r[40]:='вощеный = ceratus a um';
r[41]:='осажденный = praecipitatus a um';
r[42]:='медицинский = medicinalis e';
r[43]:='разведенный = dilutus a um';
r[44]:='жидкий = fluidus a um';
r[45]:='весенний = vernalis e';
r[46]:='валериана = Valeriana ae f';
r[47]:='мята = Mentha ae f';
r[48]:='ромашка = Chamomilla ae f';
r[49]:='эвкалипт = Eucalyptus i f';
r[50]:='шалфей = Salvia ae f';
r[51]:='горицвет = Adonis idis f';
r[52]:='лист = folium i n';
r[53]:='корневище = rhizoma atis n';
r[54]:='пшеница = Tricicum i n';
r[55]:='цветок = flos oris m';
r[56]:='бензоат = benzoas atis m';
r[57]:='окись = oxydum i n';
r[58]:='витамин = Vitaminum i n';
r[59]:='сахар = Saccharum i n';
r[60]:='иодид = iodidum i n';
r[61]:='вода = aqua ae f';
r[62]:='аммоний = Ammonium i n';
r[63]:='спирт = spiritus us m';
r[64]:='эфир = aether eris m';
r[65]:='перекись = peroxydum i n';
r[66]:='тальк = Talcum i n';
r[67]:='тимол = Thymolum i n';
r[68]:='сера = sulfur uris n';
r[69]:='крахмал = Amylum i n';
r[70]:='кислота = acidum i n';
r[71]:='масло = oleum i n';
r[72]:='таблетка = tabuletta ae f';
r[73]:='драже = dragee';
r[74]:='настойка = tinctura ae f';
r[75]:='мазь = unguentum i n';
r[76]:='паста = pasta ae f';
r[77]:='вода = aqua ae f';
r[78]:='порошок = pulvis eris m';
r[79]:='глина = bolus i f';
r[80]:='раствор = solutio onis f';
r[81]:='настой = infusum i n';
r[82]:='линимент = Linimentum i n';
r[83]:='персиковое масло = oleum Persicorum';
r[84]:='бриллиантовая зелень = Viride nitens, Viridis nitentis n';
r[85]:='выдай такие дозы числом = Da tales doses Numero';
r[86]:='сколько потребуется = quantum satis';
r[87]:='смешай, чтобы образовалось = Misce, ut fiat';
r[88]:='смешай, чтобы образовались = Misce, ut fiant';
r[89]:='пусть будут выданы такие дозы числом = Dentur tales doses Numero';
r[90]:='пусть будет смешано = Misceatur';
r[91]:='пусть будет обозначено = Signetur';
r[92]:='по по ровну = ana';
r[93]:='до = ad';
r[94]:='хорошо = bene';
r[95]:='быстро = cito';
r[96]:='глицерин = Glycerinum i n';
r[97]:='танин = Tanninum i n';
r[98]:='капля = gutta ae f';
r[99]:='экстракт = extractum i n';
r[100]:='в темной склянке = in vitro nigro';
r[101]:='в склянке = in vitro';
r[102]:='исходя из требований, немедленно = ex tempore';
r[103]:='от кашля = contra tussim';
r[104]:='от лихорадки = contra febrim';
r[105]:='Для внутреннего применения = Ad usum internum';
r[106]:='Для наружного применения = Ad usum externum';
r[107]:='Для собственного применения = Ad usum proprium';
r[108]:='корень = radix icis f';
r[109]:='очищенный = rectificatus a um';  
r[110]:='мельчайший = subtilissimus a um';  
  
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