const PRODUCTION = yargs(process.argv) ?? false;

import { src, dest, watch, series, parallel } from 'gulp';
import autoprefixer from 'autoprefixer';
import cleanCss from 'gulp-clean-css';
import { deleteAsync } from 'del';
import eslint from 'gulp-eslint';
import gulpif from 'gulp-if';
import named from 'vinyl-named-with-path';
import postcss from 'gulp-postcss';
import rev from 'gulp-rev';
import rename from 'gulp-rename';
import sassGlob from 'gulp-sass-glob';
import sourcemaps from 'gulp-sourcemaps';
import webpack from 'webpack-stream';
import yargs from 'yargs';

import * as dartSass from 'sass';
import gulpSass from 'gulp-sass';
const sass = gulpSass(dartSass);

import browserSync from 'browser-sync';
const server = browserSync.create();

/* THEME STYLES **************************************************************/

export const styles = () => {
	return src(['src/scss/*.scss'], {base: './src/scss/', allowEmpty: true})
    .pipe(gulpif(!PRODUCTION, sourcemaps.init()))
    .pipe(sassGlob())
    .pipe(sass({
      includePaths: ['node_modules']
    }).on('error', sass.logError))
    .pipe(gulpif(PRODUCTION, postcss([ autoprefixer ])))
    .pipe(gulpif(PRODUCTION, cleanCss({compatibility:'*', level:1})))
    .pipe(gulpif(!PRODUCTION, sourcemaps.write()))
    .pipe(gulpif(PRODUCTION, rev()))
    .pipe(dest('dist/css'))
    .pipe(gulpif(PRODUCTION, rename((path) => {
      return {
        dirname: 'dist/css/' + path.dirname,
        basename: path.basename,
        extname: path.extname,
      }
    })))
    .pipe(gulpif(PRODUCTION, rev.manifest('dist/rev-manifest.json', {base: process.cwd() + '/dist', merge: true})))
    .pipe(gulpif(PRODUCTION, dest('dist')));
};

/* SCRIPT LINTING ************************************************************/

export const lint = () => {
  return src('src/js/*.js').pipe(eslint()).pipe(eslint.format()).pipe(eslint.failAfterError());
};

/* THEME SCRIPTS *************************************************************/

export const scripts = () => {
  return src(['./src/js/*.js'], {base: './src/js/'})
    .pipe(named())
    .pipe(
      webpack({
        module: {
          rules: [
            {
              test: /\.js$/,
              use: {
                loader: 'babel-loader',
                options: {
                  presets: [],
                },
              },
            },
          ],
        },
        mode: PRODUCTION ? 'production' : 'development',
        devtool: !PRODUCTION ? 'inline-source-map' : false,
        output: {
          filename: '[name].js',
        },
        externals: {
          jquery: 'jQuery',
        },
      })
    )
    .pipe(gulpif(PRODUCTION, rev()))
    .pipe(dest('dist/js'))
    .pipe(gulpif(PRODUCTION, rename((path) => {
      return {
        dirname: 'dist/js/' + path.dirname,
        basename: path.basename,
        extname: path.extname,
      }
    })))
    .pipe(gulpif(PRODUCTION, rev.manifest('dist/rev-manifest.json', {base: process.cwd() + '/dist', merge: true})))
    .pipe(gulpif(PRODUCTION, dest('dist')));
};

/* CLEAN *********************************************************************/

export const clean = async () => {
  await deleteAsync(['dist']);
};

/* BROWSERSYNC ***************************************************************/

export const serve = (done) => {
  server.init({
    host: 'elevatex.localhost',
    proxy: 'elevatex.localhost',
		open: false,
		notify: false,
  });
  done();
};

export const reload = (done) => {
  server.reload();
  done();
};

/* WATCH *********************************************************************/

export const watchForChanges = () => {
  watch('src/scss/**/*.scss', series(styles, reload));
  watch('src/js/**/*.js', series(lint, scripts, reload));
};

/* DEV/BUILD TASKS ***********************************************************/

export const dev = series(lint, clean, parallel(styles, scripts), serve, watchForChanges);
export const build = series(lint, clean, parallel(styles, scripts));

export default dev;
