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
java.util.Date dat=new java.util.Date();
	int date=dat.getDay();
	int mon=dat.getMonth();
	int yer=dat.getYear()+1900;
String cancel_dat=date+"/"+mon+"/"+yer;
    
try{
    con=Db.connect(); 
    PreparedStatement pst=con.prepareStatement("update student_accomodation_details_tab set cancel_date=? where roll_num=?");
    pst.setString(1,cancel_dat);
    pst.setString(2,rollnumber);
    pst.executeUpdate();
	}
  
catch(Exception e){}
%>
<jsp:forward page="hostelallotmentdelete.jsp"/>
