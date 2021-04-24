<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>Cổng TTĐT Ba Đình</title>
	
	<link rel="Shortcut Icon" href="${themeDisplay.getPathThemeRoot()}/images/favicon.ico">

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	
	<base href="/">

	<@liferay_util["include"] page=top_head_include />
	
	<link href="https://fonts.googleapis.com/css?family=Oswald:400,700|Roboto:400,500,700&display=swap&subset=vietnamese" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/3.2.1/css/font-awesome.min.css" integrity="sha256-MmuZTsWcczT1IhH71aqQmja5jRcXy3mL/NOvjUy9tso=" crossorigin="anonymous" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha256-eZrrJcwDc/3uDhsdt61sL2oOBY362qM3lon1gyExkL0=" crossorigin="anonymous" />
	<script src="https://code.responsivevoice.org/responsivevoice.js?key=k4tuTc8q"></script>
</head>

<body class="${css_class} pages-theme">

<#if permissionChecker.isSignedIn()>
	<@liferay.control_menu />
</#if>

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<#assign scope_group = theme_display.getScopeGroup() />

	<div id="mWrapper" class="container">
		<div id="banner">			
			<div class="hidden-banner">
				<#assign preferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
				<@liferay_portlet["runtime"] defaultPreferences="${preferences}" portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" instanceId="header"/>
			</div>
		</div>
		
		<@liferay_portlet["runtime"] defaultPreferences="${preferences}" portletName="com_liferay_site_navigation_menu_web_portlet_SiteNavigationMenuPortlet"/>

		<div id="content">
		
			<div class="notify-wrapper">
				<div id="notify-title">
					<span id="current_datetime"></span> | <span id="current_time"></span>
				</div>
				<div class="marquee">
					<marquee scrolldelay="200"><span>${marqueeText}</span></marquee>
				</div>
				
			</div>
			
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
			<div class="hidden-footer">
				<@liferay_portlet["runtime"] defaultPreferences="${preferences}" portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" instanceId="footer"/>
			</div>
		</div>
	</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>