<title>Customer Ticket Booking</title>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page	import="java.util.*"%> 
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%
                                   
                                 
                                 String mn =request.getParameter("mn");
                                
	try {
               
                Statement stmt = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
    ResultSet.CONCUR_READ_ONLY);
                String var ="SELECT * FROM movieschedule where moviename= '"+mn+"' ";
		ResultSet rs=stmt.executeQuery(var);
		if (rs.next()==true)
		{ 
                 //String sql2="SELECT * FROM custtranscation where custname='"+custname +"'";
               // ResultSet rs1=stmt1.executeQuery(sql2);
                
               
                //mtop=money to pay
                //noft =number of Ticket
                //money to pay=number of Ticket*ticket Price(different for different class)
                
               
                //String mov=String.parseString(mn);
                
                Statement stmt2=connection.createStatement();
                String sql1="DELETE FROM movieschedule WHERE moviename="+mn;
                        stmt2.executeUpdate(sql1);
                 
                 //} 
                      
                %>
         
                 <pre>Deleted!!</pre>
                <p><a href="employeemain.jsp">Back</a><br /> 
<%
                 connection.close();
    }
		 else 
		{

			response.sendRedirect("Nosuchmovie.jsp");
		}

	} 
	catch (Exception e)
	{
		out.print(e);
		e.printStackTrace();
	}
%>
