<%
SQLstring="SELECT * FROM ilan WHERE intilan_no=" & request("intilan_no")

set veri=Server.Createobject("ADODB.Connection")
veri.open ("DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & server.mappath("/isfirsatlari/db/eleman.mdb"))
set rs=veri.execute(SQLstring)
IF NOT rs.EOF THEN
%>
<html>
<head>
<title>�lanlar--ifFirsatlari.com</title>
<LINK href="bicim.css" rel=stylesheet>
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0">
<div align="center">
  <table width="720" border="0">
	<tr>
	  <td width="17%">Arad���n�z i�e sitedeki ara�lar� kullanrak <br>
		<img src="resimler/isararyan_buyuk.gif" width="140" height="134"><br>
		kolayca ula�abilirsiniz. <br>
	  </td>
	  <td width="83%"> 
		<table rules="none" weight="640" bordercolor="black" border="0" bgcolor="#000000" class="TextBox">
		  <tr bgcolor="#000000"> 
			<td colspan=2> 
			  <div align="center"><img src="resimler/ust.gif" width="600" height="31"> 
			  </div>
			</td>
		  </tr>
		  <tr> 
			<td bgcolor="ce1031" width="35%"> 
			  <div align="right"><font color="#FFFFFF">�lan Kategorisi </font></div>
			</td>
			<td bgcolor="e0e7e0" width="188"><font color="#000000"><%=kategori(rs("intilan_kategori"))%></font></td>
		  </tr>
		  <tr> 
			<td bgcolor="ce1031" width="35%"> 
			  <div align="right"><font color="#FFFFFF">Al�nacak Eleman�n Pozisyonu 
				</font></div>
			</td>
			<td bgcolor="#FFFFFF" width="188"><font color="#000000"><%=rs("strilan_mevki")%></font></td>
		  </tr>
		  <tr> 
			<td bgcolor="ce1031" height="50"> 
			  <div align="right"><font color="#FFFFFF"> �lan�n A��klamas� </font></div>
			</td>
			<td bgcolor="e0e7e0" height="50"><font color="#000000">
			  <textarea class="TextBox" cols="55" name="strilan_metin" wrap="VIRTUAL" rows="10"><%=rs("strilan_metin")%></textarea>
			  </font></td>
		  </tr>
		  <tr> 
			<td bgcolor="ce1031" width="35%"> 
			  <div align="right"><font color="#FFFFFF"><font color="#FFFFFF">�lan� 
				Veren Firma </font></font></div>
			</td>
			<td bgcolor="#FFFFFF" width="188"><font color="#000000"><%=rs("strilan_firma")%></font></td>
		  </tr>
		  <tr> 
			<td bgcolor="ce1031" width="35%"> 
			  <div align="right"><font color="#FFFFFF">�stihdam �li </font></div>
			</td>
			<td bgcolor="e0e7e0" width="188"><font color="#000000"><%=sehir(rs("intilan_sehir"))%></font></td>
		  </tr>
		  <tr> 
			<td bgcolor="ce1031" width="35%"> 
			  <div align="right"><font color="#FFFFFF"> Seviye </font></div>
			</td>
			<td bgcolor="#FFFFFF" width="188"><font color="#000000"><%=seviye(rs("intilan_seviye"))%></font></td>
		  </tr>
		  <tr> 
			<td bgcolor="ce1031" width="35%"> 
			  <div align="right"><font color="#FFFFFF">�al��ma �ekli </font></div>
			</td>
			<td bgcolor="e0e7e0" width="188"><font color="#000000"><%=mesai(rs("intilan_mesai"))%></font></td>
		  </tr>
		  <tr> 
			<td bgcolor="ce1031" width="35%"> 
			  <div align="right"><font color="#FFFFFF">�cret </font></div>
			</td>
			<td  bgcolor="#FFFFFF" width="188"><font color="#000000"><%=rs("strilan_ucret")%></font></td>
		  </tr>
		  <tr> 
			<td bgcolor="#000000" colspan="2"><img src="resimler/orta.gif" width="600"></td>
		  </tr>
		  <tr> 
			<td bgcolor="ce1031" width="35%"> 
			  <div align="right"><font color="#FFFFFF">�nsan Kaynaklar� Yetkilisi 
				</font></div>
			</td>
			<td bgcolor="e0e7e0" width="188"><%=rs("strilan_yetkili")%></td>
		  </tr>
		  <tr> 
			<td bgcolor="ce1031" width="35%"> 
			  <div align="right"><font color="#FFFFFF"> Bulundu�u �l </font></div>
			</td>
			<td bgcolor="#FFFFFF" width="188"><%=sehir(rs("intilan_firma_sehir"))%></td>
		  </tr>
		  <tr> 
			<td bgcolor="ce1031" width="35%"> 
			  <div align="right"><font color="#FFFFFF"> Adresi </font></div>
			</td>
			<td bgcolor="e0e7e0" width="188"><%=rs("strilan_firma_adres")%></td>
		  </tr>
		  <tr> 
			<td bgcolor="ce1031" width="35%"> 
			  <div align="right"><font color="#FFFFFF"> Telefonu </font></div>
			</td>
			<td bgcolor="#FFFFFF" width="188"><%=rs("strilan_telefon_alan_kodu")&"-"%><%=rs("strilan_telefon")%></td>
		  </tr>
		  <tr> 
			<td bgcolor="ce1031" width="35%"> 
			  <div align="right"><font color="#FFFFFF"> Fax Numaras� </font></div>
			</td>
			<td bgcolor="e0e7e0" width="188"><%=rs("strilan_fax_alan_kodu")&"-"%><%=rs("strilan_fax")%></td>
		  </tr>
		  <tr> 
			<td bgcolor="ce1031" width="35%"> 
			  <div align="right"><font color="#FFFFFF"> E-Mail Adresi </font></div>
			</td>
			<td bgcolor="#FFFFFF" width="188"><%=rs("strilan_email")%></td>
		  </tr>
		  <tr bgcolor="#000000"> 
			<td colspan="2"> 
			  <div align="right"> <a href='javascript:history.go(-1)'><img src="resimler/geri.gif" width="100" height="35" border="0"></a><img src="resimler/altsag.gif" width="32" height="32" ></div>
			</td>
		  </tr>
		  <tr bgcolor="ce1031"> </tr>
		</table></td>
	</tr>
  </table>
</div>
<div align="right"> </div>
<div align="right"></div>
<div align="right"></div>
</body>
</html>
<%
function sehir(ilan_s)
SELECT CASE ilan_s
			CASE 1  : sehir = "�stanbul "
			CASE 2  : sehir = "Ankara "
			CASE 3  : sehir = "�zmir "
			CASE 4  : sehir = "Bursa "
			CASE 5  : sehir = "Adana "
			CASE 6  : sehir = "Ad�yaman " 
			CASE 7  : sehir = "Afyon "
			CASE 8  : sehir = "A�r� "
			CASE 9  : sehir = "Aksaray "
			CASE 10  : sehir = "Amasya " 
			CASE 11  : sehir = "Antalya " 
			CASE 12  : sehir = "Ardahan "
			CASE 13  : sehir = "Artvin "
			CASE 14  : sehir = "Ayd�n "
			CASE 15  : sehir = "Bal�kesir" 
			CASE 16  : sehir = "Bart�n "
			CASE 17  : sehir = "Batman "
			CASE 18  : sehir = "Bayburt "
			CASE 19  : sehir = "Bilecik "
			CASE 20  : sehir = "Bing�l "
			CASE 21  : sehir = "Bitlis "
			CASE 22  : sehir = "Bolu "
			CASE 23  : sehir = "Burdur "
			CASE 24  : sehir = "�anakkale "
			CASE 25  : sehir = "�ank�r� "
			CASE 26  : sehir = "�orum "
			CASE 27  : sehir = "Denizli "
			CASE 28  : sehir = "Diyarbak�r "
			CASE 29  : sehir = "Edirne "
			CASE 30  : sehir = "Elaz�� "
			CASE 31  : sehir = "Erzincan "
			CASE 32  : sehir = "Erzurum "
			CASE 33  : sehir = "Eski�ehir "
			CASE 34  : sehir = "Gaziantep "
			CASE 35  : sehir = "Giresun "
			CASE 36  : sehir = "G�m��hane "
			CASE 37  : sehir = "Hakkari "
			CASE 38  : sehir = "Hatay "
			CASE 39  : sehir = "I�d�r "
			CASE 40  : sehir = "Isparta "
			CASE 41  : sehir = "��el "
			CASE 42  : sehir = "Kahramanmara� "
			CASE 43  : sehir = "Karab�k "
			CASE 44  : sehir = "Karaman "
			CASE 45  : sehir = "Kars "
			CASE 46  : sehir = "Kastamonu "
			CASE 47  : sehir = "Kayseri "
			CASE 48  : sehir = "K�r�kkale "
			CASE 49  : sehir = "K�rklareli "
			CASE 50  : sehir = "K�r�ehir "
			CASE 51  : sehir = "Kilis "
			CASE 52  : sehir = "Kocaeli "
			CASE 53  : sehir = "Konya "
			CASE 54  : sehir = "K�tahya "
			CASE 55  : sehir = "Malatya "
			CASE 56  : sehir = "Manisa "
			CASE 57  : sehir = "Mardin "
			CASE 58  : sehir = "Mu�la "
			CASE 59  : sehir = "Mu� "
			CASE 60  : sehir = "Nev�ehir "
			CASE 61  : sehir = "Ni�de "
			CASE 62  : sehir = "Ordu "
			CASE 63  : sehir = "Osmaniye "
			CASE 64  : sehir = "Rize "
			CASE 65  : sehir = "Sakarya "
			CASE 66  : sehir = "Samsun "
			CASE 67  : sehir = "Siirt "
			CASE 68  : sehir = "Sinop "
			CASE 69  : sehir = "Sivas "
			CASE 70  : sehir = "�anl�urfa "
			CASE 71  : sehir = "��rnak "
			CASE 72  : sehir = "Tekirda� "
			CASE 73  : sehir = "Tokat "
			CASE 74  : sehir = "Trabzon "
			CASE 75  : sehir = "Tunceli "
			CASE 76  : sehir = "U�ak "
			CASE 77  : sehir = "Van "
			CASE 78  : sehir = "Yalova "
			CASE 79  : sehir = "Yozgat "
			CASE 80  : sehir = "Zonguldak "
END SELECT
end function

function kategori(ilan_k)
select case ilan_k
			case 1 : kategori =  "Bilgisayar "
			case 2 : kategori =  "Internet "
			case 3 : kategori =  "Elektronik "
			case 4 : kategori =  "Elektrik "
			case 5 : kategori =  "Otomotiv "
			case 6 : kategori =  "Mimar-M�hendis "
			case 7 : kategori =  "Sekreter "
			case 8 : kategori =  "Pazarlama "
			case 9 : kategori =  "Tekstil "
			case 10 : kategori =  "Turizm "
			case 11 : kategori =  "Sa�l�k "
			case 12 : kategori =  "Banka-Muhasebe "
			case 13 : kategori =  "Halkla �li�kiler "
			case 14 : kategori =  "E�itim "
			case 15 : kategori =  "Genel "
end select
end function

function seviye(ilan_s)
select case ilan_s
	case 1 : seviye="Ba�lang��"
	case 2 : seviye="Kalfa"
	case 3 : seviye="Uzman"
	case 4 : seviye="Y�netici"
end select

end function

function mesai(ilan_m)
select case ilan_m
	case 1 : mesai="Full Time"
	case 2 : mesai="Part Time"
	case 3 : mesai="Stajer"
	case 4 : mesai="Freelance"
end select
end function
end if
%>