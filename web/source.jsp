<%--
  Created by IntelliJ IDEA.
  User: mk_jian
  Date: 2021/1/6
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>source code</title>
    <script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/npm.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="shortcut icon" type="image/x-icon" href="img/resizeApi.png" media="screen" />
</head>
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>

<body>
<nav class="navbar navbar-inverse  damu-level">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
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
                <li class="active"><a href="source.html">源码</a></li>
                <li><a href="model2.jsp" >我也要玩</a></li>
                <li><a href="MODEL1.jsp" >MakeGirlsMoe</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">关于
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
<div class="container">
    <h5>1.Tensorflow-gpu 2.0 环境搭建</h5>
    <pre><p>(1)使用anaconda搭建虚拟环境:conda create -n tf2py37 python=3.7</p><p>(2)激活环境:conda activate tf2py37</p><p>(3)安装cuda:conda install cudatoolkit=10.1</p><p>(4)安装cudnn:conda install cudnn=7.6.5</p><p>(5)使用清华源安装Tensorflow-gpu版本:python -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple tensorflow-gpu==2.0.0</p></pre>
</div>

<div class="container">
    <h5>2.Tensorflow-gpu 1.8 环境搭建</h5>
    <pre><p>(1)使用anaconda搭建虚拟环境:conda create -n tf1py36 python=3.6</p><p>(2)激活环境:conda activate tf1py36</p><p>(3)安装cuda:conda install cudatoolkit=9.0</p><p>(4)安装cudnn:conda install cudnn=7.6.5</p><p>(5)使用清华源安装Tensorflow-gpu版本:python -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple tensorflow-gpu==1.8</p></pre>
</div>
<script src="https://eqcn.ajz.miesnfu.com/wp-content/plugins/wp-3d-pony/live2dw/lib/L2Dwidget.min.js"></script>

<div class="container">
    <h5>3.你可以从这里得到我们的源码</h5>
    <pre><p>Animefaces-DCGAN:<a href="#">github传送门</a></p><p>Anime-DCGAN:<a href="#">github传送门</a></p></pre>
</div>
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
</body>
</html>
