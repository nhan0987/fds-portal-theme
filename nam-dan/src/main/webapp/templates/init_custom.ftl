<#assign panelsMinimized = getterUtil.getBoolean(sessionClicks.get(request, "com.liferay.frontend.js.web_controlPanelSidebarMinimized", "false")) />

<#if panelsMinimized == true>
	<#assign css_class = css_class + " panels-minimized" />
</#if>

<#assign css_class = css_class + " display-panel-columns" />




<#assign theme_color_id = theme_display.getColorSchemeId()/>
<#assign theme_type = theme_display.getThemeSetting('theme_type')/>

<#if theme_color_id == "namdan">
	<#assign site_title = 'Cổng thông tin điện tử'/>
	<#assign banner_img = 'banner-namdan.jpg'/>
	<#assign sub_owner = 'Huyện Nam Đàn'/>
	<#assign main_owner = 'Tỉnh Nghệ An'/>
	<#assign owner_address = 'Phan Bội Châu, thị trấn Huyện Nam Đàn, Nghệ An T'/>
	<#assign owner_mail = 'namdan@nghean.gov.vn'/>
	<#assign owner_phone = '(0238) 3 822 150'/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "vandien">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<<#assign banner_img = 'banner-vandien.jpg'/>
	<#assign sub_owner = 'Xã Vân Diên'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = 'Phan Bội Châu, thị trấn Huyện Nam Đàn, Nghệ An'/>
	<#assign owner_mail = 'namdan@nghean.gov.vn'/>
	<#assign owner_phone = '(0238) 3 822 150'/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
</#if>