<?php get_header(); ?>
    <div class="main-content">
        <div class="content-wrapper">
            <div class="content">
                <div class="article-title title-page">
                  <?php the_title(); ?>
                </div>
                <?php if( have_posts()) : while ( have_posts()) : the_post(); 
                if($img=get_field('image')):?>
                    <div class="article-image"><img src="<?=$img; ?>" alt="Image поста"></div>
                <?php endif;?>
                <div class="article-info">
                    <div class="post-date"><?php the_date(); ?></div>
                </div>
                <div class="article-text">
                   <?php the_content(); ?>
                </div>
                <?php endwhile; else: ?>
                    Ничего не найдено
                <?php endif;
                $prev=get_previous_post();
                $next=get_next_post();
                $prev_arr_words=preg_split('/[^\p{L}\p{N}\']+/u', $prev->post_content);
                $next_arr_words=preg_split('/[^\p{L}\p{N}\']+/u', $next->post_content);
                $limit=count($prev_arr_words)>=15?15:count($prev_arr_words);
                for($i=0; $i<=$limit; $i++){
                    $prev_words.=$prev_arr_words[$i].' ';
                }
                $limit=count($next_arr_words)>=15?15:count($next_arr_words);
                for($i=0; $i<=$limit; $i++){
                    $next_words.=$next_arr_words[$i].' ';
                }
                $prev_words=rtrim($prev_words);
                $next_words=rtrim($next_words);?>
                <div class="article-pagination">
                    <?php if($prev): 
                    $img=get_field('image', $prev->ID)?>
                    <div class="article-pagination__block pagination-prev-left"><a href="<?=$prev->guid?>" class="article-pagination__link"><i class="icon icon-angle-double-left"></i>Предыдущая статья</a>
                        <div class="wrap-pagination-preview pagination-prev-left">
                        <?php if($img): ?>
                            <div class="preview-article__img">
                                <img src="<?=$img;?>" class="preview-article__image">
                            </div>
                        <?php endif; ?>
                            <div class="preview-article__content">
                                <div class="preview-article__info"><a href="#" class="post-date"><?=$prev->post_date?></a></div>
                                <div class="preview-article__text"><?=$prev_words.'...'?></div>
                            </div>
                        </div>
                    </div>
                    <?php endif;
                    if($next):
                    $img=get_field('image', $next->ID)?>
                    <div class="article-pagination__block pagination-prev-right"><a href="<?=$next->guid?>" class="article-pagination__link">Следующая статья<i class="icon icon-angle-double-right"></i></a>
                        <div class="wrap-pagination-preview pagination-prev-right">
                        <?php if($img): ?>
                            <div class="preview-article__img">
                                <img src="<?=$img;?>" class="preview-article__image">
                            </div>
                        <?php endif; ?>
                            <div class="preview-article__content">
                                <div class="preview-article__info"><a href="#" class="post-date"><?=$next->post_date?></a></div>
                                <div class="preview-article__text"><?=$next_words.'...'?></div>
                            </div>
                        </div>
                    </div>
                <?php endif; ?>
                </div>
            </div>
            <!-- sidebar-->
            <?php get_template_part('parts/sidebar'); ?>
        </div>
    </div>

<?php get_footer(); ?>