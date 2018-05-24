module.exports = (app) => {
    app.get('/', (req, res) => {
        res.render('index.html')
    });

    app.get('/about', (req, res) => {
        res.render('about.html');
    });

    app.get('/test', (req, res) => {
        res.render('lookup.html');
    });

    app.get('/date', (req, res) => {
        res.send(req.query.checkin + req.query.checkout);
    });

}