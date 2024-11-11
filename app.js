const express = require("express")

const app = express()

app.get("/",(req,res)=>{
    res.send("Hola mundo distribuida")
})

app.listen(3000,(rew,res)=> {
    console.log("Corriendo en el puerto 3000")
})