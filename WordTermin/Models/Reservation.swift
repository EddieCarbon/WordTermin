//
//  Reservation.swift
//  WordTermin
//
//  Created by Jakub Tomiczek on 31/12/2023.
//

import Foundation

struct Reservation: Identifiable, Hashable {
    
    let id = UUID().uuidString
    let headquater: Double?
    let category: String?
    let examType: Double?
    let dateFrom: Date?
    let dateTo: Date?
    
    
    init(headquarter: Double, category: String, examType: Double, dateFrom: Date, dateTo: Date) {
        self.headquater = headquarter
        self.category = category
        self.examType = examType
        self.dateFrom = dateFrom
        self.dateTo = dateTo
    }
}




// Headquaters
/*
 {
     "provinces": [
         {
             "id": 1,
             "name": "dolnośląskie",
             "latitude": "50.818284",
             "longitude": "16.357283",
             "zoom": 8
         },
         {
             "id": 2,
             "name": "kujawsko-pomorskie",
             "latitude": "53.048294",
             "longitude": "18.715639",
             "zoom": 8
         },
         {
             "id": 3,
             "name": "lubelskie",
             "latitude": "51.3997",
             "longitude": "23.066225",
             "zoom": 8
         },
         {
             "id": 4,
             "name": "lubuskie",
             "latitude": "52.290487",
             "longitude": "15.770302",
             "zoom": 8
         },
         {
             "id": 5,
             "name": "łódzkie",
             "latitude": "51.708801",
             "longitude": "19.448977",
             "zoom": 8
         },
         {
             "id": 6,
             "name": "małopolskie",
             "latitude": "49.909297",
             "longitude": "20.467958",
             "zoom": 9
         },
         {
             "id": 7,
             "name": "mazowieckie",
             "latitude": "52.248177",
             "longitude": "21.051192",
             "zoom": 7
         },
         {
             "id": 8,
             "name": "opolskie",
             "latitude": "50.686458",
             "longitude": "17.944735",
             "zoom": 9
         },
         {
             "id": 9,
             "name": "podkarpackie",
             "latitude": "49.985398",
             "longitude": "22.386645",
             "zoom": 8
         },
         {
             "id": 10,
             "name": "podlaskie",
             "latitude": "53.589959",
             "longitude": "22.919887",
             "zoom": 8
         },
         {
             "id": 11,
             "name": "pomorskie",
             "latitude": "54.442343",
             "longitude": "17.910023",
             "zoom": 8
         },
         {
             "id": 12,
             "name": "śląskie",
             "latitude": "50.232081",
             "longitude": "18.889597",
             "zoom": 8
         },
         {
             "id": 13,
             "name": "świętokrzyskie",
             "latitude": "50.874729",
             "longitude": "20.664447",
             "zoom": 11
         },
         {
             "id": 14,
             "name": "warmińsko-mazurskie",
             "latitude": "54.03007",
             "longitude": "19.940463",
             "zoom": 8
         },
         {
             "id": 15,
             "name": "wielkopolskie",
             "latitude": "52.490386",
             "longitude": "17.315009",
             "zoom": 8
         },
         {
             "id": 16,
             "name": "zachodniopomorskie",
             "latitude": "54.341921",
             "longitude": "16.629599",
             "zoom": 9
         }
     ],
     "words": [
         {
             "id": 1,
             "name": "WORD Legnica",
             "address": "59-220 Legnica, ul. Bydgoska 30c",
             "latitude": "51.225962",
             "longitude": "16.173903",
             "provinceId": 1,
             "offline": false
         },
         {
             "id": 2,
             "name": "WORD Jelenia Góra",
             "address": "58-560 Jelenia Góra, ul. Rataja 9",
             "latitude": "50.866164",
             "longitude": "15.66115",
             "provinceId": 1,
             "offline": false
         },
         {
             "id": 3,
             "name": "WORD Wrocław",
             "address": "50-512 Wrocław, ul. Łagiewnicka 12",
             "latitude": "51.08192525332",
             "longitude": "17.05789544038",
             "provinceId": 1,
             "offline": false
         },
         {
             "id": 4,
             "name": "WORD Wałbrzych",
             "address": "58-304 Wałbrzych, ul. Piotra Wysockiego 27",
             "latitude": "50.772891356613876",
             "longitude": "16.262747895162473",
             "provinceId": 1,
             "offline": false
         },
         {
             "id": 5,
             "name": "WORD Wałbrzych /O Kłodzko",
             "address": "57-300 Kłodzko, ul. Warty 19",
             "latitude": "50.452847",
             "longitude": "16.665228",
             "provinceId": 1,
             "offline": false
         },
         {
             "id": 6,
             "name": "WORD Włocławek",
             "address": "87-800 Włocławek, ul. Zielna 2/4",
             "latitude": "52.653531",
             "longitude": "19.107564",
             "provinceId": 2,
             "offline": false
         },
         {
             "id": 7,
             "name": "WORD Toruń",
             "address": "87-100 Toruń, ul. Polna 109/111",
             "latitude": "53.03778007380788",
             "longitude": "18.640078194641436",
             "provinceId": 2,
             "offline": false
         },
         {
             "id": 8,
             "name": "WORD Bydgoszcz",
             "address": "85-620 Bydgoszcz, ul. Kard. Wyszyńskiego 54",
             "latitude": "53.13589",
             "longitude": "18.037969",
             "provinceId": 2,
             "offline": false
         },
         {
             "id": 9,
             "name": "WORD Toruń /O Grudziądz",
             "address": "86-300 Grudziadz, ul. Waryńskiego 4",
             "latitude": "53.48856727961609",
             "longitude": "18.764146063816657",
             "provinceId": 2,
             "offline": false
         },
         {
             "id": 10,
             "name": "WORD Biała Podlaska",
             "address": "21-500 Biała Podlaska, ul. Orzechowa 60",
             "latitude": "52.02919",
             "longitude": "23.158827",
             "provinceId": 3,
             "offline": false
         },
         {
             "id": 11,
             "name": "WORD Lublin",
             "address": "20-218 Lublin, ul. Hutnicza 3",
             "latitude": "51.242164",
             "longitude": "22.59612",
             "provinceId": 3,
             "offline": false
         },
         {
             "id": 12,
             "name": "WORD Chełm",
             "address": "22-100 Chełm, ul. Bieławin 2a",
             "latitude": "51.149394",
             "longitude": "23.484859",
             "provinceId": 3,
             "offline": false
         },
         {
             "id": 13,
             "name": "WORD Zamość",
             "address": "22-400 Zamość, ul. Jana Kilińskiego 84 E",
             "latitude": "50.7260306135",
             "longitude": "23.275507969155",
             "provinceId": 3,
             "offline": false
         },
         {
             "id": 14,
             "name": "WORD Gorzów Wlkp",
             "address": "66-400 Gorzów Wlkp, ul. Podmiejska 18",
             "latitude": "52.742316",
             "longitude": "15.275091",
             "provinceId": 4,
             "offline": false
         },
         {
             "id": 15,
             "name": "WORD Zielona Góra",
             "address": "65-339 Zielona Góra, ul. Nowa 4b",
             "latitude": "51.923373",
             "longitude": "15.511751",
             "provinceId": 4,
             "offline": false
         },
         {
             "id": 16,
             "name": "WORD Łódź",
             "address": "91-406 Łódź, ul. Nowy Józefów 52",
             "latitude": "51.735259",
             "longitude": "19.361017",
             "provinceId": 5,
             "offline": false
         },
         {
             "id": 18,
             "name": "WORD Łódź O/T Sieradz",
             "address": "98-200 Sieradz, ul. 3 Maja 7",
             "latitude": "51.581188",
             "longitude": "18.708379",
             "provinceId": 5,
             "offline": false
         },
         {
             "id": 19,
             "name": "WORD Łódź O/T Skierniewice",
             "address": "96-100 Skierniewice, ul. Stanisława Kaczyńskiego 7",
             "latitude": "51.97622",
             "longitude": "20.164842",
             "provinceId": 5,
             "offline": false
         },
         {
             "id": 20,
             "name": "WORD Łódź O/T Piotrków Trybunalski",
             "address": "97-300 Piotrków Trybunalski, ul. Gliniana 17",
             "latitude": "51.385783",
             "longitude": "19.675942",
             "provinceId": 5,
             "offline": false
         },
         {
             "id": 21,
             "name": "MORD Kraków",
             "address": "30-728 Kraków, ul. Nowohucka 33a",
             "latitude": "50.051128",
             "longitude": "19.991423",
             "provinceId": 6,
             "offline": false
         },
         {
             "id": 22,
             "name": "MORD Kraków/O Kraków",
             "address": "30-149 Kraków, ul. Balicka 127",
             "latitude": "50.08146941167703",
             "longitude": "19.8680944766779",
             "provinceId": 6,
             "offline": false
         },
         {
             "id": 23,
             "name": "MORD Tarnów",
             "address": "33-104 Tarnów, ul. Okrężna 2F",
             "latitude": "50.01116782243913",
             "longitude": "21.025302217790784",
             "provinceId": 6,
             "offline": false
         },
         {
             "id": 24,
             "name": "MORD Nowy Sącz",
             "address": "33-300 Nowy Sącz, ul. 29 Listopada 10",
             "latitude": "49.601107",
             "longitude": "20.709967",
             "provinceId": 6,
             "offline": false
         },
         {
             "id": 25,
             "name": "WORD Warszawa M/E Odlewnicza",
             "address": "03-231 Warszawa, ul. Odlewnicza 8",
             "latitude": "52.30536",
             "longitude": "21.016361",
             "provinceId": 7,
             "offline": false
         },
         {
             "id": 26,
             "name": "WORD Warszawa M/E Bemowo",
             "address": "01-466 Warszawa, ul Powstańców Śląskich 127",
             "latitude": "52.265506",
             "longitude": "20.928622",
             "provinceId": 7,
             "offline": false
         },
         {
             "id": 28,
             "name": "WORD Ostrołęka",
             "address": "07-410 Ostrołęka, ul. Rolna 30",
             "latitude": "53.06138918095642",
             "longitude": "21.58697473573992",
             "provinceId": 7,
             "offline": false
         },
         {
             "id": 29,
             "name": "WORD Ciechanów",
             "address": "06-400 Ciechanów, Mleczarska 27",
             "latitude": "52.8635653",
             "longitude": "20.6192951",
             "provinceId": 7,
             "offline": false
         },
         {
             "id": 30,
             "name": "WORD Płock",
             "address": "09-407 Płock, ul. Otolińska 25",
             "latitude": "52.55134369323294",
             "longitude": "19.723385360987823",
             "provinceId": 7,
             "offline": false
         },
         {
             "id": 31,
             "name": "WORD Siedlce",
             "address": "08-110 Siedlce, ul. Składowa 46",
             "latitude": "52.15997264482965",
             "longitude": "22.272355163487948",
             "provinceId": 7,
             "offline": false
         },
         {
             "id": 32,
             "name": "WORD Radom",
             "address": "26-600 Radom, ul. Sucha 13",
             "latitude": "51.38518239917034",
             "longitude": "21.12202593829415",
             "provinceId": 7,
             "offline": false
         },
         {
             "id": 33,
             "name": "WORD Opole",
             "address": "45-233 Opole, ul. Oleska 127",
             "latitude": "50.686458",
             "longitude": "17.944735",
             "provinceId": 8,
             "offline": false
         },
         {
             "id": 34,
             "name": "WORD Tarnobrzeg",
             "address": "39-400 Tarnobrzeg, ul. Sikorskiego 86A",
             "latitude": "50.58744682768886",
             "longitude": "21.692857909646197",
             "provinceId": 9,
             "offline": false
         },
         {
             "id": 35,
             "name": "WORD Rzeszów",
             "address": "35-501 Rzeszów, Al. Wyzwolenia 4",
             "latitude": "50.05405",
             "longitude": "21.996914",
             "provinceId": 9,
             "offline": false
         },
         {
             "id": 36,
             "name": "WORD Krosno",
             "address": "38-400 Krosno, ul.  Tysiąclecia 7",
             "latitude": "49.6995",
             "longitude": "21.742403",
             "provinceId": 9,
             "offline": false
         },
         {
             "id": 37,
             "name": "WORD Przemyśl",
             "address": "37-700 Przemyśl, ul. Topolowa 7",
             "latitude": "49.771236",
             "longitude": "22.809618",
             "provinceId": 9,
             "offline": false
         },
         {
             "id": 38,
             "name": "WORD Białystok",
             "address": "15-532 Białystok, ul. Wiewiórcza 64",
             "latitude": "53.109807",
             "longitude": "23.192773",
             "provinceId": 10,
             "offline": false
         },
         {
             "id": 40,
             "name": "WORD Suwałki",
             "address": "16-400 Suwałki, ul. Waryńskiego 24",
             "latitude": "54.098766",
             "longitude": "22.94186",
             "provinceId": 10,
             "offline": false
         },
         {
             "id": 41,
             "name": "WORD Słupsk",
             "address": "76-200 Słupsk, ul. Mierosławskiego 10",
             "latitude": "54.45988",
             "longitude": "17.04472",
             "provinceId": 11,
             "offline": false
         },
         {
             "id": 42,
             "name": "PORD Gdańsk O/Gdynia",
             "address": "81-213 Gdynia, ul. Opata Hackiego 10 A",
             "latitude": "54.534876",
             "longitude": "18.492298",
             "provinceId": 11,
             "offline": false
         },
         {
             "id": 43,
             "name": "PORD Gdańsk",
             "address": "80-067 Gdańsk, ul. Równa 19/21",
             "latitude": "54.325565",
             "longitude": "18.644608",
             "provinceId": 11,
             "offline": false
         },
         {
             "id": 44,
             "name": "WORD Częstochowa",
             "address": "42-200 Częstochowa, ul. J. Hallera 1",
             "latitude": "50.806274",
             "longitude": "19.16631",
             "provinceId": 12,
             "offline": false
         },
         {
             "id": 45,
             "name": "WORD Katowice",
             "address": "40-507 Katowice, ul. Francuska 78",
             "latitude": "50.244008",
             "longitude": "19.025148",
             "provinceId": 12,
             "offline": false
         },
         {
             "id": 46,
             "name": "WORD Katowice O/T Dąbrowa Górnicza",
             "address": "41-303 Dąbrowa Górnicza, ul. Tysiąclecia 56m",
             "latitude": "50.329124",
             "longitude": "19.225625",
             "provinceId": 12,
             "offline": false
         },
         {
             "id": 47,
             "name": "WORD Katowice O/T Tychy",
             "address": "43-100 Tychy, ul.Jana Pawła II 3",
             "latitude": "50.115387554635525",
             "longitude": "18.98334990620902",
             "provinceId": 12,
             "offline": false
         },
         {
             "id": 48,
             "name": "WORD Katowice O/T Jastrzębie Zdrój",
             "address": "44-330 Jastrzębie Zdrój, ul. Armii Krajowej 31",
             "latitude": "49.942919",
             "longitude": "18.563175",
             "provinceId": 12,
             "offline": false
         },
         {
             "id": 49,
             "name": "WORD Katowice O/T Rybnik",
             "address": "44-207 Rybnik, ul. Ekonomiczna 21",
             "latitude": "50.13349301688643",
             "longitude": "18.54138564475259",
             "provinceId": 12,
             "offline": false
         },
         {
             "id": 50,
             "name": "WORD Katowice O/T Bytom",
             "address": "41-902 Bytom, ul. Strzelców Bytomskich 98",
             "latitude": "50.38015616089678",
             "longitude": "18.88831046122923",
             "provinceId": 12,
             "offline": false
         },
         {
             "id": 51,
             "name": "WORD Bielsko-Biała",
             "address": "43-316 Bielsko-Biała, ul. Aleja Armii Krajowej 220a",
             "latitude": "49.7852717906754",
             "longitude": "19.025469829449523",
             "provinceId": 12,
             "offline": false
         },
         {
             "id": 52,
             "name": "WORD Kielce",
             "address": "25-420 Kielce, ul. Domaszowska 141B",
             "latitude": "50.874729",
             "longitude": "20.664447",
             "provinceId": 13,
             "offline": false
         },
         {
             "id": 53,
             "name": "WORD Elbląg",
             "address": "82-300 Elbląg, ul. Skrzydlata 1",
             "latitude": "54.14736685",
             "longitude": "19.41136359",
             "provinceId": 14,
             "offline": false
         },
         {
             "id": 54,
             "name": "WORD - RCBRD Olsztyn",
             "address": "10-416 Olsztyn, ul. Towarowa 17",
             "latitude": "53.782511",
             "longitude": "20.525484",
             "provinceId": 14,
             "offline": false
         },
         {
             "id": 55,
             "name": "WORD Kalisz",
             "address": "62-800 Kalisz, ul. Braci Niemojowskich 3-5",
             "latitude": "51.767005",
             "longitude": "18.104139",
             "provinceId": 15,
             "offline": false
         },
         {
             "id": 56,
             "name": "WORD Konin",
             "address": "62-510 Konin, ul. Zakładowa 4b",
             "latitude": "52.239189",
             "longitude": "18.236205",
             "provinceId": 15,
             "offline": false
         },
         {
             "id": 57,
             "name": "WORD Leszno",
             "address": "64-100 Leszno, ul. Opalińskich 1a",
             "latitude": "51.85220351633529",
             "longitude": "16.57919371994316",
             "provinceId": 15,
             "offline": false
         },
         {
             "id": 58,
             "name": "WORD Poznań",
             "address": "61-623 Poznań, ul. Wilczak 53",
             "latitude": "52.434413",
             "longitude": "16.95497",
             "provinceId": 15,
             "offline": false
         },
         {
             "id": 59,
             "name": "WORD Piła",
             "address": "64-920 Piła, ul. Lotnicza 6",
             "latitude": "53.154587",
             "longitude": "16.716185",
             "provinceId": 15,
             "offline": false
         },
         {
             "id": 60,
             "name": "WORD Szczecin",
             "address": "71-682 Szczecin, ul. Golisza 10B",
             "latitude": "53.4556131831062",
             "longitude": "14.570983043610267",
             "provinceId": 16,
             "offline": false
         },
         {
             "id": 61,
             "name": "ZORD Koszalin",
             "address": "75-124 Koszalin, ul. Mieszka I 39",
             "latitude": "54.196328",
             "longitude": "16.1448169",
             "provinceId": 16,
             "offline": false
         },
         {
             "id": 62,
             "name": "WORD Kielce O/ Ostrowiec Świętokrzyski",
             "address": "27-400 Ostrowiec Świętokrzyski, ul. Świętokrzyska 22",
             "latitude": "50.9254",
             "longitude": "21.372",
             "provinceId": 13,
             "offline": false
         },
         {
             "id": 63,
             "name": "WORD Wałbrzych O/ Świdnica",
             "address": "58-100 Świdnica, ul. Głowackiego 1",
             "latitude": "50.837",
             "longitude": "16.4772",
             "provinceId": 1,
             "offline": false
         },
         {
             "id": 64,
             "name": "MORD Kraków/O Oświęcim",
             "address": "32-600 Oświęcim, ul. St. Leszczyńskiej 7",
             "latitude": "50.03586495084903",
             "longitude": "19.196082058890866",
             "provinceId": 6,
             "offline": false
         },
         {
             "id": 65,
             "name": "WORD Biała Podlaska O/ Łuków",
             "address": "21-400 Łuków, ul. Piłsudskiego 29",
             "latitude": "51.931582",
             "longitude": "22.377895",
             "provinceId": 3,
             "offline": false
         },
         {
             "id": 66,
             "name": "WORD Lublin O/ Puławy",
             "address": "24-100 Puławy, ul. Składowa 6a",
             "latitude": "51.416301",
             "longitude": "21.995739",
             "provinceId": 3,
             "offline": false
         },
         {
             "id": 67,
             "name": "WORD Opole O/ Kędzierzyn Koźle",
             "address": "47-223 Kędzierzyn Koźle, ul. Mostowa 7",
             "latitude": "50.31850399204563",
             "longitude": "18.242400959264483",
             "provinceId": 8,
             "offline": false
         },
         {
             "id": 68,
             "name": "WORD Jelenia Góra O/ Głogów",
             "address": "67-200 Głogów, ul. Folwarczna 52B",
             "latitude": "51.64955506341058",
             "longitude": "16.108448189255473",
             "provinceId": 1,
             "offline": false
         },
         {
             "id": 69,
             "name": "WORD Nowy Sącz O/ Nowy Targ",
             "address": "33-340 Nowy Targ, ul. Wojska Polskiego 9",
             "latitude": "49.473201717938046",
             "longitude": "20.026654078747562",
             "provinceId": 6,
             "offline": false
         },
         {
             "id": 70,
             "name": "WORD Zamość OT w Biłgoraju",
             "address": "23-400 Biłgoraj, ul. Motorowa 2",
             "latitude": "50.51858726973",
             "longitude": "22.719376848200",
             "provinceId": 3,
             "offline": false
         },
         {
             "id": 71,
             "name": "WORD Opole OT w Nysie",
             "address": "48-303 Nysa, ul. Piłsudskiego 41",
             "latitude": "50.460989",
             "longitude": "17.348924",
             "provinceId": 8,
             "offline": false
         },
         {
             "id": 72,
             "name": "WORD Jelenia Góra OT Milicz",
             "address": "56-300 Milicz, ul. Powstańców Wielkopolskich 5",
             "latitude": "51.519402",
             "longitude": "17.279902",
             "provinceId": 1,
             "offline": false
         },
         {
             "id": 73,
             "name": "PORD Gdańsk O/Chojnice",
             "address": "89-600 Chojnice, ul. Gdańska 110e",
             "latitude": "53.70169120816243",
             "longitude": "17.5971555000743",
             "provinceId": 11,
             "offline": false
         },
         {
             "id": 74,
             "name": "WORD Częstochowa O/T Zawiercie",
             "address": "42-400 Zawiercie, ul. Parkowa 2",
             "latitude": "50.49215",
             "longitude": "19.43455",
             "provinceId": 12,
             "offline": false
         },
         {
             "id": 1001,
             "name": "WORD Legnica / del Lubin",
             "address": "59-300 Lubin, ul. Szpakowa 1",
             "latitude": "51.381917909246624",
             "longitude": "16.21296404167072",
             "provinceId": 1,
             "offline": false
         },
         {
             "id": 1002,
             "name": "WORD Legnica O/T Lubań",
             "address": "59-800 Lubań, ul. Dolna 8",
             "latitude": "51.122773",
             "longitude": "15.302423",
             "provinceId": 1,
             "offline": false
         },
         {
             "id": 2001,
             "name": "WORD Jelenia Góra / del Bolesławiec",
             "address": "59-700 Bolesławiec, ul. Lubańska 71a",
             "latitude": "51.252363710967096",
             "longitude": "15.553334002551093",
             "provinceId": 1,
             "offline": false
         },
         {
             "id": 2002,
             "name": "WORD Jelenia Góra / del Kamienna Góra",
             "address": "58-400 Kamienna Góra, ul. Jeleniogórska 7",
             "latitude": "50.783979",
             "longitude": "16.022338",
             "provinceId": 1,
             "offline": false
         },
         {
             "id": 3001,
             "name": "WORD Wrocław / del Oława",
             "address": "55-200 Oława, ul. Różana 8",
             "latitude": "50.930235",
             "longitude": "17.299345",
             "provinceId": 1,
             "offline": false
         },
         {
             "id": 3002,
             "name": "WORD Wrocław / del Oleśnica",
             "address": "56-400 Oleśnica, ul. Wrocławska 30B",
             "latitude": "51.212857",
             "longitude": "17.375099",
             "provinceId": 1,
             "offline": false
         },
         {
             "id": 8001,
             "name": "WORD Bydgoszcz / del Inowrocław",
             "address": "88-100 Inowrocław, ul. Orłowska 48",
             "latitude": "52.80518297230952",
             "longitude": "18.262960417779524",
             "provinceId": 2,
             "offline": false
         },
         {
             "id": 11001,
             "name": "WORD Lublin / del Kraśnik",
             "address": "23-204 Kraśnik, ul. Urzędowska 551",
             "latitude": "50.96127025",
             "longitude": "22.17961584177797",
             "provinceId": 3,
             "offline": false
         },
         {
             "id": 29001,
             "name": "WORD Ciechanów / del Mława",
             "address": "06-500 Mława, ul. Kopernika 38",
             "latitude": "53.1229",
             "longitude": "20.3808",
             "provinceId": 7,
             "offline": false
         },
         {
             "id": 30001,
             "name": "WORD Płock O/ Sochaczew",
             "address": "96-500 Sochaczew, ul. Żeromskiego 12",
             "latitude": "52.231011945218626",
             "longitude": "20.24168458745365",
             "provinceId": 7,
             "offline": false
         },
         {
             "id": 31001,
             "name": "WORD Siedlce / del Garwolin",
             "address": "08-400 Garwolin, Al. Legionów 48",
             "latitude": "51.8837",
             "longitude": "21.626",
             "provinceId": 7,
             "offline": false
         },
         {
             "id": 32003,
             "name": "WORD Radom / del Kozienice",
             "address": "26-900 Kozienice, ul. Bohaterów Getta 6a",
             "latitude": "51.58779201129689",
             "longitude": "21.54663529601178",
             "provinceId": 7,
             "offline": false
         },
         {
             "id": 32004,
             "name": "WORD Radom / del Grójec",
             "address": "05-600 Grójec, ul. Sportowa 16",
             "latitude": "51.861883",
             "longitude": "20.8652",
             "provinceId": 7,
             "offline": false
         },
         {
             "id": 38001,
             "name": "WORD Białystok del / Bielsk Podlaski ",
             "address": "17-100 Bielsk Podlaski, ul. Widowska 1 lok. 2",
             "latitude": "52.775017",
             "longitude": "23.197765",
             "provinceId": 10,
             "offline": false
         },
         {
             "id": 60001,
             "name": "WORD Szczecin/ del Barlinek",
             "address": "74-320 Barlinek, ul. Jeziorna 8",
             "latitude": "52.989635",
             "longitude": "15.215304",
             "provinceId": 16,
             "offline": false
         },
         {
             "id": 61001,
             "name": "ZORD Koszalin / del Szczecinek",
             "address": "78-400 Szczecinek, ul. Kościuszki 47-49",
             "latitude": "53.71381346979717",
             "longitude": "16.679021369150185",
             "provinceId": 16,
             "offline": false
         }
     ],
     "languagesEnums": [
         {
             "code": "POLISH",
             "description": "polski"
         },
         {
             "code": "ENGLISH",
             "description": "angielski"
         },
         {
             "code": "GERMAN",
             "description": "niemiecki"
         }
     ],
     "signLanguageEnums": [
         {
             "code": "NONE",
             "description": "Brak"
         },
         {
             "code": "PJM",
             "description": "PJM"
         }
     ]
 }
 */
