<?php
//custom logo
add_action( 'after_setup_theme', 'custom_logo_customizer' );
function custom_logo_customizer() {
    add_theme_support( 'custom-logo', [
        'flex-width'  => true,
        'flex-height' => true,
        'header-text' => '',
        'unlink-homepage-logo' => false,
    ] );
};

// custom menu support
add_theme_support( 'menus' );
if ( function_exists( 'register_nav_menus' ) ) {
    register_nav_menus(
        array(
            'header_menu' => __( 'Header Menu', 'wp_valuexvail' ),
        )
    );
}

// scripts adding
add_action('wp_enqueue_scripts', 'wp_valuexvail_main_style', 999);
function wp_valuexvail_main_style(){

    wp_enqueue_style( 'bootstrap', get_stylesheet_directory_uri().'/assets/css/bootstrap.css' );
    wp_enqueue_style( 'main-style',  get_stylesheet_directory_uri() .'/assets/css/main.css' );
    wp_enqueue_style( 'rd-navbar-style',  get_stylesheet_directory_uri() .'/assets/css/rd-navbar.css' );
    wp_enqueue_style( 'fancybox-css',  get_stylesheet_directory_uri() .'/assets/css/jquery.fancybox.min.css' );

    wp_enqueue_script('theme-core', get_stylesheet_directory_uri().'/assets/js/core.min.js', array('jquery'));
    wp_enqueue_script('fancybox-js', get_stylesheet_directory_uri().'/assets/js/jquery.fancybox.min.js', array('jquery'));
    wp_register_script('custom', get_stylesheet_directory_uri().'/assets/js/custom.js', array('jquery'));
    wp_enqueue_script( 'custom' );

}

add_filter('wp_nav_menu','new_submenu_class');
function new_submenu_class( $menu) {
    $menu = preg_replace('/current-menu-item/', 'active' ,$menu);

    return $menu;
}

add_filter( 'nav_menu_submenu_css_class', 'nav_menu_submenu_css_class_main_menu', 10, 2 );
function nav_menu_submenu_css_class_main_menu( $classes, $args ){

    if( $args->theme_location == 'primary' ) {
        $classes[] = 'rd-menu rd-navbar-dropdown';
    }

    return $classes;
}

add_filter( 'nav_menu_link_attributes', 'nav_menu_link_attributes_main_menu', 10, 3 );
function nav_menu_link_attributes_main_menu( $atts, $item = null, $args = null ) {

    if( $args->theme_location == 'primary' ) {
        if( empty( $item->menu_item_parent ) ){
            $atts['class'] = 'rd-nav-link';
        }else {
            $atts['class'] = 'rd-dropdown-link';
        }
    }
    return $atts;
}

add_filter('nav_menu_css_class', 'nav_menu_css_class_main_menu' , 10 , 3);
function nav_menu_css_class_main_menu( $classes, $item, $args ){

    if( $args->theme_location == 'primary' ) {
        if( empty( $item->menu_item_parent ) ){
            $classes[] = 'rd-nav-item';
        }else {
            $classes[] = 'rd-dropdown-item';
        }
    }

    return $classes;
}

add_theme_support( 'post-thumbnails' );

function custom_post_type() {
 
// Set UI labels for Custom Post Type
$labels = array(
'name'                => _x( 'Presentation', 'Post Type General Name', 'wp_valuexvail' ),
'singular_name'       => _x( 'Presentation', 'Post Type Singular Name', 'wp_valuexvail' ),
'menu_name'           => __( 'Presentation', 'wp_valuexvail' ),
'parent_item_colon'   => __( 'Parent Presentation', 'wp_valuexvail' ),
'all_items'           => __( 'All Presentation', 'wp_valuexvail' ),
'view_item'           => __( 'View Presentation', 'wp_valuexvail' ),
'add_new_item'        => __( 'Add New Presentation', 'wp_valuexvail' ),
'add_new'             => __( 'Add New', 'wp_valuexvail' ),
'edit_item'           => __( 'Edit Presentation', 'wp_valuexvail' ),
'update_item'         => __( 'Update Presentation', 'wp_valuexvail' ),
'search_items'        => __( 'Search Presentation', 'wp_valuexvail' ),
'not_found'           => __( 'Not Found', 'wp_valuexvail' ),
'not_found_in_trash'  => __( 'Not found in Trash', 'wp_valuexvail' ),
);
// Set other options for Custom Post Type
$args = array(
'label'               => __( 'presentation', 'wp_valuexvail' ),
'description'         => __( 'Presentation', 'wp_valuexvail' ),
'labels'              => $labels,
'supports'            => array( 'title', 'editor', 'author', 'thumbnail', 'custom-fields', ),
'hierarchical'        => false,
'public'              => true,
'show_ui'             => true,
'show_in_menu'        => true,
'show_in_nav_menus'   => true,
'show_in_admin_bar'   => true,
'menu_position'       => 5,
'can_export'          => true,
'has_archive'         => true,
'exclude_from_search' => false,
'publicly_queryable'  => true,
'capability_type'     => 'page',
// This is where we add taxonomies to our CPT
'taxonomies'          => array( 'category' ),
);
// Registering your Custom Post Type
register_post_type( 'presentation', $args );
}
add_action( 'init', 'custom_post_type', 0 );