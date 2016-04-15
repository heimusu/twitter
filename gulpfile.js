//import gulp from 'gulp';
//import riot from 'gulp-riot';

var gulp = require('gulp');
var riot = require('gulp-riot');
var aglio = require('gulp-aglio');


gulp.task('riot', function(){
    gulp.src('*.tag')
        .pipe(riot({
            compact: true
        }))
        .pipe(gulp.dest('public'));
});

gulp.task('docs', function () {
    gulp.src('apiBluePrint/api.md')
        .pipe(aglio({ template: 'default' }))
        .pipe(gulp.dest('views'));
});
