console.log("welcome to mern e commerce project")


const express = require('express')
const app = express()
const PORT = process.env.PORT || 5000;
const mysql = require('mysql2')
const cors = require('cors')


app.use(cors())
app.use(express.json())


const db = mysql.createConnection({
    host:"localhost",
    password:"Rohith@123",
    database:"addtocart",
    user:"root"
})

db.connect((err) => {
    if (err) {
        console.log('Error Occurred', err.stack);
    } else {
        console.log("MySQL connected with id:", db.threadId);
    }
});


app.get('/product',(req,res)=>{
    const query = "call getcart()"
    db.query(query,(err,result)=>{
        if(err){
            res.status(500).json({message:"Error Occured"})
        }else{
            res.json(result[0])
        }
    })
})

app.get('/consumer',(req,res)=>{
    const query = "call consumer()"
    db.query(query,(err,result)=>{
        if(err){
            res.status(500).json({message:"Error Occured"})
        }else{
            res.json(result[0])
        }
    })
})

app.get('/clothing',(req,res)=>{
    const query = "call clothing()"
    db.query(query,(err,result)=>{
        if(err){
            res.status(500).json({message:"Error Occured"})
        }else{
            res.json(result[0])
        }
    })
})

app.get('/home',(req,res)=>{
    const query = "call home()"
    db.query(query,(err,result)=>{
        if(err){
            res.status(500).json({message:"Error Occured"})
        }else{
            res.json(result[0])
        }
    })
})
app.listen(PORT,()=>{
    console.log("Server connected with Port no:",PORT)
})