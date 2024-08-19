<?php
/**
 * ElevateX_Theme class definition.
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

require_once __DIR__ . '/class-elevatex-theme-base.php';

if ( ! class_exists( 'ElevateX_Theme' ) ) {

	/**
	 * ElevateX_Theme class definition.
	 */
	class ElevateX_Theme extends ElevateX_Theme_Base {

		/**
		 * ElevateX_Theme class constructor.
		 */
		public function __construct() {

			$options = array();

			/**
			 * Construct the ElevateX_Theme_Base parent class, overriding its
			 * default options if necessary. Please refer to that class's
			 * definition and constructor for more information.
			 */
			parent::__construct( $options );

			/**
			 * Theme fundamentals.
			 */
			add_action( 'after_setup_theme', array( $this, 'theme_supports' ) );
			add_action( 'after_setup_theme', array( $this, 'register_custom_image_sizes' ) );
			add_action( 'after_setup_theme', array( $this, 'register_acf_options_pages' ) );

			/**
			 * Register custom post types and taxonomies.
			 */
			add_action( 'init', array( $this, 'register_custom_post_types' ) );
			add_action( 'init', array( $this, 'register_custom_taxonomies' ) );

			/**
			 * Enqueue stylesheets and scripts.
			 */
			add_action( 'wp_enqueue_scripts', array( $this, 'enqueue_above_fold_assets' ) );
			add_action( 'wp_footer', array( $this, 'enqueue_below_fold_assets' ) );
			add_action( 'login_enqueue_scripts', array( $this, 'enqueue_login_assets' ) );
			add_action( 'admin_enqueue_scripts', array( $this, 'enqueue_dashboard_assets' ) );

			/**
			 * Extend Timber's global context.
			 */
			add_filter( 'timber/context', array( $this, 'extend_timber_context' ), 10, 1 );
		}

		/**
		 * Add theme supports.
		 */
		public function theme_supports() {
			/*
			* Enable plugins and themes to manage the document title tag.
			*/
			add_theme_support( 'title-tag' );

			/*
			* Add support for Post Thumbnails (featured images).
			*
			* @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
			*/
			add_theme_support( 'post-thumbnails' );

			/*
			* Enable HTML5 markup for core elements.
			*/
			add_theme_support(
				'html5',
				array( 'comment-list', 'comment-form', 'search-form', 'gallery', 'caption', 'style', 'script' )
			);
		}

		/**
		 * Register custom image sizes to follow theme breakpoints. Note that
		 * some theme breakpoints may be covered by WordPress's default image
		 * sizes (medium_large = 768x, large = 1024x, etc.).
		 *
		 * @link https://developer.wordpress.org/reference/functions/add_image_size/
		 */
		public function register_custom_image_sizes() {
		}

		/**
		 * Register ACF options page(s).
		 */
		public function register_acf_options_pages() {
		}

		/**
		 * Register custom post types.
		 *
		 * @link https://codex.wordpress.org/Function_Reference/register_post_type
		 */
		public function register_custom_post_types() {
		}

		/**
		 * Register custom taxonomies.
		 *
		 * Reference : https://codex.wordpress.org/Function_Reference/register_post_type
		 */
		public function register_custom_taxonomies() {
		}

		/**
		 * Enqueue above-fold assets (stylesheets, scripts, etc.).
		 */
		public function enqueue_above_fold_assets() {

			// phpcs:disable

			wp_enqueue_style( 'elevatex-google-fonts', 'https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Roboto+Mono:ital,wght@0,100..700;1,100..700&display=swap' );

			wp_enqueue_style( 'elevatex-theme', get_stylesheet_directory_uri() . '/' . $this->get_asset_version( 'dist/css/theme.css' ) );

			wp_enqueue_script( 'elevatex-above-fold', get_stylesheet_directory_uri() . '/' . $this->get_asset_version( 'dist/js/above-fold.js' ), array( 'jquery' ), null, true );

			// phpcs:enable
		}

		/**
		 * Enqueue below-fold assets (stylesheets, scripts, etc.).
		 */
		public function enqueue_below_fold_assets() {

			// phpcs:disable

			wp_enqueue_script( 'elevatex-below-fold', get_stylesheet_directory_uri() . '/' . $this->get_asset_version( 'dist/js/below-fold.js' ), array( 'jquery' ), null, true );

			// phpcs:enable
		}

		/**
		 * Enqueue login assets (stylesheets, scripts, etc.).
		 */
		public function enqueue_login_assets() {

			// phpcs:disable

			wp_enqueue_style( 'elevatex-login', get_stylesheet_directory_uri() . '/' . $this->get_asset_version( 'dist/css/login.css' ), null, null );

			// phpcs:enable
		}

		/**
		 * Enqueue dashboard assets (stylesheets, scripts, etc.).
		 */
		public function enqueue_dashboard_assets() {

			// phpcs:disable

			wp_enqueue_style( 'elevatex-dashboard', get_stylesheet_directory_uri() . '/' . $this->get_asset_version( 'dist/css/dashboard.css' ), null, null );

			// phpcs:enable
		}

		/**
		 * Extend Timber's global context. Context for specific
		 * templates should be added in their respective files.
		 *
		 * @param array $context Timber's global context.
		 *
		 * @return array $context
		 */
		public function extend_timber_context( $context ) {
			return $context;
		}
	}
}
