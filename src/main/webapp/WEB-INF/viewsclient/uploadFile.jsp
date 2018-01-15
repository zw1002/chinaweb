<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" pageEncoding="UTF-8"
         contentType="text/html;charset=UTF-8"%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<html>
<head>
    <script src="<%=basePath%>/static/js/jquery-2.2.0.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/static/js/ajaxFileUpload.js"></script>
    <script>
        function showImage() {
            var docObj = document.getElementById("doc");
            var imgObjPreview = document.getElementById("preview");
            if (docObj.files && docObj.files[0]) {
                //火狐下，直接设img属性
                imgObjPreview.style.display = 'block';
                imgObjPreview.style.width = '300px';
                imgObjPreview.style.height = '120px';
                //imgObjPreview.src = docObj.files[0].getAsDataURL();
                //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
                imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
            } else {
                //IE下，使用滤镜
                docObj.select();
                var imgSrc = document.selection.createRange().text;
                var localImagId = document.getElementById("localImag");
                //必须设置初始大小
                localImagId.style.width = "250px";
                localImagId.style.height = "200px";
                //图片异常的捕捉，防止用户修改后缀来伪造图片
                try {
                    localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                    localImagId.filters
                            .item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
                } catch (e) {
                    alert("您上传的图片格式不正确，请重新选择!");
                    return false;
                }
                imgObjPreview.style.display = 'none';
                document.selection.empty();
            }
            return true;
        }
    </script>
    <title>首页</title>
</head>
    <form action="filesUpload.do" method="POST" name="xiangmu" id="xiangmu" enctype="multipart/form-data">
        <table>
            <tr>
                <td>身份证图片上传：</td>
                <td><input type=file name="myfiles" id="doc"
                           onchange="showImage()">
                </td>
                <div id="localImag">
                    <img id="preview" width=-1 height=-1 style="diplay:none" />
                </div>
            </tr>
            <tr>
                <td>公司运营情况:</td>
                <!-- 为了实现张图片上传，上传框这个name要都一样 -->
                <td><input type="file" name="myfiles" id="doc1"></td>
                <td>
                </td>
            </tr>
            <tr>
                <td><input type="submit" value="提交" />
                </td>
            </tr>
        </table>
</form>
</body>
</html>
