<?php
/**
 * ElevateX\Foundation class definition.
 *
 * DO NOT MODIFY THIS FILE! It is intended to be the same across all
 * of our ElevateX-based themes so that we can update it with extra
 * improvements in the future. Any customizations or overrides on a
 * per-theme basis should be made within the ElevateX\Theme class.
 *
 * @package    WordPress
 * @subpackage ElevateX
 * @author     Marvel & Snap
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://www.marvelandsnap.com
 */

namespace ElevateX;

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

if ( ! class_exists( '\ElevateX\Foundation' ) ) {

	/**
	 * ElevateX\Foundation class definition.
	 */
	class Foundation {

		/**
		 * Array of default class options.
		 *
		 * @var $default_options
		 */
		private $default_options = array(
			'disable_block_editor'              => true,
			'defer_scripts'                     => array(
				'exceptions' => array(
					'wp-includes/js',
					'wp-admin/js',
				),
			),
			'disable_wp_generator_meta_tag'     => true,
			'block_user_enumeration'            => true,
			'disable_acf_dashboard_on_pantheon' => true,
		);

		/**
		 * Array of actual class options.
		 *
		 * @var $options
		 */
		protected $options = array();

		/**
		 * ElevateX\Foundation class constructor.
		 *
		 * @param array $options Overridden class options from ElevateX_Theme.
		 */
		public function __construct( $options = array() ) {

			$this->options = array_merge( $this->default_options, $options );

			if ( $this->options['disable_block_editor'] ) :
				add_filter( 'use_block_editor_for_post', '__return_false', 10 );
				add_action( 'wp_enqueue_scripts', array( $this, 'disable_block_styles' ), 20 );
				remove_action( 'wp_enqueue_scripts', 'wp_enqueue_global_styles' );
				remove_action( 'wp_body_open', 'wp_global_styles_render_svg_filters' );
			endif;

			if ( $this->options['defer_scripts'] ) :
				add_filter( 'script_loader_tag', array( $this, 'defer_scripts' ), 10, 3 );
			endif;

			if ( $this->options['disable_wp_generator_meta_tag'] ) :
				remove_action( 'wp_head', 'wp_generator' );
			endif;

			if ( $this->options['block_user_enumeration'] ) :
				$this->block_user_enumeration();
			endif;

			if ( $this->options['disable_acf_dashboard_on_pantheon'] ) :
				add_action( 'admin_init', array( $this, 'disable_acf_dashboard_on_pantheon' ) );
			endif;

			add_filter( 'upload_mimes', array( $this, 'allow_svg_uploads' ), 10, 1 );

			$this->customize_login_form();
		}

		/**
		 * Disable core block library styles.
		 */
		public function disable_block_styles() {
			wp_dequeue_style( 'wp-block-library' );
			wp_dequeue_style( 'wp-block-library-theme' );
			wp_dequeue_style( 'wc-blocks-style' );
		}

		/**
		 * Defer loading of JavaScripts, including from WordPress core and plugins.
		 * If a script's $handle or $src resembles any of the values included in
		 * $this->options['defer_scripts']['exceptions'], it will not be deferred.
		 *
		 * @link https://developer.wordpress.org/reference/hooks/script_loader_tag/
		 *
		 * @param string $tag    The <script /> tag for the enqueued script.
		 * @param string $handle The script's registered handle.
		 * @param string $src    The script's source URL.
		 *
		 * @return string $tag The <script /> tag for the enqueued script.
		 */
		public function defer_scripts( $tag, $handle, $src ) {

			$defer = true;

			if ( is_admin() || false === strpos( $src, '.js' ) ) {

				$defer = false;
			}

			$exceptions = $this->options['defer_scripts']['exceptions'] ?? array();

			if ( ! empty( $exceptions ) ) {

				foreach ( $exceptions as $exception ) {

					if ( false !== strpos( $handle, $exception ) || false !== strpos( $src, $exception ) ) {

						$defer = false;
						break;
					}
				}
			}

			if ( false === $defer ) {

				return $tag;
			}

			return str_replace( ' src', ' defer src', $tag );
		}

		/**
		 * Block user enumeration scans.
		 *
		 * @link https://perishablepress.com/stop-user-enumeration-wordpress/
		 */
		public function block_user_enumeration() {

			if ( ! is_admin() ) {

				if ( isset( $_SERVER['QUERY_STRING'] ) ) {
					$query_string = sanitize_text_field( wp_unslash( $_SERVER['QUERY_STRING'] ) );
					if ( preg_match( '/author=([0-9]*)/i', $query_string ) ) {
						die();
					}
				}

				add_filter(
					'redirect_canonical',
					function ( $redirect, $request ) {
						if ( preg_match( '/\?author=([0-9]*)(\/*)/i', $request ) ) {
							die();
						} else {
							return $redirect;
						}
					},
					10,
					2
				);
			}
		}

		/**
		 * Disable Advanced Custom Fields in the Dashboard on
		 * Pantheon (except for the auto-update environment).
		 */
		public function disable_acf_dashboard_on_pantheon() {

			if ( self::is_pantheon() && ! wp_doing_ajax() ) {

				if ( isset( $_GET['post_type'] ) && str_starts_with( $_GET['post_type'], 'acf-' ) && ( ! isset( $_GET['page'] ) || 'acf-settings-updates' !== $_GET['page'] ) ) { // phpcs:ignore

					$updates_link = '<a href="/wp-admin/edit.php?post_type=acf-field-group&page=acf-settings-updates">Updates</a>';

					$support_link = '<a href="mailto:support@marvelandsnap.com" target="_blank">support@marvelandsnap.com</a>';

					$error = sprintf(
						// translators: %1$s = $updates_link; %2$s = $support_link.
						__( 'Only Advanced Custom Fields\' %1$s page may be accessed on Pantheon. If you believe this is an error, please contact %2$s.', 'elevatex' ),
						$updates_link,
						$support_link
					);

					wp_die( wp_kses_post( $error ) );
				}
			}
		}

		/**
		 * Allow SVG uploads in the Media Library.
		 *
		 * @link https://developer.wordpress.org/reference/hooks/upload_mimes/
		 *
		 * @param array $t Mime types keyed by the file extension regex corresponding to those types.
		 *
		 * @return array
		 */
		public function allow_svg_uploads( $t ) {
			return array_merge(
				$t,
				array(
					'svg' => 'image/svg+xml',
				)
			);
		}

		/**
		 * Customize login form's header URL and text.
		 */
		public function customize_login_form() {

			add_filter(
				'login_headerurl',
				function () {
					return home_url();
				}
			);

			add_filter(
				'login_headertext',
				function () {
					return get_bloginfo( 'name' );
				}
			);
		}

		/**
		 * Static method to determine if running on Pantheon,
		 * and (optionally) in a specific environment.
		 *
		 * @param string|null $env Pantheon environment (optional).
		 *
		 * @return string|null Pantheon environment (if it exists) or null.
		 */
		public static function is_pantheon( $env = null ) {

			if ( isset( $_ENV['PANTHEON_ENVIRONMENT'] ) ) {

				if ( is_string( $env ) && $_ENV['PANTHEON_ENVIRONMENT'] !== $env ) {

					return null;
				}

				return $_ENV['PANTHEON_ENVIRONMENT']; // phpcs:ignore
			} else {

				return null;
			}
		}

		/**
		 * Static method for generic debugging.
		 *
		 * @param mixed ...$things Things to debug.
		 */
		public static function debug( ...$things ) {

			if ( ! self::is_pantheon() ) {

				foreach ( $things as $thing ) {

					ob_start();
					var_dump( $thing );          // phpcs:ignore
					error_log( ob_get_clean() ); // phpcs:ignore
				}
			}
		}

		/**
		 * Get the hashed filename for a given static asset from the manifest.
		 *
		 * @param string $filename The name of the file to get the version.
		 * @throws \Exception When no file is present.
		 */
		public function get_asset_version( $filename ) {

			$manifest_path = get_stylesheet_directory() . '/dist/rev-manifest.json';

			if ( ! file_exists( $manifest_path ) ) {

				// If the manifest doesn't exist, return the original file.
				return $filename;
			} else {

				// Check to make sure the path that was sent is in the manifest.

				// phpcs:disable
				$paths = json_decode( file_get_contents( $manifest_path ), true );
				if ( ! isset( $paths[ $filename ] ) ) {
					throw new \Exception( sprintf( 'There is no file "%s" in the version manifest!', $filename ) );
				}
				// phpcs:enable

				return $paths[ $filename ];
			}
		}
	}
}
