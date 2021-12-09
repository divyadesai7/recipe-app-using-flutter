const fs = require('fs');
const express = require('express');

const categoryRouter = require('./routes/categoryRoutes.js');

// Create express app
const app = express();

// Body-parser
app.use(express.json({ limit: '10kb' }));

// Routers
app.use('/api/v1/categories', categoryRouter);

// Unhandled routes
app.all('*', (req, res) => {
  res.status(404).json({ status: 'fail', message: `${req.url} not found.` });
});

module.exports = app;
