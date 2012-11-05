<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<%@ include file="/common/nocache.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="author" content="Chomo" />
		<link rel="start"  title="Home" />
<title>力马管理</title>
	<style type="text/css">
			* { margin:0; padding:0; list-style:none; font-size:14px;}/*---该css reset仅用于demo，请自行换成适合您自己的css reset---*/
			html { height:100%;}
			body { height:100%; text-align:center;}
			.centerDiv {
	display:inline-block;
	zoom:1;
*display:inline; 			vertical-align:middle;
	text-align:left;
	width:889px;
	padding:10px;
	border:0px solid #f60;
	height: 403px;
	background-image: url(${themesPath}/skin/login/login.png);
	background-repeat: no-repeat;
	background-position: center;
}
			.hiddenDiv { height:100%; overflow:hidden; display:inline-block; width:1px; overflow:hidden; margin-left:-1px; zoom:1; *display:inline; *margin-top:-1px; _margin-top:0; vertical-align:middle;}
		</style>
    <link href="${themesPath}/skin/login.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
<!--
.STYLE1 {color: #FF0000}
-->
    </style>
</head>
<body class="userlogin_body">
		
	<div class="centerDiv">
		
		<br />
	    <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
       <form action="${ctx}/manage/login" method="post">
      <table width="100%" border="0">
          <tr>
            <td width="72%" height="40" align="right">Username：</td>
            <td width="28%"><input type="text" name="loginname" id="textfield" class="login_input" /></td>
        </tr>
          <tr>
            <td height="40" align="right">Password：</td>
            <td><input type="password" name="password" id="textfield2" class="login_input" /></td>
          </tr>
          <tr>
            <td height="40" align="right">&nbsp;</td>
            <td><input name="button" type="submit"  class="login_ok" id="button" value=" " />
            <%--<input type="submit" name="button2" id="button2" class="login_cancel" value=" " />--%>
            </td>
          </tr>
          <tr>
            <td height="40" align="right">&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table>
	  </form>
        <br/>
</div><div class="hiddenDiv"></div>
</body>
</html>