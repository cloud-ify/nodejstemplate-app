require('dotenv').config();
const express = require('express');

// Constants
const PORT = process.env.PORT || 7001;

// App
const app = express();
app.get('/', function (req, res) {
  res.send('Yeay, it works!');
});

app.listen(PORT, function() {
  console.log(`it now works! Running on ${PORT}`);
});
