<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'valuexvail' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'Mh;YYb+/{7zDk(,_[T|EQw.;?J} mTOq|?Trov01!o=|@#%|/s{EqG?XHtod0uA8' );
define( 'SECURE_AUTH_KEY',  '@acQ[C [9bWq<>p;ZJ&<?^(AKCLUG|m@i|nQJ=iO-2>mx2^rm365)6h/48,F{Z$?' );
define( 'LOGGED_IN_KEY',    'FCq@-4##A7B0<M2#qayJw2;q6I#+wQO2a!>:@f_GLgiCKp&3_m59{7_kN0!$TorQ' );
define( 'NONCE_KEY',        '=x)Tt`[UeIku!u_#s9s:`^}Lbs-h(8D5;1#ITHBf#Sr=@w`-7M)(o|$$@#/|@woO' );
define( 'AUTH_SALT',        ':*C|u@;1GF|W4QC2,mg1oIYyo%rNs;jv3MrZ8qDGbb21P:)shR(I,KboA. 2=&=4' );
define( 'SECURE_AUTH_SALT', 'r}zvakoR,TJw#,r<k.uW96jm%>XBVe.l-7;n{L]PC_6@j}vH$+XQN0}l!)aQTww*' );
define( 'LOGGED_IN_SALT',   '00B#UM#]jtSW@c)Ol3mq`Rs)=nj,oJn/2~:ccxu?Yp z;y7qTYuARPv9X<+^znOQ' );
define( 'NONCE_SALT',       'WZOc2>dWkNu/*ZVA;U~uc}3.Ui}kr+6`NhKj*!?gUOU!CjL$g5(@G^ HT<Lff$*I' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );
define( 'WP_DEBUG_LOG', true );
define( 'WP_DEBUG_DISPLAY', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
