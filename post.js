const {Client} = require('ps');

const client = new Client({
    host: "localhost",
    port: 5432,
    user: "postgres",
    password: "postgres",
    database: "httpEmilio",
});

client.on("end", ()=>{
    console.log("Connection ended")
});
client.on("on", ()=>{
    console.log("Connection ended")
} );