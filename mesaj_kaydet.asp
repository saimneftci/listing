<html>
<head><title>Te�ekk�r Ederiz</title>
<LINK href="bicim.css" type=text/css rel=stylesheet>
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

strmesaj_konu=fixQuote(TRIM(request("strmesaj_konu")))
strmesaj=fixQuote(TRIM(request("strmesaj")))
strmesaj_email=fixQuote(TRIM(request("strmesaj_email")))

IF (INSTR(strmesaj_email,".")=0 or INSTR(strmesaj_email,"@")=0) or strmesaj_email="" THEN dolu="E-Mail" 
IF strmesaj_konu="" THEN dolu="Konu"
IF strmesaj="" THEN dolu="Mesaj"
IF dolu<>"" THEN
%> 
<center><br>
  
  <input type="button" value=" <<-Geri-<< " class="TextBox2" onClick="MM_goToURL('parent','javascript:history.go(-1)');return document.MM_returnValue"> 
   
  <h3>L�tfen geri d�n�p <FONT color='red'><%=dolu%></FONT> alan�n� doldurunuz</h3></center>
<%
ELSE
SQLstring = "INSERT INTO mesaj("  &_
"strmesaj_konu,"				  &_
"strmesaj,"						  &_
"strmesaj_email,"						  &_
"strmesaj_tarih) VALUES ('"   &_
strmesaj_konu 	      & "','" &_
strmesaj 			 & "','" &_
strmesaj_email 		 & "','" &_	
Date() 	   & "')"
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
		<h3 align=center>Mesaj ba�ar�yla kaydedildi</h3>
		<h3 align="center">Mesaj doldurdu�unuz i�in te�ekk�r ederiz</h3>
		<p align="center">Bu sitenin amac� siz i�verenlerin, eleman ihtiyac�n�, 
		  en k�sa yoldan gidermektir.<br>
		  <br>
		  <a href="ilanlar.asp">buraya t�klayarak anasayfaya d�nebilirsiniz</a> 
		  <br>
	  </table>
</div>
</body>
</html>
<%
END IF
%>