uses crt;

var
  l, p, i, t, k, max, w: integer;
  s, j: real;
   n: array[1..110] of integer;
   r: array[1..110] of string;
  r2: array[1..110] of string;
  r3: array[1..110] of string;
   a: array[1..110] of string;
   q: array[1..110] of integer; 

begin
  k := 0;
  max := 110;
  
r[1]:='аминазин = Aminazinum';
r[2]:='фенол = Phenolum';
r[3]:='анальгин = Analginum';
r[4]:='хлороформ = Chloroformium';
r[5]:='анестезин = Anaesthesinum';
r[6]:='нафталан = Naphthalanum';
r[7]:='новокаин = Novocainum';
r[8]:='адреналин = Adrenalinum';
r[9]:='атропин = Atropinum';
r[10]:='лидокаин = Lidocainum';
r[11]:='эфедрин = Ephedrinum';
r[12]:='синтомицин = Synthomycinum';
r[13]:='вазелин = Vaselinum';
r[14]:='ихтиол = Ichthyolum';
r[15]:='тетрациклин = Tetracyclinum';
r[16]:='нистатин = Nystatinum';
r[17]:='ментол = Mentholum';
r[18]:='иодоформ = Iodoformium';
r[19]:='стрептоцид = Streptocidum';
r[20]:='вазелин = Vaselinum';
r[21]:='димедрол = Dimedrolum';
r[22]:='кокаин = Cocainum';
r[23]:='эритромицин = Erythromycinum';
r[24]:='цинк = Zincum';
r[25]:='тальк = Talcum';
r[26]:='калий = Kalium';
r[27]:='йод = Iodum';
r[28]:='цинк = Zincum';
r[29]:='ртуть = Hydrargyrum';
r[30]:='водород = Hydrogenium';
r[31]:='чистый = purus';
r[32]:='камфорный = camphoratus';
r[33]:='аскорбиновый = ascorbinicus';
r[34]:='дистиллированный = destillatus';
r[35]:='перечный = piperitus';
r[36]:='спиртовой = spirituosus';
r[37]:='этиловый = aethylicus';
r[38]:='салициловый = salicylicus';
r[39]:='тертый = tritus';
r[40]:='вощеный = ceratus';
r[41]:='осажденный = praecipitatus';
r[42]:='медицинский = medicinalis';
r[43]:='разведенный = dilutus';
r[44]:='жидкий = fluidus';
r[45]:='весенний = vernalis';
r[46]:='валериана = Valeriana';
r[47]:='мята = Mentha';
r[48]:='ромашка = Chamomilla';
r[49]:='эвкалипт = Eucalyptus';
r[50]:='шалфей = Salvia';
r[51]:='горицвет = Adonis';
r[52]:='лист = folium';
r[53]:='корневище = rhizoma';
r[54]:='пшеница = Tricicum';
r[55]:='цветок = flos';
r[56]:='бензоат = benzoas';
r[57]:='окись = oxydum';
r[58]:='витамин = Vitaminum';
r[59]:='сахар = Saccharum';
r[60]:='иодид = iodidum';
r[61]:='вода = aqua';
r[62]:='аммоний = Ammonium';
r[63]:='спирт = spiritus';
r[64]:='эфир = aether';
r[65]:='перекись = peroxydum';
r[66]:='тальк = Talcum';
r[67]:='тимол = Thymolum';
r[68]:='сера = sulfur';
r[69]:='крахмал = Amylum';
r[70]:='кислота = acidum';
r[71]:='масло = oleum';
r[72]:='таблетка = tabuletta';
r[73]:='драже = dragee';
r[74]:='настойка = tinctura';
r[75]:='мазь = unguentum';
r[76]:='паста = pasta';
r[77]:='вода = aqua';
r[78]:='порошок = pulvis';
r[79]:='глина = bolus';
r[80]:='раствор = solutio';
r[81]:='настой = infusum';
r[82]:='линимент = Linimentum';
r[83]:='персиковое масло = oleum Persicorum';
r[84]:='бриллиантовая зелень = Viride nitens';
r[85]:='выдай такие дозы числом = Da tales doses Numero';
r[86]:='сколько потребуется = quantum satis';
r[87]:='смешай, чтобы образовалось = Misce, ut fiat';
r[88]:='смешай, чтобы образовались = Misce, ut fiant';
r[89]:='пусть будут выданы такие дозы числом = Dentur tales doses Numero';
r[90]:='пусть будет смешано = Misceatur';
r[91]:='пусть будет обозначено = Signetur';
r[92]:='по, по ровну = ana';
r[93]:='до = ad';
r[94]:='хорошо = bene';
r[95]:='быстро = cito';
r[96]:='глицерин = Glycerinum';
r[97]:='танин = Tanninum';
r[98]:='капля = gutta';
r[99]:='экстракт = extractum';
r[100]:='в темной склянке = in vitro nigro';
r[101]:='в склянке = in vitro';
r[102]:='исходя из требований, немедленно = ex tempore';
r[103]:='от кашля = contra tussim';
r[104]:='от лихорадки = contra febrim';
r[105]:='Для внутреннего применения = Ad usum internum';
r[106]:='Для наружного применения = Ad usum externum';
r[107]:='Для собственного применения = Ad usum proprium';
r[108]:='корень = radix';
r[109]:='очищенный = rectificatus';
r[110]:='мельчайший = subtilissimus';  
  
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
    
      write ('Продолжите: ');
      write (r2[t]);
      readln (a[t]);
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