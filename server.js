const express = require('express');
const { json } = require('express/lib/response');
const app = express();
const client = require('./post')
app.use(express.json({extended:false}));
const hostname = "127.0.0.1";
const port = 5000;

app.post('/',async(req,res)=>{
    try{
        const {first_name,second_name,age} = req.body;
        const dbt = client.query("INSERT INTO emilio(first_name,second_name,age)VALUES($1,$2,$3)",[first_name,second_name,age]);
        res.json(dbt);

    }catch(err){
        console.log(err.message)
    }
})

app.listen(port,hostname,()=>{console.log("server started......")})