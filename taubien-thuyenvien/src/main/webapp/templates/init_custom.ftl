<#assign theme_type = theme_display.getThemeSetting('theme_type')/>
<#assign theme_color_id = theme_display.getColorSchemeId()/>



<#if theme_color_id == "dvc">
	<#assign site_title = 'Cổng DVC trực tuyến Cục Hàng hải Việt Nam'/>
	<#assign logo_img = 'logo-dvc.png'/>
	<#assign tracking_script = ''/>
<#elseif theme_color_id == "motcua">
	<#assign site_title = 'Hệ thống thông tin MCĐT Cục Hàng hải Việt Nam'/>
	<#assign logo_img = 'logo-motcua.png'/>
	<#assign tracking_script = ''/>
</#if>