module.exports = function(grunt) {

    grunt.registerTask('log', 'Custom task to log', function() {
        grunt.log.write('Logging in app2  ').ok();
    });

}