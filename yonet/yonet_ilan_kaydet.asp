<!--#INCLUDE FILE="sifre.asp"-->
<html>
<head><title>Teþekkür Ederiz</title>
<LINK href="../bicim.css" type=text/css rel=stylesheet>
<script language="JavaScript">
<!--
function MM_goToURL() { //v3.0
  var i, args=MM_goToURL.arguments; document.MM_returnValue = false;
  for (i=0; i<(args.length-1); i+=2) eval(args[i]+".location='"+args[i+1]+"'");
}
//-->
</script>
</head>
<body bgcolor="#FFFFFF">
<%
FUNCTION fixQuote(theString)
	fixQuote=REPLACE(theString,"'","''")
END FUNCTION

'kullanici_adi=TRIM(request("kullanici_adi"))
'kullanici_sifre=TRIM(request("kullanici_sifre"))
intilan_no=TRIM(request("intilan_no"))
intilan_kategori=TRIM(request("intilan_kategori"))
strilan_firma=fixQuote(TRIM(request("strilan_firma")))
strilan_mevki=fixQuote(TRIM(request("strilan_mevki")))
strilan_metin=fixQuote(TRIM(request("strilan_metin")))
response.write "boyut="&len(strilan_metin)&"<br>"
strilan_yetkili=fixQuote(TRIM(request("strilan_yetkili")))
intilan_sehir=fixQuote(TRIM(request("intilan_sehir")))
strilan_telefon_alan_kodu=TRIM(request("strilan_telefon_alan_kodu"))
strilan_fax_alan_kodu=TRIM(request("strilan_fax_alan_kodu"))
strilan_telefon=TRIM(request("strilan_telefon"))
strilan_fax=TRIM(request("strilan_fax"))
strilan_email=TRIM(request("strilan_email"))
intilan_seviye=TRIM(request("intilan_seviye"))
strilan_ucret=TRIM(request("strilan_ucret"))
intilan_mesai=TRIM(request("intilan_mesai"))
intilan_firma_sehir=fixQuote(TRIM(request("intilan_firma_sehir")))
strilan_firma_adres=fixQuote(TRIM(request("strilan_firma_adres")))

IF (INSTR(strilan_email,".")=0 or INSTR(strilan_email,"@")=0) and strilan_email<>"" THEN dolu="E-Mail Geçerli Deðil" 
IF intilan_kategori="" THEN dolu="Ýlan Kategorisi"
IF strilan_mevki="" THEN dolu="Alýnacak Elemanýn Pozisyonu"
IF intilan_sehir="" THEN dolu="Ýstihdam Ýli"
IF strilan_metin="" THEN dolu="Ýlanýn Açýklamasý "
IF strilan_firma="" THEN dolu="Ýlaný veren firma "
IF strilan_firma_adres="" AND strilan_telefon="" AND strilan_fax="" AND strilan_email="" THEN dolu="Adres, Telefon, Fax, E-mail"

IF dolu<>"" THEN
%> 
<center><br>
  
  <input type="button" value=" <<-Geri-<< " class="TextBox2" onClick="MM_goToURL('parent','javascript:history.go(-1)');return document.MM_returnValue"> 
   
  <h3>Lütfen geri dönüp <FONT color='red'><%=dolu%></FONT> alanýný doldurunuz</h3></center>
<%
ELSE
SQLstring = "UPDATE ilan SET "   &_
"intilan_kategori=" & intilan_kategori & ","     &_
"strilan_firma='" & strilan_firma & "',"     &_
"strilan_mevki='" & strilan_mevki & "',"     &_
"strilan_metin='" & strilan_metin & "',"     &_
"strilan_yetkili='" & strilan_yetkili & "',"     &_
"intilan_sehir=" & intilan_sehir & ","     &_
"strilan_telefon_alan_kodu='" & strilan_telefon_alan_kodu & "',"     &_
"strilan_fax_alan_kodu='" & strilan_fax_alan_kodu & "',"     &_
"strilan_telefon='" & strilan_telefon & "',"     &_
"strilan_fax='" & strilan_fax & "',"     &_
"strilan_email='" & strilan_email & "',"     &_
"intilan_seviye=" & intilan_seviye & ","     &_
"strilan_ucret='" & strilan_ucret & "',"     &_
"intilan_mesai=" & intilan_mesai & ","     &_
"intilan_firma_sehir=" & intilan_firma_sehir & ","     &_
"strilan_firma_adres='" & strilan_firma_adres & "' WHERE intilan_no="&intilan_no
response.write sqlstring
set veri=Server.Createobject("ADODB.Connection")
veri.open ("DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & server.mappath("/isfirsatlari/db/eleman.mdb"))
veri.execute SQLstring
set veri=nothing
%>


<br>
<br><br><br>
<div align="center">
  <table width="378" bgcolor="#CCFFFF" border=1 rules="none">
	<tr><td>
<h3 align=center>Form baþarýyla kaydedildi</h3>
<h3 align="center">Formu doldurduðunuz için teþekkür ederiz</h3>
<p align="center">Bu sitenin amacý siz iþverenlerin, eleman ihtiyacýný, en kýsa yoldan gidermektir.<br><br>
		  <a href="yonet.asp">buraya týklayarak anasayfaya dönebilirsiniz</a> 
		  <br>
		  <br> 
<a href="../ilan_kayit.asp">buraya týklayarak yeni bir Eleman Ýlan Formu doldurabilirsiniz    </a>        

</table>
</div>
</body>
</html>
<%
END IF
%>