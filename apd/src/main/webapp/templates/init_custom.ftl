<#assign panelsMinimized = getterUtil.getBoolean(sessionClicks.get(request, "com.liferay.frontend.js.web_controlPanelSidebarMinimized", "false")) />

<#if panelsMinimized == true>
	<#assign css_class = css_class + " panels-minimized" />
</#if>

<#assign css_class = css_class + " display-panel-columns" />




<#assign theme_color_id = theme_display.getColorSchemeId()/>
<#assign theme_type = theme_display.getThemeSetting('theme_type')/>

<#if theme_color_id == "page-chung">
	<#assign banner_img = 'banner-chung.gif'/>
<#elseif theme_color_id == "phong-tchc">
	<#assign banner_img = 'banner-phong-tchc.jpg'/>
<#elseif theme_color_id == "phong-qldt">
	<#assign banner_img = 'banner-phong-qldt.jpg'/>
<#elseif theme_color_id == "phong-khtc">
	<#assign banner_img = 'banner-phong-khtc.jpg'/>
<#elseif theme_color_id == "phong-qlkhvht">
	<#assign banner_img = 'banner-phong-qlkhvht.jpg'/>
<#elseif theme_color_id == "phong-ctvctsv">
	<#assign banner_img = 'banner-phong-ctvctsv.jpg'/>
<#elseif theme_color_id == "khoa-csc">
	<#assign banner_img = 'banner-khoa-csc.jpg'/>
<#elseif theme_color_id == "khoa-ktpt">
	<#assign banner_img = 'banner-khoa-ktpt.jpg'/>
<#elseif theme_color_id == "khoa-tcdt">
	<#assign banner_img = 'banner-khoa-tcdt.jpg'/>
<#elseif theme_color_id == "khoa-ktqt">
	<#assign banner_img = 'banner-khoa-ktqt.jpg'/>
<#elseif theme_color_id == "khoa-qtkd">
	<#assign banner_img = 'banner-khoa-qtkd.jpg'/>
<#elseif theme_color_id == "khoa-lkt">
	<#assign banner_img = 'banner-khoa-lkt.jpg'/>
<#elseif theme_color_id == "khoa-kt">
	<#assign banner_img = 'banner-khoa-kt.jpg'/>
<#elseif theme_color_id == "khoa-cb">
	<#assign banner_img = 'banner-khoa-cb.jpg'/>
<#elseif theme_color_id == "vien-dtqt">
	<#assign banner_img = 'banner-vien-dtqt.jpg'/>
<#elseif theme_color_id == "trungtam-bdtvvpbcs">
	<#assign banner_img = 'banner-trungtam-bdtvvpbcs.jpg'/>
<#elseif theme_color_id == "trungtam-cntttvvtt">
	<#assign banner_img = 'banner-trungtam-cntttvvtt.jpg'/>
<#elseif theme_color_id == "trungtam-htdt">
	<#assign banner_img = 'banner-trungtam-htdt.jpg'/>
<#elseif theme_color_id == "trungtam-ktvdbcl">
	<#assign banner_img = 'banner-trungtam-ktvdbcl.jpg'/>
</#if>



<#assign mAddress = theme_display.getThemeSetting('m_address')/>
<#assign mPhone = theme_display.getThemeSetting('m_phone')/>
<#assign mFax = theme_display.getThemeSetting('m_fax')/>

<#if mAddress == ''>
	<#assign ftl_address = 'Khu đô thị Nam An Khánh - An Thượng - Hoài Đức - Hà Nội'/>
<#else>
	<#assign ftl_address =  theme_display.getThemeSetting('m_address')/>
</#if>

<#if mPhone == ''>
	<#assign ftl_phone = '(04) 3747 3186'/>
<#else>
	<#assign ftl_phone =  theme_display.getThemeSetting('m_phone')/>
</#if>

<#if mFax == ''>
	<#assign ftl_fax = '(04) 37475217'/>
<#else>
	<#assign ftl_fax =  theme_display.getThemeSetting('m_fax')/>
</#if>