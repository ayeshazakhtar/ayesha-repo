//this is a practice to check github update

float bucketX;
float bucketY;
float dropX;
float dropY;
float dropSpeed;
int dropRadius;
int score;
boolean gameOver;

void setup() {
  
  background(167,144,134);
  size(800,800);
  
  //values
  bucketX = mouseX;
  bucketY = 650;
  dropX = random(30, 770);
  dropY = 0;
  dropSpeed = 2;
  dropRadius = 1;
  score=0;
  gameOver= false;
   
}

void draw (){
  
  background(167,144,134);
 
    
  //score
  textSize(50);
  fill(0);
  text(score, 650, 50);
  
  if(!gameOver){
  //drop
  fill(93,220,250);
  noStroke();
  ellipse(dropX,dropY,dropRadius,dropRadius);

  //bucket
  stroke(10);
  fill(247,209,70);
  bucketX = mouseX;
  rect(bucketX, bucketY, 150, 200);
  
  //move drop vertically
  if (dropRadius<50){
    dropY=0;
    dropRadius++;
  }
  else{
    dropY += dropSpeed;
  }
  
  //dropY += dropSpeed;

  //reset the drop
  if (dropY > height ){
    dropY=0;
    dropSpeed++;
    dropX = random(30,770);
    dropRadius=1;
    gameOver=true;
   
  }
  

 if ((dropX>bucketX) && (dropX<bucketX+150) && (dropY>bucketY) ){
   dropY=0;
   dropX=random(30,770);
   dropSpeed++;
   dropRadius=1;
   score+=5;
 }
 }
 else {
    textSize(100);
    fill(255,0,0);
    text("GAME OVER :(",40, 400);
    
 }
}
