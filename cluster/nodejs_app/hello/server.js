const http = require('http');
const os = require("os");

var handleRequest = (request, response) => {
	  response.writeHead(200);
	  response.end(
		   `<h1>host: ${os.hostname()}</h1>` + 
		   `<h1>os: ${os.type()} ${os.release()}</h1>`
		    );
};
var www = http.createServer(handleRequest);
www.listen(8079);
console.log('listen on port: 8079');

