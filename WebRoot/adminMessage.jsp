<%@page contentType="text/html;charset=gbk"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
	<head>
	  <title>
	    <s:text name="index.title"/>	    
	  </title>
	  <link rel="stylesheet" type="text/css" href="css/style1.css" />
	  <script language="JavaScript">
       var count = 2;
       function myTimer(){
          if(count!=0){
            count--;
            setTimeout("myTimer()",1000);
          }
          else{
            window.location.href=("<s:property value="url"/>");
          }
       }
     </script>
	</head>	
	<body onload="myTimer();">
		<s:include value="adminTop.jsp"/>
		<div id="nav">
		<table>
			<tr>
				<td>
					<a href="adminIndex.jsp">��У���ߴ���ϵͳ����</a>
	   				&raquo;&nbsp;��ʾ��Ϣ
				</td>
			</tr>
		</table>
		</div>
		<div class="messagebox">
			<h1>��У���ߴ���ϵͳ��ʾ����</h1>
			<p><s:property value="message"/></p>
			<p><a href="adminIndex.jsp">��˴�ȥ��ҳ</a></p>
			<p><a href="<s:property value="url"/>">��������û���Զ���ת�����˴�</a></p>		
		</div>
	</body>
</html>