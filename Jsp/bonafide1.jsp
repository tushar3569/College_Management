<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>bonafied certificate</title>
<script language="javascript">
function get()
{
var rno=document.getElementById("roll").value;

var req=getRequestObject();

req.onreadystatechange=function(){handleResponse(req);}
req.open("get","bonafied_db.jsp?rollno="+rno,true);
req.send(null);
}
function handleResponse(req)
{
if(req.readyState==4)
{
var s=req.responseText;
var x=s.split("$");

alert(x);
alert(x[3]);
document.getElementById("branch").value=x[0];
document.getElementById("student").value=x[1];
document.getElementById("parent").value=x[2];
document.getElementById("photo").src=x[3];


}
}
function getRequestObject()
{
if(window.XMLHttpRequest)
{
return(new XMLHttpRequest());
}
else if(window.ActiveXObject)
{
return(new ActiveXObject("Microsoft.XMLHTTP"));
}
else
{
return(null);
}
}
 </script>

</head>
<body BGCOLOR="SKYBLUE">
<form action="Bonafide.jsp" method="get"><table><tr><td>
<fieldset ><legend>Course Completion Certificate</legend>
<table height="100" width="100"> 
        
        <tr><th>Regd.No:</th><td><input type="text" id="roll" name="roll" size="15" onblur="get()"></td><td rowspan="2"><img src="" id="photo" height="150" width="150"/></td></tr>
        <tr><th>Branch:</th><td><input type="text" id="branch" name="branch" size="15"></td></tr>
        
        <tr><th>Student:</th><td colspan="2"><input type="text" id="student" name="student" size="40"></td></tr>
        <tr><th>Parent:</th><td colspan="2"><input type="text" id="parent" name="parent" size="40"></td></tr>
        
        <tr><th>During Year:</th><td colspan="2"><input type="text" id="year" name="year" size="20"></td></tr>
        <tr><td colspan="3" align="right"><input type="submit" value="VIEW"><input type="button" value="QUIT" onclick="window.close()"></td></tr>





</table>
</fieldset>
</td>
</tr>
</table>





</form>

</body>
</html>