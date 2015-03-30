<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>

		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

		<title><g:layoutTitle default="Grails"/></title>

		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">

  		<asset:stylesheet src="bidean.min.css"/>
		<asset:javascript src="libs/modernizr-2.6.2.min.js"/>

		<g:layoutHead/>

	</head>
	<body>

        <header>
            <g:render template="/layouts/comun/menu"/>
        </header>

        <div class="container" role="main">
            <g:layoutBody/>
        </div>

        <footer>
            <g:render template="/layouts/comun/pie"/>
        </footer>

        <asset:javascript src="libs/jquery-1.11.2.min.js"/>
        <asset:javascript src="bidean.min.js"/>

	</body>
</html>

