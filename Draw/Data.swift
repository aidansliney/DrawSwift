

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
    Tutorial(image:"b01t01p29", text: "Full Figure" ),
    Tutorial(image:"b01t02p28", text: "Basic Head"),
    Tutorial(image:"b01t03p18", text: "Basic Hand"),
    
    Tutorial(image:"mi3_4figure21", text: "Full Figure" ),
    Tutorial(image:"mi3_4head19", text: "The Head"),
    Tutorial(image:"mi3_4torso18", text: "The Torso" ),
    Tutorial(image:"mi3_4arm11", text: "The Arms"),
    Tutorial(image:"mi3_4leg10", text: "The Legs" ),
    Tutorial(image:"mi3_4hand11", text: "The Hands"),
    Tutorial(image:"mi3_4foot08", text: "The Feet")
]



//<item>Full figure</item> <!--b03t01-->
//<item>The Head</item> <!--b03t02-->
//<item>The Torso</item> <!--b03t03-->
//<item>The Arms</item> <!--b03t04-->
//<item>The Legs</item> <!--b03t05-->
//<item>The Hands</item> <!--b03t06-->
//<item>The Feet</item> <!--b03t07-->
//<item>Arm Muscle 1</item> <!--b04t01-->
//<item>Arm Muscle 2</item> <!--b04t02-->
//<item>Arm Muscle 3</item> <!--b04t03-->
//<item>Arm Muscle 4</item> <!--b04t04-->
//<item>Arm Muscle 5</item> <!--b04t05-->
//<item>Arm Muscle 6</item> <!--b04t06-->
//<item>Arm Muscle 7</item> <!--b04t07-->
//<item>Dynamic Kick 1</item> <!--b05t01-->
//<item>Dynamic Kick 2</item> <!--b05t02-->
//<item>Dynamic Kick 3</item> <!--b05t03-->
//<item>Dynamic Kick 4</item> <!--b05t04-->
//<item>Dynamic Kick 5</item> <!--b05t05-->
//<item>Dynamic Kick 6</item> <!--b05t06-->
//<item>Dynamic Kick 7</item> <!--b05t07-->
//<item>Dynamic Kick 8</item> <!--b05t08-->
//<item>Full Figure</item> <!--b06t01-->
//<item>Basic Head</item> <!--b06t02-->
//<item>Basic Hand</item> <!--b06t03-->
//<item>Full Figure</item> <!--b07t01-->
//<item>The Face</item> <!--b07t02-->
//<item>The Torso</item> <!--b07t03-->
//<item>The Arm</item> <!--b07t04-->
//<item>The Leg</item> <!--b07t05-->
//<item>The Hand</item> <!--b07t06-->
//<item>The Foot</item> <!--b07t07-->


//<item>@drawable/ma3_4figure13</item> <!--b03t01-->
//<item>@drawable/ma3_4torso13</item>
//<item>@drawable/ma3_4legs12</item>
//<item>@drawable/ma3_4head17</item>
//<item>@drawable/ma3_4hands07</item>
//<item>@drawable/ma3_4foot07</item>
//<item>@drawable/ma3_4arms12</item>
//<item>@drawable/maflexa21</item>  <!--b04t01-->
//<item>@drawable/maflexb16</item>
//<item>@drawable/maflexc16</item>
//<item>@drawable/maflexd18</item>
//<item>@drawable/maflexe12</item>
//<item>@drawable/maflexf18</item>
//<item>@drawable/maflexg16</item>
//<item>@drawable/midynamickicka0117</item> <!--b05t01-->
//<item>@drawable/midynamickicka0217</item>
//<item>@drawable/midynamickicka0317</item>
//<item>@drawable/midynamickicka0417</item>
//<item>@drawable/midynamickicka0516</item>
//<item>@drawable/midynamickicka0617</item>
//<item>@drawable/midynamickicka0717</item>
//<item>@drawable/midynamickicka0817</item>
//<item>@drawable/b06t01p28</item> <!--b06t01-->
//<item>@drawable/b06t02p14</item> <!--b06t02-->
//<item>@drawable/b06t03p16</item> <!--b06t03-->
//<item>@drawable/b07t01p19</item> <!--b07t01-->
//<item>@drawable/b07t02p22</item> <!--b07t02-->
//<item>@drawable/b07t03p18</item> <!--b07t03-->
//<item>@drawable/b07t04p10</item> <!--b07t04-->
//<item>@drawable/b07t05p09</item> <!--b07t05-->
//<item>@drawable/b07t06p11</item> <!--b07t06-->
//<item>@drawable/b07t07p07</item> <!--b07t07-->








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
