<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
     
    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
  </head>
   adsdaasd
  <body> 
  <center>
    <h2>所有图书的列表信息 </h2>
  	(由于程序BUG，需要先add，再返回才能显示)
    <table border="1">
    <tr bgcolor="#33CCFF">
    <td align="center"> Title</td>
    <td align="center"> ISBN </td>
    <td align="center" >AuthorID</td>
    <td align="center" >Publisher</td>
    <td align="center" >PublishDate</td>
    <td align="center" >Price</td>
    <td align="center" >OP1</td>
    <td align="center" >OP2</td>
    <tr>
    <br>
    <s:iterator value="#list">
   <td align="center">   <s:property value="Title"/></td>
   <td align="center">    <s:property value="ISBN"/></td>
   <td align="center">   <s:property value="AuthorID"/></td>
   <td align="center">    <s:property value="Publisher"/></td>
   <td align="center">   <s:property value="PublishDate"/></td>
   <td align="center">    <s:property value="Price"/></td>
   <td align="center">     <s:a href="book!delete.action?ISBN=%{ISBN}">delete</s:a></td>
   <td align="center">    <s:a href="book!update.action?ISBN=%{ISBN}">update</s:a></td>
   </br><br/>
   </tr>
    </s:iterator>
    </table>
    <h2><s:a href="book!add.action">add</s:a></br></h2>
	</center>
  </body>
</html>
