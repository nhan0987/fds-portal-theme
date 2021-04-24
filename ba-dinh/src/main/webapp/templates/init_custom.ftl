<#assign panelsMinimized = getterUtil.getBoolean(sessionClicks.get(request, "com.liferay.frontend.js.web_controlPanelSidebarMinimized", "false")) />

<#if panelsMinimized == true>
	<#assign css_class = css_class + " panels-minimized" />
</#if>

<#assign css_class = css_class + " display-panel-columns" />


<#assign theme_type = theme_display.getThemeSetting('theme_type')/>
<#assign marqueeText = theme_display.getThemeSetting('marquee-text')/>
<#assign theme_color_id = theme_display.getColorSchemeId()/>

<#assign allow_display_language_icon= false />

<#if theme_color_id == "quan-ba-dinh">
	<#assign allow_display_language_icon = true/>
</#if>