var express = require('express');
var bodyParser = require('body-parser');
var mysql = require('mysql');

var app = express();
var port = 3000;

var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "zavrsnirad"
});

con.connect(function(err){
    if(err) throw err;
    console.log("Konektovan!");
});


app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));
app.use(function(req, res, next){
    res.append("Access-Control-Allow-Origin", ['*']);
    res.append("Access-Control-Allow-Methods", "GET, POST, PUT, PATCH, DELETE");
    res.append("Access-Control-Allow-Headers", "Content-Type");
    next();
});


app.get("/", function(req, res){
    res.send("Prodaja nameštaja");
});

app.post("/login", function(req, res){
	var username = req.body.username;
	var password = req.body.password;
	
	con.query(
		"SELECT * FROM korisnici WHERE kor_ime=? AND kor_sifra=?",
		[username, password],
		function(err, result, fields){
			if(err) throw err;
			if(result.length == 0){
				var odg = {
					result: "ERR",
					message: "Invalid credentials"
				}
				res.json(odg);
				return;
			}
            var user = result[0];
			delete user.kor_sifra;
            

			var odg = {
				result: "OK",
				data: user,
			}
			res.json(odg);
		});
});


app.post("/noviupit", function(req, res) {
	var username = req.body.username;
	var surname = req.body.surname;
	var address = req.body.address;
	var password = req.body.password;
    con.query("INSERT INTO korisnici (kor_ime, kor_prezime, kor_adresa, kor_sifra) VALUE(?,?,?,?)", [username, surname, address, password], function(err, result, fields){
        if(err) throw err; 
        res.json({result: "ok"});
	});
});


app.get("/slike", function(req, res){
	con.query("SELECT * FROM artikli", function (err, result, fields){
		if(err) throw err;
		res.json({"slike": result});
	});
});

app.get("/artikli", function(req, res){
	con.query("SELECT * FROM artikli", function(err, result, fields){
		if(err) throw err;
		var obj = {
			data: result
		}
		res.json(obj);
	})
});

app.post("/kupovina", function(req, res){
	var narudzbine = req.body.narudzbine;
	var novaNarudzbina;
	con.query("INSERT INTO narudzbine (nar_datum, kor_id) VALUES (NOW(), ?)", [narudzbine.kor_id],
		(err, results, fields) => {
			if(err) throw err;
			novaNarudzbina = results.insertId;
			console.log(results.insertId);

	for(var i=0; i<narudzbine.artikli.length; i++){
			var artikal = narudzbine.artikli[i];
			con.query("INSERT INTO stavke (nar_id, art_id, stavke_cena, stavke_kolicina) VALUES (?, ?, ?, ?)", 
			[novaNarudzbina, artikal.id, artikal.cena, artikal.kolicina],
			(err, results, fields) => {
				if(err) throw err;
			});
		}
	});

	res.json({"Naruceno": narudzbine});
});

app.post("/dopunaTabele", function (req, res){
	var ime = req.body.ime;
	var cena = req.body.cena;
	var opis = req.body.opis;
	var boja = req.body.boja;
	var oprema = req.body.oprema;
	var slika = req.body.slika;
	con.query("INSERT INTO artikli (art_naziv, art_cena, art_opis, boje_id, art_dodatnaoprema, art_slika) VALUES (?, ?, ?, ?, ?, ?)",
	[ime, cena, opis, boja, oprema, slika], (err, result, fields) => {
		if(err) throw err;
		res.json({result: "ok"});
	});
});

app.post("/brisanjeArtikla", function (req, res){
	var oznaka = req.body.oznaka;
	con.query("DELETE FROM artikli WHERE art_id=?", [oznaka], (err, result, fields) => {
		if(err) throw err;
		res.json({result: "ok"});
	});
});

app.post("/brisanjeKorisnika", function (req, res){
	var oznaka2 = req.body.oznaka2;
	var oznaka3 = req.body.oznaka3;
	con.query("DELETE FROM korisnici WHERE kor_ime = ? AND kor_prezime = ?", [oznaka2, oznaka3], (err, result, fields) => {
		if(err) throw err;
		res.json({result: "ok"});
	});
});

app.listen(port, function(){
    console.log("Aplikacija radi na portu: "+port);
});