const {Client} = require('pg');

const client = new Client({
    host: "localhost",
    port: 5432,
    user: "postgres",
    password: "postgres",
    database: "httpEmilio",
});
client.on("connect", ()=>{
    console.log("Connection ended")
} );
client.on("end", ()=>{
    console.log("Connection ended")
});

// client.listen(5000,()=>{console.log("server Started")});
client.connect();

module.exports = client;
