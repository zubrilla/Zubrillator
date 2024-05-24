
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
  max := 384;
  
r[1] := 'ala ae f - крыло';
r[2] := 'apertura ae f - отверстие';
r[3] := 'arteria ae f - артерия';
r[4] := 'aqua ae f - вода';
r[5] := 'bucca ae f - щека';
r[6] := 'bursa ae f - сумка';
r[7] := 'clavicula ae f - ключица';
r[8] := 'concha ae f - раковина';
r[9] := 'crista ae f - гребень';
r[10] := 'dentura ae f - ряд зубов';
r[11] := 'eminentia ae f - возвышение';
r[12] := 'fibula ae f - малая берцовая кость';
r[13] := 'fossa ae f - ямка';
r[14] := 'fractura ae f - перелом';
r[15] := 'gingiva ae f - десна';
r[16] := 'glandula ae f - железа';
r[17] := 'gutta ae f - капля';
r[18] := 'incisura ae f - вырезка';
r[19] := 'lamina ae f - пластинка';
r[20] := 'linea ae f - линия';
r[21] := 'lingua ae f - язык';
r[22] := 'mandibula ae f - нижняя челюсть';
r[23] := 'maxilla ae f - верхняя челюсть';
r[24] := 'medulla ae f - спинной мозг';
r[25] := 'papilla ae f - сосочек';
r[26] := 'plica ae f - складка';
r[27] := 'pulpa ae f - пульпа';
r[28] := 'pustula ae f - гнойничок';
r[29] := 'rima ae f - щель';
r[30] := 'saliva ae f - слюна';
r[31] := 'adentia ae f - потеря зубов';
r[32] := 'cochlea ae f - улитка';
r[33] := 'comissura ae f - спайка, соединение';
r[34] := 'contractura ae f - сведение';
r[35] := 'corona ae f - коронка';
r[36] := 'fissura ae f - щель, трещина';
r[37] := 'lingula ae f - язычок';
r[38] := 'tela ae f - ткань';
r[39] := 'tunica ae f - оболочка';
r[40] := 'acusticus a um - слуховой';
r[41] := 'acutus a um - острый';
r[42] := 'aegrotus a um - больной';
r[43] := 'albus a um - белый';
r[44] := 'caninus a um - клыковый';
r[45] := 'deciduus a um - молочный';
r[46] := 'cariosus a um - кариесный';
r[47] := 'compactus a um - плотный';
r[48] := 'dexter a um - правый';
r[49] := 'externus a um - наружный';
r[50] := 'flavus a um - желтый';
r[51] := 'incisivus a um - резцовый';
r[52] := 'internus a um - внутренний';
r[53] := 'latus a um - широкий';
r[54] := 'longus a um - длинный';
r[55] := 'massetericus a um - жевательный';
r[56] := 'medianus a um - срединный';
r[57] := 'mucosus a um - слизистый';
r[58] := 'osseus a um - костный';
r[59] := 'obliquus a um - косой';
r[60] := 'palatinus a um - небный';
r[61] := 'paroticus a um - околоушной';
r[62] := 'primarius a um - первичный';
r[63] := 'profundus a um - глубокий';
r[64] := 'proprius a um - собственный';
r[65] := 'pterygoideus a um - крыловидный';
r[66] := 'purulentus a um - гнойный';
r[67] := 'secundarius a um - вторичный';
r[68] := 'sinister a um - левый';
r[69] := 'spongiosus a um - губчатый';
r[70] := 'zygomaticus a um - скуловой';
r[71] := 'venosus a um - венозный';
r[72] := 'submucosus a um - подслизистый';
r[73] := 'angulus i m - угол';
r[74] := 'cancer i m - рак';
r[75] := 'capitulum i n - головка';
r[76] := 'cavum i n - полость';
r[77] := 'cementum i n - цемент';
r[78] := 'cerebrum i n - головной мозг';
r[79] := 'cerebellum i n - мозжечок';
r[80] := 'collum i n - шейка';
r[81] := 'cranium i n - череп';
r[82] := 'dentinum i n - дентин';
r[83] := 'digitus i m - палец';
r[84] := 'enamelum i n - эмаль';
r[85] := 'esse - есть';
r[86] := 'frenulum i n - уздечка';
r[87] := 'fundus i m - дно';
r[88] := 'hemispasmus i m - полуспазм';
r[89] := 'labium leporinum - заячья губа';
r[90] := 'labium i n - губа';
r[91] := 'ligamentum i n - связка';
r[92] := 'morbus i m - болезнь';
r[93] := 'musculus i m - мышца';
r[94] := 'nasus i m - нос';
r[95] := 'nervus i m - нерв';
r[96] := 'nervus vagus - блуждающий нерв';
r[97] := 'nodus i m - узел';
r[98] := 'oculus i m - глаз';
r[99] := 'parodontium i n - пародонт';
r[100] := 'palatum i n - небо';
r[101] := 'periodontium i n - периодонт';
r[102] := 'plastica ae f - пластика';
r[103] := 'ramus i m - ветвь';
r[104] := 'saccus i m - мешок';
r[105] := 'sceleton i n - скелет';
r[106] := 'septum i n - перегородка';
r[107] := 'syndromum i n - синдром';
r[108] := 'stratum i n - слой';
r[109] := 'sulcus i m - борозда';
r[110] := 'tuberculum i n - бугорок';
r[111] := 'unguentum i n - мазь';
r[112] := 'vestibulum i n - преддверие';
r[113] := 'periodus i f - период';
r[114] := 'dare - давать';
r[115] := 'signare - обозначать';
r[116] := 'servare - хранить';
r[117] := 'sanare - врачевать';
r[118] := 'curare - заботиться';
r[119] := 'sterilisare - стерилизовать';
r[120] := 'destillare - дистиллировать';
r[121] := 'auscultare - выслушивать';
r[122] := 'praeparare - приготавливать';
r[123] := 'laborare - работать';
r[124] := 'miscere - смешивать';
r[125] := 'habere - иметь';
r[126] := 'recipere - брать';
r[127] := 'repetere - повторять';
r[128] := 'praescribere - прописывать';
r[129] := 'solvere - растворять';
r[130] := 'dividere - делить';
r[131] := 'finire - кончать';
r[132] := 'audire - слушать';
r[133] := 'linire - смазывать';
r[134] := 'abductor oris m - отводящая мышца';
r[135] := 'adductor oris m - приводящая мышца';
r[136] := 'aether ĕris m - эфир';
r[137] := 'apexicis m - верхушка';
r[138] := 'articulator oris m - артикулятор';
r[139] := 'buccinator oris m - щечная мышца';
r[140] := 'calor oris m - жар';
r[141] := 'carbo onis m - уголь';
r[142] := 'cortex icis m - кора';
r[143] := 'depressor oris m - опускающая мышца';
r[144] := 'dolor oris m - боль';
r[145] := 'extensor oris m - разгибающая мышца';
r[146] := 'flexor oris m - сгибающая мышца';
r[147] := 'herpes etis m - герпес';
r[148] := 'homo inis m - человек';
r[149] := 'levator oris m - поднимающая мышца';
r[150] := 'Liquor Ammonii caustici - нашатырный спирт';
r[151] := 'liquor oris m - жидкость';
r[152] := 'masseter ēris m - жевательная мышца';
r[153] := 'mordex icis m - прикус';
r[154] := 'paries etis m - стенка';
r[155] := 'pes pedis m - стопа';
r[156] := 'pulmo onis m - легкое';
r[157] := 'rubor oris m - краснота';
r[158] := 'tumor oris m - опухоль';
r[159] := 'cor cordis n - сердце';
r[160] := 'os ossis n - кость';
r[161] := 'os oris n - рот, устье';
r[162] := 'tuber eris n - бугор';
r[163] := 'abrasio onis f - выскабливание десен';
r[164] := 'acclusio onis f - смыкание';
r[165] := 'angulitis itidis f - заеда, ангулит';
r[166] := 'applicatio onis f - аппликация, наложение лекарства';
r[167] := 'articulatio onis f - сустав';
r[168] := 'carotis itidis f - сонная артерия';
r[169] := 'cavitas atis f - полость';
r[170] := 'cervix icis f - шея';
r[171] := 'dens accessorius - сверхкомплектный зуб';
r[172] := 'dens bifidus - раздвоенный зуб';
r[173] := 'dens caninus - клык';
r[174] := 'dens deciduus - выпадающий зуб';
r[175] := 'dens incisivus - резцовый зуб';
r[176] := 'dens multifidus - расщепленный зуб';
r[177] := 'dens permanens - постоянный зуб';
r[178] := 'dens serotinus - зуб мудрости';
r[179] := 'dens sapientiae - зуб мудрости';
r[180] := 'dentificatio onis f - образование зуба';
r[181] := 'dentitio onis f - прорезывание зуба';
r[182] := 'depulpatio onis f - удаление пульпы';
r[183] := 'desinfectio onis f - дезинфекция';
r[184] := 'epulis idis f - эпулис, опухоль десны';
r[185] := 'erosio onis f - эрозия';
r[186] := 'extractio onis f - извлечение, удаление';
r[187] := 'implantatio onis f - имплантация';
r[188] := 'impressio onis f - вдавление';
r[189] := 'incisio onis f - разрез';
r[190] := 'intubatio onis f - введение трубки';
r[191] := 'iris iridis f - радужка';
r[192] := 'mobilitas atis f - подвижность';
r[193] := 'parotis itidis f - околоушная железа';
r[194] := 'protrusio onis f - выпячивание';
r[195] := 'radix icis f - корень';
r[196] := 'regio onis f - область';
r[197] := 'resectio onis f - вырезание части органа';
r[198] := 'solutio onis f - раствор';
r[199] := 'tuberositas atis f - бугристость';
r[200] := 'canalis is m - канал';
r[201] := 'dens dentis m - зуб';
r[202] := 'larynx ngis m - гортань';
r[203] := 'margo inis m - край';
r[204] := 'pharynx ngis m - глотка';
r[205] := 'sanguis inis m - кровь';
r[206] := 'tendo inis m - сухожилие';
r[207] := 'pulvis eris m - порошок';
r[208] := 'pancreas atis n - поджелудочная железа';
r[209] := 'caput itis n - головка';
r[210] := 'chiasma atis n - перекрест';
r[211] := 'corpus oris n - тело';
r[212] := 'cochlear aris n - ложка';
r[213] := 'femur oris n - бедренная кость';
r[214] := 'foramen inis n - отверстие';
r[215] := 'germen inis n - зачаток';
r[216] := 'hepar atis n - печень';
r[217] := 'neoplasma atis n - новообразование, опухоль';
r[218] := 'occiput itis n - затылок';
r[219] := 'oedema atis n - отек';
r[220] := 'pectus oris n - грудь';
r[221] := 'pus puris n - гной';
r[222] := 'semen inis n - семя';
r[223] := 'symptoma atis n - симптом';
r[224] := 'tempus oris n - висок, время';
r[225] := 'trema atis n - промежуток между зубами';
r[226] := 'vulnus eris n - рана';
r[227] := 'zygoma atis n - скула';
r[228] := 'arteriosus a um - артериальный';
r[229] := 'benignus a um - доброкачественный';
r[230] := 'contagiosus a um - заразный';
r[231] := 'cutaneus a um - кожный';
r[232] := 'lymphaticus a um - лимфатический';
r[233] := 'malignus a um - злокачественный';
r[234] := 'nutritius a um - питательный';
r[235] := 'venosus a um - венозный';
r[236] := 'abdomen inis n - живот';
r[237] := 'animal alis n - животное';
r[238] := 'auris is f - ухо';
r[239] := 'calcar alis n - шпора';
r[240] := 'curatio onis f - лечение';
r[241] := 'cutis is f - кожа';
r[242] := 'frons frontis f - лоб';
r[243] := 'meninx ngis f - мозговая оболочка';
r[244] := 'naevus i m - родинка';
r[245] := 'pars partis f - часть';
r[246] := 'rete is n - сеть';
r[247] := 'vas vasis n - сосуд';
r[248] := 'analysis is f - анализ';
r[249] := 'basis is f - основание';
r[250] := 'crisis is f - перелом болезни';
r[251] := 'diagnosis is f - диагноз';
r[252] := 'dosis is f - доза';
r[253] := 'epicrisis is f - эпикриз';
r[254] := 'lysis is f - разложение';
r[255] := 'narcosis is f - наркоз';
r[256] := 'necrosis is f - отмирание';
r[257] := 'phthisis is f - туберкулез, чахотка';
r[258] := 'prognosis is f - прогноз';
r[259] := 'ptosis is f - опущение';
r[260] := 'sepsis is f - гниение, заражение';
r[261] := 'stasis is f - неподвижное состояние';
r[262] := 'tuberculosis is f - туберкулез';
r[263] := 'febris is f - лихорадка';
r[264] := 'pelvis is f - таз';
r[265] := 'pertussis is f - коклюш';
r[266] := 'tussis is f - кашель';
r[267] := 'diastema atis n - диастема, промежуток между средними резцами';
r[268] := 'gargarisma atis n - полоскание';
r[269] := 'symptomа atis n - признак, симптом';
r[270] := 'systema atis n - система';
r[271] := 'trauma atis n - повреждение';
r[272] := 'zygoma atis n - скула';
r[273] := '(im)mobilis e - (не)подвижный';
r[274] := '(in)curabilis e - (не)излечимый';
r[275] := '(in)operabilis e - (не)операбельный';
r[276] := 'alveolaris e - альвеолярный';
r[277] := 'articularis e - суставной';
r[278] := 'auricularis e - ушной';
r[279] := 'basilaris - основной';
r[280] := 'brevis e - короткий';
r[281] := 'buccalis e - щечный';
r[282] := 'capillaris e - капиллярный';
r[283] := 'centralis e - центральный';
r[284] := 'cerebralis e - мозговой';
r[285] := 'cervicalis e - шейный';
r[286] := 'communis e - общий';
r[287] := 'frontalis e - лобный';
r[288] := 'labialis e - губной';
r[289] := 'lacrimalis e - слезный';
r[290] := 'lateralis e - боковой';
r[291] := 'mandibularis e - нижнечелюстной';
r[292] := 'maxillaris e - верхнечелюстной';
r[293] := 'medialis e - срединный';
r[294] := 'molaris e - молярный, большой коренной';
r[295] := 'normalis e - правильный';
r[296] := 'occipitalis e - затылочный';
r[297] := 'oralis e - ротовой';
r[298] := 'orbitalis e - глазничный';
r[299] := 'palmaris e - ладонный';
r[300] := 'parietalis e - пристеночный, теменной';
r[301] := 'pectoralis e - грудной';
r[302] := 'praemolaris e - премолярный, малый коренной';
r[303] := 'pulmonalis e - легочный';
r[304] := 'radialis e - лучевой';
r[305] := 'superficialis e - поверхностный';
r[306] := 'talis e - такой';
r[307] := 'temporalis e - височный';
r[308] := 'tenuis e - тонкий';
r[309] := 'ulnaris e - локтевой';
r[310] := 'visceralis e - висцеральный, внутренностный';
r[311] := 'biceps cipitis - двуглавый';
r[312] := 'triceps cipitis - трехглавый';
r[313] := 'guadriceps cipitis - четырехглавый';
r[314] := 'par paris - равный';
r[315] := 'impar imparis - непарный';
r[316] := 'duplex icis - двойной';
r[317] := 'simplex icis - простой';
r[318] := 'teres teretis - круглый';
r[319] := 'recens ntis - свежий';
r[320] := 'bonus a um - хороший';
r[321] := 'melior ius - лучший';
r[322] := 'optimus a um - наилучший';
r[323] := 'malus a um - плохой';
r[324] := 'peior ius - худший';
r[325] := 'pessimus a um - наихудший';
r[326] := 'magnus a um - большой';
r[327] := 'major ius - больший';
r[328] := 'maximus a um - наибольший';
r[329] := 'parvus a um - малый';
r[330] := 'minor minus - меньший';
r[331] := 'minimus a um - наименьший';
r[332] := 'anterior ius - передний';
r[333] := 'inferior ius - нижний';
r[334] := 'posterior ius - задний';
r[335] := 'superior ius - верхний';
r[336] := 'adjuvans ntis - вспомогательный';
r[337] := 'constituens ntis - формообразующий';
r[338] := 'corrigens ntis - исправляющий';
r[339] := 'deformans ntis - деформирующий';
r[340] := 'latens ntis - скрытый';
r[341] := 'penetrans ntis - проникающий';
r[342] := 'perforans ntis - прободающий';
r[343] := 'permanens ntis - постоянный';
r[344] := 'prominens ntis - выступающий';
r[345] := 'recipiens ntis - получающий';
r[346] := 'abscessus us m - гнойник, нарыв';
r[347] := 'arcus us m - дуга';
r[348] := 'collapsus us m - упадок сердечной деятельности';
r[349] := 'cornu us n - рог';
r[350] := 'ductus us m - проток';
r[351] := 'fructus us m - плод';
r[352] := 'gelu us n - лед';
r[353] := 'genu us n - колено';
r[354] := 'habitus us m - внешний вид';
r[355] := 'meatus us m - проход';
r[356] := 'plexus us m - сплетение';
r[357] := 'processus us m - отросток';
r[358] := 'pulsus us m - пульс';
r[359] := 'sinus us m - пазуха';
r[360] := 'spiritus us m - спирт';
r[361] := 'manus us f - рука, кисть';
r[362] := 'caries ei f - кариес';
r[363] := 'combustio onis f - ожог';
r[364] := 'commotio onis f - сотрясение';
r[365] := 'congelatio onis f - обморожение';
r[366] := 'facies ei f - лицо, поверхность';
r[367] := 'mamma ae f - молочная железа';
r[368] := 'rabies ei f - бешенство';
r[369] := 'res ei f - дело, вещь';
r[370] := 'ruptura ae f - разрыв';
r[371] := 'scabies ei f - чесотка';
r[372] := 'series ei f - ряд';
r[373] := 'species ei f - сбор';
r[374] := 'superficies ei f - поверхность, наружная сторона';
r[375] := 'suppuratio onis f - нагноение';
r[376] := 'vulnus conquassatum - размозженная рана';
r[377] := 'vulnus contusum - рана от ушиба';
r[378] := 'vulnus incisum - резаная рана';
r[379] := 'vulnus laceratum - рваная рана';
r[380] := 'vulnus morsum - укушенная рана';
r[381] := 'vulnus punctum - колотая рана';
r[382] := 'vulnus sclopetarium - огнестрельная рана';
r[383] := 'vulnus venenatum - отравленная рана';
r[384] := 'dies ei m - день';    
  
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