<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=">
</head>

<body bgcolor="#FFFFFF">

<%
IF request("ref")<>"" THEN
ref=request("ref")
ELSE
ref=request("HTTP_REFERER")
END IF
%>
<form name="form1" action="<%=ref%>" method="post">
  <div align="center">Lütfen þifreyi giriniz: 
	<input type="password" name="textfield">
	<input type="hidden" name="ref" value="<%=ref%>">
	<input type="submit" name="Submit" value="Submit">

  </div>
</form>
</body>
</html>
