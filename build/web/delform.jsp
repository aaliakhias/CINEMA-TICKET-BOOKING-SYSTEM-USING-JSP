<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page	import="java.util.*"%> 
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Book a Ticket</title>   
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/ie6.css" rel="stylesheet" type="text/css" />
        <%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
        <link href="css/dream.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
        <!--
        .style1 {font-size: 36px}
        -->
        </style>
    </head>
<div id="header">
<div class="row-1">
<div class="fleft"><a href="index.jsp">Cinema <span style="color:red">World</span></a></div>
          <ul>    
            <li><a href="index.jsp"><img src="images/icon1-act.gif" alt="Home Page" /></a></li>
            <li><a href="contact-us.html"><img src="images/icon2-act.gif" alt="Gmail" /></a></li>
            <li><a href="about-us.html"><img src="images/icon3-act.gif" alt="About-us" /></a></li>
          </ul>
        </div>          
    </div>
        <body id="page1">
<!-- START PAGE SOURCE -->
<div class="tail-top">
  <div class="tail-bottom">
    <div id="main">
      <div id="header">
        <div class="row-2">
          <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="about-us.html">About</a></li>
            <li><a href="articles.html">Articles</a></li>
            <li><a href="contact-us.html">Contacts</a></li>
          </ul>
        </div>
      </div>
         </div>
      </div></div>


<table width="100%">
	<tr><td>
		<table><tr><td  valign="top">
			<table id="navigation"  width="230">
				<tr><td><a href="CustomerMain.jsp">Customer</a></td></tr>
                                <tr><td><a href="urTranscationcust.jsp">Transaction History</a></td></tr>
                                <tr><td><a href="UpdateInfo.jsp">Update Information</a></td></tr>
                                <tr><td><a href="TicketCost.jsp">Ticket Cost</a></td></tr>
                                <tr><td><a href="bookticketmain.jsp">Book Ticket</a></td></tr>
                                <tr><td><a href="movieSchedule3.jsp">Movie Schedule</a></td></tr>
                                <tr><td><a href="CustomerLogin.jsp">Log Out</a></td></tr>
                        </table></td>
                                <td id="databar">
                     <h4><span style="color:white">Delete Movie Schedule </span></h4>
                     
                     <table cellpadding="25" width="587">
                         <tr><td>
                                 <%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/movienew";%>
<%!String user = "root";%>
<%!String psw = "";%>
                          <form action="delmovie.jsp" method="post">   
                              <%
Connection con = null;
PreparedStatement ps = null;
try
{
    Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql = "SELECT * FROM movieschedule";
ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery(); 
%>
<label for="m"><br />
              Movie Name :<br/><br/>
            </label>
<select name="mn">
<%
while(rs.next())
{
String fname = rs.getString("moviename"); 
%>
<option value="<%=fname %>"><%=fname %></option>
<%
}
%>
</select>

<%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>

           <!-- <label for="name"><br />
              Movie Name :<br/><br/>
            </label>
            <input name="userid" type="text" id="name"/>-->
       
            
            
           <br/><br></br><input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Delete"  />
               <p>&nbsp;</p>
          </form>
                     </td></tr>   
                      </table>
                 <br/></td> </tr>
                </table></td></tr></table>            
</body>
</html>