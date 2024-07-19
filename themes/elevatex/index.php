<?php
/**
 * ElevateX index template.
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

$context = Timber::context();

Timber::render( 'index.twig', $context );
