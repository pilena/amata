<?php get_header(); ?>

<main role="main">
	<!-- section -->
	<section class="section">
		<div class="container">
			<div class="row center">
				<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
						<?php $background = wp_get_attachment_url(get_post_thumbnail_id($post->ID), 'thumbnail'); ?>
						<div class=" col-lg-8 post__top">
							<div class="col-lg-8 pad-xlg-t margin-center text-center post__top-inner" style="background-image:url('<?php echo $background ?>');background-repeat:no-repeat;background-size:cover;background-position:center;">
								<div class="posts__list-date">
									<p class="date"><?php the_time('d'); ?></p>
									<p class="date"><?php the_time('M'); ?></p>
									<p class="date"><?php the_time('Y'); ?></p>
								</div>

							</div>

							<!-- post title -->
							<h1>
								<?php the_title(); ?>

							</h1>
							<!-- /post title -->
							<div class="mar-b-2">
								<span class="category overline text-small <?php foreach ((get_the_category()) as $category) {
																				echo $category->slug;
																			} ?>"><?php foreach ((get_the_category()) as $category) {
																						echo $category->cat_name . ' ';
																					} ?></span>
							</div>
							<!-- article -->
							<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
								<?php the_content(); // Dynamic Content ?>

							</article>
							<!-- /article -->


							<h3 class="mar-b-2 mar-t-5 pad-md-t"> You may also like</h3>
							<div class="sidebar__related">
								<?php
								$related = get_posts(
									array(
										'post_type' => 'post',
										// 'category__in' => wp_get_post_categories( $post->ID ), 
										'numberposts'  => 2,
										// 'post__not_in' => array( $post->ID ) 
									)
								);

								if ($related) {
									foreach ($related as $post) {
										setup_postdata($post);
								?>
										<?php if (has_post_thumbnail()) : // Check if thumbnail exists 
										?>
											<div class="col-lg-6 sidebar__related-post">
												<a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>">
													<div class="posts__list-image" style="background-image:url('<?php echo get_the_post_thumbnail_url(); ?>');background-size:cover;background-position:center; height:120px;width:120px;border-radius:16px;">
													</div>
												</a>
											<?php endif; ?>
											<!-- post details -->
											<div style="margin-left: 8px;">

												<span class="date"><?php the_time('M j, Y'); ?></span>
												<!-- post title -->
												<p class="mar-b-none">
													<a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"><?php the_title(); ?></a>
												</p>
												<!-- /post title -->
											</div>
											</div>
											<!-- /post details -->

									<?php 	}
									wp_reset_postdata();
								}
									?>
							</div>
							<div class="row">
								<div class="col-lg-11 col-md-12 mar-t-5 prevnext__wrap margin-center">
									<div class="prevnext">
										<span><?php previous_post_link('%link', 'PREVIOUS POST', true); ?></span>
										<span><?php next_post_link('%link', 'NEXT POST', true); ?></span>
									</div>
								</div>
							</div>

						<?php endwhile; ?>
					<?php else : ?>

					<?php endif; ?>
						</div>
			</div>
		</div>

	</section>
	<!-- /section -->
</main>



<?php get_footer(); ?>