module.exports = function(grunt) {
   var config = {
        pkg: grunt.file.readJSON('package.json'),
        uglify: {
            options: {
                banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */\n'
            },
            build: {
                src: 'src/<%= pkg.name %>.js',
                dest: 'build/<%= pkg.name %>.min.js'
            }
        },
        mocha: {
            test: {
                src: ['spec']
            }
        },
        hub: {
            all: {
                src: ['app1/Gruntfile.js','app2/Gruntfile.js'],
                tasks: ['log']
            }
        }
    };
    var apps = ['app1','app2'];
    apps.forEach(function(app) {
       config.hub[app] = {
           src: [app + '/Gruntfile.js'],
           tasks: ['log']
       }
    });

    grunt.initConfig(config);

    grunt.registerTask('log', 'Custom task to log', function() {
        grunt.log.write('Logging some stuff...').ok();
    });
    grunt.loadNpmTasks('grunt-mocha');

    grunt.registerTask('test',['mocha:test']);

    grunt.loadNpmTasks('grunt-hub');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.registerTask('default', ['uglify']);
}