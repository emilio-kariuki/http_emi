const express = require('express');
const { json } = require('express/lib/response');
const app = express();
const client = require('./post')
app.use(express.json({extended:false}));

app.post('/',async(req,res)=>{
    try{
        const {first_name,second_name,age} = req.body;
        const dbt = client.query("INSERT INTO emilio(")

    }catch(err){
        console.log(err.message)
    }
})

app.listen(5000,()=>{console.log("server started......")})