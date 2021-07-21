<?php /* Template Name: Pricing Page Template */ get_header(); ?>

<main role="main">
	<!-- section -->
	<section class="section">
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
									<h3 class="mar-b-0"><?php the_sub_field('title');?></h3>
									<p class="mar-b-1"><?php the_sub_field('description');?></p>
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

</main>

<?php get_footer(); ?>