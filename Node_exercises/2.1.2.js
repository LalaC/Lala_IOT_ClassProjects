var counter = 0



var http = require('http');


http.createServer(function (req, res) {
    counter = counter + 1
    res.writeHead(200, {'Content-Type': 'text/plain'});
    res.end('Hello World\n' +counter);
    
    if(request.url == "/") {
        
    }
    
    
}).listen(1337, '127.0.0.1');


console.log('Server running at http://127.0.0.1:1337/');