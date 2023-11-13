const express = require('express');
const bodyParser = require('body-parser');

module.exports = function (db) {
    const router = express.Router();

    router.use(bodyParser.json());

    function getAllShoes(callback) {
        const query = 'SELECT shoes_ID, shoes_image_path, shoes_name, shoes_description, shoes_price, shoes_color FROM GO_Shoes WHERE shoes_quantity > 0';
        db.query(query, callback);
    }

    function getShoeById(shoeId, callback) {
        const query = 'SELECT shoes_ID, shoes_image_path, shoes_name, shoes_description, shoes_price, shoes_color FROM GO_Shoes WHERE shoes_ID = ?';
        db.query(query, [shoeId], callback);
    }

    // Get all products
    router.get('/api/v1/products', (request, response) => {
        getAllShoes((error, records) => {
            if (error)
                throw error;
            else
                if (records.length > 0)
                    response.json({products: records});
                else
                    response.status(404).json({message: "Database Empty"});
        });
    });

    // Get a product by id
    router.get('/api/v1/products/:id', (request, response) => {
        getShoeById(request.params.id, (error, record) => {
            if (error) 
                throw error;
            else
                if (record.length > 0)
                    response.json({item: record[0]});
                else
                    response.status(404).json({message: "Product not found"});
        });
    });

    // Add a product into database
    router.post('/api/v1/products', (request, response) => {
        const insert_values = request.body;
        console.log(insert_values);
        const query = 'INSERT INTO GO_Shoes SET ?';
        db.query(query, [insert_values], (error, result) => {
            if (error)
                throw error;
            else
                response.json({message: `Data inserted successfully with ${result.affectedRows} row(s) affected.`});
        });
    });

    // Update a product by id (request body is an object with {key: value} = {column: value_to_update})
    router.put('/api/v1/products/:id', (request, response) => {
        const shoeId = request.params.id;
        const updateFeild = request.body;
        const query = 'UPDATE GO_Shoes SET ? WHERE shoes_ID = ?';
        db.query(query, [updateFeild, shoeId], (error, result) => {
            if (error)
                throw error;
            else
                response.json({message: "Data updated successfully."});
        });
    });

    // Delete a product by id
    router.delete('/api/v1/products/:id', (request, response) => {
        const query = 'DELETE FROM GO_Shoes WHERE shoes_ID = ?';
        db.query(query, [request.params.id], (error, result) => {
            if (error)
                throw error;
            else
                response.json({message: "Deleted successfully."});
        });
    });

    return router;
};