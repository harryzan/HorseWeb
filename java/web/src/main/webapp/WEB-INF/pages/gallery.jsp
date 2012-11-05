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

        function enlarge(div) {
            var lg = document.getElementById('largegallery');
            var img = div.getElementsByTagName('img');
            lg.src = img[0].src;
        }
    </script>

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

<body onload="MM_preloadImages('${themesPath}/images/home_1.png','${themesPath}/images/ourhorses_1.png','${themesPath}/images/gallery_1.png','${themesPath}/images/aboutus_1.png')">
<div class="Header"><table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="248"><img src="${themesPath}/images/logo.png" width="280" height="166" /></td>
    <td width="455"><table width="500" border="0">
      <tr>
          <td align="right"><a href="${ctx}/cn/gallery" style="cursor: pointer"><img src="${themesPath}/images/zg_logo.png" width="36" height="27" /></a><a href="${ctx}/gallery" style="cursor:pointer"><img src="${themesPath}/images/yg_logo.png" width="36" height="27" /></a>&nbsp;&nbsp;</td>
      </tr>
      <tr>
        <td height="200"><table width="485" border="0" align="right">
          <tr>
            <td width="89"><a href="index" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image22','','${themesPath}/images/home_1.png',1)"><img src="${themesPath}/images/home.png" name="Image22" width="89" height="37" border="0" id="Image22" /></a></td>
            <td width="103"><a href="aboutus" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image27','','${themesPath}/images/aboutus_1.png',1)"><img src="${themesPath}/images/aboutus.png" name="Image27" width="89" height="37" border="0" id="Image27" /></a></td>
            <td width="93"><a href="horse" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image24','','${themesPath}/images/ourhorses_1.png',1)"><img src="${themesPath}/images/ourhorses.png" name="Image24" width="89" height="37" border="0" id="Image24" /></a></td>
              <td width="103"><a href="gallery"><img src="${themesPath}/images/gallery_1.png" width="89" height="37" /></a></td>
              <td width="89" align="right"><a href="contact" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image26','','${themesPath}/images/contact_1.png',1)"><img src="${themesPath}/images/contact.png" name="Image26" width="89" height="37" border="0" id="Image26" /></a></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
</div>
<div class="ContentHome">
    <table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td width="700" valign="top"><table width="700" border="0" cellpadding="0" cellspacing="0">
            </table>
                <table width="700" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td height="500" valign="top"><table width="698" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td bgcolor="#FFFFFF"><table width="688" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td height="5"></td>
                                    </tr>
                                    <tr>
                                        <td height="240"  style="vertical-align: top">
                                            <img id="largegallery" src="" width="688" height="482" />
                                        </td>
                                    </tr>
                                </table></td>
                            </tr>
                            <tr>
                                <td><img src="${themesPath}/images/gallery_1.jpg" width="698" height="16" /></td>
                            </tr>
                        </table></td>
                    </tr>
                </table></td>
            <td width="260" valign="top"><table width="230" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="65">&nbsp;</td>
                </tr>
                <tr>
                    <td height="90" background="${themesPath}/images/left1.png"><table width="200" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td height="75" valign="bottom"><img src="${themesPath}/images/gallery_3.jpg" width="83" height="30" /></td>
                        </tr>
                    </table></td>
                </tr>
                <tr>
                    <td valign="top" background="${themesPath}/images/left_2.jpg">
                        <table width="200" border="0" style="vertical-align: top">
                            <c:forEach items="${galleries}" var="gallery" varStatus="status">
                                <c:if test="${(status.count - 1)%2 == 0}">
                                <tr>
                                </c:if>
                                <td height="70">
                                    <div id="${gallery.name}" onclick="enlarge(this);" style="cursor:pointer; width:85px; height:54px;display: ''; vertical-align: top">
                                            ${gallery.content}
                                    </div>
                                    <c:if test="${status.count == 1}">
                                        <script type="text/javascript">
                                            enlarge(document.getElementById('${gallery.name}'));
                                        </script>
                                    </c:if>
                                </td>
                                <c:if test="${(status.count)%2 == 0}">
                                </tr>
                                </c:if>
                            </c:forEach>
                        </table></td>
                </tr>
                <tr>
                    <td height="41"  background="${themesPath}/images/left_3.png">&nbsp;</td>
                </tr>
            </table>
            </td>
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
                    <td rowspan="2" align="right" class="foot_text" style="vertical-align: top">
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