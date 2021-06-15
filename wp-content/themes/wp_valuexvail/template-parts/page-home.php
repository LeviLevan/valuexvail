<?php /* Template Name: Home page */ ?>
<?php get_header(); ?>

<?php
if (have_rows('constructor_home_page_data')) {
    while (have_rows('constructor_home_page_data')) {
        the_row();
        switch (get_row_layout()) {
            case 'presentation_section':
                $presentation_section_vision = get_sub_field('turn_on');
                if ($presentation_section_vision == true) {

                        $query = new WP_Query(array(
                            'post_type' => 'presentation',
                            'posts_per_page' =>3,
                            'orderby'     => 'date',
                            'order'       => 'DESC',
                        ));
                        if ($query->have_posts()) : ?>
                            <div class="container-fluid presentation_section">
                                <div class="container">
                                    <div class="title">
                                        <h2><?php the_sub_field('title'); ?></h2>
                                    </div>
                                    <div class="row">
                                        <?php while ($query->have_posts()): $query->the_post();
                                            $presentation = get_field('file');
                                            ?>
                                            <div class="col-md-4">
                                                <a href="<?php echo $presentation['url']; ?>" data-fancybox="gallery"
                                                   data-fancybox-type="iframe" class="post-link">
                                                    <div style="background-image: url(<?php the_post_thumbnail_url(); ?>)" class="presentation-img">
                                                        <img class="img-fluid" src="<?php the_sub_field('icon_overlay'); ?>""
                                                        alt="<?php the_title(); ?>">
                                                        <div class="post-title"><?php the_title(); ?></div>
                                                    </div>
                                                </a>
                                            </div>

                                        <?php endwhile; ?>
                                    </div>
                                    <div class="button_presentation">
                                        <a href="<?php the_sub_field('button_page_url'); ?>"><?php the_sub_field('button_text'); ?></a>
                                    </div>
                                </div>
                            </div>
                        <?php endif; ?>
                        <?php wp_reset_postdata();
                    }
               
                break;
            case 'title_section':
                $title_section_vision = get_sub_field('turn_on');
                if ($title_section_vision == true) { ?>
                    <div class="container-fluid title_section">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <h1><?php the_sub_field('title'); ?></h1>
                                    <div class="location">
                                        <div class="date">
                                            <img src="<?php the_sub_field('icon_date'); ?>" alt="">
                                            <span><?php the_sub_field('date'); ?></span>
                                        </div>
                                        <div class="icon_map">
                                            <img src="<?php the_sub_field('icon_location'); ?>" alt="">
                                            <span><?php the_sub_field('location'); ?></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php }
                break;
            case 'sin_up_section':
                $sign_up_section_vision = get_sub_field('turn_on');
                if ($title_section_vision == true) { ?>
                    <div class="container-fluid sing_up_section">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <h2><?php the_sub_field('title'); ?></h2>
                                    <p class="description"><?php the_sub_field('description'); ?></p>
                                    <?php echo do_shortcode(the_sub_field('short_code')); ?>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php }
                break;
        }
    }
}
?>

<?php get_footer(); ?>