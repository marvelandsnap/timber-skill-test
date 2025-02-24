# ElevateX

A theme designed to help lift your website to new heights. Made with ♥ in Ottawa, Canada.

![](https://img.shields.io/badge/MADE%20BY-Marvel%20&%20Snap-716EB1?style=for-the-badge&labelColor=1B1A28 "Made by Marvel & Snap") ![](https://img.shields.io/badge/node->=22.1.0-417e38?style=for-the-badge&labelColor=1B1A28 "node >=22.1.0") ![](https://img.shields.io/badge/npm->=10.7.0-bc3433?style=for-the-badge&labelColor=1B1A28 "npm >=10.7.0") ![](https://img.shields.io/badge/License-MIT-97CA00?style=for-the-badge&labelColor=1B1A28 "Licensed under MIT")

## Table of contents

- [Development and production](#development-and-production)
- [Theme structure](#theme-structure)
- [Bugs and feature requests](#bugs-and-feature-requests)
- [Creators](#creators)

## Development and production

### Prerequisites

1. Install `node` and `npm` system-wide. (See `package.json` for their required versions.)
1. Install the `gulp-cli` package globally.
1. Run `npm install` within the theme.

### Development

1. Run `gulp` within the theme to run the development task, which watches for changes and serves your `localhost` URL using live reloading via Browsersync. (See `gulpfile.babel.js` for more information.)

### Production

1. Run `gulp build --prod` within the theme to run the production task, which versions the assets and creates `service-worker.js` in the root folder of the project (alongside `wp-config.php`).

### `dist`

Regardless of which task you run, the resulting compiled, linted and minified assets are output to the `dist` directory, overwriting the same assets that already exist there; versioned (when building for production); and, finally, recorded in `rev-manifest.json`, which is used by `\ElevateX\Theme::get_asset_version()` as the source of truth for their paths and filenames.

## Theme structure

<table>
  <thead>
    <tr>
      <th>Path</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td valign="top" style="white-space: nowrap;"><code>acf-json</code></td>
      <td>Advanced Custom Fields <a href="https://www.advancedcustomfields.com/resources/local-json/">Local JSON</a> synchronization directory. (See <code>hooks/advanced-custom-fields.php</code> for more information.)</td>
    </tr>
    <tr>
      <td valign="top" style="white-space: nowrap;"><code>dist</code></td>
      <td>Distribution (production) assets, compiled from <code>src</code>.</td>
    </tr>
    <tr>
      <td valign="top" style="white-space: nowrap;"><code>img</code></td>
      <td>Images (<code>webp</code> or <code>svg</code> only, please).</td>
    </tr>
    <tr>
      <td valign="top" style="white-space: nowrap;"><code>inc</code></td>
      <td>Included/required files (classes, functions, hooks, etc.).</td>
    </tr>
    <tr>
      <td valign="top" style="white-space: nowrap;"><code>inc/elevatex</code></td>
      <td>Classes for ElevateX, including <code>\ElevateX\Theme</code> (i.e. this theme's primary class).</td>
    </tr>
    <tr>
      <td valign="top" style="white-space: nowrap;"><code>inc/hooks</code></td>
      <td>Functions and hooks for everything else (accessibility, Advanced Custom Fields, etc.).</td>
    </tr>
    <tr>
      <td valign="top" style="white-space: nowrap;"><code>node_modules</code></td>
      <td>Installed <code>npm</code> packages.</td>
    </tr>
    <tr>
      <td valign="top" style="white-space: nowrap;"><code>src</code></td>
      <td>Source (development) assets, compiled to <code>dist</code>.</td>
    </tr>
    <tr>
      <td valign="top" style="white-space: nowrap;"><code>.babelrc</code></td>
      <td>Babel configuration for ES6 support.</td>
    </tr>
    <tr>
      <td valign="top" style="white-space: nowrap;"><code>.eslintrc.json</code></td>
      <td>ESLint configuration for identifying JavaScript errors.</td>
    </tr>
    <tr>
      <td valign="top" style="white-space: nowrap;"><code>.gitignore</code></td>
      <td>Specifies intentionally untracked files that Git should ignore.</td>
    </tr>
    <tr>
      <td valign="top" style="white-space: nowrap;"><code>.npmrc</code></td>
      <td>Specifies how <code>npm</code> should behave when running commands.</td>
    </tr>
    <tr>
      <td valign="top" style="white-space: nowrap;"><code>functions.php</code></td>
      <td>Main functions file for the theme.</td>
    </tr>
    <tr>
      <td valign="top" style="white-space: nowrap;"><code>gulpfile.babel.js</code></td>
      <td>Gulp tasks for developing and building the theme.</td>
    </tr>
    <tr>
      <td valign="top" style="white-space: nowrap;"><code>package-lock.json</code></td>
      <td>Installed <code>npm</code> package versions.</td>
    </tr>
    <tr>
      <td valign="top" style="white-space: nowrap;"><code>package.json</code></td>
      <td>Required <code>npm</code> package versions, configuration, and scripts.</td>
    </tr>
    <tr>
      <td valign="top" style="white-space: nowrap;"><code>README.md</code></td>
      <td>You are here.</td>
    </tr>
    <tr>
      <td valign="top" style="white-space: nowrap;"><code>screenshot.png</code></td>
      <td>The theme's screenshot.</td>
    </tr>
    <tr>
      <td valign="top" style="white-space: nowrap;"><code>style.css</code></td>
      <td>The theme's metadata, including its name. Note that the theme's <em>styles</em> are compiled to a stylesheet located in <code>dist/css</code>.</td>
    </tr>
  </tbody>
</table>

## Bugs and feature requests

Have a bug or a feature request? If you are currently on one of our WebOps plans, you can submit your request to our [support team](mailto:support@marvelandsnap.com).

## Creators

[![](https://secure.gravatar.com/avatar/7386273d774b0a2be2c6c107e52b5fdf?size=100 "Marvel & Snap")](https://www.marvelandsnap.com)

[Marvel & Snap](https://www.marvelandsnap.com) provides integrated, enterprise-grade web operations services that enable marketers to create, deliver, and manage more agile and effective digital experiences.