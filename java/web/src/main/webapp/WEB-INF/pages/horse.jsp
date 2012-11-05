<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<%@ include file="/common/nocache.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>力马</title>
    <link href="${themesPath}/images/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="${scriptsPath}/function.js"></script>
    <script type="text/javascript" src="${scriptsPath}/manage.js"></script>
    <script type="text/javascript" src="${ckeditor}/ckeditor.js"></script>
    <script src="${ckeditor}/_samples/sample.js" type="text/javascript"></script>
    <link href="${ckeditor}/_samples/sample.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/CKFinderJava/ckfinder/ckfinder.js"></script>

    <script type="text/javascript">
<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>
</head>

<body onload="MM_preloadImages('${themesPath}/images/gallery_1.png','${themesPath}/images/contact_1.png','${themesPath}/images/aboutus_1.png','${themesPath}/images/ourhorse_4.png','${themesPath}/images/ourhorse_6.png','${themesPath}/images/ourhorse_8.png','${themesPath}/images/ourhorse_10.png','${themesPath}/images/home_1.png')">
<div class="Header_ourhorse"><table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="460" height="220"><img src="${themesPath}/images/logo.png" width="280" height="166" /></td>
    <td width="500"><table width="500" border="0">
      <tr>
          <td align="right"><a href="${ctx}/cn/horse" style="cursor: pointer"><img src="${themesPath}/images/zg_logo.png" width="36" height="27" /></a><a href="${ctx}/horse" style="cursor:pointer"><img src="${themesPath}/images/yg_logo.png" width="36" height="27" /></a>&nbsp;&nbsp;</td>
      </tr>
      <tr>
        <td height="125"><table width="485" border="0" align="right">
          <tr>
            <td width="89"><a href="index" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image64','','${themesPath}/images/home_1.png',1)"><img src="${themesPath}/images/home.png" name="Image64" width="89" height="37" border="0" id="Image64" /></a></td>
            <td width="103"><a href="aboutus" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image21','','${themesPath}/images/aboutus_1.png',1)"><img src="${themesPath}/images/aboutus.png" name="Image21" width="89" height="37" border="0" id="Image21" /></a></td>
            <td width="93"><a href="horse"><img src="${themesPath}/images/ourhorses_1.png" width="89" height="37" /></a></td>
            <td width="89"><a href="gallery" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image25','','${themesPath}/images/gallery_1.png',1)"><img src="${themesPath}/images/gallery.png" name="Image25" width="89" height="37" border="0" id="Image25" /></a></td>
            <td width="89" align="right"><a href="contact" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image26','','${themesPath}/images/contact_1.png',1)"><img src="${themesPath}/images/contact.png" name="Image26" width="89" height="37" border="0" id="Image26" /></a></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="61" colspan="2" background="${themesPath}/images/horse_1.jpg"><table width="960" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td align="center"><a href ="horse"><img src="${themesPath}/images/ourhorse_2.png" width="111" height="35" /></a></td>
        <td align="center"><img src="${themesPath}/images/ourhorse_line.jpg" width="3" height="35" /></td>
        <td align="center"><a href="horse?type=dressage" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image13','','${themesPath}/images/ourhorse_4.png',1)">
            <img src="${themesPath}/images/ourhorse_3.png" name="Image13" width="149" height="35" border="0" id="Image13" /></a></td>
        <td align="center"><img src="${themesPath}/images/ourhorse_line.jpg" alt="" width="3" height="35" /></td>
        <td align="center"><a href="horse?type=jumping" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image15','','${themesPath}/images/ourhorse_6.png',1)">
            <img src="${themesPath}/images/ourhorse_5.png" name="Image15" width="182" height="35" border="0" id="Image15" /></a></td>
        <td align="center"><img src="${themesPath}/images/ourhorse_line.jpg" alt="" width="3" height="35" /></td>
        <td align="center"><a href="horse?type=family" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image17','','${themesPath}/images/ourhorse_8.png',1)">
            <img src="${themesPath}/images/ourhorse_7.png" name="Image17" width="132" height="35" border="0" id="Image17" /></a></td>
        <td align="center"><img src="${themesPath}/images/ourhorse_line.jpg" alt="" width="3" height="35" /></td>
        <td align="center"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image19','','${themesPath}/images/ourhorse_10.png',1)">
            <img src="${themesPath}/images/ourhorse_9.png" name="Image19" width="70" height="35" border="0" id="Image19" /></a></td>
        <td><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image19','','${themesPath}/images/ourhorse_10.png',1)">
            <img src="${themesPath}/images/ourhorse_star1.jpg" alt="" width="21" height="22" /></a>
            <a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image19','','${themesPath}/images/ourhorse_10.png',1)">
                <img src="${themesPath}/images/ourhorse_star1.jpg" alt="" width="21" height="22" /></a>
            <a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image19','','${themesPath}/images/ourhorse_10.png',1)">
                <img src="${themesPath}/images/ourhorse_star1.jpg" alt="" width="21" height="22" /></a>
            <img src="${themesPath}/images/ourhorse_star2.jpg" width="21" height="22" />
            <img src="${themesPath}/images/ourhorse_star2.jpg" alt="" width="21" height="22" /></td>
        <td><img src="${themesPath}/images/ourhorse_line.jpg" alt="" width="3" height="35" /></td>
      </tr>
    </table></td>
    </tr>
</table>
</div>
<div class="ContentHome">
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top"><table width="960" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td width="955"><img src="${themesPath}/images/ourhorse_3.jpg" width="960" height="15" /></td>
        </tr>
        <tr align="center">
            <td bgcolor="#FFFFFF"><table width="960" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="85" colspan="3">
                        <img src="${themesPath}/images/ourhorse_2.jpg" width="932" height="35" />
                    </td>
                </tr>
                <c:forEach items="${horses}" var="horse" varStatus="status">
                    <c:if test="${(status.count - 1)%3 == 0}">
                        <c:set var="editorname" value="editor${(status.count - 1)%3}"/>
                        <tr>
                            <td colspan="3">
                                <div id="${editorname}">
                                </div>
                            </td>
                        </tr>
                        <tr align="center">
                    </c:if>
                        <td width="320" style="vertical-align: top" align="left">
                                        ${horse.content}
                        </td>
                    <c:if test="${(status.count)%3 == 0}">
                        </tr>
                        <tr>
                            <td height="50" colspan="3" align="center"><img src="${themesPath}/images/line.jpg" width="648" height="41" /></td>
                        </tr>
                    </c:if>
                </c:forEach>
                </table>
            </td>
        </tr>
        <tr align="center">
            <td>
                <div id="editor">
                </div>
            </td>
        </tr>
        <tr>
            <td>
            </td>
        </tr>
    </table></td>
  </tr>
</table>
    <div class="Foot">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td height="95" background="${themesPath}/images/cao.png">&nbsp;</td>
            </tr>
            <tr>
                <td height="249" background="${themesPath}/images/foot_bg.jpg"><table width="960" border="0" align="center">
                    <tr>
                        <td colspan="3">
                            <div id="editor5" style="clear: both">
                            </div>
                        </td>
                    </tr><tr>
                    <td height="74"><img src="${themesPath}/images/twitter.png" width="168" height="31" /></td>
                    <td rowspan="2" align="right" class="foot_text">
                                ${introductioncontent}
                    </td>
                </tr>
                    <tr>
                        <td><img src="${themesPath}/images/facebook.png" width="127" height="26" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" class="foot_line"></td>
                    </tr>
                    <tr>
                        <td colspan="2" class="title_main">© 2012 limahorse </td>
                    </tr>
                </table></td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>