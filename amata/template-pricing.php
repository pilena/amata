<?php /* Template Name: Pricing Page Template */ get_header(); ?>

<main role="main">
	<?php $backgroundImage = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'full'); ?>
	<section id="pricing_hero" class="section" style="background: linear-gradient(180deg, rgba(1, 24, 51, 0) 31.72%, #011833 100%), url('<?php echo $backgroundImage[0] ?>');min-height:100vh;background-size:cover;background-position:center;">
		<div class="container">
			<div class="row">
				<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
						<div><img src="<?php echo get_template_directory_uri(); ?>/img/illustrations/pricing-star.png" alt=""></div>
						<div class="col-lg-8 col-sm-12 pricing_hero">

							<?php the_content(); ?>
						</div>
					<?php endwhile; ?>
				<?php else : ?>

				<?php endif; ?>
				<a class="button__pill--small-primary" href=""><i class="ri-arrow-down-line"></i></a>
			</div>
		</div>
	</section>
	<!-- section -->
	<section class="wave wave-top">
		<svg width="1280" height="230" viewBox="0 0 1280 230" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path fill-rule="evenodd" clip-rule="evenodd" d="M0 49.9172L53.3333 73.9283C106.667 97.9393 213.333 145.961 320 163.97C426.667 181.978 533.333 169.972 640 127.953C746.667 85.9338 853.333 13.9007 960 1.89517C1066.67 -10.1103 1173.33 37.9117 1226.67 61.9228L1280 85.9338V230H1226.67C1173.33 230 1066.67 230 960 230C853.333 230 746.667 230 640 230C533.333 230 426.667 230 320 230C213.333 230 106.667 230 53.3333 230H0V49.9172Z" fill="#6600CC" />
			<path fill-rule="evenodd" clip-rule="evenodd" d="M1280 85.8949L1226.67 79.8905C1173.33 73.8862 1066.67 61.8774 960 85.8949C853.333 109.912 746.667 169.956 640 157.947C533.333 145.939 426.667 61.8774 320 25.8511C213.333 -10.1751 106.667 1.83361 53.3333 7.83799L-0.00012207 13.8424V230H53.3333C106.667 230 213.333 230 320 230C426.667 230 533.333 230 640 230C746.667 230 853.333 230 960 230C1066.67 230 1173.33 230 1226.67 230H1280V85.8949Z" fill="url(#paint0_linear)" />
			<path fill-rule="evenodd" clip-rule="evenodd" d="M0 138.07L71.4667 130.41C141.867 122.749 284.8 107.427 426.667 115.088C568.533 122.749 711.467 153.392 853.333 161.053C995.2 168.714 1138.13 153.392 1208.53 145.731L1280 138.07V230H1208.53C1138.13 230 995.2 230 853.333 230C711.467 230 568.533 230 426.667 230C284.8 230 141.867 230 71.4667 230H0V138.07Z" fill="white" />
			<defs>
				<linearGradient id="paint0_linear" x1="612.5" y1="-127.5" x2="640" y2="230" gradientUnits="userSpaceOnUse">
					<stop stop-color="#A347FF" />
					<stop offset="1" stop-color="#A347FF" stop-opacity="0" />
				</linearGradient>
			</defs>
		</svg>

	</section>

	<section id="pricing_table" class="section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 text-center mar-auto">
					<h2> <?php the_field('heading'); ?> <div class="after after-center"></div>
					</h2>
					<h3 class="text-center"><?php the_field('sub_heading'); ?></h3>
				</div>
				<div class="col-lg-10 mar-auto pad-t-4 pricing_table">
					<?php
					if (have_rows('pricing_table')) :
						while (have_rows('pricing_table')) : the_row();
					?>
							<div class="flex-between pricing_table-row">
								<div class="pricing_table-row-desc">
									<h3 class="mar-b-0"><?php the_sub_field('title'); ?></h3>
									<p class="mar-b-1"><?php the_sub_field('description'); ?></p>
								</div>
								<div class="flex-center pricing_table-link">
									<p class="mar-b-none">Inquire</p>
									<i class="ri-arrow-right-s-fill"></i>
								</div>
							</div>
					<?php
						endwhile;
					else :
						var_dump(have_rows('pricing_table'));
					endif;
					?>
				</div>
			</div>
		</div>
	</section>
	<!-- /section -->

	<section class="wave">
		<svg width="1280" height="230" viewBox="0 0 1280 230" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path fill-rule="evenodd" clip-rule="evenodd" d="M1280 180.083L1226.67 156.072C1173.33 132.061 1066.67 84.0387 960 66.0304C853.333 48.0221 746.667 60.0277 640 102.047C533.333 144.066 426.667 216.099 320 228.105C213.333 240.11 106.667 192.088 53.3333 168.077L-0.000114558 144.066L-0.000101963 1.01691e-05L53.3333 1.48317e-05C106.667 1.94943e-05 213.333 2.88193e-05 320 3.81444e-05C426.667 4.74695e-05 533.333 5.67946e-05 640 6.61197e-05C746.667 7.54448e-05 853.333 8.47699e-05 960 9.4095e-05C1066.67 0.00010342 1173.33 0.000112745 1226.67 0.000117408L1280 0.00012207L1280 180.083Z" fill="#6600CC" />
			<path fill-rule="evenodd" clip-rule="evenodd" d="M7.42175e-06 144.105L53.3333 150.109C106.667 156.114 213.333 168.123 320 144.105C426.667 120.088 533.333 60.0438 640 72.0526C746.667 84.0614 853.333 168.123 960 204.149C1066.67 240.175 1173.33 228.167 1226.67 222.162L1280 216.158L1280 0.000111901L1226.67 0.000107239C1173.33 0.000102576 1066.67 9.3251e-05 960 8.39259e-05C853.333 7.46008e-05 746.667 6.52757e-05 640 5.59506e-05C533.333 4.66255e-05 426.667 3.73004e-05 320 2.79753e-05C213.333 1.86502e-05 106.667 9.3251e-06 53.3334 4.66255e-06L2.00198e-05 0L7.42175e-06 144.105Z" fill="url(#paint0_linear)" />
			<path fill-rule="evenodd" clip-rule="evenodd" d="M1280 91.9298L1208.53 99.5906C1138.13 107.251 995.2 122.573 853.333 114.912C711.467 107.251 568.533 76.6081 426.667 68.9473C284.8 61.2865 141.867 76.6081 71.4666 84.2689L-0.000119879 91.9297L-0.000111842 2.53975e-06L71.4666 8.78757e-06C141.867 1.49421e-05 284.8 2.74378e-05 426.667 3.98401e-05C568.533 5.22425e-05 711.467 6.47382e-05 853.333 7.71405e-05C995.2 8.95429e-05 1138.13 0.000102039 1208.53 0.000108193L1280 0.000114441L1280 91.9298Z" fill="white" />
			<defs>
				<linearGradient id="paint0_linear" x1="667.5" y1="357.5" x2="640" y2="6.88689e-05" gradientUnits="userSpaceOnUse">
					<stop stop-color="#A347FF" />
					<stop offset="1" stop-color="#A347FF" stop-opacity="0" />
				</linearGradient>
			</defs>
		</svg>
	</section>

	<section id="contact" class="section-big">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 pricing__contact-heading text-center mar-auto">
					<h2>Contact Us</h2>
					<p>You’re one step closer to finding a solution, all you need to do is get in touch.</p>
				</div>
				<div class="col-lg-8 mar-auto pricing__contact">
					<?php echo do_shortcode('[contact-form-7 id="5" title="Contact Us"]'); ?>
				</div>
			</div>
		</div>
	</section>

</main>

<?php get_footer(); ?>