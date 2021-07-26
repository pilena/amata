<?php /* Template Name: FAQ Page Template */ get_header(); ?>

<main role="main">
	<!-- section -->
	<section class="section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-xs-12 text-center mobile-left mar-auto">
					<h2><?php the_field('heading'); ?> <div class="after-center"></div></h2>
				</div>
				<div class="col-lg-8 col-xs-12 mar-auto">
					<div class="acc-kontainer">
						<?php
						if (have_rows('faq_accordion')) :
							while (have_rows('faq_accordion')) : the_row();
						?>
								<div>
									<input type="radio" name="acc" id="<?php echo the_sub_field('id');?>">
									<label for="<?php echo the_sub_field('id');?>"><i class="ri-add-line"></i> <?php the_sub_field('question');?></label>
									<div class="acc-body">
										<?php the_sub_field('answer');?>
									</div>
								</div>
						<?php
							endwhile;
						else :
							var_dump(have_rows('faq_accordion'));
						endif;
						?>
					</div>
				</div>
				
			</div>
		</div>
	</section>
	<!-- /section -->

</main>

<?php get_footer(); ?>