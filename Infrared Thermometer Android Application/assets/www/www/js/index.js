var app = {
    initialize: function() {
        document.addEventListener('deviceready', this.onDeviceReady, false);
    },
    onDeviceReady: function() {

        var potText = document.getElementById('bodytemp');
        var delta = document.getElementById('ambiencetemp');
        var checkBox = document.getElementById("onoffclick");
        var rotate = document.getElementById("rotateclick");
        var open = false;
        var str = '';
        var lastRead = new Date();

        var errorCallback = function(message) {
            alert('Error: ' + message);
        };
        // request permission first
        serial.requestPermission(
            // if user grants permission
            function(successMessage) {
                // open serial port
                serial.open(
                    {baudRate: 9600},
                    // if port is succesfuly opened
                    function(successMessage) {
                        open = true;
                        // register the read callback
                        serial.registerReadCallback(
                            function success(data){
                                // decode the received message
                                var view = new Uint8Array(data);
                                if(view.length >= 1) {
                                    for(var i=0; i < view.length; i++) {
                                        // if we received a \n, the message is complete, display it
                                        if(view[i] == 13) {
                                            // check if the read rate correspond to the arduino serial print rate
                                            var now = new Date();
                                            //delta.innerText = now - lastRead;
                                            lastRead = now;
                                            // display the message
                                            //var value = parseInt(str);//ori
                                            var value = String(str);
                                            var valuesplit = value.split(';');
                                            ambiencetemp.innerText = valuesplit[0];
                                            bodytemp.innerText = valuesplit[1];
                                            str = '';
                                        }
                                        // if not, concatenate with the begening of the message
                                        else {
                                            var temp_str = String.fromCharCode(view[i]);
                                            var str_esc = escape(temp_str);
                                            str += unescape(str_esc);
                                        }
                                    }
                                }
                            },
                            // error attaching the callback
                            errorCallback
                        );
                    },
                    // error opening the port
                    errorCallback
                );
            },
            // user does not grant permission
            errorCallback
        );

        onoffclick.onchange = function(){
            if ( this.checked ) {
               // if checked ...
                 if (open) serial.write('1');
           } else {
             if (open) serial.write('0');
           }
        }

        rotateclick.onchange = function(){
            if ( this.checked ) {
               screen.orientation.lock('portrait-secondary');
           } else {
             screen.orientation.lock('portrait-primary');
           }
        }


    }
};

app.initialize();
window.addEventListener("orientationchange", function(){
//    screen.orientation.unlock();
    //alert('Orientation is ' + screen.orientation.type);
    // navigator.notification.confirm(
    //     'You want to Rotate', // message
    //      onConfirm,            // callback to invoke with index of button pressed
    //     'Rotate Display',           // title
    //     ['Rotate','No Rotate']     // buttonLabels
    // );
    // if(screen.orientation.type == 'landscape-primary') { screen.orientation.unlock(); screen.orientation.lock('portrait-secondary');}
    // if(screen.orientation.type == 'portrait-primary') { screen.orientation.unlock(); screen.orientation.lock('portrait-primary');}
    // if(screen.orientation.type == 'landscape-secondary') { screen.orientation.unlock(); screen.orientation.lock('portrait-secondary');}
    // if(screen.orientation.type == 'portrait-secondary') { screen.orientation.unlock(); screen.orientation.lock('portrait-secondary');}

});

// function onConfirm(buttonIndex) {
// screen.orientation.unlock();
//     alert('You selected button ' + buttonIndex);
//
//     if(buttonIndex == '1'){screen.orientation.lock('portrait-secondary');}
//     if(buttonIndex == '2'){screen.orientation.lock('portrait-Primary');}
// }
