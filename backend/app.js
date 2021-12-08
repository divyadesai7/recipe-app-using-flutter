const fs = require('fs');
const express = require('express');

// Create express app
const app = express();

// Get categories from file
app.get('/api/v1/categories', (req, res) => {
  try {
    const data = fs.readFileSync('./public/data/categories.json', { encoding: 'utf8' });
    const categories = JSON.parse(data);
    res.json({ status: 'success', categories });
  } catch (err) {
    console.error(err);
    res.status(500).json({ status: 'fail', message: 'Something went wrong.' });
  }
});

// Get recipes from file
app.get('/api/v1/recipes', (req, res) => {
  try {
    const data = fs.readFileSync('./public/data/recipes.json', { encoding: 'utf8' });
    const recipes = JSON.parse(data);
    res.json({ status: 'success', recipes });
  } catch (err) {
    console.error(err);
    res.status(500).json({ status: 'fail', message: 'Something went wrong.' });
  }
});

app.all('*', (req, res) => {
  res.status(404).json({ status: 'fail', message: `${req.url} not found.` });
});

// Create server
const port = 3000;
const server = app.listen(port, () => {
  console.log(`App running on port ${port}`);
});
