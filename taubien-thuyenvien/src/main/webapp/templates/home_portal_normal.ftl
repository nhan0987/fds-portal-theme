<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key='lang.dir' />" lang="${w3c_language_id}">

<head>
	<title>${site_title}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	
	<link rel="Shortcut Icon" href="${themeDisplay.getPathThemeRoot()}/images/favicon.ico">
	
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&display=swap" rel="stylesheet">
	<link href='https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons' rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<@liferay_util["include"] page=top_head_include />
	
	<base href="/">
	<link href="${themeDisplay.getPathThemeRoot()}/css/main.css?t=666" rel="stylesheet" type="text/css">
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}/css/chunk-vendors.css?t=123321" rel="stylesheet">
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}/css/upgrade.css?t=789987" rel="stylesheet">
	
	<script>
        window.__define = window.define;
        window.__require = window.require;
        window.define = undefined;
        window.require = undefined;
    </script>
	
	<script src="${themeDisplay.getPathThemeRoot()}/js/jquery.min.js"></script>
	
	<script>
        window.define = window.__define;
        window.require = window.__require;
        window.__define = undefined;
        window.__require = undefined;
    </script>
	
	<script>${tracking_script}</script>
	
	<!-- Config Scope -->
  	<script type="text/javascript">
    	var activeChangePass = false; /* disable change password employee*/
		var requiredOptionConfig = {
			applicantIdNo: false,
			applicantName: false,
			address: false,
			cityCode: false,
			districtCode: false,
			wardCode: false,
			contactTelNo: false,
			contactEmail: false,
			delegateIdNo: false,
			delegateName: false,
			delegateAddress: false,
			delegateCityCode: false,
			delegateDistrictCode: false,
			delegateWardCode: false,
			delegateTelNo: false,
			delegateEmail: false
    	}; /*cấu hình bắt buộc thông tin chủ hồ sơ*/
	    var applicantSameDelegate = false; /*Tự động check thông tin người nộp giống thông tin chủ hồ sơ*/
	    var showTinhPhi = true; /*show tính phí dịch vụ chuyển phát*/
	    var hasOrganization = false; /*loại người dùng tách "Tổ chức" riêng*/
	    var applicantConfig = false; /*bind applicant từ danh sách applicant*/
	    var notifyConfig = false; /*lựa chọn hình thức gửi thông báo*/
	    var defaultCityCode = false; /*set cityCode mặc định ex: 87 (Đồng Tháp)*/
	    var defaultCityName = false; /*set cityName mặc định ex: 'Tỉnh Đồng Tháp' (Đồng Tháp)*/
	    var khoTaiLieuCongDan = false; /*sử dụng kho tài liệu công dân*/
	    var showKySoDvc = false; /*sử dụng ký số phía cổng DVC*/
	    var hasPreviewSync = false; /*in tiến trình xử lý hs*/
	    var thanhToanChuyenKhoan = true; /*sử dụng thanh toán chuyển khoản*/
	    var thaoTacUyQuyen = false; /*sử dụng chức năng ủy quyền xử lý hs*/
	    var hasDownloadAllFile = false; /*sử dụng chức năng download tất cả giấy tờ đính kèm*/
	    var checkTrungChuHoSo = false; /*bật check trùng chủ hồ sơ có hồ sơ đang giải quyết*/
	    var fromViaPostalConfig = false; /*check xác nhận là hồ sơ nhận qua bưu chính*/
	    var activePdfEditor = false; /*sử dụng chức năng ghi chú trên tài liệu Pdf*/
	    var viTriLuuTru = false; /*sử dụng chức năng vị trí lưu trữ hồ sơ*/
	</script>
	<!-- end -->
</head>

<body class="${css_class} mBody home-theme">

	<!-- <@liferay_ui["quick-access"] contentId="#main-content" /> -->

	<#if permissionChecker.isOmniadmin()>
		<@liferay_util["include"] page=body_top_include />
		<@liferay.control_menu />
	<#else>
		<style>
			html .has-control-menu #wrapper {
				margin-top: 0 !important;
			}
			html body.open #wrapper {
				padding-left: 0 !important;
			}
		</style>
	</#if>

	<div class="" id="wrapper">
		<header id="banner">
			<div class="container">
				<a href="${site_default_url}" class="mLogo"> 
					<img src="${themeDisplay.getPathThemeRoot()}/images/${logo_img}">
				</a>
				<div id="react-root" style="">
					<div id="app_login"></div>
				</div>
				<a href="/web/cong-dich-vu-cong/register" class="btn-banner btn-register"><i class="fa fa-user-plus"></i> Đăng ký</a>
				<a href="/web/cong-dich-vu-cong/register#/login-dichvucong" class="btn-banner btn-login"><i class="fa fa-sign-in"></i> Đăng nhập</a>
			</div>

			<#if has_navigation && is_setup_complete>
				<#include "${full_templates_path}/navigation.ftl" />
			</#if>
		</header>
		
		<section id="content">	
			<#if selectable>
				<@liferay_util["include"] page=content_include />
			<#else>
				${portletDisplay.recycle()}

				${portletDisplay.setTitle(the_title)}

				<@liferay_theme["wrap-portlet"] page="portlet.ftl">
					<@liferay_util["include"] page=content_include />
				</@>
			</#if>
		</section>

		<footer id="footer">
			<div class="container">
				<div class="hidden-copyright">
					<div class="developed-by">
				      	<i>Phát triển bởi</i>
				      	<img src="/o/taubien-thuyenvien/images/logo-fds-white.png">
				      	<span>Nguồn ảnh: internet</span>
				    </div>
				</div>
				<p>
					<label>© Cục hàng hải việt nam</label>
					<div>
						<span>Trụ sở: Số 8 Phạm Hùng - Mai Dịch - Cầu Giấy - Hà Nội</span>
						<span>Điện thoại: (024) 3.768.3065</span>
					</div>
					<div>
						<span>Fax: (024) 3.768.3058</span>
						<span>Email: info@hhtp.gov.vn</span>
					</div>
				</p>
			</div>
		</footer>
	</div>
	
	<!-- inject:js -->
	<script type="text/javascript" src="/o/opencps-store/js/cli/login/app/js/app.js"></script>
	<script type="text/javascript" src="/o/opencps-store/js/cli/login/app/js/chunk-vendors.js"></script>
	<script>
		$(document).ready(function() {
			$("#navigation .nav-toggle").on('click', function(e) {
				e.preventDefault();
				$(this).next().slideToggle();
			});
		});
	</script>

	<@liferay_util["include"] page=body_bottom_include />
	<@liferay_util["include"] page=bottom_include />
</body>

</html>