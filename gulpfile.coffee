gulp = require 'gulp'
$    = do require 'gulp-load-plugins'

gulp.task 'build', ->
  gulp.src './assets/coffee/**/*.coffee' # coffeeの格納先フォルダ
  .pipe $.webpack require './webpack.config.coffee'
  .pipe gulp.dest './public/js' # 出力先
