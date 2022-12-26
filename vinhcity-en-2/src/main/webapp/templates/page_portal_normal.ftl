<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title}</title>
	
	<link rel="Shortcut Icon" href="${themeDisplay.getPathThemeRoot()}/images/favicon.ico">

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<meta content="/o/vinhcity/images/no-images-logo.jpg" name="og:image" />
	
	<base href="/">

	<@liferay_util["include"] page=top_head_include />
	
	<link href="https://fonts.googleapis.com/css?family=Oswald:400,700|Roboto:400,500,700&display=swap&subset=vietnamese" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/3.2.1/css/font-awesome.min.css" integrity="sha256-MmuZTsWcczT1IhH71aqQmja5jRcXy3mL/NOvjUy9tso=" crossorigin="anonymous" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha256-eZrrJcwDc/3uDhsdt61sL2oOBY362qM3lon1gyExkL0=" crossorigin="anonymous" />
	<script src="https://code.responsivevoice.org/responsivevoice.js?key=k4tuTc8q"></script>
	
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@48,400,0,0" />

	
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

	<#assign preferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
	
	<div id="mWrapper" >
		
		<div id="header-title">
			<@liferay_portlet["runtime"] defaultPreferences="${preferences}" portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" instanceId="header"/>
		</div>
		
		<div id="header-navigation">
			<@liferay_portlet["runtime"] defaultPreferences="${preferences}" portletName="com_liferay_site_navigation_menu_web_portlet_SiteNavigationMenuPortlet"/>
		</div>
		
		
		
		<div class="body-content">
		
			<div id="content" class="container">
				<div id="body-image">
					<@liferay_portlet["runtime"] defaultPreferences="${preferences}" portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" instanceId="body-image"/>
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
			
			
		</div>
		
		<div id="footer">
			<div class="border-dashed">
				<div class="border-solid">
					<div class="hidden-footer container">
						<div class="row">
							<div class="col-md-10">
								<@liferay_portlet["runtime"] defaultPreferences="${preferences}" portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" instanceId="footer"/>
							</div>
							<div class="col-md-2" style="display: flex;">
								<@liferay_portlet["runtime"] defaultPreferences="${preferences}" portletName="portalsessiontracking_WAR_portalsessiontracking" instanceId="footer-session-tracking"/>
							</div
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>