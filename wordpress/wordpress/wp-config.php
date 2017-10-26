<?php
/** 
 * Configuración básica de WordPress.
 *
 * Este archivo contiene las siguientes configuraciones: ajustes de MySQL, prefijo de tablas,
 * claves secretas, idioma de WordPress y ABSPATH. Para obtener más información,
 * visita la página del Codex{@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} . Los ajustes de MySQL te los proporcionará tu proveedor de alojamiento web.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** Ajustes de MySQL. Solicita estos datos a tu proveedor de alojamiento web. ** //
/** El nombre de tu base de datos de WordPress */
define('DB_NAME', 'prestaShop');

/** Tu nombre de usuario de MySQL */
define('DB_USER', 'vortex');

/** Tu contraseña de MySQL */
define('DB_PASSWORD', '1234');

/** Host de MySQL (es muy probable que no necesites cambiarlo) */
define('DB_HOST', 'localhost');

/** Codificación de caracteres para la base de datos. */
define('DB_CHARSET', 'utf8mb4');

/** Cotejamiento de la base de datos. No lo modifiques si tienes dudas. */
define('DB_COLLATE', '');

/**#@+
 * Claves únicas de autentificación.
 *
 * Define cada clave secreta con una frase aleatoria distinta.
 * Puedes generarlas usando el {@link https://api.wordpress.org/secret-key/1.1/salt/ servicio de claves secretas de WordPress}
 * Puedes cambiar las claves en cualquier momento para invalidar todas las cookies existentes. Esto forzará a todos los usuarios a volver a hacer login.
 *
 * @since 2.6.0
 */
define('AUTH_KEY', 'q,)s~1A2ds}UL|{w)MrG@3Op 3._PZ%pL ufDOx_HWF~+z#PU/0vmM]a/esEMXU<');
define('SECURE_AUTH_KEY', 'K(t6]S1EYRSyFf$MLf] x/,[2z8Vc3KIQH eO|V9N[^#5b9Eog~JqTe{2v?m)u3q');
define('LOGGED_IN_KEY', 'n)/zs5(Kgh6/>/g2|UjT<keDfacEN3X#>:=`sjLUMSjO4DE|[~1oI}SJhteP``RX');
define('NONCE_KEY', 'Mj%IKYGYD-H+!o>tZ`!mR!xWPE=dUtU~5*Y*tz>,xr>$2iz=[izduOrKCv4H(3+y');
define('AUTH_SALT', 'W+2@, F=l|h!jvBej__/}cWQ4F_+KF!./l:8hfu%i[q:Q][2[iCMtQ=:j|cGL;kE');
define('SECURE_AUTH_SALT', ']V}$@V|@5o`I8Qks#3ykg6$uey5Ta6}1|KN] f% gj+4p4zLQ>8c0~~*=yMOh/+u');
define('LOGGED_IN_SALT', '@dYWwpP*KVy1:9*jZ3=ENVdSsgPXPrll<Sr 1JYo-n* Vb-73=309SP1d_~Z]Dcx');
define('NONCE_SALT', '?`B_Oa,5~oc.oe_>NCb{sw,,Ef(qML$+h?oAZ]awH:Jfkqa!-OpK|ay.gaot H?9');

/**#@-*/

/**
 * Prefijo de la base de datos de WordPress.
 *
 * Cambia el prefijo si deseas instalar multiples blogs en una sola base de datos.
 * Emplea solo números, letras y guión bajo.
 */
$table_prefix  = 'wp_';


/**
 * Para desarrolladores: modo debug de WordPress.
 *
 * Cambia esto a true para activar la muestra de avisos durante el desarrollo.
 * Se recomienda encarecidamente a los desarrolladores de temas y plugins que usen WP_DEBUG
 * en sus entornos de desarrollo.
 */
define('WP_DEBUG', false);

/* ¡Eso es todo, deja de editar! Feliz blogging */

/** WordPress absolute path to the Wordpress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

