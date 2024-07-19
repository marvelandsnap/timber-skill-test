<?php
/**
 * ElevateX Advanced Custom Fields hooks.
 *
 * @package    WordPress
 * @subpackage ElevateX
 * @author     Marvel & Snap
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://www.marvelandsnap.com
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

/**
 * Allows ACF to disable the default WordPress custom fields metabox.
 */
add_filter( 'acf/settings/remove_wp_meta_box', '__return_true' );

/**
 * Provides the path to which ACF should save its Local JSON.
 *
 * @link https://www.advancedcustomfields.com/resources/local-json/
 *
 * @param string $path Path to acf-json directory.
 *
 * @return string $path Path to acf-json directory.
 */
function elevatex_acf_save_json( $path ) {
	$path = get_stylesheet_directory() . '/acf-json';
	return $path;
}
add_filter( 'acf/settings/save_json', 'elevatex_acf_save_json' );

/**
 * Provides the path from which ACF should load its Local JSON.
 *
 * @link https://www.advancedcustomfields.com/resources/local-json/
 *
 * @param array $paths Path(s) to acf-json directory.
 *
 * @return string $paths Path(s) to acf-json directory.
 */
function elevatex_acf_load_json( $paths ) {
	unset( $paths[0] );
	$paths[] = get_stylesheet_directory() . '/acf-json';
	return $paths;
}
add_filter( 'acf/settings/load_json', 'elevatex_acf_load_json' );
