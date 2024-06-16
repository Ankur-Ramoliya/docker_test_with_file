const express = require("express");
const app = express();
const PORT = process.env.PORT || 8000;


app.get('/', ( req, res) => {
   return res.json({message: "Hey this is the container running app"});
});

app.listen(PORT, () => console.log("server start on container with this port"));