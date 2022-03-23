<%'Verilen stringi sayýya çevirme fonksiyonu Yazan:Saim GÖKKOYUN
'This Function purpose is string to convert number Author:Saim GÖKKOYUN
'www.turkcisco.com    saim@emirler.net

function SELECTED(bir,iki)
if sayiya_cevir(bir)=sayiya_cevir(iki) then
SELECTED=" selected"
end if
end function

function sayiya_cevir(stringim)
ust=0
sayiya_cevir=0
for i= 1 to len(stringim)
sayi=mid(stringim,len(stringim)-i+1,1)
select case sayi
 case "1":sayiya_cevir = sayiya_cevir + 1 * 10^ust
 case "2":sayiya_cevir = sayiya_cevir + 2 * 10^ust
 case "3":sayiya_cevir = sayiya_cevir + 3 * 10^ust
 case "4":sayiya_cevir = sayiya_cevir + 4 * 10^ust
 case "5":sayiya_cevir = sayiya_cevir + 5 * 10^ust
 case "6":sayiya_cevir = sayiya_cevir + 6 * 10^ust
 case "7":sayiya_cevir = sayiya_cevir + 7 * 10^ust
 case "8":sayiya_cevir = sayiya_cevir + 8 * 10^ust
 case "9":sayiya_cevir = sayiya_cevir + 9 * 10^ust
 case "0":
 case else:ust=ust-1
end select
ust=ust+1
next
end function
%>