module.exports = (grunt) ->

    grunt.initConfig
        pkg: grunt.file.readJSON 'package.json'

        connect:
            server:
                options:
                    port: 8000
                    hostname: '*'
                    base: 'www'
                    livereload: yes

        coffee:
            compile:
                options:
                    join: true
                files:
                    "www/js/app.js": ["src/app/*.coffee"]

            tests:
                expand: yes
                cwd: "src/tests"
                src:  ["*.coffee"]
                dest: "www/tests"
                ext: ".js"
        sass:
            dev:
                options:
                    style: "expanded"
                files:
                    "www/css/app.css": "src/scss/app.scss"

        copy:
            templates:
                cwd: "src/templates"
                expand: yes
                src: ["*"]
                dest: "www/templates"

            index:
                cwd: "src/html"
                expand: yes
                src: ["*"]
                dest: "www/"

        watch:
            templates:
                files: ["src/templates/*"]
                tasks: ["copy:templates"]
                options:
                    livereload: yes

            index:
                files: ["src/html/*.html"]
                tasks: ["copy:index"]
                options:
                    livereload: yes

            src:
                files: ["src/app/*.coffee", "src/tests/*.coffee"]
                tasks: ["coffee"]
                options:
                    livereload: yes

            sass:
                files: ["src/scss/app.scss"]
                tasks: ['sass:dev']
                options:
                    livereload: yes

    # dependencies
    grunt.loadNpmTasks 'grunt-contrib-sass'
    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-copy'
    grunt.loadNpmTasks 'grunt-contrib-watch'
    grunt.loadNpmTasks 'grunt-contrib-connect'

    # tasks
    grunt.registerTask 'default', ["connect", "coffee", "copy", "sass", "watch"]

# vim: set ft=coffee ts=4 sw=4 expandtab :

