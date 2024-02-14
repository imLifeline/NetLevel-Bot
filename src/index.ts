import express from 'express';
import { config } from 'dotenv';
import { ExtendedClient } from './class/ExtendedClient';

config();

const app = express(); // Create an Express app instance

// Route for handling incoming requests (replace with your desired logic)
app.get('/', (req, res) => {
  res.send('Hello from the Express app!');
});

export const client: ExtendedClient = new ExtendedClient();

client.start();

const port = process.env.PORT || 3000; // Get port from environment or default to 3000
app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});
