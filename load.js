const http = require("http");
        
function fibo(n) { 
    if (n < 2)
        return 1;
    else
        //return fibo(n - 2) + fibo(n - 1);
        fibo(n - 1);
        fibo(n - 2);
}

const server = http.createServer((req, res) => {
    // not more than 40.....
    fibo(35);

    res.writeHead(200, {'Content-Type': 'text/plain'});
    res.end('Hello, World!\n');
});

server.listen(8000, () => console.log("running on port 8000"));
