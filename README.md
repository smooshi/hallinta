# Wepa projekti 2016
<a href="https://codeclimate.com/github/smooshi/hallinta"><img src="https://codeclimate.com/github/smooshi/hallinta/badges/gpa.svg" /></a>[![Build Status](https://travis-ci.org/smooshi/hallinta.png)](https://travis-ci.org/smooshi/hallinta-public)

Tuntikirjanpito : https://docs.google.com/spreadsheets/d/1pIBsPa-s1f-wtPACU5TWGfLbV0ky4mNn8YO3CNXLlGU/edit#gid=0

<h2>Käyttötarkoitus:</h2>

Hallintajärjestelmä kaverille, tarkoituksena on korvata paisunutta Excel taulukkoa tälläisellä nettijärjestelmällä. Kaveri on juuri aloittanut ravintola-alan kassajärjestelmien myynnin ja haluaa koota asiakas- ja laitetietoja yhteen paikkaan. Juteltiin ja juonittiin millasia tauluja suurinpiirtein tarvittaisiin ja koodasin tälläisen.

<h2>Käyttöohje: </h2>

<b>HEROKU LOGIN: admin@admin.com / admin1</b>

Kaiken pitäisi olla blokattu ellei ole logannut sisään, vain adminit voi luoda uusia käyttäjiä ja vain adminit voivat poistaa asioita (enimmäkseen, tietty käyttäjä voi poistaa omia arvioitaan ym). Käyttäjäluokka on tehty luentojen sessiontyylillä yhdistettynä bcrypt gemin salasanojen hashaamiseen.

Yläpalkilla on pääkategoriat ja vasemmalle tulee sivukategoriat. Kieltä voi vaihtaa "Settings/Asetukset" sivulta. Sen pitäisi toimia aika kattavasti, joskin on vielä unohtuneita nappeja yms. joiden kieli ei vaihdu oikein.

<h2>Datamalli: </h2>

Kaikilla isommilla asioilla on "tyyppejä" kaverin toiveesta, esim. Ravintoloilla on tyyppi, joka on nimi ja kuvaus. Kaikki ravintolat ovat jotain tyyppiä. CompanyType, RestaurantType, DeviceType, etc.

<h2>Testausperiaate: </h2>

Kaoottinen. Tietokoneella sain lopulta testikattavuuden ~93% monien ongelmien jälkeen. Testaus on lähinnä capybaran selainseikkailu + controllerien rspec-standarditestit. Nyt ne riippuvat siitä että db:reset/db:seedaus tehdään testissä ja, että aloituskieli on suomi (koska siellä on click_on("Muokkaa") yms.). Travisilla tämä ei tietenkään toimi ollenkaan syystä ??? ja siksi travisin coverage on matala ja se ei toki myöskään ole Passing.
