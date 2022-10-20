<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>Cổng TTĐT TP Vinh</title>
	
	<link rel="Shortcut Icon" href="${themeDisplay.getPathThemeRoot()}/images/favicon.ico">

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<meta content="/o/vinhcity/images/no-images-logo.jpg" name="og:image" />
	
	<base href="/">

	<@liferay_util["include"] page=top_head_include />
	
	<link href="https://fonts.googleapis.com/css?family=Oswald:400,700|Roboto:400,500,700&display=swap&subset=vietnamese" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/3.2.1/css/font-awesome.min.css" integrity="sha256-MmuZTsWcczT1IhH71aqQmja5jRcXy3mL/NOvjUy9tso=" crossorigin="anonymous" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha256-eZrrJcwDc/3uDhsdt61sL2oOBY362qM3lon1gyExkL0=" crossorigin="anonymous" />
	<script src="https://code.responsivevoice.org/responsivevoice.js?key=k4tuTc8q"></script>
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css" integrity="sha256-UK1EiopXIL+KVhfbFa8xrmAWPeBjMVdvYMYkTAEv/HI=" crossorigin="anonymous" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css" integrity="sha256-4hqlsNP9KM6+2eA8VUT0kk4RsMRTeS7QGHIM+MZ5sLY=" crossorigin="anonymous" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js" integrity="sha256-NXRS8qVcmZ3dOv3LziwznUHPegFhPZ1F/4inU7uC8h0=" crossorigin="anonymous"></script>
</head>

<body class="${css_class} pages-theme">

<!-- 
<#if permissionChecker.isOmniadmin()>
	<@liferay.control_menu />
</#if>
-->

<#if permissionChecker.isSignedIn()>
	<@liferay.control_menu />
</#if>


<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<#assign scope_group = theme_display.getScopeGroup() />

	<div id="mWrapper">
		<div id="banner">
			<div class="hidden-banner">
			
				<#assign preferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
				<@liferay_portlet["runtime"] defaultPreferences="${preferences}" portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" instanceId="banner"/>
				
			</div>
			
			<#if allow_display_language_icon == true >
			
				<div class="language-banner_datetime">
					<span id="current_datetime"></span>
				</div>
				
				<a class="language-banner_vi" href="/vi/trang-chu">
					<img src="${images_folder}/custom-images/VN.png"/>
				</a>
				<a class="language-banner_en" href="/en/web/vinh-city/trang-chu">
					<img src="${images_folder}/custom-images/ENG.png"/>
				</a>
			</#if>
			
		</div>
		
		
		<@liferay_portlet["runtime"] defaultPreferences="${preferences}" portletName="com_liferay_site_navigation_menu_web_portlet_SiteNavigationMenuPortlet"/>
		
		<div id="content" class="container">
			
		
			<#if selectable>
				<@liferay_util["include"] page=content_include />
			<#else>
				${portletDisplay.recycle()}

				${portletDisplay.setTitle(the_title)}

				<@liferay_theme["wrap-portlet"] page="portlet.ftl">
					<@liferay_util["include"] page=content_include />
				</@>
			</#if>

			<div class="clear"></div>
		</div>
		
		<div id="footer-bg">
			<div id="footer" class="container bg-opacity">
				<div class="row">
					<div class="col-md-8">
						
						<@liferay_portlet["runtime"] defaultPreferences="${preferences}" portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" instanceId="footer"/>
					</div>
					<div class="col-md-4">
						<@liferay_portlet["runtime"] defaultPreferences="${preferences}" portletName="portalsessiontracking_WAR_portalsessiontracking" instanceId="sessiontracking"/>
						
					</div>
				</div>
			</div>
		</div>
	</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>