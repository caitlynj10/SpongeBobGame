SpongeBob mySpongeBob = new SpongeBob(400, 500);
ArrayList<KrabbyPatties> rain = new ArrayList<KrabbyPatties>();
float pattieSpeed = 8;
boolean gameStarted = false;
PFont pressStart;

void setup(){
    size(800, 800);
    rain.add(new KrabbyPatties());
}

void startGame(){
    background(146, 242, 245);
    stroke(255, 0, 0);
    strokeWeight(5);
    drawFlower(); 

    pushMatrix();
    translate(400, -50);
    scale(0.75);
    stroke(251, 125, 255);
    strokeWeight(3);
    drawFlower();
    popMatrix();


    pushMatrix();
    translate(300, 100);
    scale(0.50);
    stroke(0, 255, 166);
    strokeWeight(6);
    drawFlower();
    popMatrix();

    pushMatrix();
    translate(75, 550);
    scale(0.50);
    stroke(255, 0, 162);
    strokeWeight(6);
    drawFlower();
    popMatrix();

    pushMatrix();
    translate(600, 25);
    scale(0.50);
    stroke(255, 128, 0);
    strokeWeight(10);
    drawFlower();
    popMatrix();

    pushMatrix();
    translate(200, 450);
    scale(0.50);
    stroke(255, 251, 0);
    strokeWeight(6);
    drawFlower();
    popMatrix();

    pushMatrix();
    translate(60, 375);
    scale(0.40);
    stroke(119, 0, 255);
    strokeWeight(4);
    drawFlower();
    popMatrix();


    pushMatrix();
    translate(50, 50);
    scale(0.25);
    stroke(120, 78, 173);
    strokeWeight(6);
    drawFlower();
    popMatrix();

    pushMatrix();
    translate(550, 200);
    scale(0.60);
    stroke(78, 173, 113);
    strokeWeight(6);
    drawFlower();
    popMatrix();


    pushMatrix();
    translate(350, 350);
    stroke(255, 107, 199);
    strokeWeight(6);
    drawFlower();
    popMatrix();

    


    fill(238, 242, 34);
    stroke(0);
    rect(300, 350, 200, 100, 28);
    fill(0);
    textAlign(CENTER, CENTER);
    pressStart = createFont("Press Start 2P", 16);
    textFont(pressStart);
    text("Start Game", 400, 400);

}
void mousePressed(){

    if(!gameStarted){
        if(mouseX > 300 && mouseX < 500 && mouseY > 300 && mouseY < 500){
            gameStarted = true;
        }
    }
     if(gameStarted){
        if(mouseX > 0 && mouseX < 80 && mouseY > 0 && mouseY < 40){
            gameStarted = false;
            mySpongeBob.score = 0;
            mySpongeBob.level = 1;
            pattieSpeed = 8;
            rain.clear();
            rain.add(new KrabbyPatties());
        }
    }
}

void draw(){
    if (!gameStarted) {
        startGame();
    }
    else{
        background(146, 242, 245);
        //Ground
        fill(4,4,72);
        rect(0,600,800,200);
        //Bikini Bottom
        // stroke(207, 101, 250);
        // fill(207, 101, 250); 
        // rect(10, 250, 150, 350);
        // arc(85, 250, 150, 150, PI, TWO_PI);
        // rect(220, 450, 150, 150);
        // arc(295, 450, 150, 150, PI, TWO_PI);
        // rect(430, 300, 150, 300);
        // arc(505, 300, 150, 150, PI, TWO_PI);
        // rect(640, 150, 150, 450);
        // arc(715, 150, 150, 150, PI, TWO_PI);
        stroke(0, 0, 0);  
        //Bubbles 
        //Red Bubble
        stroke(255, 38, 38);
        noFill();
        ellipse(50, 400, 50, 50);
        arc(52, 395, 25, 25,PI+HALF_PI, TWO_PI);
        ellipse(700, 100, 50,50);
        arc(702, 95, 25, 25,PI+HALF_PI, TWO_PI);
        ellipse(400, 200, 30, 30);
        arc(402, 197, 15, 15,PI+HALF_PI, TWO_PI);
        ellipse(650, 500, 30, 30);
        arc(652, 497, 15, 15,PI+HALF_PI, TWO_PI);
        //Blue Bubble
        stroke(38, 132, 255);
        noFill();
        ellipse(100, 100, 50, 50);
        arc(102, 95, 25, 25,PI+HALF_PI, TWO_PI);
        ellipse(600, 400, 50,50);
        arc(602, 395, 25, 25,PI+HALF_PI, TWO_PI);
        ellipse(400, 400, 30, 30);
        arc(402, 397, 15, 15,PI+HALF_PI, TWO_PI);
        ellipse(750, 200, 30, 30);
        arc(752, 197, 15, 15,PI+HALF_PI, TWO_PI);
        //Green Bubble
        stroke(0, 217, 12);
        noFill();
        ellipse(200, 300, 50, 50);
        arc(202, 295, 25, 25,PI+HALF_PI, TWO_PI);
        ellipse(500, 100, 50,50);
        arc(502, 95, 25, 25,PI+HALF_PI, TWO_PI);
        ellipse(50, 250, 30, 30);
        arc(52, 247, 15, 15,PI+HALF_PI, TWO_PI);
        ellipse(80, 500, 30,30);
        arc(82, 497, 15, 15,PI+HALF_PI, TWO_PI);
        //Orange Bubble
        stroke(255, 161, 26);
        noFill();
        ellipse(300, 200, 70, 70);
        arc(303, 193, 35, 35,PI+HALF_PI, TWO_PI);
        ellipse(700, 550, 70,70);
        arc(703, 543, 35, 35,PI+HALF_PI, TWO_PI);
        ellipse(150, 475, 30, 30);
        arc(152, 472, 15, 15,PI+HALF_PI, TWO_PI);
        ellipse(400, 500, 30,30);
        arc(402, 497, 15, 15,PI+HALF_PI, TWO_PI);
        //Yellow Bubble
        stroke(253, 255, 59);
        noFill();
        ellipse(20, 355, 30, 30);
        arc(22, 352, 15, 15,PI+HALF_PI, TWO_PI);
        ellipse(200, 550, 50, 50);
        arc(202, 547, 25, 25,PI+HALF_PI, TWO_PI);
        ellipse(350, 80, 50, 50);
        arc(352, 75, 25, 25,PI+HALF_PI, TWO_PI);
        ellipse(625, 300, 30, 30);
        arc(627, 297, 15, 15,PI+HALF_PI, TWO_PI);



        stroke(0,0,0);
  
        for (int i = 0; i < rain.size(); i++) {
            rain.get(i).act();
        }
        
        mySpongeBob.act();

        textSize(10);
        fill(0);
        text("Back", 40, 20);
        if(mouseX > 0 && mouseX < 80 && mouseY > 0 && mouseY < 40){
            fill(255, 0, 0);
            text("Back", 40, 20);
        }
        textSize(16); // Set Text Size  
        fill(0, 0, 0); // Text color black 
        text("Score: ", 700, 20); // Print "Score" on canvas
        text(mySpongeBob.score, 760, 20); // Print player's score
        textSize(40); // Set Text Size
        text("Level ", width/2 -50, 25);
        text(mySpongeBob.level, width/2 + 100, 25);
        }


    
}

void drawFlower(){
    //Flowers
    noFill();
    

    //Petal
    beginShape();
    curveVertex(180,  200);
    curveVertex(180,  200);
    curveVertex(160,  100);
    curveVertex(240,  100);
    curveVertex(220, 200);
    curveVertex(220, 200);
    endShape();

    //Curve
    beginShape();
    curveVertex(180, 200);
    curveVertex(180, 200);
    curveVertex(190, 230);
    curveVertex(185, 240);
    curveVertex(167.32986, 227.18182);
    curveVertex(167.32986, 227.18182);
    endShape();

    //Petal
    pushMatrix();
    translate(180, 200);
    rotate(radians(-65));
    beginShape();
    curveVertex(-70,   0);  
    curveVertex(-70,   0);
    curveVertex(-90,  -100);  
    curveVertex( -10,  -100);  
    curveVertex( -30,   0);  
    curveVertex( -30,   0);
    endShape();
    popMatrix();

    //Curve
    beginShape();
    curveVertex(150.41328, 263.44284);
    curveVertex(150.41328, 263.44284);
    curveVertex(170,  266);
    curveVertex(180,  275);
    curveVertex(162.68, 287.23);
    curveVertex(162.68, 287.23);
    endShape();
    
    //Petal
    pushMatrix();
    translate(220, 200);
    rotate(radians(-130));
    beginShape();
    curveVertex(-70,   -100);  
    curveVertex(-70,   -100);
    curveVertex(-90,  -200); 
    curveVertex( -10,  -200);  
    curveVertex( -30,   -100);  
    curveVertex( -30,   -100);
    endShape();
    popMatrix();

    //Curve
    beginShape();
    curveVertex(188.39, 317.90);
    curveVertex(188.39, 317.90);
    curveVertex(195,  310.90);
    curveVertex(205,  310.90);
    curveVertex(211.61, 317.90);
    curveVertex(211.61, 317.90);
    endShape();

    //Petal
    pushMatrix();
    translate(180, 200);
    scale(-1,1);
    rotate(radians(-130));
    beginShape();
    curveVertex(-70,   -100);  
    curveVertex(-70,   -100);
    curveVertex(-90,  -200);  
    curveVertex( -10,  -200);  
    curveVertex( -30,   -100);  
    curveVertex( -30,   -100);
    endShape();
    popMatrix();
  
    
    //Curve
    beginShape();
    curveVertex(237.32, 287.23);
    curveVertex(237.32, 287.23);
    curveVertex(225,  275);
    curveVertex(230,  266);
    curveVertex(249.58, 263.44);
    curveVertex(249.58, 263.44);
    endShape();


    //Petal
    pushMatrix();
    translate(220, 200);
    scale(-1,1);
    rotate(radians(-65));
    beginShape();
    curveVertex(-70,   0);  
    curveVertex(-70,   0);
    curveVertex(-90,  -100);  
    curveVertex( -10,  -100);  
    curveVertex( -30,   0);  
    curveVertex( -30,   0);
    endShape();
    popMatrix();

    //Curve
    beginShape();
    curveVertex(220, 200);
    curveVertex(220, 200);
    curveVertex(210, 230);
    curveVertex(215, 240);
    curveVertex(233.32986, 227.18182);
    curveVertex(233.32986, 227.18182);
    endShape();

    //Inner Circle
    ellipse(200, 265, 30, 20);
}