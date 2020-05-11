<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>Công ty Cổ phần Netnam</title>
	
	<link rel="Shortcut Icon" href="${themeDisplay.getPathThemeRoot()}/images/favicon.ico">

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	
	<base href="/">
	
	<link href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto:300,400,500,700,900&display=swap&subset=vietnamese" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css" integrity="sha256-4hqlsNP9KM6+2eA8VUT0kk4RsMRTeS7QGHIM+MZ5sLY=" crossorigin="anonymous"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css" integrity="sha256-UK1EiopXIL+KVhfbFa8xrmAWPeBjMVdvYMYkTAEv/HI=" crossorigin="anonymous"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha256-eZrrJcwDc/3uDhsdt61sL2oOBY362qM3lon1gyExkL0=" crossorigin="anonymous"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css" integrity="sha256-mmgLkCYLUQbXn0B1SRqzHar6dCnv9oZFPEC1g1cwlkk=" crossorigin="anonymous" />

	<@liferay_util["include"] page=top_head_include />
	
	<script src="${themeDisplay.getPathThemeRoot()}/js/slick.min.js"></script>
</head>

<body class="${css_class} mBody login-theme">

<@liferay.control_menu />

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<#assign scope_group = theme_display.getScopeGroup() />

	<div id="fb-root"></div>
	<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.3"></script>

	<div class="mTheme">
		<header id="banner">
			<div class="container">
				<a href="/" class="login-logo">
					<img src="${themeDisplay.getPathThemeRoot()}/images/logo-white.png">
					<span>Công ty Cổ phần Netnam</span>
					NetNam Corporation
				</a>
			</div>
		</header>
		
		<div id="content">
			<#if selectable>
				<@liferay_util["include"] page=content_include />
			<#else>
				${portletDisplay.recycle()}

				${portletDisplay.setTitle(the_title)}

				<@liferay_theme["wrap-portlet"] page="portlet.ftl">
					<@liferay_util["include"] page=content_include />
				</@>
			</#if>
		</div>
		
		<footer id="footer">
			<div class="container">
				<div class="login-copyright">
					Copyrights © 2019 All Rights Reserved
				</div>
				<div class="login-address">
					Địa chỉ: 18 Hoàng Quốc Việt, Q.Cầu Giấy, Hà Nội
				</div>
			</div>
		</footer>
		
		<a href="#" class="btt"><i class="fa fa-chevron-up"></i></a>
	</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>