			<!-- footer -->
			<footer class="footer" role="contentinfo">
				<div class="container">
					<div class="row footer__widgets">
						<div class="col-lg-4 col-sm-6 col-xxs-12 footer__widgets-wrap footer__widgets-wrap--left">
							<div class="footer__widgets--first"><?php if(!function_exists('dynamic_sidebar') || !dynamic_sidebar('widget-area-1')) ?></div>
						</div>
						<div class="col-lg-8 col-sm-6 col-xxs-12 footer__widgets-wrap footer__widgets-wrap--right">
							<div class="col-lg-3 col-sm-6 footer__widgets--second"><?php if(!function_exists('dynamic_sidebar') || !dynamic_sidebar('widget-area-2')) ?></div>
							<div class="col-lg-3 col-sm-6 footer__widgets--third"><?php if(!function_exists('dynamic_sidebar') || !dynamic_sidebar('widget-area-3')) ?></div>
							<div class="col-lg-3 col-sm-6 footer__widgets--fourth"><?php if(!function_exists('dynamic_sidebar') || !dynamic_sidebar('widget-area-4')) ?></div>
							<div class="col-lg-3 col-sm-6 footer__widgets--fifth"><?php if(!function_exists('dynamic_sidebar') || !dynamic_sidebar('widget-area-5')) ?></div>
						</div>
					</div>
				</div>
			</footer>
			<!-- /footer -->
			<!-- footer-drawer -->
			<div class="footer__drawer">
				<div class="container-fluid">
					<div class="col-lg-12 footer__drawer-wraper">
						<!-- copyright -->
						<div class="col-lg-12 footer__drawer--copyright text-center">
							<!-- <img src="/assets/images/logo-alt.svg" alt="logo" class="mar-sm-r"> -->
							<span>Copyright <?php echo date('Y'); ?> | Amata Solutions | All Rights Reserved</span>
						</div>
						<!-- /copyright -->

					</div>
				</div>
			</div>
			<!-- /footer-drawer -->

		</div>
		<!-- /wrapper -->

		<?php wp_footer(); ?>

		<!-- analytics -->
		<script>
		(function(f,i,r,e,s,h,l){i['GoogleAnalyticsObject']=s;f[s]=f[s]||function(){
		(f[s].q=f[s].q||[]).push(arguments)},f[s].l=1*new Date();h=i.createElement(r),
		l=i.getElementsByTagName(r)[0];h.async=1;h.src=e;l.parentNode.insertBefore(h,l)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-XXXXXXXX-XX', 'yourdomain.com');
		ga('send', 'pageview');
		</script>

	</body>
</html>
