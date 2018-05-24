const express = require('express');
const app = express();
var router = require('./router/main') (app);

app.set('views', __dirname + '/views');
app.set('view engine', 'ejs');
app.engine('html', require('ejs').renderFile);
app.use(express.static('public'));

app.listen(3000, () => console.log('Example app listening on port 3000!'))