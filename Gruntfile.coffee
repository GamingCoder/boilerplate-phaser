module.exports = (grunt) ->
	grunt.initConfig {
		pkg: grunt.file.readJSON 'package.json'
		cnf: grunt.file.readJSON 'conf.json'
	}

	grunt.registerTask 'default', []