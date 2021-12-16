const http = require("http");
const fs = require('fs')

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

    res.writeHead(200, { 'content-type': 'text/html' })
    fs.createReadStream('index.html').pipe(res)
});

server.listen(80, () => console.log("running on port 80"));
