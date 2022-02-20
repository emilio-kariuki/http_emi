const express = require('express');
const { json } = require('express/lib/response');
const app = express();

app.use(json.express({extended:false}));

app.get('/',(req,res)=>{
    res.send("Emilio is the best in the world");
})

app.listen(5000,()=>{console.log("server started......")})