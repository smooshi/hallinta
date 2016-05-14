# Wepa projekti 2016
<a href="https://codeclimate.com/github/smooshi/hallinta"><img src="https://codeclimate.com/github/smooshi/hallinta/badges/gpa.svg" /></a>[![Build Status](https://travis-ci.org/smooshi/hallinta.png)](https://travis-ci.org/smooshi/hallinta-public)

Tuntikirjanpito : https://docs.google.com/spreadsheets/d/1pIBsPa-s1f-wtPACU5TWGfLbV0ky4mNn8YO3CNXLlGU/edit#gid=0

<h2>Käyttötarkoitus:</h2>

Hallintajärjestelmä kaverille, tarkoituksena on korvata paisunutta Excel taulukkoa tälläisellä nettijärjestelmällä. Kaveri on juuri aloittanut ravintola-alan kassajärjestelmien myynnin ja haluaa koota asiakastietoja yhteen paikkaan. Juteltiin ja juonittiin millasia tauluja suurinpiirtein tarvittaisiin ja koodasin tälläisen.

<h2>Käyttöohje: </h2>

<b>HEROKU LOGIN: admin@admin.com / admin1</b>

Kaiken pitäisi olla blokattu ellei ole logannut sisään, vain adminit voi luoda uusia käyttäjiä ja vain adminit voivat poistaa asioita (enimmäkseen, tietty käyttäjä voi poistaa omia arvioitaan ym)

Kaikilla isommilla asioilla on "tyyppejä" kaverin toiveesta, esim. Ravintoloilla on tyyppi, joka on nimi ja kuvaus. Kaikki ravintolat ovat jotain tyyppiä. CompanyType, RestaurantType, DeviceType, etc.
