<%@page import="java.sql.*,vdb.*"%>
<%!String a[]=new String[5];
int i=0;
Connection con = null;
PreparedStatement pst=null;
ResultSet rs=null;
StringBuffer sb=new StringBuffer();
%>
<%
String rollnumber=request.getParameter("roll");
//System.out.println(rollnumber);
String date=new java.util.Date().toString();
String dt=date.substring(4,7)+"-"+date.substring(8,10)+"-"+date.substring(24,28);
    
try{
    con=Db.connect(); 
    PreparedStatement pst=con.prepareStatement("update student_bus_acc_details_tab set bus_cancel_date=? where roll_num=?");
    pst.setString(1,dt);
    pst.setString(2,rollnumber);
    pst.executeUpdate();
	}
  
catch(Exception e){}
%>
<jsp:forward page="RouteBusDel.jsp"/>
