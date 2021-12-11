const express = require('express');

const categoryRouter = require('./routes/categoryRoutes.js');
const recipeRouter = require('./routes/recipeRoutes.js');

// Create express app
const app = express();

// Body-parser
app.use(express.json({ limit: '10kb' }));

// Routers
app.use('/api/v1/categories', categoryRouter);
app.use('/api/v1/recipes', recipeRouter);

// Unhandled routes
app.all('*', (req, res) => {
  res.status(404).json({ status: 'fail', message: `${req.url} not found.` });
});

module.exports = app;
