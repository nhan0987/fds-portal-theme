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

<body class="${css_class} mBody home-theme">

<@liferay.control_menu />

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<#assign scope_group = theme_display.getScopeGroup() />

	<div class="mTheme">
		<header id="banner">
			<div class="container">
				<a href="/" class="mLogo">
					<img src="${themeDisplay.getPathThemeRoot()}/images/logo-white.png" class="img-responsive logo-white">
					<img src="${themeDisplay.getPathThemeRoot()}/images/logo.png" class="img-responsive logo-green">
				</a>
				<div class="controls-right">
					<#assign preferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
					<!-- Search -->
					<@liferay_portlet["runtime"] defaultPreferences="${preferences}" portletName="com_liferay_portal_search_web_search_bar_portlet_SearchBarPortlet"/>
					<!-- Language -->
					<div class="change-language">
						<@liferay_portlet["runtime"] defaultPreferences="${preferences}" portletName="com_liferay_site_navigation_language_web_portlet_SiteNavigationLanguagePortlet"/>
		            </div>
		            <!-- Menu -->
		            <button class="toggle-nav"><i class="fa fa-bars"></i></button>
					<@liferay_portlet["runtime"] defaultPreferences="${preferences}" portletName="com_liferay_site_navigation_menu_web_portlet_SiteNavigationMenuPortlet"/>
				</div>
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
				<div class="copyright">
					Copyrights © 2019 All Rights Reserved
				</div>
				<div class="icons-group">
					<a href="https://www.facebook.com/NetNam/" target="_blank"><img src="${themeDisplay.getPathThemeRoot()}/images/icon-fb.png"></a>
					<a href="https://www.youtube.com/user/netnamcorp" target="_blank"><img src="${themeDisplay.getPathThemeRoot()}/images/icon-yt.png"></a>
					<a href="https://www.linkedin.com/company/1566681/admin/" target="_blank"><img src="${themeDisplay.getPathThemeRoot()}/images/icon-rss.png"></a>
				</div>
			</div>
		</footer>
		
		<a href="#" class="btt"><i class="fa fa-chevron-up"></i></a>
	</div>
		
	<!-- Load Facebook SDK for JavaScript -->
	<div id="fb-root"></div>
	<script>
	  window.fbAsyncInit = function() {
	    FB.init({
	      xfbml            : true,
	      version          : 'v3.3'
	    });
	  };
	
	  (function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));</script>
	
	<!-- Your customer chat code -->
	<div class="fb-customerchat"
	  attribution=setup_tool
	  page_id="282783281773653"
	  theme_color="#67b868">
	</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>