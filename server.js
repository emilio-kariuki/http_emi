const express = require('express');
const { json } = require('express/lib/response');
const app = express();
const client = require('./post')
app.use(express.json({extended:false}));
const hostname = "127.0.0.1";
const port = 5000;

app.post('/',async(req,res)=>{
    try{
        const {first_name,second_name} = req.body;
        const dbt = client.query("INSERT INTO emilio(first_name,second_name)VALUES($1,$2)",[first_name,second_name]);
        res.json(dbt);

    }catch(err){
        console.log(err.message)
    }
})

app.listen(port,hostname,()=>{console.log("server started......")})