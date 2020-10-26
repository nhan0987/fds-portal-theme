<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>Học viện chính sách và phát triển</title>
	
	<link rel="Shortcut Icon" href="${themeDisplay.getPathThemeRoot()}/images/favicon.ico">

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	
	<base href="/">

	<@liferay_util["include"] page=top_head_include />
	
	<link href="https://fonts.googleapis.com/css?family=Oswald:400,700|Roboto:400,500,700&display=swap&subset=vietnamese" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha256-eZrrJcwDc/3uDhsdt61sL2oOBY362qM3lon1gyExkL0=" crossorigin="anonymous" />
</head>

<body class="${css_class} home-theme">

<@liferay.control_menu />

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<#assign scope_group = theme_display.getScopeGroup() />

	<div id="mWrapper" class="container">
		<div id="banner">
			<a href="/" class="mLogo">
				<img src="${themeDisplay.getPathThemeRoot()}/images/custom-images/banners/${banner_img}" class="">
			</a>
			<a href="http://e.apd.edu.vn/" class="e-site" target="_blank">
				<img src="${themeDisplay.getPathThemeRoot()}/images/custom-images/flag-uk.png">
			</a>
		</div>
		
		<#assign preferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
		<@liferay_portlet["runtime"] defaultPreferences="${preferences}" portletName="com_liferay_site_navigation_menu_web_portlet_SiteNavigationMenuPortlet"/>
		
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

			<div class="clear"></div>
		</div>
		
		<div id="footer">
			<div class="row">
				<div class="col-lg-8">
					<div class="copyright">©  Bản quyền thuộc về Học viện Chính sách & Phát triển - Bộ Kế hoạch và Đầu tư</div>
					<p class="address"><i class="fa fa-map-marker"></i> ${ftl_address}</p>
					<p class="phone"><i class="fa fa-phone"></i> ${ftl_phone} <i class="fa fa-fax"></i> ${ftl_fax}</p>
				</div>
				<div class="col-lg-4">
					<div class="icon-group">
						<a href="https://www.facebook.com/HocvienCSPT" target="_blank"><i class="fa fa-facebook"></i></a>
						<a href="https://www.instagram.com/explore/locations/979023372/hoc-vien-chinh-sach-va-phat-trien/" target="_blank"><i class="fa fa-instagram"></i></a>
						<a href="https://www.youtube.com/channel/UCN_NK8XmYXaY1uKcRmRAj8Q" target="_blank"><i class="fa fa-youtube"></i></a>
					</div>
					<div class="developer">
						<span>Designed and Developed by</span> <img src="${themeDisplay.getPathThemeRoot()}/images/custom-images/icon-fds.png">
					</div>
					<!--<@liferay_portlet["runtime"] defaultPreferences="${preferences}" portletName="portalsessiontracking_WAR_portalsessiontracking"/>-->
				</div>
			</div>
		</div>
	</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>