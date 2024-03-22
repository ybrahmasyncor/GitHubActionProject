@RestResource(urlmapping='/mycall')
global class RestExample {
    global static String call(){
        return 'This is a test call';
    }
}