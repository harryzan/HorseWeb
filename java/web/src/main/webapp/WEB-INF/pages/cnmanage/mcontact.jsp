<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/cntaglibs.jsp" %>
<%@ include file="/common/nocache.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${themesPath}/images/style.css" rel="stylesheet" type="text/css" />
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
          <td align="right"><a href="${ctx}/cnmanage/mcontact" style="cursor: pointer"><img src="${themesPath}/images/zg_logo.png" width="36" height="27" /></a><a href="${ctx}/manage/mcontact" style="cursor:pointer"><img src="${themesPath}/images/yg_logo.png" width="36" height="27" /></a>&nbsp;&nbsp;</td>
      </tr>
      <tr>
        <td height="200"><table width="485" border="0" align="right">
          <tr>
            <td width="89"><a href="mindex" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image22','','${themesPath}/images/home_1.png',1)"><img src="${themesPath}/images/home.png" name="Image22" width="89" height="37" border="0" id="Image22" /></a></td>
            <td width="103"><a href="maboutus" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image27','','${themesPath}/images/aboutus_1.png',1)"><img src="${themesPath}/images/aboutus.png" name="Image27" width="89" height="37" border="0" id="Image27" /></a></td>
            <td width="93"><a href="mhorse" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image24','','${themesPath}/images/ourhorses_1.png',1)"><img src="${themesPath}/images/ourhorses.png" name="Image24" width="89" height="37" border="0" id="Image24" /></a></td>
            <td width="89"><a href="mgallery" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image25','','${themesPath}/images/gallery_1.png',1)"><img src="${themesPath}/images/gallery.png" name="Image25" width="89" height="37" border="0" id="Image25" /></a></td>
            <td width="89" align="right"><a href="mcontact"><img src="${themesPath}/images/contact_1.png" width="89" height="37" /></a></td>
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
      <tr>
        <td><img src="${themesPath}/images/yinying1.png" width="700" height="41" /></td>
      </tr>
    </table>
      <table width="700" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="500" valign="top" bgcolor="#ffffff"><table width="680" border="0" align="center">
            <tr>
              <td width="676" colspan="3" align="center"><br />
                <img src="${themesPath}/images/contact_1.jpg" width="637" height="54" /></td>
            </tr>
            <tr>
              <td height="54" colspan="3" class="title_main">Lorem ipsum dolor sit amet,consectetur adipiscing elit.Hunc elit nibh,hendrerit sed vllutpat quis,euismod at augue. Sed eleifend ante non quam euismod sed hendrerit dui iaculis.</td>
            </tr>
            <tr>
              <td height="54" colspan="3">&nbsp;</td>
            </tr>
            <tr>
              <td height="42" class="title_text">Your name</td>
              <td class="title_text">Your e-mail</td>
              <td class="title_text">Subject</td>
            </tr>
            <tr>
              <td width="226" height="54"><input type="text" name="textfield" id="textfield" class="input_1" style="height:45px; width:200px;" /></td>
              <td width="226"><input type="text" name="textfield2" id="textfield2" class="input_1" style="height:45px; width:200px;" /></td>
              <td width="226"><input type="text" name="textfield3" id="textfield3" class="input_1" style="height:45px; width:200px;" /></td>
            </tr>
            <tr>
              <td height="40" colspan="3" class="home_text">Your message</td>
            </tr>
            <tr>
              <td height="54" colspan="3"><textarea name="textarea" id="textarea" cols="45" rows="5" class="input_1"  style="height:100px; width:670px;"></textarea></td>
            </tr>
            <tr>
              <td height="54" colspan="3"><img src="${themesPath}/images/contact_8.jpg" width="183" height="39" /></td>
            </tr>
              <tr>
                  <td height="26" colspan="3"><table width="665" border="0">
                      <tr>
                          <td width="655"><h6><img src="${themesPath}/images/line.jpg" width="648" height="41" /></h6>                    </td>
                      </tr>
                      <tr>
                          <td><h6><strong>Our Shanghai  Office: </strong></h6>
                              <h6><strong>上海办公室 </strong></h6>
                              <h6>&nbsp;</h6>                    </td>
                      </tr>
                      <tr>
                          <td><h6>地址：上海市浦东新区向城路15号锦城大厦7B </h6>
                              <h6>电话： 13816925021 </h6>
                              <h6>邮箱：<a href="mailto:sandy@splendidchina.eu" class="cd">sandy@splendidchina.eu</a> </h6>
                              <h6>网址：www.binnemahorse.cn </h6></td>
                      </tr>
                  </table>
                  </td>
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
            <td height="75" valign="bottom"><img src="${themesPath}/images/contact_2.jpg" width="125" height="24" /></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="90" valign="top" background="${themesPath}/images/left_2.jpg">
        <table width="200" border="0" align="center">
          <tr>
            <td height="20">&nbsp;</td>
          </tr>
          <tr>
            <td height="30"><img src="${themesPath}/images/contact_3.jpg" width="142" height="20" /></td>
          </tr>
          <tr>
            <td background="${themesPath}/images/line1.jpg"></td>
          </tr>
          <tr>
            <td height="30" ><img src="${themesPath}/images/contact_4.jpg" width="134" height="18" /></td>
          </tr>
          <tr>
            <td background="${themesPath}/images/line1.jpg"></td>
          </tr>
          <tr>
            <td height="30" ><img src="${themesPath}/images/contact_5.jpg" width="158" height="17" /></td>
          </tr>
          <tr>
            <td background="${themesPath}/images/line1.jpg" ></td>
          </tr>
          <tr>
            <td height="30" ><img src="${themesPath}/images/contact_6.jpg" width="72" height="13" /></td>
          </tr>
          <tr>
            <td background="${themesPath}/images/line1.jpg"></td>
          </tr>
          <tr>
            <td height="30">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="41"><img src="${themesPath}/images/contact_7.jpg" width="232" height="228" /></td>
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
          <td rowspan="2" align="right" class="foot_text">
              <div style="width:484px; height:139px; position:relative;">
                  <div style="position:absolute;right:0;top:0;z-index:2;">
                      <input onclick="createEditor('cnintroduction', 'editor5');" type="button" class="tab_xiugai">
                      <input onclick="saveEditor('cnintroduction', 1, 'Home');" type="button" class="tab_save">
                  </div>
                  <div id="introduction" style="display: '';position:absolute;right:0;top:0;z-index:1;">
                      ${introductioncontent}
                  </div>
              </div>
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
