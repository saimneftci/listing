<html>
<head>
<title>www.isFirsatlari.com - lanlar</title>
<meta http-equiv="Content-Type" content="text/html; charset=">
<LINK href="bicim.css" rel=stylesheet>

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0">
<div align="center">
  <table width="750" border="0">
	<tr> 
	<td width="16%"><img src="resimler/isararyan_buyuk.gif" width="140" height="134"></td>
	<td width="84%"> 
	  <table rules="none" bgcolor="black" bordercolor="white" border="1" class="TextBox" width="97%">
		<tr bgcolor="#000000"> 
		    <td valign="middle" width="28%" height="28"> 
			  <div align="left"><img src="resimler/index_ust_tarih.gif" style="float:left" width="60" height="38"><font style="line-height:1px;" color="#FFFFFF">
<br><br><br><br><br><br><br><br><br><br><br><br>
			  &#304;lan tarihi</font></div>
		  </td>
		    <td width="31%" height="28"><font style="line-height:1px;" color="#FFFFFF"><br>
			ilan&#305; veren</font></td>
		    <td width="32%" height="28"><font style="line-height:1px;"  color="#FFFFFF"><br>
			konusu</font></td>
		  <td width="11%" height="28"><font style="line-height:1px;"  color="#FFFFFF"><br>
			ili</font>r</td>
		</tr>
		<%
SQLstring="SELECT intilan_no,intilan_kategori,strilan_firma,strilan_mevki,intilan_sehir,dateilan_tarih FROM ilan"
intilan_kategori = TRIM(request("intilan_kategori"))
intilan_sehir = TRIM(request("intilan_sehir"))
IF intilan_kategori="" THEN intilan_kategori="0"
IF intilan_sehir="" THEN intilan_sehir="0"

IF intilan_kategori<>"0" THEN 
	SQLstring=SQLstring+" WHERE intilan_kategori=" & intilan_kategori
	
	IF intilan_sehir<>"0" THEN 
		SQLstring=SQLstring+" AND intilan_sehir=" & intilan_sehir
	END IF
ELSE
	IF intilan_sehir<>"0" THEN 
		SQLstring=SQLstring+" WHERE intilan_sehir=" & intilan_sehir 
	END IF 
END IF


SQLstring=SQLstring+" ORDER BY dateilan_tarih DESC"
set veri=Server.Createobject("ADODB.Connection")
veri.open ("DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & server.mappath("/isfirsatlari/db/eleman.mdb"))

set rs=veri.execute(SQLstring)

IF rs.EOF THEN
%> 
		<tr bgcolor="#e0e7e0"> 
		  <td colspan="4"> 
			<div align="center"> <font size="+1">Setiiniz kriterlere uygun i 
			  bulunamad</font></div>
		  </td>
		</tr>
		<%
END IF
DO WHILE NOT rs.EOF
SELECT CASE rs("intilan_sehir")
			CASE 1 : intilan_sehir = "istanbul "
			CASE 2 : intilan_sehir = "Ankara "
			CASE 3 : intilan_sehir = "izmir "
			CASE 4 : intilan_sehir = "Bursa "
			CASE 5 : intilan_sehir = "Adana "
			CASE 6 : intilan_sehir = "Adyaman " 
			CASE 7 : intilan_sehir = "Afyon "
			CASE 8 : intilan_sehir = "Agri "
			CASE 9 : intilan_sehir = "Aksaray "
			CASE 10 : intilan_sehir = "Amasya " 
			CASE 11 : intilan_sehir = "Antalya " 
			CASE 12 : intilan_sehir = "Ardahan "
			CASE 13 : intilan_sehir = "Artvin "
			CASE 14 : intilan_sehir = "Aydn "
			CASE 15 : intilan_sehir = "Balikesir " 
			CASE 16 : intilan_sehir = "Bartin "
			CASE 17 : intilan_sehir = "Batman "
			CASE 18 : intilan_sehir = "Bayburt "
			CASE 19 : intilan_sehir = "Bilecik "
			CASE 20 : intilan_sehir = "Bingol "
			CASE 21 : intilan_sehir = "Bitlis "
			CASE 22 : intilan_sehir = "Bolu "
			CASE 23 : intilan_sehir = "Burdur "
			CASE 24 : intilan_sehir = "Canakkale "
			CASE 25 : intilan_sehir = "Cankiri"
			CASE 26 : intilan_sehir = "Corum "
			CASE 27 : intilan_sehir = "Denizli "
			CASE 28 : intilan_sehir = "Diyarbakir "
			CASE 29 : intilan_sehir = "Edirne "
			CASE 30 : intilan_sehir = "Elazig "
			CASE 31 : intilan_sehir = "Erzincan "
			CASE 32 : intilan_sehir = "Erzurum "
			CASE 33 : intilan_sehir = "Eskisehir "
			CASE 34 : intilan_sehir = "Gaziantep "
			CASE 35 : intilan_sehir = "Giresun "
			CASE 36 : intilan_sehir = "Gumushane "
			CASE 37 : intilan_sehir = "Hakkari "
			CASE 38 : intilan_sehir = "Hatay "
			CASE 39 : intilan_sehir = "Igdir "
			CASE 40 : intilan_sehir = "Isparta "
			CASE 41 : intilan_sehir = "icel "
			CASE 42 : intilan_sehir = "Kahramanmaras "
			CASE 43 : intilan_sehir = "Karabuk "
			CASE 44 : intilan_sehir = "Karaman "
			CASE 45 : intilan_sehir = "Kars "
			CASE 46 : intilan_sehir = "Kastamonu "
			CASE 47 : intilan_sehir = "Kayseri "
			CASE 48 : intilan_sehir = "Kirikkale "
			CASE 49 : intilan_sehir = "Kirklareli "
			CASE 50 : intilan_sehir = "Kirsehir "
			CASE 51 : intilan_sehir = "Kilis "
			CASE 52 : intilan_sehir = "Kocaeli "
			CASE 53 : intilan_sehir = "Konya "
			CASE 54 : intilan_sehir = "Kutahya "
			CASE 55 : intilan_sehir = "Malatya "
			CASE 56 : intilan_sehir = "Manisa "
			CASE 57 : intilan_sehir = "Mardin "
			CASE 58 : intilan_sehir = "Mugla "
			CASE 59 : intilan_sehir = "Mus "
			CASE 60 : intilan_sehir = "Nevsehir "
			CASE 61 : intilan_sehir = "Nigde "
			CASE 62 : intilan_sehir = "Ordu "
			CASE 63 : intilan_sehir = "Osmaniye "
			CASE 64 : intilan_sehir = "Rize "
			CASE 65 : intilan_sehir = "Sakarya "
			CASE 66 : intilan_sehir = "Samsun "
			CASE 67 : intilan_sehir = "Siirt "
			CASE 68 : intilan_sehir = "Sinop "
			CASE 69 : intilan_sehir = "Sivas "
			CASE 70 : intilan_sehir = "Sanlurfa "
			CASE 71 : intilan_sehir = "Sirnak "
			CASE 72 : intilan_sehir = "Tekirdag "
			CASE 73 : intilan_sehir = "Tokat "
			CASE 74 : intilan_sehir = "Trabzon "
			CASE 75 : intilan_sehir = "Tunceli "
			CASE 76 : intilan_sehir = "Usak "
			CASE 77 : intilan_sehir = "Van "
			CASE 78 : intilan_sehir = "Yalova "
			CASE 79 : intilan_sehir = "Yozgat "
			CASE 80 : intilan_sehir = "Zonguldak "
END SELECT		 
if renk="#e0e7e0" then renk="#ffffff" else renk="#e0e7e0"
%> 
		<tr  bgcolor="<%=renk%>"> 
		    <td width="26%" align="right"><%=rs("dateilan_tarih")%></td>
		    <td width="31%"><a href='ilan_detay.asp?intilan_no=<%=rs("intilan_no")%>'><%=rs("strilan_firma")%></a></td>
		    <td width="32%"><%=rs("strilan_mevki")%></td>
		  <td width="11%"><%=intilan_sehir%></td>
		</tr>
		<%
rs.MoveNext
LOOP
set rs=nothing
%> 
		<tr bgcolor="#000000"> 
		  <td colspan="4"> 
			<div align="right"><img src="resimler/altsag.gif" width="35" height="33"></div>
		  </td>
		</tr>
	  </table>
	</td>
  </tr>
</table>
</div>  
</body>
</html>