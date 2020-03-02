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
	<#assign sub_site_content_responsible = 'Chủ tịch UBND Huyện'/>
	<#assign site_owner = 'UBND Huyện Nam Đàn'/>
<#elseif theme_color_id == "vandien">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-vandien.png'/>
	<#assign sub_owner = 'Xã Vân Diên'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = 'Phan Bội Châu, thị trấn Huyện Nam Đàn, Nghệ An'/>
	<#assign owner_mail = 'namdan@nghean.gov.vn'/>
	<#assign owner_phone = '(0238) 3 822 150'/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "honglong">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-honglong.png'/>
	<#assign sub_owner = 'Xã Hồng Long'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "hungtien">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-hungtien.png'/>
	<#assign sub_owner = 'Xã Hùng Tiến'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "khanhson">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-khanhson.png'/>
	<#assign sub_owner = 'Xã Khánh Sơn'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "kimlien">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-kimlien.png'/>
	<#assign sub_owner = 'Xã Kim Liên'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namanh">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namanh.png'/>
	<#assign sub_owner = 'Xã Nam Anh'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namcat">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namcat.png'/>
	<#assign sub_owner = 'Xã Nam Cát'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namgiang">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namgiang.png'/>
	<#assign sub_owner = 'Xã Nam Giang'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namhung">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namhung.png'/>
	<#assign sub_owner = 'Xã Nam Hưng'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namkim">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namkim.png'/>
	<#assign sub_owner = 'Xã Nam Kim'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namlinh">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namlinh.png'/>
	<#assign sub_owner = 'Xã Nam Lĩnh'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namnghia">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namnghia.png'/>
	<#assign sub_owner = 'Xã Nam Nghĩa'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namthai">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namthai.png'/>
	<#assign sub_owner = 'Xã Nam Thái'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namthanh">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namthanh.png'/>
	<#assign sub_owner = 'Xã Nam Thanh'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "xuanhoa">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-xuanhoa.png'/>
	<#assign sub_owner = 'Xã Xuân Hòa'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "xuanlam">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-xuanlam.png'/>
	<#assign sub_owner = 'Xã Xuân Lâm'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namcuong">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namcuong.png'/>
	<#assign sub_owner = 'Xã Nam Cường'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namlinh">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namlinh.png'/>
	<#assign sub_owner = 'Xã Nam Linh'/>
	<#assign main_owner = 'Huyện Nam Linh'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namloc">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namloc.png'/>
	<#assign sub_owner = 'Xã Nam Lộc'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namphuc">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namphuc.png'/>
	<#assign sub_owner = 'Xã Nam Phúc'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namtan">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namtan.png'/>
	<#assign sub_owner = 'Xã Nam Tân'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namthuong">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namthuong.png'/>
	<#assign sub_owner = 'Xã Nam Thượng'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
<#elseif theme_color_id == "namtrung">
	<#assign site_title = 'Trang thông tin điện tử'/>
	<#assign banner_img = 'banner-namtrung.png'/>
	<#assign sub_owner = 'Xã Nam Trung'/>
	<#assign main_owner = 'Huyện Nam Đàn'/>
	<#assign owner_address = ''/>
	<#assign owner_mail = ''/>
	<#assign owner_phone = ''/>
	<#assign sub_site_content_responsible = ''/>
	<#assign site_owner = ''/>
</#if>