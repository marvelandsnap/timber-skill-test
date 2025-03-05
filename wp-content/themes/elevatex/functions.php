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

require_once __DIR__ . '/inc/elevatex/class-theme.php';

new \ElevateX\Theme();

/* ...and the rest ***********************************************************/

require_once __DIR__ . '/inc/hooks/advanced-custom-fields.php';

// Iurii's comment to the add_filter code section:

// I do tried to make it work via /inc/elevatex/class-theme.php file by using extend_timber_context function, but most likely I do something wrong. I just need some good examples of your daily projects to follow your guidelines.

// I'm not sure if this solution follows best practices, but this is my first experience working with Timber, and passing variables is something that caused some difficulty. I'm sure that if I had an example of good code or a reference, it would have helped me write a more elegant solution. Nevertheless, this code works and was partially taken and adapted from StackOverflow.

// Surprisingly, the biggest challenge was rendering all team members. That's why the solution has some convertions and looks like this.

// TODO: read Timber documentation and try to make it work via /inc/elevatex/class-theme.php file by using extend_timber_context function
add_filter('timber/context', function($context) {
    $departments = Timber::get_terms('department');
    $all_team_members = [];

    foreach ($departments as $department) {
        $args = array(
            'post_type' => 'team-member',
            'tax_query' => array(
                array(
                    'taxonomy' => 'department',
                    'field'    => 'term_id',
                    'terms'    => $department->term_id,
                ),
            ),
        );

        $team_members = Timber::get_posts($args);

        // Convert the Timber\PostQuery object to an array
        $team_members_array = iterator_to_array($team_members);

        // Add the department name to each team member
        foreach ($team_members_array as $team_member) {
            $team_member->department_name = $department->name;
            $team_member->featured_image_url = get_the_post_thumbnail_url($team_member->ID, 'full');
        }

        // Add team members to the department object
        $department->team_members = $team_members_array;

        $all_team_members = array_merge($all_team_members, $team_members_array);
    }

    $context['departments'] = $departments;
    $context['all_team_members'] = $all_team_members;

    return $context;
});
