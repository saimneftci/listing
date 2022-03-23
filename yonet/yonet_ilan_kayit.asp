<!--#INCLUDE FILE="../fonksiyon.asp"-->
<!--#INCLUDE FILE="sifre.asp"-->
<%
if request("ilan_sil")<>"" THEN
SQLstring="delete * from ilan where intilan_no="&request("ilan_sil")
set veri=Server.Createobject("ADODB.Connection")
veri.open ("DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & server.mappath("/isfirsatlari/db/eleman.mdb"))
set rs=veri.execute(SQLstring)

Response.Write request("ilan_sil")&" Nolu kayýt SÝLÝNDÝ"
%><html><body bgcolor="#FFFFFF">
<a href="yonet.asp"><br>
Yönet</a><%
ELSE
SQLstring="SELECT * FROM ilan WHERE intilan_no=" & request("intilan_no")

set veri=Server.Createobject("ADODB.Connection")
veri.open ("DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & server.mappath("/isfirsatlari/db/eleman.mdb"))
set rs=veri.execute(SQLstring)
IF NOT rs.EOF THEN
intilan_kategori=rs("intilan_kategori")
strilan_firma=rs("strilan_firma")
strilan_mevki=rs("strilan_mevki")
strilan_metin=rs("strilan_metin")
strilan_yetkili=rs("strilan_yetkili")
intilan_sehir=rs("intilan_sehir")
strilan_telefon_alan_kodu=rs("strilan_telefon_alan_kodu")
strilan_fax_alan_kodu=rs("strilan_fax_alan_kodu")
strilan_telefon=rs("strilan_telefon")
strilan_fax=rs("strilan_fax")
strilan_email=rs("strilan_email")
intilan_seviye=rs("intilan_seviye")
strilan_ucret=rs("strilan_ucret")
intilan_mesai=rs("intilan_mesai")
intilan_firma_sehir=rs("intilan_firma_sehir")
strilan_firma_adres=rs("strilan_firma_adres")
END IF
%>

<head>
<title>Yönetim</title>
<meta http-equiv="Content-Type" content="text/html; charset=">
<LINK href="../bicim.css" type=text/css rel=stylesheet>
</head>


<div align=center>
<a href='yonet_ilan_kayit.asp?ilan_sil=<%=request("intilan_no")%>'>Bu Kaydý SÝL</a>
  <form method="post" action="yonet_ilan_kaydet.asp">
	<table width="750" border="0">
	  <tr>
	  <td><br>
		Sitemizdeki araçlarý kullanarak aradýðýnýz kalifiye elemanlarý <br>
		<img src="../resimler/isveren_buyuk.gif" width="140" height="134" align="top"><br>
		sadece birkaç týklamayla bulabilisiniz.</td>
	  <td>
		  <table width="590" border="0" bgcolor="000000">
			<tr> 
			<td colspan="2" bgcolor="#333333"> 
			  <div align="center"><font color="#FFFFFF">ELEMAN ARAYANLAR ÝÇÝN 
				ÝLAN FORMU </font></div>
			</td>
		  </tr>
		  <tr> 
			<td width="59%" bgcolor="CE1031"> 
			  <div align="right"><font color="#FFFFFF">Ýlan Kategorisi</font></div>
			</td>
			<td width="41%" bgcolor="e0e7e0"> 
			  <select class="TextBox" name="intilan_kategori">
<option value="0" <%=SELECTED("1",intilan_kategori)%>>Bekleyenler
				<option value=1 <%=SELECTED("2",intilan_kategori)%>>Bilgisayar 
				<option value=2 <%=SELECTED("3",intilan_kategori)%>>Internet 
				<option value=3 <%=SELECTED("4",intilan_kategori)%>>Elektronik 
				<option value=4 <%=SELECTED("5",intilan_kategori)%>>Elektrik 
				<option value=5 <%=SELECTED("6",intilan_kategori)%>>Otomotiv 
				<option value=6 <%=SELECTED("6",intilan_kategori)%>>Mimar-Mühendis 
				<option value=7 <%=SELECTED("7",intilan_kategori)%>>Sekreter 
				<option value=8 <%=SELECTED("8",intilan_kategori)%>>Pazarlama 
				<option value=9 <%=SELECTED("9",intilan_kategori)%>>Tekstil 
				<option value=10 <%=SELECTED("10",intilan_kategori)%>>Turizm 
				<option value=11 <%=SELECTED("11",intilan_kategori)%>>Saðlýk 
				<option value=12 <%=SELECTED("12",intilan_kategori)%>>Banka-Muhasebe 
				<option value=13 <%=SELECTED("13",intilan_kategori)%>>Halkla Ýliþkiler 
				<option value=14 <%=SELECTED("14",intilan_kategori)%>>Eðitim 
				<option value=15 <%=SELECTED("15",intilan_kategori)%>>Genel 
			  </select>
			</td>
		  </tr>
		  <tr> 
			<td width="59%" bgcolor="CE1031"> 
			  <div align="right"><font color="#FFFFFF">Alýnacak Elemanýn Pozisyonu</font></div>
			</td>
			<td width="41%" bgcolor="e0e7e0"> 
			  <input class="TextBox" type="text" size="50" name="strilan_mevki" maxlength="100" value="<%=strilan_mevki%>">
			</td>
		  </tr>
		  <tr> 
			  <td bgcolor="CE1031" height="86"> 
				<div align="right"><font color="#FFFFFF">Ýlanýn Açýklamasý</font></div>
			</td>
			  <td bgcolor="e0e7e0" height="86"> 
				<textarea class="TextBox" cols="55" name="strilan_metin" wrap="VIRTUAL" rows="10"><%=strilan_metin%></textarea>
			</td>
		  </tr>
		  <tr> 
			<td width="59%" bgcolor="CE1031"> 
			  <div align="right"><font color="#FFFFFF"><font color="#FFFFFF">Ýlaný 
				Veren Firma</font></font></div>
			</td>
			<td width="41%" bgcolor="e0e7e0"> 
			  <input class="TextBox" type="text" size="50" name="strilan_firma" maxlength="100" value="<%=strilan_firma%>">
			</td>
		  </tr>
		  <tr> 
			<td width="59%" bgcolor="CE1031"> 
			  <div align="right"><font color="#FFFFFF">Ýstihdam Ýli</font></div>
			</td>
			<td width="41%" bgcolor="e0e7e0"> 
			  <select class="TextBox" name="intilan_sehir">
				<option value=1 <%=SELECTED("1",intilan_sehir)%>>Ýstanbul 
				<option value=2 <%=SELECTED("2",intilan_sehir)%>>Ankara 
				<option value=3 <%=SELECTED("3",intilan_sehir)%>>Ýzmir 
				<option value=4 <%=SELECTED("4",intilan_sehir)%>>Bursa 
				<option value=5 <%=SELECTED("5",intilan_sehir)%>>Adana 
				<option value=6 <%=SELECTED("6",intilan_sehir)%>>Adýyaman 
				<option value=7 <%=SELECTED("7",intilan_sehir)%>>Afyon 
				<option value=8 <%=SELECTED("8",intilan_sehir)%>>Aðrý 
				<option value=9 <%=SELECTED("9",intilan_sehir)%>>Aksaray 
				<option value=10 <%=SELECTED("10",intilan_sehir)%>>Amasya 
				<option value=11 <%=SELECTED("11",intilan_sehir)%>>Antalya 
				<option value=12 <%=SELECTED("12",intilan_sehir)%>>Ardahan 
				<option value=13 <%=SELECTED("13",intilan_sehir)%>>Artvin 
				<option value=14 <%=SELECTED("14",intilan_sehir)%>>Aydýn 
				<option value=15 <%=SELECTED("15",intilan_sehir)%>>Balýkesir 
				<option value=16 <%=SELECTED("16",intilan_sehir)%>>Bartýn 
				<option value=17 <%=SELECTED("17",intilan_sehir)%>>Batman 
				<option value=18 <%=SELECTED("18",intilan_sehir)%>>Bayburt 
				<option value=19 <%=SELECTED("19",intilan_sehir)%>>Bilecik 
				<option value=20 <%=SELECTED("20",intilan_sehir)%>>Bingöl 
				<option value=21 <%=SELECTED("21",intilan_sehir)%>>Bitlis 
				<option value=22 <%=SELECTED("22",intilan_sehir)%>>Bolu 
				<option value=23 <%=SELECTED("23",intilan_sehir)%>>Burdur 
				<option value=24 <%=SELECTED("24",intilan_sehir)%>>Çanakkale 
				<option value=25 <%=SELECTED("25",intilan_sehir)%>>Çankýrý 
				<option value=26 <%=SELECTED("26",intilan_sehir)%>>Çorum 
				<option value=27 <%=SELECTED("27",intilan_sehir)%>>Denizli 
				<option value=28 <%=SELECTED("28",intilan_sehir)%>>Diyarbakýr 
				<option value=29 <%=SELECTED("29",intilan_sehir)%>>Edirne 
				<option value=30 <%=SELECTED("30",intilan_sehir)%>>Elazýð 
				<option value=31 <%=SELECTED("31",intilan_sehir)%>>Erzincan 
				<option value=32 <%=SELECTED("32",intilan_sehir)%>>Erzurum 
				<option value=33 <%=SELECTED("33",intilan_sehir)%>>Eskiþehir 
				<option value=34 <%=SELECTED("34",intilan_sehir)%>>Gaziantep 
				<option value=35 <%=SELECTED("35",intilan_sehir)%>>Giresun 
				<option value=36 <%=SELECTED("36",intilan_sehir)%>>Gümüþhane 
				<option value=37 <%=SELECTED("37",intilan_sehir)%>>Hakkari 
				<option value=38 <%=SELECTED("38",intilan_sehir)%>>Hatay 
				<option value=39 <%=SELECTED("39",intilan_sehir)%>>Iðdýr 
				<option value=40 <%=SELECTED("40",intilan_sehir)%>>Isparta 
				<option value=41 <%=SELECTED("41",intilan_sehir)%>>Ýçel 
				<option value=42 <%=SELECTED("42",intilan_sehir)%>>Kahramanmaraþ 
				<option value=43 <%=SELECTED("43",intilan_sehir)%>>Karabük 
				<option value=44 <%=SELECTED("44",intilan_sehir)%>>Karaman 
				<option value=45 <%=SELECTED("45",intilan_sehir)%>>Kars 
				<option value=46 <%=SELECTED("46",intilan_sehir)%>>Kastamonu 
				<option value=47 <%=SELECTED("47",intilan_sehir)%>>Kayseri 
				<option value=48 <%=SELECTED("48",intilan_sehir)%>>Kýrýkkale 
				<option value=49 <%=SELECTED("49",intilan_sehir)%>>Kýrklareli 
				<option value=50 <%=SELECTED("50",intilan_sehir)%>>Kýrþehir 
				<option value=51 <%=SELECTED("51",intilan_sehir)%>>Kilis 
				<option value=52 <%=SELECTED("52",intilan_sehir)%>>Kocaeli 
				<option value=53 <%=SELECTED("53",intilan_sehir)%>>Konya 
				<option value=54 <%=SELECTED("54",intilan_sehir)%>>Kütahya 
				<option value=55 <%=SELECTED("55",intilan_sehir)%>>Malatya 
				<option value=56 <%=SELECTED("56",intilan_sehir)%>>Manisa 
				<option value=57 <%=SELECTED("57",intilan_sehir)%>>Mardin 
				<option value=58 <%=SELECTED("58",intilan_sehir)%>>Muðla 
				<option value=59 <%=SELECTED("59",intilan_sehir)%>>Muþ 
				<option value=60 <%=SELECTED("60",intilan_sehir)%>>Nevþehir 
				<option value=61 <%=SELECTED("61",intilan_sehir)%>>Niðde 
				<option value=62 <%=SELECTED("62",intilan_sehir)%>>Ordu 
				<option value=63 <%=SELECTED("63",intilan_sehir)%>>Osmaniye 
				<option value=64 <%=SELECTED("64",intilan_sehir)%>>Rize 
				<option value=65 <%=SELECTED("65",intilan_sehir)%>>Sakarya 
				<option value=66 <%=SELECTED("66",intilan_sehir)%>>Samsun 
				<option value=67 <%=SELECTED("67",intilan_sehir)%>>Siirt 
				<option value=68 <%=SELECTED("68",intilan_sehir)%>>Sinop 
				<option value=69 <%=SELECTED("69",intilan_sehir)%>>Sivas 
				<option value=70 <%=SELECTED("70",intilan_sehir)%>>Þanlýurfa 
				<option value=71 <%=SELECTED("71",intilan_sehir)%>>Þýrnak 
				<option value=72 <%=SELECTED("72",intilan_sehir)%>>Tekirdað 
				<option value=73 <%=SELECTED("73",intilan_sehir)%>>Tokat 
				<option value=74 <%=SELECTED("74",intilan_sehir)%>>Trabzon 
				<option value=75 <%=SELECTED("75",intilan_sehir)%>>Tunceli 
				<option value=76 <%=SELECTED("76",intilan_sehir)%>>Uþak 
				<option value=77 <%=SELECTED("77",intilan_sehir)%>>Van 
				<option value=78 <%=SELECTED("78",intilan_sehir)%>>Yalova 
				<option value=79 <%=SELECTED("79",intilan_sehir)%>>Yozgat 
				<option value=80 <%=SELECTED("80",intilan_sehir)%>>Zonguldak 
			  </select>
			</td>
		  </tr>
		  <tr> 
			<td width="59%" bgcolor="CE1031"> 
			  <div align="right"><font color="#FFFFFF">Seviye</font></div>
			</td>
			<td width="41%" bgcolor="e0e7e0"> 
			  <select class="TextBox" name="intilan_seviye">
				<option value="1" <%=SELECTED("1",intilan_seviye)%>>Baþlangýç</option>
				<option value="2" <%=SELECTED("2",intilan_seviye)%>>Kalfa</option>
				<option value="3" <%=SELECTED("3",intilan_seviye)%>>Uzman</option>
				<option value="4" <%=SELECTED("4",intilan_seviye)%>>Yönetici</option>
			  </select>
			</td>
		  </tr>
		  <tr> 
			<td width="59%" bgcolor="CE1031"> 
			  <div align="right"><font color="#FFFFFF">Mesai</font></div>
			</td>
			<td width="41%" bgcolor="e0e7e0"> 
			  <select class="TextBox" name="intilan_mesai">
				<option value="1" <%=SELECTED("1",intilan_mesai)%>>Full Time</option>
				<option value="2" <%=SELECTED("2",intilan_mesai)%>>Part Time</option>
				<option value="3" <%=SELECTED("3",intilan_mesai)%>>Stajer</option>
				<option value="4" <%=SELECTED("4",intilan_mesai)%>>Freelance</option>
			  </select>
			</td>
		  </tr>
		  <tr> 
			<td width="59%" bgcolor="CE1031"> 
			  <div align="right"><font color="#FFFFFF">Ucret</font></div>
			</td>
			<td width="41%" bgcolor="e0e7e0"> 
			  <input class="TextBox" type="text" name="strilan_ucret" size="50" maxlength="100" value="<%=strilan_ucret%>">
			</td>
		  </tr>
		  <tr> 
			<td colspan="2" bgcolor="#000000"> 
			  <div align="center"><font color="#FFFFFF" face="Times New Roman">FÝRMA 
				ÝRTÝBAT BÝLGÝLERÝ</font></div>
			</td>
		  </tr>
		  <tr> 
			<td width="59%" bgcolor="CE1031"> 
			  <div align="right"><font color="#FFFFFF"><font color="#FFFFFF">Ýnsan 
				Kaynaklarý Yetkilisi</font></font></div>
			</td>
			<td width="41%" bgcolor="e0e7e0"> 
			    <input class="TextBox" type="text" size="50" name="strilan_yetkili" maxlength="100" value="<%=strilan_yetkili%>">
			</td>
		  </tr>
		  <tr> 
			<td width="59%" bgcolor="CE1031"> 
			  <div align="right"><font color="#FFFFFF"><font color="#FFFFFF">Bulunduðu 
				Ýl</font></font></div>
			</td>
			<td width="41%" bgcolor="e0e7e0"> 
			  <select class="TextBox" name="intilan_firma_sehir">
				<option value=1 <%=SELECTED("1",intilan_firma_sehir)%>>Ýstanbul 
				<option value=2 <%=SELECTED("2",intilan_firma_sehir)%>>Ankara 
				<option value=3 <%=SELECTED("3",intilan_firma_sehir)%>>Ýzmir 
				<option value=4 <%=SELECTED("4",intilan_firma_sehir)%>>Bursa 
				<option value=5 <%=SELECTED("5",intilan_firma_sehir)%>>Adana 
				<option value=6 <%=SELECTED("6",intilan_firma_sehir)%>>Adýyaman 
				<option value=7 <%=SELECTED("7",intilan_firma_sehir)%>>Afyon 
				<option value=8 <%=SELECTED("8",intilan_firma_sehir)%>>Aðrý 
				<option value=9 <%=SELECTED("9",intilan_firma_sehir)%>>Aksaray 
				<option value=10 <%=SELECTED("10",intilan_firma_sehir)%>>Amasya 
				<option value=11 <%=SELECTED("11",intilan_firma_sehir)%>>Antalya 
				<option value=12 <%=SELECTED("12",intilan_firma_sehir)%>>Ardahan 
				<option value=13 <%=SELECTED("13",intilan_firma_sehir)%>>Artvin 
				<option value=14 <%=SELECTED("14",intilan_firma_sehir)%>>Aydýn 
				<option value=15 <%=SELECTED("15",intilan_firma_sehir)%>>Balýkesir 
				<option value=16 <%=SELECTED("16",intilan_firma_sehir)%>>Bartýn 
				<option value=17 <%=SELECTED("17",intilan_firma_sehir)%>>Batman 
				<option value=18 <%=SELECTED("18",intilan_firma_sehir)%>>Bayburt 
				<option value=19 <%=SELECTED("19",intilan_firma_sehir)%>>Bilecik 
				<option value=20 <%=SELECTED("20",intilan_firma_sehir)%>>Bingöl 
				<option value=21 <%=SELECTED("21",intilan_firma_sehir)%>>Bitlis 
				<option value=22 <%=SELECTED("22",intilan_firma_sehir)%>>Bolu 
				<option value=23 <%=SELECTED("23",intilan_firma_sehir)%>>Burdur 
				<option value=24 <%=SELECTED("24",intilan_firma_sehir)%>>Çanakkale 
				<option value=25 <%=SELECTED("25",intilan_firma_sehir)%>>Çankýrý 
				<option value=26 <%=SELECTED("26",intilan_firma_sehir)%>>Çorum 
				<option value=27 <%=SELECTED("27",intilan_firma_sehir)%>>Denizli 
				<option value=28 <%=SELECTED("28",intilan_firma_sehir)%>>Diyarbakýr 
				<option value=29 <%=SELECTED("29",intilan_firma_sehir)%>>Edirne 
				<option value=30 <%=SELECTED("30",intilan_firma_sehir)%>>Elazýð 
				<option value=31 <%=SELECTED("31",intilan_firma_sehir)%>>Erzincan 
				<option value=32 <%=SELECTED("32",intilan_firma_sehir)%>>Erzurum 
				<option value=33 <%=SELECTED("33",intilan_firma_sehir)%>>Eskiþehir 
				<option value=34 <%=SELECTED("34",intilan_firma_sehir)%>>Gaziantep 
				<option value=35 <%=SELECTED("35",intilan_firma_sehir)%>>Giresun 
				<option value=36 <%=SELECTED("36",intilan_firma_sehir)%>>Gümüþhane 
				<option value=37 <%=SELECTED("37",intilan_firma_sehir)%>>Hakkari 
				<option value=38 <%=SELECTED("38",intilan_firma_sehir)%>>Hatay 
				<option value=39 <%=SELECTED("39",intilan_firma_sehir)%>>Iðdýr 
				<option value=40 <%=SELECTED("40",intilan_firma_sehir)%>>Isparta 
				<option value=41 <%=SELECTED("41",intilan_firma_sehir)%>>Ýçel 
				<option value=42 <%=SELECTED("42",intilan_firma_sehir)%>>Kahramanmaraþ 
				<option value=43 <%=SELECTED("43",intilan_firma_sehir)%>>Karabük 
				<option value=44 <%=SELECTED("44",intilan_firma_sehir)%>>Karaman 
				<option value=45 <%=SELECTED("45",intilan_firma_sehir)%>>Kars 
				<option value=46 <%=SELECTED("46",intilan_firma_sehir)%>>Kastamonu 
				<option value=47 <%=SELECTED("47",intilan_firma_sehir)%>>Kayseri 
				<option value=48 <%=SELECTED("48",intilan_firma_sehir)%>>Kýrýkkale 
				<option value=49 <%=SELECTED("49",intilan_firma_sehir)%>>Kýrklareli 
				<option value=50 <%=SELECTED("50",intilan_firma_sehir)%>>Kýrþehir 
				<option value=51 <%=SELECTED("51",intilan_firma_sehir)%>>Kilis 
				<option value=52 <%=SELECTED("52",intilan_firma_sehir)%>>Kocaeli 
				<option value=53 <%=SELECTED("53",intilan_firma_sehir)%>>Konya 
				<option value=54 <%=SELECTED("54",intilan_firma_sehir)%>>Kütahya 
				<option value=55 <%=SELECTED("55",intilan_firma_sehir)%>>Malatya 
				<option value=56 <%=SELECTED("56",intilan_firma_sehir)%>>Manisa 
				<option value=57 <%=SELECTED("57",intilan_firma_sehir)%>>Mardin 
				<option value=58 <%=SELECTED("58",intilan_firma_sehir)%>>Muðla 
				<option value=59 <%=SELECTED("59",intilan_firma_sehir)%>>Muþ 
				<option value=60 <%=SELECTED("60",intilan_firma_sehir)%>>Nevþehir 
				<option value=61 <%=SELECTED("61",intilan_firma_sehir)%>>Niðde 
				<option value=62 <%=SELECTED("62",intilan_firma_sehir)%>>Ordu 
				<option value=63 <%=SELECTED("63",intilan_firma_sehir)%>>Osmaniye 
				<option value=64 <%=SELECTED("64",intilan_firma_sehir)%>>Rize 
				<option value=65 <%=SELECTED("65",intilan_firma_sehir)%>>Sakarya 
				<option value=66 <%=SELECTED("66",intilan_firma_sehir)%>>Samsun 
				<option value=67 <%=SELECTED("67",intilan_firma_sehir)%>>Siirt 
				<option value=68 <%=SELECTED("68",intilan_firma_sehir)%>>Sinop 
				<option value=69 <%=SELECTED("69",intilan_firma_sehir)%>>Sivas 
				<option value=70 <%=SELECTED("70",intilan_firma_sehir)%>>Þanlýurfa 
				<option value=71 <%=SELECTED("71",intilan_firma_sehir)%>>Þýrnak 
				<option value=72 <%=SELECTED("72",intilan_firma_sehir)%>>Tekirdað 
				<option value=73 <%=SELECTED("73",intilan_firma_sehir)%>>Tokat 
				<option value=74 <%=SELECTED("74",intilan_firma_sehir)%>>Trabzon 
				<option value=75 <%=SELECTED("75",intilan_firma_sehir)%>>Tunceli 
				<option value=76 <%=SELECTED("76",intilan_firma_sehir)%>>Uþak 
				<option value=77 <%=SELECTED("77",intilan_firma_sehir)%>>Van 
				<option value=78 <%=SELECTED("78",intilan_firma_sehir)%>>Yalova 
				<option value=79 <%=SELECTED("79",intilan_firma_sehir)%>>Yozgat 
				<option value=80 <%=SELECTED("80",intilan_firma_sehir)%>>Zonguldak 
			  </select>
			</td>
		  </tr>
		  <tr> 
			<td width="59%" bgcolor="CE1031"> 
			  <div align="right"><font color="#FFFFFF"><font color="#FFFFFF"> 
				Adresi </font></font></div>
			</td>
			<td width="41%" bgcolor="e0e7e0"> 
			    <input class="TextBox" type="text" size="50" name="strilan_firma_adres" maxlength="100" value="<%=strilan_firma_adres%>">
			</td>
		  </tr>
		  <tr> 
			<td width="59%" bgcolor="CE1031"> 
			  <div align="right"><font color="#FFFFFF"><font color="#FFFFFF"> 
				Telefonu </font></font></div>
			</td>
			<td width="41%" bgcolor="e0e7e0"> 
			    <input class="TextBox" type="text" name="strilan_telefon_alan_kodu" size="10" maxlength="12" value="<%=strilan_telefon_alan_kodu%>">
			    <input class="TextBox" type="text" name="strilan_telefon" value="<%=strilan_telefon%>">
			</td>
		  </tr>
		  <tr> 
			<td width="59%" bgcolor="CE1031"> 
			  <div align="right"><font color="#FFFFFF"><font color="#FFFFFF">Fax 
				Numarasý</font></font></div>
			</td>
			<td width="41%" bgcolor="e0e7e0"> 
			    <input class="TextBox" type="text" size="10" maxlength="12" name="strilan_fax_alan_kodu" value="<%=strilan_fax_alan_kodu%>">
			    <input class="TextBox" type="text" name="strilan_fax" value="<%=strilan_fax%>">
			</td>
		  </tr>
		  <tr> 
			<td width="59%" bgcolor="CE1031"> 
			  <div align="right"><font color="#FFFFFF"><font color="#FFFFFF"> 
				E-Mail Adresi</font></font></div>
			</td>
			<td width="41%" bgcolor="e0e7e0"> 
			    <input class="TextBox" type="text" size="50" name="strilan_email" value="<%=strilan_email%>">
			</td>
		  </tr>
		  <tr> 
			<td colspan="2" bgcolor="#000000"> 
			  <div align="right"> 
				<input class="TextBox2" type="reset" name="Submit2" value="Formu Temizle.!">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				<input class="TextBox2" type="submit" name="Submit" value="Formu Kaydet">
			  </div>
			</td>
		  </tr>
		</table></td>
	</tr>
  </table>
<input name="intilan_no" type="hidden" value="<%=request("intilan_no")%>">
  </form>
</div>
</body>
</html>
<%END IF%>