<?php
//custom logo
add_action( 'after_setup_theme', 'custom_logo_customizer' );
function custom_logo_customizer() {
    add_theme_support( 'custom-logo', [
        'height'      => 190,
        'width'       => 190,
        'flex-width'  => false,
        'flex-height' => false,
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
    wp_enqueue_script('theme-core', get_stylesheet_directory_uri().'/assets/js/core.min.js', array('jquery'));
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