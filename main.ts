//weather dashboard with authentication and support different cities

import express from "express";

// import {Client} from "pg";

const app = express();


app.use("/", (req, res) => {
res.send("nodemon!")

});



const port = 8080;


app.listen(port, () => {
    console.log(`Server started on port ${port}`);
});
