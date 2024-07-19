<?php
/**
 * ElevateX functions.
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

/* Composer ******************************************************************/

require_once __DIR__ . '/vendor/autoload.php';

/* Timber ********************************************************************/

Timber\Timber::init();

Timber::$dirname = 'twig';

/* ElevateX ******************************************************************/

require_once __DIR__ . '/inc/elevatex/class-elevatex-theme.php';

new ElevateX_Theme();

/* ...and the rest ***********************************************************/

require_once __DIR__ . '/inc/hooks/advanced-custom-fields.php';
