# Welcome to the Marvel & Snap Skill Test!

Thank you for taking the time to participate in this skill test. We are excited to see your skills in action and to get a glimpse of your expertise in WordPress development. **Your task is to transform the provided Figma design and accompanying assets into a fully functional, responsive, and standards-compliant WordPress landing page.**

## About the Skill Test

As part of this test, you will:

- Demonstrate your overall knowledge of:
    - WordPress and Timber theming, including usage of template tags, actions, filters, sanitization, localization, etc.;
    - writing custom CSS and JavaScript to accurately reproduce the provided design, including responsiveness and interactivity;
    - DRY principles and git best practices.
- Use the provided folder and file structure and `gulp` tasks.
- Not spend more than six (6) hours on the test. Don’t worry if you can’t complete it - our goal is to see what you *can* achieve within a limited timeframe.

## About the Design

- Refer to Figma for the complete design: https://www.figma.com/design/dK4JW1lhMt5821FBERznKW/M%2526S-Skill-Test
- Refer to the `design` subfolder of the `timber-skill-test` repository for additional PDF mockups and the raw assets you will need to complete the template.
    - **Note:** The PDF mockups are provided as a convenience - they are identical to the Figma design.
- Use Google Fonts to incorporate [Montserrat](https://fonts.google.com/specimen/Montserrat) and [Roboto Mono](https://fonts.google.com/specimen/Roboto+Mono) into your template.

## About the ElevateX theme

Your skill test will incorporate a “bare” version of our ElevateX starter theme, which includes our preferred folder and file structure, Timber, and `gulp` tasks for compiling styles and scripts for development and production.

## Getting Started

1. Accept our invitation to the `timber-skill-test` repository.
2. Clone the `BRANCHNAME` branch of the `timber-skill-test` repository: `git clone -b BRANCHNAME https://github.com/marvelandsnap/timber-skill-test.git`
3. Read the following requirements and refer to `themes/elevatex/README.md` to begin development.
4. Commit and push your work to the `BRANCHNAME` branch, including a final export of your working database and `wp-content/uploads` folder.

## Requirements

### PHP

- Install [PHP_CodeSniffer](https://github.com/squizlabs/PHP_CodeSniffer), [WordPress Coding Standards](https://github.com/WordPress/WordPress-Coding-Standards), and the [phpcs extension for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=ikappas.phpcs), and use these to ensure your code is valid.

### Custom Post Types and Taxonomies

- Create a custom post type (`team_member`) and custom taxonomy (`department`) to represent and organize the Team Members.
- Use Advanced Custom Fields to create a field group for Team Members. This field group should only consist of fields representing additional data for each team member (e.g. their resume) that cannot be represented by WordPress’s default post settings (title, content, featured image, etc.).
    - **Note:** Your custom field groups will be automatically synced to `themes/elevatex/acf-json` - you do not need to manually export them.

### HTML

- Ensure your HTML is valid, semantic and accessible (e.g. using `aria` attributes where appropriate).

### CSS

- Write your CSS using SCSS, which will be compiled using our theme’s `gulp` tasks.
- Follow [BEM](https://getbem.com/) naming conventions.
- Demonstrate usage of:
    - modern CSS techniques such as Flexbox, Grid, `clamp`, etc.;
    - SCSS variables and at least one function or mixin;
    - responsive design techniques.

### JavaScript

- Write your JavaScript using ES6, which will be compiled using our theme’s `gulp` tasks.
- Demonstrate combined usage of *both* ES6 and jQuery (interactivity) to:
    - filter the `team_member` custom post type by the `department` custom taxonomy using Ajax, and display a “no results found” message where appropriate;
    - display team members’ biographies in a styled popup;
    - add simple animations to the page, e.g. fading in elements as they enter the viewport. You can use jQuery’s animation methods or apply classes containing your own CSS animations.

### Git

- Ensure your git commit(s) are logical and accompanied by clear, concise messages.

## Dos and Don’ts

### Please do:

- Explore our `ElevateX_Theme` class and use its predefined hooks for registering custom post types and taxonomies and extending Timber’s global context.
- Use `gulp` to build for production prior to your final submission.
- Export your working database and `wp-content/uploads` folder, and commit and push them as part of your final submission.
- Ask questions! If the requirements of the test are unclear or you have any issues completing or submitting it, please email [kbest@marvelandsnap.com](mailto:kbest@marvelandsnap.com) and CC [tmcquaid@marvelandsnap.com](mailto:tmcquaid@marvelandsnap.com).

### Please don’t:

- Install or use any additional frameworks, libraries, page builders or plugins that aren’t already included with WordPress core or this package, including Gutenberg, Bootstrap, Tailwind, etc. jQuery, Timber and Advanced Custom Fields should be all you need.
- Pull from or push to any branches of the `timber-skill-test` repository *except* for the `BRANCHNAME` branch we have created for you.

## Creators

[![](https://secure.gravatar.com/avatar/7386273d774b0a2be2c6c107e52b5fdf?size=100 "Marvel & Snap")](https://www.marvelandsnap.com)

[Marvel & Snap](https://www.marvelandsnap.com) provides integrated, enterprise-grade web operations services that enable marketers to create, deliver, and manage more agile and effective digital experiences.