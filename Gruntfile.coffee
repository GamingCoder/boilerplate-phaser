module.exports = (grunt) ->
	grunt.initConfig {
		pkg: grunt.file.readJSON 'package.json'
		cnf: grunt.file.readJSON 'conf.json'
		jade: {
			dist: {
				options: {
					data: "<%= cnf %>"
				}
				expand: true
				cwd: 'src/jade'
				src: '**/*.jade'
				dest: 'dist'
				ext: '.html'
			}
		}
	}

	grunt.loadNpmTasks 'grunt-contrib-jade'

	grunt.registerTask 'default', ['jade']