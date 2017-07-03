<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="free-educational-responsive-web-template-webEdu">
        <meta name="author" content="webThemez.com">
        <title>Editar Perfil</title>
        <link rel="favicon" href="assets/images/favicon.png">
        <link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <!-- Custom styles for our template -->
        <link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen">
        <link rel="stylesheet" href="assets/css/style.css">
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
                        <li><a href="home.jsp">Home</a></li>
                        <li><a href="#">Sobre Nós</a></li>
                        <li><a href="#">Cursos</a></li>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Video Aulas</a></li>
                        <li><a href="email.jsp">Email</a></li>
                        <li  class="dropdown active">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="font-weight: bold;"><i class="fa fa-user"></i> <%=session.getAttribute("nome")%> <b class="caret"></b> </a>

                            <ul class="dropdown-menu">
                                <li><a href="#">Ver perfil</a></li>
                                <li><a href="editar_perfil.jsp">Editar perfil</a></li>
                            </ul>
                        </li>
                        <li style="margin-left:25px;"><a href="LoginServlet?op=sair">Sair</a></li>
                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </div>
        <!-- /.navbar -->

    <header id="head" class="secondary">
        <div class="container">
            <h1>Editar perfil</h1>
            <p></p>
        </div>
    </header>


    <!-- container -->
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <h3 class="section-title"></h3>
                <form class="form-light mt-20" role="form" action="LoginServlet" method="post">
                    <div class="alert alert-success" style="background-color:#FFFFFF; border-style: none;">
                        <h3 style="color:orange;">${perfilEditar}</h3>
                        <h3 style="color:red;">${erroEditar}</h3>
                    </div>

                    <div class="form-group">
                        <label>Nome</label>
                        <input type="text" class="form-control" name="nome" placeholder="" edit="true" value="<%=session.getAttribute("nome")%>">
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="text" class="form-control" name="email" value="<%=session.getAttribute("email")%>" readonly>
                    </div>
                    <div class="form-group">
                        <label>Senha</label>
                        <input type="text" class="form-control" name="senha" value="<%=session.getAttribute("senha")%>">
                    </div>
                    <button type="submit" class="btn btn-two" value="editarPerfil" name="op">Salvar</button><p><br/></p>
                </form>
            </div>
            <div class="col-md-4">
                <div class="row">
                    <div class="col-md-6">
                    </div> 
                </div> 						
            </div>
        </div>
    </div>
    <!-- /container -->

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
                        </div>
                    </div>

                </div>
                <!-- /row of panels -->
            </div>
        </div>
    </footer>


    <!-- JavaScript libs are placed at the end of the document so the pages load faster -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="assets/js/custom.js"></script>

    <!-- Google Maps -->
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
    <script src="assets/js/google-map.js"></script>


</body>


<!--</head>
<body>
    <form action="EmailServlet" method="post">
        <table border="0" width="35%" align="center">
            <caption><h2>Send New E-mail</h2></caption>
            <tr>
                <td width="50%">Recipient address </td>
                <td><input type="text" name="recipient" size="50"/></td>
            </tr>
            <tr>
                <td>Subject </td>
                <td><input type="text" name="subject" size="50"/></td>
            </tr>
            <tr>
                <td>Content </td>
                <td><textarea rows="10" cols="39" name="content"></textarea> </td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Send"/></td>
            </tr>
        </table>
    </form>
</body>-->
</html>