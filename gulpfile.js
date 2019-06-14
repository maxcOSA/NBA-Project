var gulp = require('gulp');
var concat = require('gulp-concat');
var minify = require('gulp-minify');
var uglify = require('gulp-uglify');
var cleanCss = require('gulp-clean-css');
const stripCssComments = require('gulp-strip-css-comments');
var sass = require('gulp-sass');


const { parallel } = require('gulp');

function node() {
	return gulp.src([
    
    'node_modules/angular/angular.js',
    
  ])
		.pipe(concat('angular.js'))
  .pipe(minify({
  ext:{
   min:'.js'
  },
  noSource: true
 }))  
 .pipe(gulp.dest('app/assets/javascripts'));

}

function js() {
	return gulp.src([
    
    'assets/javascript/*.js'
  ])
  .pipe(minify({
  ext:{
   min:'.js'
  },
  noSource: true
 }))  
 .pipe(gulp.dest('app/assets/javascripts'));

}

function style() {
  return gulp.src([ 
    'assets/stylesheet/*.css'
  ])
  .pipe(sass().on('error', sass.logError))
   .pipe(concat('core.css'))
  .pipe(stripCssComments())
  .pipe(cleanCss())
    .pipe(gulp.dest('app/assets/stylesheets'));
  
}





exports.default = parallel(node, style, js);
