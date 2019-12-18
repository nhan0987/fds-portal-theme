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
	<#assign banner_img = 'banner-namdan.jpg'/>
	<#assign sub_owner = 'Huyện Nam Đàn'/>
	<#assign main_owner = 'Tỉnh Nghệ An'/>
	<#assign owner_address = 'Phan Bội Châu, thị trấn Huyện Nam Đàn, Nghệ An'/>
	<#assign owner_mail = 'namdan@nghean.gov.vn'/>
	<#assign owner_phone = '(0238) 3 822 150'/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "vandien">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-vandien.jpg'/>
	<#assign sub_owner = 'Xã Vân Diên'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = 'Phan Bội Châu, thị trấn Huyện Nam Đàn, Nghệ An'/>
	<#assign owner_mail = 'namdan@nghean.gov.vn'/>
	<#assign owner_phone = '(0238) 3 822 150'/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "honglong">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-honglong.jpg'/>
	<#assign sub_owner = 'Xã Hồng Long'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "hungtien">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-hungtien.jpg'/>
	<#assign sub_owner = 'Xã Hùng Tiến'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "khanhson">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-khanhson.jpg'/>
	<#assign sub_owner = 'Xã Khánh Sơn'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "kimlien">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-kimlien.jpg'/>
	<#assign sub_owner = 'Xã Kim Liên'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namanh">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namanh.jpg'/>
	<#assign sub_owner = 'Xã Nam Anh'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namcat">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namcat.jpg'/>
	<#assign sub_owner = 'Xã Nam Cát'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "trannamdan">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-trannamdan.jpg'/>
	<#assign sub_owner = 'Thị trấn Nam Đàn'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namgiang">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namgiang.jpg'/>
	<#assign sub_owner = 'Xã Nam Giang'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namhung">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namhung.jpg'/>
	<#assign sub_owner = 'Xã Nam Hưng'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namkim">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namkim.jpg'/>
	<#assign sub_owner = 'Xã Nam Kim'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namlinh">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namlinh.jpg'/>
	<#assign sub_owner = 'Xã Nam Lĩnh'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namnghia">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namnghia.jpg'/>
	<#assign sub_owner = 'Xã Nam Nghĩa'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namthai">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namthai.jpg'/>
	<#assign sub_owner = 'Xã Nam Thái'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namthanh">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namthanh.jpg'/>
	<#assign sub_owner = 'Xã Nam Thanh'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namxuan">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namxuan.jpg'/>
	<#assign sub_owner = 'Xã Nam Xuân'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "xuanhoa">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-xuanhoa.jpg'/>
	<#assign sub_owner = 'Xã Xuân Hòa'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "xuanlam">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-xuanlam.jpg'/>
	<#assign sub_owner = 'Xã Xuân Lâm'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "trungphuccuong">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-trungphuccuong.jpg'/>
	<#assign sub_owner = 'Xã Trung Phúc Cường'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "thuongtanloc">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-thuongtanloc.jpg'/>
	<#assign sub_owner = 'Xã Thượng Tân Lộc'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
</#if>