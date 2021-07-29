<?php /* Template Name: Blog Page Template */ get_header(); ?>

<main role="main">
	<!-- section -->
	<?php $backgroundImage = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'full'); ?>
	<section id="pricing_hero" class="section" style="background: linear-gradient(180deg, rgba(1, 24, 51, 0) 31.72%, #011833 100%), url('<?php echo $backgroundImage[0] ?>');min-height:100vh;background-size:cover;background-position:center;">
		<div class="container">
			<div class="row">
				<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

						<div class="col-lg-8 col-sm-12 pricing_hero">

							<?php the_content(); ?>
						</div>
					<?php endwhile; ?>
				<?php else : ?>

				<?php endif; ?>

			</div>
		</div>
	</section>
	<!-- /section -->

	<section id="posts" class="section">
		<div class="container">
			<div class="row">
				<?php
				$args = array(
					'post_type' => 'post',
					'posts_per_page' => 6
				);
				$the_query = new WP_Query($args); ?>
				<?php if ($the_query->have_posts()) : while ($the_query->have_posts()) : $the_query->the_post(); ?>

						<div class="col-lg-6 col-sm-12 pad-xxsm-b mar-xxsm-t mar-xxsm-b">
							<!-- article -->
							<article class="posts" id="post-<?php the_ID(); ?>" <?php post_class(); ?> style="background-image:linear-gradient(180deg, rgba(154, 154, 156, 0) 36.98%, rgba(32, 35, 50, 0.6) 59.37%, #202332 100%), url('<?php echo get_the_post_thumbnail_url(); ?>');background-size:cover;background-position:center;">
								<?php if (has_post_thumbnail()) : // Check if thumbnail exists 
								?>

								<?php endif; ?>
								<!-- post details -->
								<div class="posts__list-date">
									<p class="date"><?php the_time('d'); ?></p>
									<p class="date"><?php the_time('M'); ?></p>
									<p class="date"><?php the_time('Y'); ?></p>
								</div>
								<!-- /post details -->
								<!-- post category -->
								<div class="posts__list-details">
									<span class="category overline text-small <?php foreach ((get_the_category()) as $category) {
																		echo $category->slug;
																	} ?>"><?php foreach ((get_the_category()) as $category) {
																			echo $category->cat_name . ' ';
																		} ?></span>

									<!-- post title -->
									<h3 class="mar-t-0 mar-b-0">
										<a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"><?php the_title(); ?></a>
									</h3>
									<!-- /post title -->

									<?php focalpointwp_excerpt('focalpointwp_index'); // Build your custom callback length in functions.php 
									?>
									<a href="<?php the_permalink(); ?>" class="read-more"><?php _e('Read more') ?><i class="ri-arrow-right-s-fill"></i></a>
								</div>

							</article>
							<!-- /article -->
						</div>
					<?php endwhile; ?>

				<?php else : ?>

				<?php endif; ?>
			</div>
		</div>


	</section>

</main>

<?php get_footer(); ?>