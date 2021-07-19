<?php /* Template Name: Home Page Template */ get_header(); ?>

<main role="main">
	<!-- section -->
	<section class="section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">

				</div>
			</div>
		</div>
	</section>
	<!-- /section -->

	<!-- SECTION - TWO -->
	<section class="section">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 home">
					<h2> Who We Are</h2>
					<div class="sta"></div>
					<h4>Founded by a dynamic management team, the Amata Solutions Group was created to offer value and a solution-based approach to the healthcare industry. </h4>
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
					<h2> Our mission</h2>
					<h4>We’re committed to the healthcare industry and believe it can be transformed with the help of IT and business solutions. </h4>
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
					<h2><?php the_field('title'); ?></h2>
					<p><?php the_field('subtitle'); ?></p>
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
</main>

<?php get_footer(); ?>