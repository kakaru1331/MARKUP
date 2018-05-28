module.exports = (app) => {
    app.get('/', (req, res) => {
        res.render('home.html')
    });

    // admin

    // common

    app.get('/common/signup', (req, res) => {
        res.render('common/signup.html');
    })
        // common/host

    app.get('/common/host/hostloginform', (req, res) => {
       res.render('common/host/hostloginform.html');
    });

    app.get('/common/host/hostsignup_view', (req, res) => {
        res.render('common/host/hostsignup_view.html');
    });

    app.get('/common/host/hostsignup', (req, res) => {
       res.render('common/host/hostsignup.html') ;
    });

    app.get('/common/host/hostsignupform', (req, res) => {
        res.render('common/host/hostsignupform.html');
    });

    app.get('/common/host/search_pw', (req, res) => {
        res.render('common/host/search_pw.html');
    });    

        //common/user
    app.get('/common/user/userloginform', (req, res) => {
        res.render('common/user/userloginform.html');
    });

    app.get('/common/user/usersignup_view', (req, res) => {
        res.render('common/user/usersignup_view.html');
    });
    
    app.get('/common/user/usersignup', (req, res) => {
        res.render('common/user/usersignup.html');
    })
    
    // etc
    app.get('/etc/lookup', (req, res) => {
        res.render('etc/lookup.html');
    });

    app.get('/etc/showdetail', (req, res) => {
        res.render('etc/showdetail.html');
    });

    // mypage
        // mypage/host
    app.get('/mypage/host/updatecamp', (req, res) => {
        res.render('mypage/host/updatecamp.html');
    });

    app.get('/mypage/host/updateroom', (req, res) => {
        res.render('mypage/host/updateroom.html');
    });
    
    app.get('/mypage/host/roomform2', (req, res) => {
        res.render('mypage/host/roomform2.html');
    })

    // app.get('/date', (req, res) => {
    //     res.send(req.query.checkin + req.query.checkout);
    // });

}