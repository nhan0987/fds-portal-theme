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

	<#assign preferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
	
	<div id="mWrapper" >
		
		<@liferay_portlet["runtime"] defaultPreferences="${preferences}" portletName="com_liferay_site_navigation_menu_web_portlet_SiteNavigationMenuPortlet"/>
		
		<div id="bg-header">
			<div id="bg-header-center" class="container">
				<p id="line-1">Vinh Portal </p>
				
				<p id="line-2">Vinh city - nghe an province</p>
				
				<div id="line-3">
					<@liferay_portlet["runtime"]  portletName="com_liferay_portal_search_web_search_bar_portlet_SearchBarPortlet"/>
				</div>	
				<div id="line-4">
					<div class="d-flex flex-wrap">
						<div class="p1"><a href="/"><img src="${images_folder}/lich-lam-viec/Group 56.png" /></a></div>
						<div class="p1"><a href="/"><img src="${images_folder}/lich-lam-viec/Group 58.png" /></a></div>
						<div class="p1"><a href="/"><img src="${images_folder}/lich-lam-viec/Group 57.png" /></a></div>
						<div class="p1"><a href="/"><img src="${images_folder}/lich-lam-viec/Group 55.png" /></a></div>
						<div class="p1"><a href="/"><img src="${images_folder}/lich-lam-viec/Group 53.png" /></a></div>
						<div class="p1"><a href="/"><img src="${images_folder}/lich-lam-viec/Group 54.png" /></a></div>
						<div class="p1">
					      <div><span class="icon-asset material-icons-outlined icon d-block mx-auto"> <a href="/thong-tin-nguoi-phat-ngon">account_box </a></span></div>
					      <p class="title"><a href="/thong-tin-nguoi-phat-ngon">Spokesperson Information</a></p>
					   </div>
					   <div class="p1">
					      <div><span class="icon-asset material-icons-outlined icon d-block mx-auto"> <a href="/thong-bao-ket-qua-tiep-dan">assignment</a></span></div>
					      <p class="title"><a href="/thong-bao-ket-qua-tiep-dan">Announcement of the results of the reception</a></p>
					   </div>
					   
					   <div class="p1">
					      <div><span class="icon-asset material-icons-outlined icon d-block mx-auto"> <a href="/danh-muc-thu-tuc-hanh-chinh">record_voice_over</a></span></div>
					      <p class="title"><a href="/danh-muc-thu-tuc-hanh-chinh">Resolve the complaint report</a></p>
					   </div>
					   
					   <div class="p1">
					      <div><span class="icon-asset material-icons-outlined icon d-block mx-auto"> <a href="/diem-bao">assignment_late</a></span></div>
					      <p class="title"><a href="/diem-bao">Newsletter</a></p>
					   </div>
					   
					   <div class="p1">
					      <div><span class="icon-asset material-icons-outlined icon d-block mx-auto"> <a href="/tuyen-truyen-giao-duc-pho-bien-phap-luat">bookmarks</a></span></div>
					      <p class="title"><a href="/tuyen-truyen-giao-duc-pho-bien-phap-luat">List of administrative procedures</a></p>
					   </div>
					   
					   <div class="p1">
					      <div><span class="icon-asset material-icons-outlined icon d-block mx-auto"> <a href="/giai-quyet-khieu-nai-to-cao">contact_support</a></span></div>
					      <p class="title"><a href="/giai-quyet-khieu-nai-to-cao">Propagating and disseminating legal education</a></p>
					   </div>
					</div>
				</div>
			</div>
			
		</div>
		
		
		
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
		
		<div id="footer">
			<div class="border-dashed">
				<div class="border-solid">
					<div class="hidden-footer">
						<@liferay_portlet["runtime"] defaultPreferences="${preferences}" portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" instanceId="footer"/>
					</div>
				</div>
			</div>
		</div>
	</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>