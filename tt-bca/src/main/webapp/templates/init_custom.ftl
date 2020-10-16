<#assign panelsMinimized = getterUtil.getBoolean(sessionClicks.get(request, "com.liferay.frontend.js.web_controlPanelSidebarMinimized", "false")) />

<#if panelsMinimized == true>
	<#assign css_class = css_class + " panels-minimized" />
</#if>

<#assign css_class = css_class + " display-panel-columns" />




<#assign theme_color_id = theme_display.getColorSchemeId()/>
<#assign theme_type = theme_display.getThemeSetting('theme_type')/>
<#assign marqueeText = theme_display.getThemeSetting('marquee-text')/>

<#if theme_color_id == "namdan">
	<#assign site_title = 'Cổng thông tin điện tử'/>
	<#assign theme_name = 'namdan'/>
<#elseif theme_color_id == "honglong">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign theme_name = 'honglong'/>
<#elseif theme_color_id == "hungtien">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign theme_name = 'hungtien'/>
<#elseif theme_color_id == "khanhson">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign theme_name = 'khanhson'/>
<#elseif theme_color_id == "kimlien">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign theme_name = 'kimlien'/>
<#elseif theme_color_id == "namanh">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign theme_name = 'namanh'/>
<#elseif theme_color_id == "namcat">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign theme_name = 'namcat'/>
<#elseif theme_color_id == "namgiang">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign theme_name = 'namgiang'/>
<#elseif theme_color_id == "namhung">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign theme_name = 'namhung'/>
<#elseif theme_color_id == "namkim">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign theme_name = 'namkim'/>
<#elseif theme_color_id == "namlinh">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign theme_name = 'namlinh'/>
<#elseif theme_color_id == "namnghia">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign theme_name = 'namnghia'/>
<#elseif theme_color_id == "namthai">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign theme_name = 'namthai'/>
<#elseif theme_color_id == "namthanh">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign theme_name = 'namthanh'/>
<#elseif theme_color_id == "namxuan">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign theme_name = 'namxuan'/>	
<#elseif theme_color_id == "thuongtanloc">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign theme_name = 'thuongtanloc'/>
<#elseif theme_color_id == "trannamdan">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign theme_name = 'trannamdan'/>
<#elseif theme_color_id == "trungphuccuong">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign theme_name = 'trungphuccuong'/>
<#elseif theme_color_id == "xuanhoa">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign theme_name = 'xuanhoa'/>
<#elseif theme_color_id == "xuanlam">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign theme_name = 'xuanlam'/>
</#if>