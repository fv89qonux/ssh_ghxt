<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>


<html>
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
		
        <script language="javascript">
           function gonggaoAdd()
           {
              var url="<%=path %>/admin/gonggao/gonggaoAdd.jsp";
              window.location.href=url;
           }
           
           function gonggaoDetailHou(id)
           {
                 var url="<%=path %>/gonggaoDetailHou.action?id="+id;
                 var n="";
                 var w="800px";
                 var h="400px";
                 var s="resizable:no;help:no;status:no;scroll:yes";
				 openWin(url,n,w,h,s);
           }
           
           function gonggaoDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/gonggaoDel.action?id="+id;
               }
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="5" background="<%=path %>/img/tbg.gif">&nbsp;&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="4%">序号</td>
					<td width="40%">标题</td>
					<td width="10%">发布时间</td>
					<td width="10%">内容</td>
					<td width="10%">操作</td>
		        </tr>	
				<s:iterator value="#request.gonggaoList" id="gonggao" status="ss">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						 <s:property value="#ss.index+1"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 <s:property value="#gonggao.biaoti"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#gonggao.shijian"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <a href="#" onclick="gonggaoDetailHou(<s:property value="#gonggao.id"/>)" class="pn-loperator">查看内容</a>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<input type="button" value="删除" onclick="gonggaoDel(<s:property value="#gonggao.id"/>)"/>
					</td>
				</tr>
				</s:iterator>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 9px;">
			  <tr>
			    <td>
			      <input type="button" value="添加系统公告" style="width: 120px;" onclick="gonggaoAdd()" />
			    </td>
			  </tr>
		    </table>
	</body>
</html>
