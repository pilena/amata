<?php /* Template Name: Home Page Template */ get_header(); ?>

<main role="main">
	<!-- section -->
	<?php $backgroundImage = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'full'); ?>
	<section id="home_hero" class="section" style="background: linear-gradient(180deg, rgba(1, 24, 51, 0) 31.72%, #011833 100%), url('<?php echo $backgroundImage[0] ?>');min-height:100vh;background-size:cover;background-position:center;">
		<div class="container">
			<div class="row center">
				<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
						<div><img src="<?php echo get_template_directory_uri(); ?>/img/illustrations/kv-illustration.png" alt=""></div>
						<div class="col-lg-5 col-sm-12 home_hero">

							<?php the_content(); ?>
						</div>
					<?php endwhile; ?>
				<?php else : ?>

				<?php endif; ?>
		
			</div>
		</div>
	</section>
	<!-- /section -->

	<section class="wave wave-offset">
		<svg width="1280" height="117" viewBox="0 0 1280 117" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path fill-rule="evenodd" clip-rule="evenodd" d="M0 25.0703L71.4667 17.4095C141.867 9.7487 284.8 -5.57291 426.667 2.0879C568.533 9.7487 711.467 40.3919 853.333 48.0527C995.2 55.7135 1138.13 40.3919 1208.53 32.7311L1280 25.0703V117H1208.53C1138.13 117 995.2 117 853.333 117C711.467 117 568.533 117 426.667 117C284.8 117 141.867 117 71.4667 117H0V25.0703Z" fill="white" />
		</svg>
	</section>

	<!-- SECTION - TWO -->
	<section class="section">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 home">
					<h2> Who We Are <div class="after after-left"></div></h2>
					<h3>Founded by a dynamic management team, the Amata Solutions Group was created to offer value and a solution-based approach to the healthcare industry. </h3>
					<p>The members of our team have over sixty years’ experience in the healthcare industry combined, and boast of a strong connection to suppliers and customers; meaning that we’re able to guarantee a system that promises solution, growth, and change.</p>
					<a class="button__pill--large-secondary" href="/request-a-demo/">See Our Services</a>
				</div>
				<div class="col-lg-6">
					<img src="<?php echo get_template_directory_uri(); ?>/img/illustrations/heart.svg" alt="">
				</div>

				<div class="col-lg-6">
					<img src="<?php echo get_template_directory_uri(); ?>/img/illustrations/check.svg" alt="">
				</div>
				<div class="col-lg-6">
					<h2> Our mission <div class="after after-left"></div></h2>
					<h3>We’re committed to the healthcare industry and believe it can be transformed with the help of IT and business solutions. </h3>
					<p>The growing need for business and IT solutions to support the healthcare industry has positioned our business as the leading tactic to expand your business.

						Email us and explore the solutions we can offer you.</p>
					<a class="button__pill--large-secondary" href="/request-a-demo/">Contact Us</a>
				</div>

			</div>
		</div>
	</section>
	<!-- //SECTION -->

	<!-- SECTION - SERVICES -->
	<section id="services">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2><?php the_field('title'); ?> <div class="after after-center"></div></h2>
					<h3><?php the_field('subtitle'); ?></h3>
				</div>
			</div>
			
			<div class="row">
					<?php
					if (have_rows('services')) :
						while (have_rows('services')) : the_row();
					?>
							<div class="col-lg-4 home_services">
								<img src="<?php echo get_template_directory_uri(); ?><?php echo the_sub_field('image');?>" alt="">
								<h5 class="mar-t-none mar-b-0"><?php the_sub_field('title'); ?></h5>
								<?php the_sub_field('text'); ?>
							</div>
					<?php
						endwhile;
					else :
					endif;
					?>
				</div>
		</div>
	</section>
	<!-- //SECTION -->

	<section id="contact">
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