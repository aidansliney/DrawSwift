

//Set up sample data

let bookData = [
    Book(bookname:"Book01", level:"Tic-Tac-Toe",h1:"Learn how to draw a lovely superhero", rating: 4, cover: "b01isocover"),
    Book(bookname: "Book02", level: "Spin the",h1:"Learn how to draw a lovely superhero", rating: 5, cover: "b02isocover"),
    Book(bookname: "Book03", level: "Texas Hold 'em Poker",h1:"Learn how to draw a lovely superhero", rating: 2, cover: "b03isocover"),
    Book(bookname:"Book04", level:"Tic-Tac-Toe",h1:"Learn how to draw a lovely superhero", rating: 4, cover: "b04isocover"),
    Book(bookname: "Book05", level: "Spin the Bottle",h1:"Learn how to draw a lovely superhero", rating: 5, cover: "b05isocover"),
    Book(bookname: "Book06", level: "Texas Hold 'em Poker",h1:"Learn how to draw a lovely superhero", rating: 2, cover: "b06isocover"),
    Book(bookname:"Book07", level:"Tic-Tac-Toe",h1:"Learn how to draw a lovely superhero", rating: 4, cover: "b07isocover")]


let tutorialData = [
    Tutorial(book:"book01", t:"t01", image:"b01t01p29", text: "Full Figure" ),
    Tutorial(book:"book01", t:"t02",image:"b01t02p28", text: "Basic Head"),
    Tutorial(book:"book01", t:"t03",image:"b01t03p18", text: "Basic Hand"),
    
    Tutorial(book:"book02", t:"t01",image:"mi3_4figure21", text: "Full Figure" ),
    Tutorial(book:"book02", t:"t02",image:"mi3_4head19", text: "The Head"),
    Tutorial(book:"book02", t:"t03",image:"mi3_4torso18", text: "The Torso" ),
    Tutorial(book:"book02", t:"t04",image:"mi3_4arm11", text: "The Arms"),
    Tutorial(book:"book02", t:"t05",image:"mi3_4leg10", text: "The Legs" ),
    Tutorial(book:"book02", t:"t06",image:"mi3_4hand11", text: "The Hands"),
    Tutorial(book:"book02", t:"t07",image:"mi3_4foot08", text: "The Feet"),
    
      Tutorial(book:"book03", t:"t01",image:"ma3_4figure13", text: "Full figure" ),
      Tutorial(book:"book03", t:"t02",image:"ma3_4torso13", text: "The Head" ),
      Tutorial(book:"book03", t:"t03",image:"ma3_4legs12", text: "The Torso" ),
      Tutorial(book:"book03", t:"t04",image:"ma3_4head17", text: "The Arms" ),
      Tutorial(book:"book03", t:"t05",image:"ma3_4hands07", text: "The Legs" ),
      Tutorial(book:"book03", t:"t06",image:"ma3_4foot07", text: "The Hands" ),
      Tutorial(book:"book03", t:"t07",image:"ma3_4arms12", text: "The Feet" ),
      
      Tutorial(book:"book04", t:"t01",image:"maflexa21", text: "Arm flex 1" ),
      Tutorial(book:"book04", t:"t02",image:"maflexb16", text: "Arm flex 2" ),
      Tutorial(book:"book04", t:"t03",image:"maflexc16", text: "Arm flex 3" ),
      Tutorial(book:"book04", t:"t04",image:"maflexd18", text: "Arm flex 4" ),
      Tutorial(book:"book04", t:"t05",image:"maflexe12", text: "Arm flex 5" ),
      Tutorial(book:"book04", t:"t06",image:"maflexf18", text: "Arm flex 6" ),
      Tutorial(book:"book04", t:"t07",image:"maflexg16", text: "Arm flex 7" ),
      
      Tutorial(book:"book05", t:"t01",image:"midynamickicka0117", text: "Dynamic Kick 1" ),
      Tutorial(book:"book05", t:"t02",image:"midynamickicka0217", text: "Dynamic Kick 2" ),
      Tutorial(book:"book05", t:"t03",image:"midynamickicka0317", text: "Dynamic Kick 3" ),
      Tutorial(book:"book05", t:"t04",image:"midynamickicka0417", text: "Dynamic Kick 4" ),
      Tutorial(book:"book05", t:"t05",image:"midynamickicka0516", text: "Dynamic Kick 5" ),
      Tutorial(book:"book05", t:"t06",image:"midynamickicka0617", text: "Dynamic Kick 6" ),
      Tutorial(book:"book05", t:"t07",image:"midynamickicka0717", text: "Dynamic Kick 1" ),
      Tutorial(book:"book05", t:"t08",image:"midynamickicka0817", text: "Dynamic Kick 1" ),
      
       Tutorial(book:"book06", t:"t01",image:"b06t01p28", text: "Full Figure" ),
       Tutorial(book:"book06", t:"t02",image:"b06t02p14", text: "Basic Head" ),
       Tutorial(book:"book06", t:"t03",image:"b06t03p16", text: "Basic Hand" ),
       
       Tutorial(book:"book07", t:"t01",image:"b07t01p19", text: "Full Figure" ),
       Tutorial(book:"book07", t:"t02",image:"b07t02p22", text: "The Face" ),
       Tutorial(book:"book07", t:"t03",image:"b07t03p18", text: "The Torso" ),
       Tutorial(book:"book07", t:"t04",image:"b07t04p10", text: "The Arm" ),
       Tutorial(book:"book07", t:"t05",image:"b07t05p09", text: "The Leg" ),
       Tutorial(book:"book07", t:"t06",image:"b07t06p11", text: "The Hand" ),
       Tutorial(book:"book07", t:"t07",image:"b07t07p07", text: "The Foot" ),
]



let b01t01 = ["b01t01p01", "b01t01p02","b01t01p02","b01t01p03","b01t01p04","b01t01p05","b01t01p06","b01t01p07","b01t01p08","b01t01p09","b01t01p10","b01t01p11","b01t01p12","b01t01p13","b01t01p14","b01t01p15","b01t01p16","b01t01p17","b01t01p18","b01t01p19","b01t01p20","b01t01p21","b01t01p22","b01t01p23","b01t01p24","b01t01p25","b01t01p26","b01t01p27"]

let b01t01help = ["1hello i like Bananas",
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
