const express = require('express');
const axios = require('axios');

const app = express();
const PORT = 3000;

app.use(express.static('public'));

app.get('/api/platforms', async (req, res) => {
  try {
    const response = await axios.get(`https://api.rawg.io/api/platforms?key=55c43b10126d46c59ee999f488c2812d`);
    res.json(response.data);
  } catch (error) {
    console.error('Error fetching platforms:', error.message);
    res.status(error.response ? error.response.status : 500).json({ error: 'Internal Server Error' });
  }
});

app.get('/api/games', async (req, res) => {
  try {
    const response = await axios.get(`https://api.rawg.io/api/games?key=55c43b10126d46c59ee999f488c2812d&dates=2019-09-01,2019-09-30&platforms=18,1,7`);
    res.json(response.data);
  } catch (error) {
    console.error('Error fetching games:', error.message);
    res.status(error.response ? error.response.status : 500).json({ error: 'Internal Server Error' });
  }
});

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
