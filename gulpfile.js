//import gulp from 'gulp';
//import riot from 'gulp-riot';

var gulp = require('gulp');
var riot = require('gulp-riot');

gulp.task('riot', function(){
    gulp.src('*.tag')
        .pipe(riot({
            compact: true
        }))
        .pipe(gulp.dest('public'));
});
