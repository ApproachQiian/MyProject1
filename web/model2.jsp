<%--
  Created by IntelliJ IDEA.
  User: mk_jian
  Date: 2021/1/13
  Time: 21:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
</head>
<link rel="shortcut icon" type="image/x-icon" href="img/resizeApi.png" media="screen"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
    .imgshower {
        width: 400px;
        height: 300px;
        border: 1px solid red;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    img {
        width: 100%;
        height: auto;
    }

    .damu-title {
        border-bottom: none;
        margin-bottom: 5px;
    }

    .myBtn {
        box-shadow: 0px 1px 0px 0px #f0f7fa;
        background: linear-gradient(to bottom, #33bdef 5%, #019ad2 100%);
        background-color: #33bdef;
        border-radius: 6px;
        border: 1px solid #057fd0;
        display: inline-block;
        cursor: pointer;
        color: #ffffff;
        font-family: Arial;
        font-size: 15px;
        font-weight: bold;
        padding: 6px 24px;
        text-decoration: none;
        text-shadow: 0px -1px 0px #5b6178;
    }

    .myBtn:hover {
        background: linear-gradient(to bottom, #019ad2 5%, #33bdef 100%);
        background-color: #019ad2;
    }

    .myBtn:active {
        position: relative;
        top: 1px;
    }
</style>
<body>
<!-- nav -->

<nav class="navbar navbar-inverse  damu-level">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1"
                    aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Animeface DCGan</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="main.jsp">主页 <span class="sr-only">(current)</span></a></li>
                <li><a href="source.jsp">源码</a></li>
                <li class="active"><a href="#">我也要玩</a></li>
                <li><a href="MODEL1.jsp">MakeGirlsMoe</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">关于
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="https://arxiv.org/abs/1406.2661">GAN网络</a></li>
                        <li><a href="https://blog.csdn.net/guleileo/article/details/80863579">机器学习</a></li>
                        <li><a href="https://xiongyiming.blog.csdn.net/article/details/98944012">深度学习</a></li>
                        <li><a href="https://blog.csdn.net/qq_41719643/article/details/109777042">环境搭建</a></li>
                        <li><a href="https://crypko.ai/">项目交流</a></li>
                    </ul>
                </li>
            </ul>


        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<div class="container text-center damu-title">
    <h3>Create Animefaces With DCGan!</h3>
</div>
<div class="container">
    <hr style="border: 1px red solid; margin-top: 15px;">
</div>
<!-- imageShower -->
<div class="container">
    <div class="row">
        <div class="imgshower col-xs-6">
            <img src="">
        </div>
        <div class="imgshower col-md-6">
            <img src="">
        </div>
    </div>
    <input type="file" name="" id="file" value="" style="margin-top: 15px;border: 1px solid brown;"/>
</div>
</body>
<script type="text/javascript">
    var file = document.getElementById('file');
    var image = document.querySelector("img");
    var filename = document.getElementById('file').value;
    console.log(filename);
    file.onchange = function () {
        var fileData = this.files[0];
        var pettern = /^image/;
        console.info(fileData.type)
        if (!pettern.test(fileData.type)) {
            alert("图片格式不正确");
            return;
        }
        var reader = new FileReader();
        reader.readAsDataURL(fileData);
        reader.onload = function (e) {
            console.log(e);
            console.log(this.result);
            image.setAttribute("src", this.result)
        }
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>

<script src="https://eqcn.ajz.miesnfu.com/wp-content/plugins/wp-3d-pony/live2dw/lib/L2Dwidget.min.js"></script>

<script>
    L2Dwidget.init({
        "model": {
            jsonPath: "https://unpkg.com/live2d-widget-model-shizuku@latest/assets/shizuku.model.json",
            "scale": 1
        },
        "display": {
            "position": "right",
            "width": 110,
            "height": 150,
            "hOffset": 0,
            "vOffset": -20
        },
        "mobile": {
            "show": true,
            "scale": 0.5
        },
        "react": {
            "opacityDefault": 0.9,
            "opacityOnHover": 0.2
        }
    });
</script>

</html>

