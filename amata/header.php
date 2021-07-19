<!doctype html>
<html <?php language_attributes(); ?> class="no-js">

<head>
	<meta charset="<?php bloginfo('charset'); ?>">
	<title><?php echo esc_attr(get_bloginfo('name', 'display')); ?> - <?php bloginfo('description'); ?></title>

	<link href="//www.google-analytics.com" rel="dns-prefetch">
	<link href="<?php echo get_template_directory_uri(); ?>/img/icons/favicon.ico" rel="shortcut icon">
	<link href="<?php echo get_template_directory_uri(); ?>/img/icons/touch.png" rel="apple-touch-icon-precomposed">

	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="<?php bloginfo('description'); ?>">

	<!-- facebook meta -->
	<meta property="og:url" content="" />
	<meta property="og:title" content="" />
	<meta property="og:description" content="" />
	<meta property="og:image" content="" />
	<meta property="og:site_name" content="" />
	<!-- /facebook meta -->

	<!-- twitter meta -->
	<meta name="twitter:card" content="summary_large_image" />
	<meta name="twitter:site" content="" />
	<meta name="twitter:creator" content="" />
	<meta name="twitter:title" content="" />
	<meta name="twitter:description" content="" />
	<meta name="twitter:image" content="" />
	<!-- /twitter meta -->

	<?php wp_head(); ?>
	<script>
		// conditionizr.com
		// configure environment tests
		conditionizr.config({
			assets: '<?php echo get_template_directory_uri(); ?>',
			tests: {}
		});
	</script>

	<!-- google analytics -->
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push(['_setAccount', 'UA-XXXXX-XX']);
		_gaq.push(['_trackPageview']);

		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>
	<!-- /google analytics -->
</head>

<body <?php body_class(); ?>>

	<!-- wrapper -->
	<div class="wrapper">

		<!-- header -->
		<header class="header clear" role="banner">

			<!-- logo -->
			<div class="header__logo">
				<a href="<?php echo home_url(); ?>">
					<!-- svg logo add svg logo -->
					<img src="<?php echo get_template_directory_uri(); ?>/img/logo.svg" alt="Logo" class="header__logo-img">
				</a>
			</div>
			<!-- /logo -->

			<!-- nav -->
			<nav class="nav navigation mobile-hide" role="navigation">
				<?php focalpoint_nav(); ?>

			</nav>
			<a class="button__pill--large-primary" href="/request-a-demo/">Contact Us</a>
			<!-- /nav -->
			<!-- mobile -->
			<div class="hamburgermenu mobile-show">
				<div class="hamburger-menu">
					<input id="menu__toggle" type="checkbox" style="opacity:0;" />
					<label class="menu__btn" for="menu__toggle">
						<span></span>
					</label>
					<div class="overlay"></div>
					<?php focalpoint_nav_mobile(); ?>
				</div>
			</div>
			<!-- /mobile -->
		</header>
		<!-- /header -->