import express from 'express';
import fetch from 'node-fetch';
import cors from 'cors'; // Import the cors middleware

const app = express();
const port = 3000;

app.use(cors()); // Enable CORS for all routes

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

// Serve the HTML file
app.use(express.static('path/to/your/html/directory'));

// Handle 404
app.use((req, res) => {
  res.status(404).sendFile('path/to/your/html/directory/404.html', { root: __dirname });
});

app.listen(port, () => {
  console.log(`Server listening at http://localhost:${port}`);
});
