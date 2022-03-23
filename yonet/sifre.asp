 
<%
IF request.form("textfield")="password" THEN Session("sifre")="ok"
IF Session("sifre")<>"ok" THEN
response.redirect("sifregir.asp?ref="&request("PATH_INFO"))
END IF
%>
