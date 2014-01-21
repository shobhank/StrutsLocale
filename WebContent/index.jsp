<%@page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Testing Locale</title>
</head>
<body>
	<h1><s:text name="global.heading"/></h1>
	<s:url id="indexEN" namespace="/" action="localeAction" >
      <s:param name="request_locale" >en</s:param>
   </s:url>
   <s:url id="indexHI" namespace="/" action="localeAction" >
      <s:param name="request_locale" >hi</s:param>
   </s:url>
   <s:url id="indexFR" namespace="/" action="localeAction" >
      <s:param name="request_locale" >fr</s:param>
   </s:url>

   <s:a href="%{indexEN}" >English</s:a>
   <s:a href="%{indexHI}" >Hindi</s:a>
   <s:a href="%{indexFR}" >France</s:a>
   
	<s:form action="helloAction" method="post" namespace="/">
      <s:textfield name="name" key="global.name" size="20" />
      <s:submit name="submit" key="global.hello" />
	</s:form>
   
</body>
</html>