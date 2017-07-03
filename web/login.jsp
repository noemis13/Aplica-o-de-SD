<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link href="css/login.css" rel="stylesheet">
    <head>
        <meta charset="UTF-8">
        <title>Login</title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

        <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
        <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

        <link rel="stylesheet" href="css/style.css">


    </head>

    <body>
        <div class="pen-title">
            <h1>Tire já suas duvidas!</h1>
        </div>
        <div class="module form-module">

            <div class="toggle"><i class="fa fa-times fa-pencil"></i> 
                <div class="tooltip"  style="margin-left:100px; margin-right:-10px; float">Cadastre-se!</div>
            </div>

            <div class="form">
                <div class="alert alert-success">
                    <h3 style="color:orange;">${mensagemCadastrado}</h3>
                    <h3 style="color:red;">${erroLogin}</h3>
                </div>
                <br/>
                <h2>Login</h2>
                <form action="LoginServlet" method="POST">
                    <input type="email" value="" name="username" placeholder="Email" id="username" required/>
                    <input type="password" name="userpass" value="" placeholder="Senha" id="password" required/>
                    <input type="submit" value="Login" name="op"/>
                </form>
            </div>

            <div class="form">
                <h2>Crie sua conta</h2>
                <form action="LoginServlet" method="POST">
                    <input type="text" name="nome" placeholder="nome" id="nome" required/>
                    <input type="email" name="email" placeholder="email" id="email" required/>
                    <input type="password" name="senha" placeholder="senha" id="senha" required/>
                    <input type="submit" value="Cadastro" name="op"/>
                </form>
            </div>
            <!--<div class="cta"><a href="">Forgot your password?</a></div>-->
        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src='https://codepen.io/andytran/pen/vLmRVp.js'></script>

        <script src="js/index.js"></script>

    </body>   
</html>
