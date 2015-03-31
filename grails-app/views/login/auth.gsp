<html>
<head>

    <title><g:message code="springSecurity.login.title"/></title>

    <asset:stylesheet src="bidean.min.css"/>
    <asset:javascript src="libs/modernizr-2.6.2.min.js"/>

</head>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed"
                    data-toggle="collapse" data-target="#navbar" aria-expanded="false"
                    aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span> <span
                    class="icon-bar"></span> <span class="icon-bar"></span> <span
                    class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Bidean</a>
        </div>

        <div id="navbar" class="navbar-collapse collapse">
            <form class="navbar-form navbar-right" name="f" action='${postUrl}'
                  method="post">
                <div class="form-group">
                    <input type="text" id="username" name="j_username" placeholder='Usuario' class="form-control"/>
                </div>

                <div class="form-group">
                    <input type="password" id="password" name="j_password" placeholder='Password' class="form-control"/>

                </div>

                <input type='submit' class="btn btn-success" id="submit" value='${message(code: "springSecurity.login.button")}'/>

            </form>
        </div>
        <!--/.navbar-collapse -->
    </div>

</nav>


<div class="jumbotron">

    <g:if test='${flash.message}'>
        <div class='alert alert-danger' role="alert">${flash.message}</div>
    </g:if>


    <div class="container">
        <h1>Bidean</h1>

        <div class="row">
            <div class="col-md-1">
                <img src="${assetPath(src:'logo.png')}" width="75"  height="75"/>
            </div>

            <div class="col-md-11">
                <p>¿Hay alguien en camino y no tienes tu movil o tablet a mano? No te preocupes, Bidean también está disponible en versión web</p>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <!-- Example row of columns -->
    <div class="row">
        <div class="col-md-4">
            <h2>
                <i class="fa fa-android fa-3x" style="color: #a4c639;"></i> <i
                    class="fa fa-mobile fa-2x"></i> <i class="fa fa-tablet fa-2x"></i>
            </h2>

            <p>Descarga la app para tu dispositivo movil Android (versión 4 o superior)</p>

            <p>
                <a class="btn btn-default" href="#" role="button">Ir a PlayStore &raquo;</a>
            </p>
        </div>

        <div class="col-md-8">
            <h2>
                <i class="fa fa-cloud fa-3x" style="color: #428bca"></i>Acceso web
            </h2>

            <p>Una vez que tienes la app en tu móvil podrás acceder desde la web con el usuario y la contraseña que aparecen en la aplicación</p>

            <p>
                <a class="btn btn-default" href="#" role="button">Más información &raquo;</a>
            </p>
        </div>

    </div>

    <hr/>

    <footer>
        <p>&copy; Jagusan 2015</p>
    </footer>
</div>
<script type='text/javascript'>
    <!--
    (function () {
        document.forms['loginForm'].elements['j_username'].focus();
    })();
    // -->
</script>

<asset:javascript src="libs/jquery-1.11.2.min.js"/>
<asset:javascript src="bidean.min.js"/>
</body>
</html>
