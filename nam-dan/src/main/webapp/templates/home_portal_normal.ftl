<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${site_title}</title>
	
	<link rel="Shortcut Icon" href="${themeDisplay.getPathThemeRoot()}/images/favicon.ico">

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	
	<link href="https://fonts.googleapis.com/css?family=Oswald:400,700|Roboto:400,500,700&display=swap&subset=vietnamese" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css" integrity="sha256-46qynGAkLSFpVbEBog43gvNhfrOj+BmwXdxFgVK/Kvc=" crossorigin="anonymous" />
	
	<base href="/">
	<link href="${themeDisplay.getPathThemeRoot()}/css/main.css?t=3234567891088" rel="stylesheet" type="text/css">

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class} home-theme">

<#if permissionChecker.isOmniadmin()>
	<@liferay.control_menu />
</#if>

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<#assign scope_group = theme_display.getScopeGroup() />

	<div id="mWrapper" class="container">
		<div id="banner">
			<a href="/" class="mLogo">
				<img src="${themeDisplay.getPathThemeRoot()}/images/custom-images/banners/${banner_img}" class="">
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
				<div class="col-sm-6">
					<div class="sitename">
						Ủy ban Nhân dân ${sub_owner} - ${main_owner}
					</div>
					<div class="infos">
						<div class="address"><i class="fas fa-map-marker-alt"></i><span>${owner_address}</span></div>
						<div class="mail"><i class="far fa-envelope"></i><span>${owner_mail}</span></div>
						<div class="phone"><i class="fas fa-phone-alt"></i><span>${owner_phone}</span></div>					
					</div>
				</div>
				<div class="col-sm-6">
					<p>
						<b>Người chịu trách nhiệm:</b> ${sub_site_content_responsible}
					</p>
					<p>
						<b>Cơ quan chủ quản:</b> ${site_owner}
					</p>
					<p>
						<b>Tổ chức thiết lập:</b> 
					</p>
				</div>
			</div>
			<div class="copyright">
				<span>@2019 Bản quyền thuộc về UBND Huyện Nam Đàn - Tỉnh Nghệ An</span>
				<img src="${themeDisplay.getPathThemeRoot()}/images/custom-images/logo-fds.png">
			</div>
		</div>
	</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>