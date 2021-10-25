//stella grynspan block 3 astroid project oct 24 

int mode;
int i;

final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;

boolean upkey, downkey, leftkey, rightkey, spacekey;
boolean win, lose, crazy;
int score;
boolean pew;
int timer2, timer3;
boolean go;
Ship myShip;
UFO myUFO;
ArrayList<GameObject> myObject;




void setup() {
  size(800, 600);

  mode = INTRO;
  imageMode(CENTER);


  myObject = new ArrayList<GameObject>();





  numberOFframes=8;
  gif= new PImage[numberOFframes];
  int i=0;
  while ( i < numberOFframes  ) {
    gif[i]= loadImage("frame_"+i+"_delay-1s.gif");
    i= i +1;
  }
}





void draw() {

  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
