<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>添加图片</title>
    <script type="text/javascript">
        //打开上传页面
        function openUpload(){
            var win = window.showModalDialog("/upload.jsp","","dialogWidth:300px;dialogHeight:200px;scroll:no;status:no");
            if(win != null){
                document.getElementById("photo_id").value = win;
                document.getElementById("img_id").src = "/"+win;
            }
        }
    </script>
</head>
<body>
<h5>添加图片</h5><hr/>
<p>
    上传图片：
    <label>
        <input type="hidden" id="photo_id" name="photo" value="images/default.gif">
        <input type="button" onclick="openUpload()" value="上传图片"/><br/>
        <img id="img_id" alt="" src="/images/default.gif" width="200px" height="200px">
    </label>
</p>
</body>
</html>
