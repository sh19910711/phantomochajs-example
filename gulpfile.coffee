gulp = require "gulp"
pmocha = require "phantomochajs"
bower = require "bower"
main_bower_files = require "main-bower-files"

gulp.task "bower", (done)->
  bower.commands.install().on "end", ->
    done()
  return undefined

gulp.task "test", ["bower"], ->
  gulp.src ["spec/spec_helper.coffee", "spec/*_spec.coffee"]
    .pipe pmocha()

gulp.task "default", [
  "bower"
  "test"
]
