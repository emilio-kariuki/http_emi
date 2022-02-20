const { Client } = require('pg');

const client = new Client({
    host: "localhost",
    port: 5432,
    user: "postgres",
    password: "postgres",
    database: "postgres",
});
client.on('connect', ()=>{
    console.log('connection started');
});
client.on("end",() =>{
    console.log("connection finished");
})

client.connect();

module.exports = client;
