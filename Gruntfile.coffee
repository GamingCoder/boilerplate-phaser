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
		copy: {
			libaries: {
				files: [{
					expand: true
					src: ['**']
					cwd: 'src/libaries/'
					dest: 'dist/'
				}]
			}
			assets: {
				files: [{
					expand: true
					src: ['**']
					cwd: 'src/assets/'
					dest: 'dist/assets/'
				}]
			}
		}
	}

	grunt.loadNpmTasks 'grunt-contrib-jade'
	grunt.loadNpmTasks 'grunt-contrib-copy'

	grunt.registerTask 'default', ['jade', 'copy']