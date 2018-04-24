'use strict'

// Application dependencies
const express = require('express');
const cors = require('cors');
const pg = require('pg');

require('dotenv').config();

// Application Setup
const app = express();
const PORT = process.env.PORT || 3000;
const CLIENT_URL = process.env.CLIENT_URL;

// Database Setup
const client = new pg.Client(process.env.DATABASE_URL || 'postgres://postgres:wasd@localhost:5432/books_app');
client.connect();
client.on('error', err => console.error(err));

// Application Middleware
app.use(cors());
app.use(express.urlencoded({extended:true}));

// API Endpoints
app.get('/api/v1/books', (req, res) => {
  client.query(`
    SELECT book_id, title, author, image_url, isbn FROM books;
    `)
    .then(results => res.send(results.rows))
    .catch(console.error);
});

app.get('/api/v1/books/:id', (req, res) => {
  client.query(`
  SELECT * FROM books 
  WHERE book_id=$1;`,
  [req.params.id]
  )
  .then(results => {
    res.send(results.rows)
  });
})

app.post('/api/v1/books', (req, res) => {
  client.query(`
  INSERT INTO books (title, author, image_url, isbn)
  VALUES ($1, $2, $3, $4)
  ON CONFLICT NOTHING;`,
  [req.body.title, req.body.author, req.body.image_url, req.body.isbn],
  function (err) {
    if (err) console.error(err);
    res.send('insertion complete');
  });
});

app.get('*', (req, res) => res.redirect(CLIENT_URL));
app.listen(PORT, () => console.log(`Listening on port: ${PORT}`));