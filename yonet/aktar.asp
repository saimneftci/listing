<!--#INCLUDE FILE="sifre.asp"-->
<%
FUNCTION fixQuote(theString)
	fixQuote=REPLACE(theString,"'","''")
END FUNCTION
set kaynak=Server.Createobject("ADODB.Connection")
kaynak.open ("DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & server.mappath("/isfirsatlari/db/eleman1.mdb"))
set hedef=Server.Createobject("ADODB.Connection")
hedef.open ("DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & server.mappath("/isfirsatlari/db/eleman.mdb"))

SQLstring="SELECT * FROM ilan"
set rs=kaynak.execute(SQLstring)
Do While NOT rs.EOF
intilan_kategori=fixQuote(rs("intilan_kategori"))
strilan_firma=fixQuote(rs("strilan_firma"))
strilan_mevki=fixQuote(rs("strilan_mevki"))
strilan_metin=fixQuote(rs("strilan_metin"))
strilan_yetkili=(rs("strilan_yetkili"))
intilan_sehir=(rs("intilan_sehir"))
strilan_telefon_alan_kodu=rs("strilan_telefon_alan_kodu")
strilan_fax_alan_kodu=rs("strilan_fax_alan_kodu")
strilan_telefon=rs("strilan_telefon")
strilan_fax=rs("strilan_fax")
strilan_email=rs("strilan_email")
intilan_seviye=rs("intilan_seviye")
strilan_ucret=rs("strilan_ucret")
intilan_mesai=rs("intilan_mesai")
intilan_firma_sehir=(rs("intilan_firma_sehir"))
strilan_firma_adres=fixQuote(rs("strilan_firma_adres"))

SQLstring = "INSERT INTO ilan("   &_
"intilan_kategori,"               &_
"strilan_firma,"				  &_
"strilan_mevki,"				  &_
"strilan_metin," 				  &_
"strilan_yetkili," 				  &_
"intilan_sehir," 				  &_
"strilan_telefon_alan_kodu," 	  &_
"strilan_fax_alan_kodu," 	  	  &_
"strilan_telefon," 				  &_
"strilan_fax," 					  &_
"strilan_email," 				  &_
"intilan_seviye," 				  &_
"strilan_ucret," 				  &_
"intilan_mesai," 				  &_
"intilan_firma_sehir," 			  &_
"dateilan_tarih,"	 			  &_
"strilan_firma_adres) VALUES ("   &_
intilan_kategori 		   & ",'" &_
strilan_firma 			  & "','" &_
strilan_mevki 			  & "','" &_
strilan_metin			  & "','" &_
strilan_yetkili 		   & "'," &_
intilan_sehir 			   & ",'" &_
strilan_telefon_alan_kodu & "','" &_
strilan_fax_alan_kodu	  & "','" &_
strilan_telefon 		  & "','" &_
strilan_fax 			  & "','" &_
strilan_email 			   & "'," &_
intilan_seviye 			   & ",'" &_
strilan_ucret 			   & "'," &_
intilan_mesai 			    & "," &_
intilan_firma_sehir  	    & ",'" &_
Date()					    &"','" &_
strilan_firma_adres 	   & "')"
hedef.execute SQLstring
rs.MoveNext
Loop
SQLstring="DELETE * FROM ilan"
kaynak.execute SQLstring
Set hedef=NoThing
Set kaynak=NoThing
Set rs=NoThing
%>
<div align="center"><br>Aktarýldý<br>
  <a href="yonet.asp">Yönetim</a></div>
