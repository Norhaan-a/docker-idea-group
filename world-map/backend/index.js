const express = require('express');
const { get } = require('express/lib/response');
const path = require('path');
const app = express();
const port = process.env.PORT || 3000;
app.use(express.static(path.join(__dirname, '../dist')));
app.listen(port, () => console.log('Listening on http://localhost:' + port));
