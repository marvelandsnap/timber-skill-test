<?php
/**
 * ElevateX client script hooks.
 *
 * Scripts may need to be enqueued or printed in different locations,
 * so hooks are provided for most cases. \ElevateX\Theme::is_pantheon()
 * may be used to make scripts conditional for different environments.
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
 * Enqueue client scripts.
 *
 * @link https://developer.wordpress.org/reference/hooks/wp_enqueue_scripts/
 */
function elevatex_enqueue_client_scripts() {
	// Enqueue environment-agnostic scripts here.

	if ( \ElevateX\Theme::is_pantheon( 'live' ) ) {
		// Enqueue live environment-specific scripts here.
	}
}
add_action( 'wp_enqueue_scripts', 'elevatex_enqueue_client_scripts' );

/**
 * Print client scripts.
 *
 * @link https://developer.wordpress.org/reference/hooks/wp_print_scripts/
 */
function elevatex_print_client_scripts() {

	if ( ! is_admin() ) {
		// Print environment-agnostic scripts here.

		if ( \ElevateX\Theme::is_pantheon( 'live' ) ) {
			// Print live environment-specific scripts here.
		}
	}
}
add_action( 'wp_print_scripts', 'elevatex_print_client_scripts' );

/**
 * Hook client scripts into wp_body_open (e.g. noscripts).
 *
 * @link https://developer.wordpress.org/reference/hooks/wp_body_open/
 */
function elevatex_body_open_client_scripts() {
	// Hook environment-agnostic scripts here.

	if ( \ElevateX\Theme::is_pantheon( 'live' ) ) {
		// Hook live environment-specific scripts here.
	}
}
add_action( 'wp_body_open', 'elevatex_body_open_client_scripts' );
