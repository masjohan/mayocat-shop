<!doctype html>
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
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
    <r:require modules="jquery"/>
    <r:require modules="twitterBootstrap"/>
    <r:require modules="knockout"/>
    <r:require modules="styles"/>
    <nav:resources override="true"/>
		<g:layoutHead/>
    <r:layoutResources />
    <link rel="stylesheet" href="${createLink(controller: 'shop', action:'serveCss', params:[filename:extraCss])}" type="text/css" />
	</head>
	<body>
	<header>
	  <div id="brand">
	    <g:if test="${logo}">
	      <img src="${createLink(controller: 'shop', action:'serveLogo', params:[filename:logo])}" />
	    </g:if>
	  </div>
	</header>
    <div class="container" id="checkout-container">
      <div class="row">
        <div class="span12">
          <g:layoutBody/>
        </div>
      </div>
    </div>
		<div class="footer" role="contentinfo"></div>
    <r:layoutResources />
	</body>
</html>