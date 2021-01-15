<%--
  Created by IntelliJ IDEA.
  User: mk_jian
  Date: 2021/1/6
  Time: 19:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Create Animefaces With DCGan</title>
    <link rel="shortcut icon" type="image/x-icon" href="img/resizeApi.png" media="screen"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        .damu-carousel {
            margin-top: 0;
        }

        img {
            width: 100%;
        }

        .damu-thumbnail img {
            width: auto;
        }

        .damu-threeC {
            margin-top: 50px;
        }

        .damu-hr > hr {
            border: 1px red solid;
            margin-top: 10px;
        }

        .damu-level {
            margin-bottom: 1px;
        }
    </style>
</head>
<body>
<!-- 导航栏 -->
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
                <li class="active"><a href="#">主页 <span class="sr-only">(current)</span></a></li>
                <li><a href="./source.jsp">源码</a></li>
                <li><a href="model2.jsp">我也要玩</a></li>
                <li><a href="MODEL1.html" target="_self">MakeGirlsMoe</a></li>
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

<!-- 轮播图 -->
<div id="carousel-example-generic" class="carousel slide damu-carousel" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="img/1.png" alt="...">
            <div class="carousel-caption">
                <h2>那些名字超长的动漫</h2>
            </div>
        </div>
        <div class="item">
            <img src="img/2.png" alt="...">
            <div class="carousel-caption">
                <h2>记忆中老师的经典语录</h2>
            </div>
        </div>
        <div class="item">
            <img src="img/3.png" alt="...">
            <div class="carousel-caption">
                <h2>校园风景</h2>
            </div>
        </div>
        <div class="item">
            <img src="img/4.png" alt="...">
            <div class="carousel-caption">
                <h2>宫崎骏和他的作品</h2>
            </div>
        </div>
        <div class="item">
            <img src="img/5.png" alt="...">
            <div class="carousel-caption">
                <h2>动漫风格的校园一角</h2>
            </div>
        </div>

    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>


<!-- 三列布局 -->
<div class="container damu-threeC">
    <div class="row">
        <div class="col-md-4 damu-thumbnail text-center">
            <img src="img/visualize-datapng.png" alt="生成对抗网络" title="生成对抗网络">
            <div class="caption">
                <h3>生成对抗网络</h3>
                <p>GAN网络是非监督式学习的一种方法，通过让两个神经网络相互博弈的方式进行学习</p>
                <p><a href="#" class="btn btn-default" role="button">了解一下</a></p>
            </div>
        </div>
        <div class="col-md-4 damu-thumbnail text-center">
            <img src="img/download.png" alt="深度学习" title="深度学习">
            <div class="caption">
                <h3>深度学习</h3>
                <p>深度学习是机器学习的分支，是一种以人工神经网络为架构，对资料进行表征学习的算法。</p>
                <p><a href="#" class="btn btn-default" role="button">了解一下</a></p>
            </div>
        </div>
        <div class="col-md-4 damu-thumbnail text-center">
            <img src="img/studio%20(2).png" alt="无监督学习" title="无监督学习">
            <div class="caption">
                <h3>无监督学习</h3>
                <p>无监督学习的最简单目标是训练算法生成自己的数据实例，但是模型不应该简单地重现之前训练的数据。</p>
                <p><a href="#" class="btn btn-default" role="button">了解一下</a></p>
            </div>
        </div>
    </div>
</div>


<!-- 分割线 -->
<div class="container damu-hr">
    <hr>
</div>

<!-- 标签页 -->
<div class="container">
    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab"
                                                  data-toggle="tab">项目简介</a></li>
        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">环境搭建</a></li>
        <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">编码阶段</a></li>
        <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">实验心得</a></li>
    </ul>

    <!-- Tab panes -->
    <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="home">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-7">
                        <h3>简介</h3>
                        GAN(对抗生成网络)，对比其他网络简单来说就是要设计两个神经网络，一个generator(生成器)负责生成，一个discriminator(判别器)用于判断。lan
                        goodfellow（GAN之父）把他们比作警察和打印假钞的罪犯，罪犯把假钞做的越来越真，而警察的判断力也越来越高，这样最后得出的结果就回越来越接近真实的。而李宏毅教授把他们比作老师和学生。
                        以图片生成为例，流程是这样，我们先有一堆的真实的图片，然后先把一个随机噪声喂给生成器，这时生成器会生成一组图片（开始的时候生成的质量会很差，基本是随机噪声），然后取数量相同的生成图片和真实图片，喂给判别器，因为现在我们知道这些图片是真实图片还是生成的图片，所以这样我们就能用这部分数据来训练判别器。
                        利用 GAN (生成对抗网络) 技术，我们的模型能够生成专业级别质量的动漫头像。
                    </div>
                    <div class="col-md-5">
                        <img src="img/qq.png">
                    </div>
                </div>
            </div>
        </div>
        <div role="tabpanel" class="tab-pane" id="profile">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-5">
                        <img src="img/cc.png">
                    </div>
                    <div class="col-md-7">
                        <h3>实验环境</h3>
                        <p>基础环境:Win10、Anaconda3</p>
                        <ul>
                            <li>1.创建一个名为tensorflow的虚拟环境，python为3.7版本。</li>
                            conda create -n tencorflow python=3.7
                            <li>2.然后激活环境</li>
                            conda activate tensorflow
                            <li>3.安装cuda</li>
                            conda install cudatoolkit=10.1
                            <li>4.安装cudnn</li>
                            conda install cudnn=7.6.5
                            <li>5.安装tensorflow_gpu == 2.2.0</li>
                            pip install tensorflow-gpu==2.2.0
                            <li>6.到此，tensorflow-gpu基本环境搭建完成，可能还会遇到一些包无法找到，读者按照错误提示，在Anaconda Prompt中安装即可。</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div role="tabpanel" class="tab-pane" id="messages">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-7">
                        <h3>编码测试</h3>
                        <p>
                            功能有难有易，又是相对编码人员的技能而言。因此，编码人员必须要评估相关的功能需要设计的知识，和所需要的时间，包括熟悉程度的评估，可借助的函数库。如果无法估计，太过陌生，可能这个编码人员就不适合进行这个功能的实现，或者设计人员应该分解功能。评估虽然不是很准确的，但是可以有效的降低开发出错，无法控制进度的风险性。</p>
                    </div>
                    <div class="col-md-5">
                        <img src="img/ww.png">
                    </div>
                </div>
            </div>
        </div>
        <div role="tabpanel" class="tab-pane" id="settings">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-5">
                        <img src="img/rr.png">
                    </div>
                    <div class="col-md-7">
                        <h3>科研实践心得</h3>
                        <p>
                            很多时候，我们也会遇到资料不充足或者过时的问题，这时我们就得保持耐心，积极搜集整理，就算有挫折也不能半途而废，要相信自己，坚持到底，然后努力去寻找原因解决问题。事实上不仅仅是研究，生活往往也是如此，要学会如何解决矛盾，走出困境。这些不仅仅让我们学会如何解决问题，也锻炼了我们的心理素质，更成为我们一段美好的回忆。
                            时光飞逝，回想起去年的这个时候，我们还处在科研立项的最初阶段，正在忙着科研立项的申请，而如今，我们已经在做最后的收尾工作了。

                            　　
                        <p>
                            虽然不是什么伟大的工程，却依然有点大功告成的感觉，心里很是自豪和骄傲，因为这是我们一年来的劳动成果。也许我们在学术上并没有多大的造诣，也没有多大的创新，但是我们在这一年的研究过程中却受益匪浅。这是一次成功的锻炼，通过理论联系实际，不仅丰富了我们的专业知识，而且团队合作能力得到了提升。</p>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<!-- <script src="https://cdn.jsdelivr.net/npm/live2d-widget@3.0.4/lib/L2Dwidget.min.js"></script>
<script type="text/javascript">
L2Dwidget.init();
</script> -->
<script src="https://eqcn.ajz.miesnfu.com/wp-content/plugins/wp-3d-pony/live2dw/lib/L2Dwidget.min.js"></script>

<script>
    L2Dwidget.init({
        "model": { //jsonpath控制显示那个小萝莉模型，下面这个就是我觉得最可爱的小萝莉模型
            jsonPath: "https://unpkg.com/live2d-widget-model-shizuku@latest/assets/shizuku.model.json",
            "scale": 1
        },
        "display": {
            "position": "right", //看板娘的表现位置
            "width": 110, //小萝莉的宽度
            "height": 150, //小萝莉的高度
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
<!-- 控制轮播时间 -->
<script>
    $('.carousel').carousel({
        interval: 2000
    })
</script>
</body>
</html>
