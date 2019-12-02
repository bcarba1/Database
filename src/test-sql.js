var mysql = require('mysql');

var con = mysql.createConnection(
    {
        host: 'triton.towson.edu',
        user: 'dgargu1',
        password:'Cosc*ad35',
        port:'3360'
    });

    console.log("hmm")
    
    con.connect(function(err)
    {
        if (err) throw err;
        console.log("Connected!");
        con.query('SELECT * FROM dgargu1db.login', function(err, result, fields)
        {
            if (err) throw err;
            console.log(result);
        });
    });
    con.close();
