

//Set up sample data

let bookData = [
    Book(bookname:"book01", level:"Tic-Tac-Toe",h1:"Learn howhero", rating: 4, cover: "b01isocover", tutorial: book1Tutorials),
    Book(bookname: "book02", level: "Spin the",h1:"Learn uperhero", rating: 5, cover: "b02isocover", tutorial: book2Tutorials),
    Book(bookname: "book03", level: "Texas Hold 'em Poker",h1:"Learn hosuperhero", rating: 2, cover: "b03isocover", tutorial: book3Tutorials),
    Book(bookname:"book04", level:"Tic-Tac-Toe",h1:"Learn how to draw erhero", rating: 4, cover: "b04isocover", tutorial: book4Tutorials),
    Book(bookname: "book05", level: "Spin the Bottle",h1:"Learn how  superhero", rating: 5, cover: "b05isocover", tutorial: book5Tutorials),
    Book(bookname: "book06", level: "Texas Hold 'em Poker",h1:"Learn howsuperhero", rating: 2, cover: "b06isocover", tutorial: book6Tutorials),
    Book(bookname:"book07", level:"Tic-Tac-Toe",h1:"Learn how to draw arhero", rating: 4, cover: "b07isocover", tutorial: book7Tutorials)]

let book1Tutorials = [
    Tutorial(book:"book01", t:"t01", image:"b01t01p29", text: "Full Figure",level: "Level 1",length: 29 ),
    Tutorial(book:"book01", t:"t02",image:"b01t02p28", text: "Basic Head",level: "Level 1",length: 28),
    Tutorial(book:"book01", t:"t03",image:"b01t03p18", text: "Basic Hand",level: "Level 1",length: 18)]

let book2Tutorials = [
    Tutorial(book:"book02", t:"t01",image:"mi3_4figure21", text: "Full Figure",level: "Level 2",length: 21 ),
    Tutorial(book:"book02", t:"t02",image:"mi3_4head19", text: "The Head",level: "Level 2",length: 19),
    Tutorial(book:"book02", t:"t03",image:"mi3_4torso18", text: "The Torso",level: "Level 2",length: 18 ),
    Tutorial(book:"book02", t:"t04",image:"mi3_4arm11", text: "The Arms",level: "Level 2",length: 11),
    Tutorial(book:"book02", t:"t05",image:"mi3_4leg10", text: "The Legs",level: "Level 2",length: 10 ),
    Tutorial(book:"book02", t:"t06",image:"mi3_4hand11", text: "The Hands",level: "Level 2",length: 11),
    Tutorial(book:"book02", t:"t07",image:"mi3_4foot08", text: "The Feet",level: "Level 2",length: 08)]

let book3Tutorials = [
    Tutorial(book:"book03", t:"t01",image:"ma3_4figure13", text: "Full figure",level: "Level 3",length: 13 ),
    Tutorial(book:"book03", t:"t02",image:"ma3_4torso13", text: "The Head",level: "Level 3",length: 13 ),
    Tutorial(book:"book03", t:"t03",image:"ma3_4legs12", text: "The Torso",level: "Level 3",length: 12 ),
    Tutorial(book:"book03", t:"t04",image:"ma3_4head17", text: "The Arms",level: "Level 3",length: 17 ),
    Tutorial(book:"book03", t:"t05",image:"ma3_4hands07", text: "The Legs",level: "Level 3",length: 7 ),
    Tutorial(book:"book03", t:"t06",image:"ma3_4foot07", text: "The Hands",level: "Level 3",length: 7 ),
    Tutorial(book:"book03", t:"t07",image:"ma3_4arms12", text: "The Feet",level: "Level 3",length: 7 )
]

let book4Tutorials = [
    Tutorial(book:"book04", t:"t01",image:"maflexa21", text: "Arm flex 1",level: "Level 3",length: 21 ),
    Tutorial(book:"book04", t:"t02",image:"maflexb16", text: "Arm flex 2",level: "Level 3",length: 16 ),
    Tutorial(book:"book04", t:"t03",image:"maflexc16", text: "Arm flex 3",level: "Level 3",length: 16 ),
    Tutorial(book:"book04", t:"t04",image:"maflexd18", text: "Arm flex 4",level: "Level 3",length: 18 ),
    Tutorial(book:"book04", t:"t05",image:"maflexe12", text: "Arm flex 5",level: "Level 3",length: 12 ),
    Tutorial(book:"book04", t:"t06",image:"maflexf18", text: "Arm flex 6",level: "Level 3",length: 18 ),
    Tutorial(book:"book04", t:"t07",image:"maflexg16", text: "Arm flex 7",level: "Level 3",length: 16 )
]

let book5Tutorials = [
    Tutorial(book:"book05", t:"t01",image:"midynamickicka0117", text: "Dynamic Kick 1",level: "Level 2",length: 17 ),
    Tutorial(book:"book05", t:"t02",image:"midynamickicka0217", text: "Dynamic Kick 2",level: "Level 2",length: 17 ),
    Tutorial(book:"book05", t:"t03",image:"midynamickicka0317", text: "Dynamic Kick 3",level: "Level 2",length: 17 ),
    Tutorial(book:"book05", t:"t04",image:"midynamickicka0417", text: "Dynamic Kick 4",level: "Level 2",length: 17 ),
    Tutorial(book:"book05", t:"t05",image:"midynamickicka0516", text: "Dynamic Kick 5",level: "Level 2",length: 16 ),
    Tutorial(book:"book05", t:"t06",image:"midynamickicka0617", text: "Dynamic Kick 6",level: "Level 2",length: 17 ),
    Tutorial(book:"book05", t:"t07",image:"midynamickicka0717", text: "Dynamic Kick 1",level: "Level 2",length: 17 ),
    Tutorial(book:"book05", t:"t08",image:"midynamickicka0817", text: "Dynamic Kick 1",level: "Level 2",length: 17 )
]

let book6Tutorials = [
    Tutorial(book:"book06", t:"t01",image:"b06t01p28", text: "Full Figure",level: "Level 1",length: 28 ),
    Tutorial(book:"book06", t:"t02",image:"b06t02p14", text: "Basic Head",level: "Level 1",length: 14  ),
    Tutorial(book:"book06", t:"t03",image:"b06t03p16", text: "Basic Hand",level: "Level 1",length: 16 )
]

let book7Tutorials = [
    Tutorial(book:"book07", t:"t01",image:"b07t01p19", text: "Full Figure",level: "Level 2",length: 19 ),
    Tutorial(book:"book07", t:"t02",image:"b07t02p22", text: "The Face",level: "Level 2",length: 22 ),
    Tutorial(book:"book07", t:"t03",image:"b07t03p18", text: "The Torso",level: "Level 2",length: 18 ),
    Tutorial(book:"book07", t:"t04",image:"b07t04p10", text: "The Arm",level: "Level 2",length: 10 ),
    Tutorial(book:"book07", t:"t05",image:"b07t05p09", text: "The Leg",level: "Level 2",length: 09 ),
    Tutorial(book:"book07", t:"t06",image:"b07t06p11", text: "The Hand",level: "Level 2",length: 11 ),
    Tutorial(book:"book07", t:"t07",image:"b07t07p07", text: "The Foot",level: "Level 2",length: 07 )
]

let tutorialData = [
    Tutorial(book:"book01", t:"t01", image:"b01t01p29", text: "Full Figure",level: "Level 1",length: 29 ),
    Tutorial(book:"book01", t:"t02",image:"b01t02p28", text: "Basic Head",level: "Level 1",length: 28),
    Tutorial(book:"book01", t:"t03",image:"b01t03p18", text: "Basic Hand",level: "Level 1",length: 18),
    Tutorial(book:"book02", t:"t01",image:"mi3_4figure21", text: "Full Figure",level: "Level 2",length: 21 ),
    Tutorial(book:"book02", t:"t02",image:"mi3_4head19", text: "The Head",level: "Level 2",length: 19),
    Tutorial(book:"book02", t:"t03",image:"mi3_4torso18", text: "The Torso",level: "Level 2",length: 18 ),
    Tutorial(book:"book02", t:"t04",image:"mi3_4arm11", text: "The Arms",level: "Level 2",length: 11),
    Tutorial(book:"book02", t:"t05",image:"mi3_4leg10", text: "The Legs",level: "Level 2",length: 10 ),
    Tutorial(book:"book02", t:"t06",image:"mi3_4hand11", text: "The Hands",level: "Level 2",length: 11),
    Tutorial(book:"book02", t:"t07",image:"mi3_4foot08", text: "The Feet",level: "Level 2",length: 08),
    Tutorial(book:"book03", t:"t01",image:"ma3_4figure13", text: "Full figure",level: "Level 3",length: 13 ),
    Tutorial(book:"book03", t:"t02",image:"ma3_4torso13", text: "The Head",level: "Level 3",length: 13 ),
    Tutorial(book:"book03", t:"t03",image:"ma3_4legs12", text: "The Torso",level: "Level 3",length: 12 ),
    Tutorial(book:"book03", t:"t04",image:"ma3_4head17", text: "The Arms",level: "Level 3",length: 17 ),
    Tutorial(book:"book03", t:"t05",image:"ma3_4hands07", text: "The Legs",level: "Level 3",length: 7 ),
    Tutorial(book:"book03", t:"t06",image:"ma3_4foot07", text: "The Hands",level: "Level 3",length: 7 ),
    Tutorial(book:"book03", t:"t07",image:"ma3_4arms12", text: "The Feet",level: "Level 3",length: 12 ),
    Tutorial(book:"book04", t:"t01",image:"maflexa21", text: "Arm flex 1",level: "Level 3",length: 21 ),
    Tutorial(book:"book04", t:"t02",image:"maflexb16", text: "Arm flex 2",level: "Level 3",length: 16 ),
    Tutorial(book:"book04", t:"t03",image:"maflexc16", text: "Arm flex 3",level: "Level 3",length: 16 ),
    Tutorial(book:"book04", t:"t04",image:"maflexd18", text: "Arm flex 4",level: "Level 3",length: 18 ),
    Tutorial(book:"book04", t:"t05",image:"maflexe12", text: "Arm flex 5",level: "Level 3",length: 12 ),
    Tutorial(book:"book04", t:"t06",image:"maflexf18", text: "Arm flex 6",level: "Level 3",length: 18 ),
    Tutorial(book:"book04", t:"t07",image:"maflexg16", text: "Arm flex 7",level: "Level 3",length: 16 ),
    Tutorial(book:"book05", t:"t01",image:"midynamickicka0117", text: "Dynamic Kick 1",level: "Level 2",length: 17 ),
    Tutorial(book:"book05", t:"t02",image:"midynamickicka0217", text: "Dynamic Kick 2",level: "Level 2",length: 17 ),
    Tutorial(book:"book05", t:"t03",image:"midynamickicka0317", text: "Dynamic Kick 3",level: "Level 2",length: 17 ),
    Tutorial(book:"book05", t:"t04",image:"midynamickicka0417", text: "Dynamic Kick 4",level: "Level 2",length: 17 ),
    Tutorial(book:"book05", t:"t05",image:"midynamickicka0516", text: "Dynamic Kick 5",level: "Level 2",length: 16 ),
    Tutorial(book:"book05", t:"t06",image:"midynamickicka0617", text: "Dynamic Kick 6",level: "Level 2",length: 17 ),
    Tutorial(book:"book05", t:"t07",image:"midynamickicka0717", text: "Dynamic Kick 1",level: "Level 2",length: 17 ),
    Tutorial(book:"book05", t:"t08",image:"midynamickicka0817", text: "Dynamic Kick 1",level: "Level 2",length: 17 ),
    Tutorial(book:"book06", t:"t01",image:"b06t01p28", text: "Full Figure",level: "Level 1",length: 28 ),
    Tutorial(book:"book06", t:"t02",image:"b06t02p14", text: "Basic Head",level: "Level 1",length: 14  ),
    Tutorial(book:"book06", t:"t03",image:"b06t03p16", text: "Basic Hand",level: "Level 1",length: 16 ),
    Tutorial(book:"book07", t:"t01",image:"b07t01p19", text: "Full Figure",level: "Level 2",length: 19 ),
    Tutorial(book:"book07", t:"t02",image:"b07t02p22", text: "The Face",level: "Level 2",length: 22 ),
    Tutorial(book:"book07", t:"t03",image:"b07t03p18", text: "The Torso",level: "Level 2",length: 18 ),
    Tutorial(book:"book07", t:"t04",image:"b07t04p10", text: "The Arm",level: "Level 2",length: 10 ),
    Tutorial(book:"book07", t:"t05",image:"b07t05p09", text: "The Leg",level: "Level 2",length: 09 ),
    Tutorial(book:"book07", t:"t06",image:"b07t06p11", text: "The Hand",level: "Level 2",length: 11 ),
    Tutorial(book:"book07", t:"t07",image:"b07t07p07", text: "The Foot",level: "Level 2",length: 07 )
]



var helpTextD: [String: String] = ["b01t01p01": "1hello i like Bananas",
                                   "b01t01p02": "Dubasdadqwlin",
                                   "b01t01p03": "Dqweublin",
                                   "b01t01p04": "Dubqweqlin",
                                   "b01t01p05": "Dublqwein",
                                   "b01t01p06": "Dubqweqwlin",
                                   "b01t01p07": "Dublqwein",
                                   "b01t01p08": "Dubliwn",
                                   "b01t01p09": "Dubqwlin",
                                   "b01t01p10": "Dublin",
                                   "b01t01p11": "Dubwlin",
                                   "b01t01p12": "Dublin",
                                   "b01t01p13": "Duwblwin",
                                   "b01t01p14": "Dublin",
                                   "b01t01p15": "Dubwlin",
                                   "b01t01p16": "Dublwin",
                                   "b01t01p17": "Dubliwn",
                                   "b01t01p18": "Dwublin",
                                   "b01t01p19": "Duwblin",
                                   "b01t01p20": "Dubwlin",
                                   "b01t01p21": "Dublwin",
                                   "b01t01p22": "wDubliwn",
                                   "b01t01p23": "Dwublin",
                                   "b01t01p24": "Duwblin",
                                   "b01t01p25": "Dubwwlin",
                                   "b01t01p26": "Dublwin",
                                   "b01t01p27": "Duwblwin",
                                   "b01t01p28": "28",
                                   "b01t01p29": "Du29wblwin",
                                   "b01t02p02": "Dubwlin"
                                    ]

let b01t01 = ["b01t01p01", "b01t01p02","b01t01p02","b01t01p03","b01t01p04","b01t01p05","b01t01p06","b01t01p07","b01t01p08","b01t01p09","b01t01p10","b01t01p11","b01t01p12","b01t01p13","b01t01p14","b01t01p15","b01t01p16","b01t01p17","b01t01p18","b01t01p19","b01t01p20","b01t01p21","b01t01p22","b01t01p23","b01t01p24","b01t01p25","b01t01p26","b01t01p27"]


let b01t01Help = ["1hello i like Bananas",
                   "2He likes ORanf",
                   "3He likes Banawwwnas",
                   "4He likes Banaawefewnwas",
                   "5He likes Banaawernas",
                   "6He likes Banaanwefwas",
                   "7He likes Banaawerwnas",
                   "8He likes Banawefewanas",
                   "He likes Bawerwenaanas",
                   "He likes Banwerweaanas",
                   "He likes Banawerweanas",
                   "He likes Bawerwnaanas",
                   "He likes Banawrwanas",
                   "He likes Banwerweraanas",
                   "He likes Banwerweraanas",
                   "He likes Banwerwerwaanas",
                   "He likes Bawerwerwernaanas",
                   "He likes Bawerwernaanas",
                   "He likes Bawerwernaanas",
                   "20He likes Banwerwerwaanas",
                   "He likes Banwrwerwrweaanas",
                   "He likes Bawerewrnaanas",
                   "23He likes Bawerewrnaanas",
                   "24He likes Bawerewrnaanas",
                   "25He likes Banwerweraanas",
                   "26He likes Banaawewrnas",
                   "27He likes Banwerweraanas",
                    ]
