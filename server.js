const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');
const helmet = require('helmet');

const productRoutes = require('./routes/shoes_routing');

require('dotenv').config();
const app = express();
app.use(cors());

app.use(helmet({
    contentSecurityPolicy: {
        directives: {
            defaultSrc: ["'self'"],
            connectSrc: ["'self'", process.env.BACKEND_URL],
        },
    },
}));

const db = mysql.createConnection(
    {
        connectionLimit : 10,
        host            : process.env.DB_HOST,
        user            : process.env.DB_USERNAME,
        password        : process.env.DB_PASSWORD,
        port            : process.env.DB_PORT,
        database        : process.env.DB_DBNAME,
    });

db.connect((error) => {
    if (error) 
        throw error;
    console.log('Connected to database successfully');
});

app.use('/', productRoutes(db));

const port = process.env.BACKEND_PORT || 3001;
app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
})