import express from 'express';
import fetch from 'node-fetch';


const express = require('express');
const fetch = require('node-fetch');
const app = express();
const port = 3000;

app.use(express.static('public'));

app.get('/api/games', async (req, res) => {
  const searchTerm = req.query.search;
  const apiKey = '55c43b10126d46c59ee999f488c2812d';
  const apiUrl = `https://api.rawg.io/api/games?search=${searchTerm}&key=${apiKey}`;

  try {
    const response = await fetch(apiUrl);
    const data = await response.json();
    res.json(data);
  } catch (error) {
    console.error('Error fetching data from Rawg.io API:', error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});

app.listen(port, () => {
  console.log(`Server listening at http://localhost:${port}`);
});
