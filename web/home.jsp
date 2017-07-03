<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link href="css/login.css" rel="stylesheet">
    <!--    <head>
            <title>Login</title>
        </head> -->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="free-educational-responsive-web-template-webEdu">
        <meta name="author" content="webThemez.com">
        <title>Home</title>
        <link rel="favicon" href="assets/images/favicon.png">
        <link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css"> 
        <link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen"> 
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel='stylesheet' id='camera-css'  href='assets/css/camera.css' type='text/css' media='all'> 
    </head>
    <body>
        <!-- Fixed navbar -->
        <div class="navbar navbar-inverse">
            <div class="container">
                <div class="navbar-header">
                    <!-- Button for smallest screens -->
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                    <a class="navbar-brand" href="index.html">
                        <img src="assets/images/logo.png" alt="Techro HTML5 template"></a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav pull-right mainNav">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#">Sobre Nós</a></li>
                        <li><a href="#">Cursos</a></li>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Video Aulas</a></li>
                        <li><a href="email.jsp">Email</a></li>

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="font-weight: bold;"><i class="fa fa-user"></i> <%=session.getAttribute("nome")%> <b class="caret"></b> </a>

                            <ul class="dropdown-menu">
                                <!--<li><a href="sidebar-right.html">Lista de Emails</a></li>-->
                                <li><a href="ver_perfil.jsp">Ver perfil</a></li>
                                <li><a href="editar_perfil.jsp">Editar perfil</a></li>
                                <!--<li><a href="#">Sistemas Distribuídos</a></li>-->
                            </ul>
                        </li>   
                        <li style="margin-left:25px;"><a href="LoginServlet?op=sair">Sair</a></li>
                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </div>
        <!-- /.navbar -->

        <!-- Header -->
        <header id="head">
            <div class="container">
                <div class="heading-text">							
                    <h1 class="animated flipInY delay1">Tire suas duvidas online</h1>
                    <p>Disciplina de Sistemas Distribuídos</p>
                </div>

                <div class="fluid_container">                       
                    <div class="camera_wrap camera_emboss pattern_1" id="camera_wrap_4">
                        <div data-thumb="assets/images/slides/thumbs/img1.jpg" data-src="assets/images/slides/img1.jpg">
                            <h2></h2>
                        </div> 
                        <div data-thumb="assets/images/slides/thumbs/img2.jpg" data-src="assets/images/slides/img2.jpg">
                        </div>
                        <div data-thumb="assets/images/slides/thumbs/img3.jpg" data-src="assets/images/slides/img3.jpg">
                        </div> 
                    </div><!-- #camera_wrap_3 -->
                </div><!-- .fluid_container -->
            </div>
        </header>
        <!-- /Header -->

        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="grey-box-icon">
                        <div class="icon-box-top grey-box-icon-pos">
                            <img src="assets/images/1.png" alt="" />
                        </div><!--icon box top -->
                        <h4>Cursos Online</h4>
                        <p>Assista suas aulas online...</p>
                        <p><a href="#"><em>Saiba mais</em></a></p>
                    </div><!--grey box -->
                </div><!--/span3-->
                <div class="col-md-3">
                    <div class="grey-box-icon">
                        <div class="icon-box-top grey-box-icon-pos">
                            <img src="assets/images/2.png" alt="" />
                        </div><!--icon box top -->
                        <h4>Conheça os colaboradores</h4>
                        <p>Conheça nossos professores...</p>
                        <p><a href="#"><em>Saiba mais →</em></a></p>
                    </div><!--grey box -->
                </div><!--/span3-->
                <div class="col-md-3">
                    <div class="grey-box-icon">
                        <div class="icon-box-top grey-box-icon-pos">
                            <img src="assets/images/3.png" alt="" />
                        </div><!--icon box top -->
                        <h4>Adicionados recentemente</h4>
                        <p>Veja as últimas novidades...</p>
                        <p><a href="#"><em>Saiba mais →</em></a></p>
                    </div><!--grey box -->
                </div><!--/span3-->
                <div class="col-md-3">
                    <div class="grey-box-icon">
                        <div class="icon-box-top grey-box-icon-pos">
                            <img src="assets/images/4.png" alt="" />
                        </div><!--icon box top -->
                        <h4>Novidades</h4>
                        <p> Novidades...</p>
                        <p><a href="#"><em>Saiba mais →</em></a></p>
                    </div><!--grey box -->
                </div><!--/span3-->
            </div>
        </div>
        <section class="news-box top-margin">
            <div class="container">
                <h2><span>Novos cursos</span></h2>
                <div class="row">

                    <div class="col-lg-4 col-md-4 col-sm-12">
                        <div class="newsBox">
                            <div class="thumbnail">
                                <figure><img src="assets/images/news2.jpg" alt=""></figure>
                                <div class="caption maxheight2">
                                    <div class="box_inner">
                                        <div class="box">
                                            <p class="title"><h5>Desenvolvimento</h5></p>
                                            <p></p>
                                        </div> 
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12">
                        <div class="newsBox">
                            <div class="thumbnail">
                                <figure><img src="assets/images/news3.jpg" alt=""></figure>
                                <div class="caption maxheight2">
                                    <div class="box_inner">
                                        <div class="box">
                                            <p class="title"><h5>Fotografia</h5></p>
                                            <p></p>
                                        </div> 
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12">
                        <div class="newsBox">
                            <div class="thumbnail">
                                <figure><img src="assets/images/news4.jpg" alt=""></figure>
                                <div class="caption maxheight2">
                                    <div class="box_inner">
                                        <div class="box">
                                            <p class="title"><h5>Edição de Áudio</h5></p>
                                            <p></p>
                                        </div> 
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>



        <section class="container">
            <div class="row">
                <div class="col-md-8"><div class="title-box clearfix "><h2 class="title-box_primary">Sobre nós</h2></div> 
                    <p><span>Perspiciatis unde omnis iste natus error sit voluptatem. Cum sociis natoque penatibus et magnis dis parturient montes ascetur ridiculus musull dui.</span></p>
                    <p>Lorem ipsumulum aenean noummy endrerit mauris. Cum sociis natoque penatibus et magnis dis parturient montes ascetur ridiculus mus. Null dui. Fusce feugiat malesuada odio.</p><p>Lorem ipsumulum aenean noummy endrerit mauris. Cum sociis natoque penatibus et magnis dis parturient montes ascetur ridiculus mus. Null dui. Fusce feugiat malesuada odio.</p>
                    <a href="#" title="read more" class="btn-inline " target="_self">read more</a> </div>


                <div class="col-md-4"><div class="title-box clearfix "><h2 class="title-box_primary">Em breve...</h2></div> 
                    <div class="list styled custom-list">
                        <ul>
                            <li><a title="Snatoque penatibus et magnis dis partu rient montes ascetur ridiculus mus." href="#">Matemática e Ciência da computação</a></li>
                            <li><a title="Fusce feugiat malesuada odio. Morbi nunc odio gravida at cursus nec luctus." href="#">Matemática e Filosofia</a></li>
                            <li><a title="Penatibus et magnis dis parturient montes ascetur ridiculus mus." href="#">Filosofia e Linguagens Modernas</a></li>
                            <li><a title="Morbi nunc odio gravida at cursus nec luctus a lorem. Maecenas tristique orci." href="#">História da Arte</a></li>
                            <li><a title="Snatoque penatibus et magnis dis partu rient montes ascetur ridiculus mus." href="#">Arqueologia</a></li>
                            <li><a title="Fusce feugiat malesuada odio. Morbi nunc odio gravida at cursus nec luctus." href="#">Física e Filosofia</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>


        <footer id="footer">

            <div class="container">
                <div class="row">
                    <div class="footerbottom">
                        <div class="col-md-3 col-sm-6">
                            <div class="footerwidget">
                                <h4>
                                    Categorias disponíveis
                                </h4>
                                <div class="menu-course">
                                    <ul class="menu">
                                        <li><a href="#">
                                                Tecnologia
                                            </a>
                                        </li>
                                        <li><a href="#">
                                                Administração
                                            </a>
                                        </li>
                                        <li><a href="#">
                                                Fotografia
                                            </a>
                                        </li>
                                        <li><a href="#">
                                                Letras
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="footerwidget">
                                <h4>
                                    Workshops
                                </h4>
                                <div class="menu-course">
                                    <ul class="menu">
                                        <li> <a href="#">
                                                Negócios  </a>
                                        </li>
                                        <li><a href="#">
                                                Planejamento
                                            </a>
                                        </li>
                                        <li><a href="#">
                                                Marketing
                                            </a>
                                        </li>
                                        <li><a href="#">
                                                Teatro
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <!--                        <div class="footerwidget">
                                                        <h4>
                                                            Browse by Categories
                                                        </h4>
                                                        <div class="menu-course">
                                                            <ul class="menu">
                                                                <li><a href="#">
                                                                        All Courses
                                                                    </a>
                                                                </li>
                                                                <li> <a href="#">
                                                                        All Instructors
                                                                    </a>
                                                                </li>
                                                                <li><a href="#">
                                                                        All Members
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        All Groups
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>-->
                        </div>
                        <div class="col-md-3 col-sm-6"> 
                            <div class="footerwidget"> 
                                <h4>Contato</h4> 
                                <!--<p>Lorem reksi this dummy text unde omnis iste natus error sit volupum</p>-->
                                <div class="contact-info"> 
                                    <i class="fa fa-user"></i>  Maisa Barreto<br>
                                    <i class="fa fa-envelope-o"></i> maaisa.barreto@gmail.com <br>
                                    <!--<i class="fa fa"></i>-->                                
                                    <i class="fa fa-user"></i> Noemi Scherer<br>
                                    <i class="fa fa-envelope-o"></i> noemi.scherer13@gmail.com <br>
                                </div> 
                            </div><!-- end widget --> 
                        </div>
                    </div>
                </div>
                <div class="social text-center">
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-dribbble"></i></a>
                    <a href="#"><i class="fa fa-flickr"></i></a>
                    <a href="#"><i class="fa fa-github"></i></a>
                </div>

                <div class="clear"></div>
                <!--CLEAR FLOATS-->
            </div>
            <div class="footer2">
                <div class="container">
                    <div class="row">

                        <div class="col-md-6 panel">
                            <div class="panel-body">
                                <p class="simplenav">
                                    <a href="home.jsp">Home</a> | 
                                    <a href="#">Sobre Nós</a> |
                                    <a href="#">Cursos</a> |
                                    <a href="#">FAQ</a> |
                                    <a href="#">Video Aulas</a> |
                                    <a href="email.jsp">Email</a>
                                </p>
                            </div>
                        </div>

                        <div class="col-md-6 panel">
                            <div class="panel-body">
                                <!--                                <p class="text-right">
                                                                    Copyright &copy; 2014. Template by <a href="http://webthemez.com/" rel="develop">WebThemez.com</a>
                                                                </p>-->
                            </div>
                        </div>

                    </div>
                    <!-- /row of panels -->
                </div>
            </div>
        </footer>

        <!-- JavaScript libs are placed at the end of the document so the pages load faster -->
        <script src="assets/js/modernizr-latest.js"></script> 
        <script type='text/javascript' src='assets/js/jquery.min.js'></script>
        <script type='text/javascript' src='assets/js/fancybox/jquery.fancybox.pack.js'></script>

        <script type='text/javascript' src='assets/js/jquery.mobile.customized.min.js'></script>
        <script type='text/javascript' src='assets/js/jquery.easing.1.3.js'></script> 
        <script type='text/javascript' src='assets/js/camera.min.js'></script> 
        <script src="assets/js/bootstrap.min.js"></script> 
        <script src="assets/js/custom.js"></script>
        <script>
            jQuery(function () {

                jQuery('#camera_wrap_4').camera({
                    transPeriod: 500,
                    time: 3000,
                    height: '600',
                    loader: 'false',
                    pagination: true,
                    thumbnails: false,
                    hover: false,
                    playPause: false,
                    navigation: false,
                    opacityOnGrid: false,
                    imagePath: 'assets/images/'
                });

            });

        </script>

    </body>
</html>
