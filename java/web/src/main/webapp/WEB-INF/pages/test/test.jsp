<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${themesPath}/images/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="${scriptsPath}/function.js"></script>
    <script type="text/javascript" src="${ckeditor}/ckeditor.js"></script>
    <script src="${ckeditor}/_samples/sample.js" type="text/javascript"></script>
    <link href="${ckeditor}/_samples/sample.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/CKFinderJava/ckfinder/ckfinder.js"></script>
    <script type="text/javascript">
        //<![CDATA[

        var editor;

        function createEditor(divname)
        {
            if ( editor )
                return;

            var html = document.getElementById(divname).innerHTML;
//            alert(html);
            document.getElementById(divname).style.display = 'none';
            // Create a new editor inside the <div id="editor">, setting its value to html
            var config = {};
            editor = CKEDITOR.appendTo( 'editor', config, html );
            CKFinder.setupCKEditor(editor, '/CKFinderJava/ckfinder/');
        }

        function removeEditor(divname)
        {
            if ( !editor )
                return;

            // Retrieve the editor contents. In an Ajax application, this data would be
            // sent to the server or used in any other way.
            var data = editor.getData();
            document.getElementById(divname).innerHTML = data;
            document.getElementById(divname).style.display = '';

            // Destroy the editor.
            editor.destroy();
            editor = null;

            saveContent(divname, 1, data)
        }

        function saveContent(name, order, content) {
            var url = "/web/test/test!saveContent";
            var params = "name=" + name + "&order=" + order + "&content=" + content;

            var value = getRequest(url, "POST", params);
//            alert(value);
        }

        //]]>
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

<body onload="MM_preloadImages('${themesPath}/images/ourhorses_1.png','${themesPath}/images/gallery_1.png','${themesPath}/images/contact_1.png','${themesPath}/images/aboutus_1.png')">
<div class="Header_bg_1"><table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="248"><img src="${themesPath}/images/logo.png" width="280" height="166" /></td>
    <td width="455"><table width="500" border="0">
      <tr>
        <td align="right"><img src="${themesPath}/images/zg_logo.png" width="36" height="27" /><img src="${themesPath}/images/yg_logo.png" width="36" height="27" />&nbsp;&nbsp;</td>
      </tr>
      <tr>
        <td height="200"><table width="485" border="0" align="right">
          <tr>
            <td width="89"><a href="index.jsp"><img src="${themesPath}/images/home_1.png" width="89" height="37" /></a></td>
            <td width="103"><a href="aboutus.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image21','','${themesPath}/images/aboutus_1.png',1)"><img src="${themesPath}/images/aboutus.png" name="Image21" width="89" height="37" border="0" id="Image21" /></a></td>
            <td width="93"><a href="horse.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image24','','${themesPath}/images/ourhorses_1.png',1)"><img src="${themesPath}/images/ourhorses.png" name="Image24" width="89" height="37" border="0" id="Image24" /></a></td>
            <td width="89"><a href="gallery.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image25','','${themesPath}/images/gallery_1.png',1)"><img src="${themesPath}/images/gallery.png" name="Image25" width="89" height="37" border="0" id="Image25" /></a></td>
            <td width="89" align="right"><a href="contact.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image26','','${themesPath}/images/contact_1.png',1)"><img src="${themesPath}/images/contact.png" name="Image26" width="89" height="37" border="0" id="Image26" /></a></td>
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
            <td valign="top">
                <table width="960" border="0">
                    <tr>
                        <td>
                            <div id="editor">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <div class="ht_bg" style="width:953px; height:77px;">
                                <input onclick="createEditor('pic');" type="button" name="addbutton" id="addbutton" value=" "  class="tab_add">
                                <input onclick="removeEditor('pic');" type="button" name="modifybutton" id="modifybutton" value=" "  class="tab_xiugai">
                                <div id="pic" style="display: '';">
                                    ${content}
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
