/**
 * Created with IntelliJ IDEA.
 * User: harryzan
 * Date: 9/22/12
 * Time: 9:44 PM
 * To change this template use File | Settings | File Templates.
 */
var editor;

function createEditor(divname, editorname)
{
    if ( editor )
        return;

    var html = document.getElementById(divname).innerHTML;
//            alert(html);
    document.getElementById(divname).style.display = 'none';
    // Create a new editor inside the <div id="editor">, setting its value to html
    var config = {};
    editor = CKEDITOR.appendTo( editorname, config, html );
    CKFinder.setupCKEditor(editor, '/CKFinderJava/ckfinder/');
}

function saveEditor(divname, order, type, htype)
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

    saveContent(divname, order, data, type, htype)
}

function removeEditor(divname, order, type, htype)
{
//    alert(divname);
//    if ( !editor )
//        return;

    // Retrieve the editor contents. In an Ajax application, this data would be
    // sent to the server or used in any other way.
//    var data = editor.getData();
//    document.getElementById(divname).innerHTML = data;
//    document.getElementById(divname).style.display = '';

    // Destroy the editor.
//    editor.destroy();
//    editor = null;

//    alert(divname);
    var url = "/web/manage/save!remove" + type + "Content";
//    alert(url);
    var params = "name=" + divname + "&order=" + order + "&type=" + htype + "&lang=cn";

    var value = getRequest(url, "POST", params);
}

function upEditor(divname, order, htype)
{
    var url = "/web/manage/save!upHorseContent";
    var params = "name=" + divname + "&order=" + order + "&type=" + htype + "&lang=cn";

    var value = getRequest(url, "POST", params);
}

function downEditor(divname, order, htype)
{
    var url = "/web/manage/save!downHorseContent";
    var params = "name=" + divname + "&order=" + order + "&type=" + htype + "&lang=cn";

    var value = getRequest(url, "POST", params);
}

function saveContent(name, order, content, type, htype) {
    var url = "/web/manage/save!save" + type + "Content";
    var params = "name=" + name + "&order=" + order + "&type=" + htype + "&lang=cn" + "&content=" + encodeURIComponent(content);

    var value = getRequest(url, "POST", params);
//            alert(value);
}