<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/cntaglibs.jsp" %>
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

<body onload="MM_preloadImages('${themesPath}/images/ourhorses_1.png','${themesPath}/images/gallery_1.png','${themesPath}/images/contact_1.png','${themesPath}/images/aboutus_1.png')">
<div class="Header_bg_1"><table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td height="248"><img src="${themesPath}/images/logo.png" width="280" height="166" /></td>
        <td width="455"><table width="500" border="0">
            <tr>
                <td align="right"><a href="${ctx}/cnmanage/mindex" style="cursor: pointer"><img src="${themesPath}/images/zg_logo.png" width="36" height="27" /></a><a href="${ctx}/manage/mindex" style="cursor:pointer"><img src="${themesPath}/images/yg_logo.png" width="36" height="27" /></a>&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td height="200"><table width="485" border="0" align="right">
                    <tr>
                        <td width="89"><img src="${themesPath}/images/home_1.png" width="89" height="37" /></td>
                        <td width="103"><a href="maboutus" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image21','','${themesPath}/images/aboutus_1.png',1)"><img src="${themesPath}/images/aboutus.png" name="Image21" width="89" height="37" border="0" id="Image21" /></a></td>
                        <td width="93"><a href="mhorse" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image24','','${themesPath}/images/ourhorses_1.png',1)"><img src="${themesPath}/images/ourhorses.png" name="Image24" width="89" height="37" border="0" id="Image24" /></a></td>
                        <td width="89"><a href="mgallery" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image25','','${themesPath}/images/gallery_1.png',1)"><img src="${themesPath}/images/gallery.png" name="Image25" width="89" height="37" border="0" id="Image25" /></a></td>
                        <td width="89" align="right"><a href="mcontact" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image26','','${themesPath}/images/contact_1.png',1)"><img src="${themesPath}/images/contact.png" name="Image26" width="89" height="37" border="0" id="Image26" /></a></td>
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
            <td valign="top"><table width="960" border="0">
                <%--<tr>--%>
                    <%--<td>--%>
                        <%--<div id="editor1">--%>
                        <%--</div>--%>
                    <%--</td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td colspan="3">--%>
                        <%--<div style="position: relative;">--%>
                            <%--<div style="position:absolute;left:0;top:0;z-index:2;">--%>
                                <%--<input onclick="createEditor('pic', 'editor1');" type="button" class="tab_xiugai">--%>
                                <%--<input onclick="saveEditor('pic', 1, 'Home');" type="button" class="tab_save">--%>
                            <%--</div>--%>
                            <%--<div id="pic" style="display: '';position:absolute;left:0;top:0;z-index:1;">--%>
                                <%--${piccontent}--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--<div style="clear: both;"/>--%>
               <%--</tr>--%>
                <tr>
                    <td>
                        <table width="960" border="0">
                            <tr>
                                <td colspan="3">
                                    <div id="editor1">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <div>
                                            <input onclick="createEditor('cnpic', 'editor1');" type="button" class="tab_xiugai">
                                            <input onclick="saveEditor('cnpic', 1, 'Home');" type="button" class="tab_save">
                                        <div id="cnpic" style="display: '';">
                                            ${piccontent}
                                        </div>
                                    </div>
                                    <div style="clear: both;"/>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <div id="editor2" style="clear: both">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div style="width:295px; height:462px; position:relative;">
                                        <div style="position:absolute;left:0;top:0;z-index:2;">
                                            <input onclick="createEditor('cnhorse1', 'editor2');" type="button" class="tab_xiugai">
                                            <input onclick="saveEditor('cnhorse1', 2, 'Home');" type="button" class="tab_save">
                                        </div>
                                        <div id="cnhorse1" style="display: '';position:absolute;left:0;top:0;z-index:1;">
                                            ${horse1content}
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div style="width:295px; height:462px; position: relative;">
                                        <div style="position:absolute;left:0;top:0;z-index:2;">
                                            <input onclick="createEditor('cnhorse2', 'editor2');" type="button" class="tab_xiugai">
                                            <input onclick="saveEditor('cnhorse2', 3, 'Home');" type="button" class="tab_save">
                                        </div>
                                        <div id="cnhorse2" style="display: '';position:absolute;left:0;top:0;z-index:1;">
                                            ${horse2content}
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div style="width:295px; height:462px; position:relative;">
                                        <div style="position:absolute;left:0;top:0;z-index:2;">
                                            <input onclick="createEditor('cnhorse3', 'editor2');" type="button" class="tab_xiugai">
                                            <input onclick="saveEditor('cnhorse3', 4, 'Home');" type="button" class="tab_save">
                                        </div>
                                        <div id="cnhorse3" style="display: '';position:absolute;left:0;top:0;z-index:1;">
                                            ${horse3content}
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td height="76" colspan="3" align="center"><img src="${themesPath}/images/line.jpg" width="648" height="41" /></td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <div id="editor3">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <table width="940" border="0">
                                        <tr>
                                            <td>
                                                <div style="width:426px; height:267px; position:relative;">
                                                    <div style="position:absolute;left:0;top:0;z-index:2;">
                                                        <input onclick="createEditor('cnaboutus1', 'editor3');" type="button" class="tab_xiugai">
                                                        <input onclick="saveEditor('cnaboutus1', 5, 'Home');" type="button" class="tab_save">
                                                    </div>
                                                    <div id="cnaboutus1" style="display: '';position:absolute;left:0;top:0;z-index:1;">
                                                        ${aboutus1content}
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="width:514px; height:267px; position:relative;">
                                                    <div style="position:absolute;left:0;top:0;z-index:2;">
                                                        <input onclick="createEditor('cnaboutus2', 'editor3');" type="button" class="tab_xiugai">
                                                        <input onclick="saveEditor('cnaboutus2', 6, 'Home');" type="button" class="tab_save">
                                                    </div>
                                                    <div id="cnaboutus2" style="display: '';position:absolute;left:0;top:0;z-index:1;">
                                                        ${aboutus2content}
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td height="39" colspan="3" align="center"><img src="${themesPath}/images/line.jpg" width="648" height="41" /></td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <div id="editor4">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td height="39" colspan="3">
                                    <div style="width:945px; height:326px; position:relative;">
                                        <div style="position:absolute;left:0;top:0;z-index:2;">
                                        <input onclick="createEditor('cnhighlight', 'editor4');" type="button" class="tab_xiugai">
                                        <input onclick="saveEditor('cnhighlight', 7, 'Home');" type="button" class="tab_save">
                                        </div>
                                        <div id="cnhighlight" style="display: '';position:absolute;left:0;top:0;z-index:1;">
                                            ${highlightcontent}
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
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
                            <div style="width:484px; height:139px; position:relative;">
                                <div style="position:absolute;right:0;top:0;z-index:2;">
                                    <input onclick="createEditor('cnintroduction', 'editor5');" type="button" class="tab_xiugai">
                                    <input onclick="saveEditor('cnintroduction', 1, 'Home');" type="button" class="tab_save">
                                </div>
                                <div id="cnintroduction" style="display: '';position:absolute;right:0;top:0;z-index:1;">
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
