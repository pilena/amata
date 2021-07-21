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

	<section class="wave">
		<svg width="1280" height="117" viewBox="0 0 1280 117" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path fill-rule="evenodd" clip-rule="evenodd" d="M0 25.0703L71.4667 17.4095C141.867 9.7487 284.8 -5.57291 426.667 2.0879C568.533 9.7487 711.467 40.3919 853.333 48.0527C995.2 55.7135 1138.13 40.3919 1208.53 32.7311L1280 25.0703V117H1208.53C1138.13 117 995.2 117 853.333 117C711.467 117 568.533 117 426.667 117C284.8 117 141.867 117 71.4667 117H0V25.0703Z" fill="white" />
		</svg>
	</section>

	<section id="pricing_table" class="section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 text-center mar-auto">
					<h2> <?php the_field('heading'); ?> <div class="after-center"></div>
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

	<section>
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<h2>Contact Us</h2>
					<p>You’re one step closer to finding a solution, all you need to do is get in touch.</p>
				</div>
				<div class="col-lg-8">
					<?php echo do_shortcode('[contact-form-7 id="5" title="Contact Us"]');?>
				</div>
			</div>
		</div>
	</section>

</main>

<?php get_footer(); ?>