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
    //background(146, 242, 245);
 
    int yStart = 0;
    int yEnd = height;
    
    color topColor = color(146, 242, 245);
    color bottomColor = color(33, 207, 91);

    for (int i = yStart; i <= yEnd; i++) {
    float inter = map(i, yStart, yEnd, 0, .5);
    color c = lerpColor(topColor, bottomColor, inter);
    stroke(c);
    line(0, i, width, i);
    }
    stroke(0,0,0);
    

    stroke(255, 0, 0);
    strokeWeight(5);
    drawEvenFlower(); 

    pushMatrix();
    translate(400, 25);
    scale(0.55);
    stroke(251, 125, 255);
    strokeWeight(3);
    drawOddFlower1();
    popMatrix();


    pushMatrix();
    translate(340, 180);
    scale(0.30);
    stroke(0, 148, 50);
    strokeWeight(6);
    drawOddFlower2();
    popMatrix();

    pushMatrix();
    translate(75, 550);
    scale(0.50);
    stroke(255, 0, 162);
    strokeWeight(6);
    drawEvenFlower();
    popMatrix();

    pushMatrix();
    translate(600, 100);
    scale(0.45);
    stroke(255, 128, 0);
    strokeWeight(10);
    drawEvenFlower();
    popMatrix();

    pushMatrix();
    translate(200, 450);
    scale(0.50);
    stroke(255, 251, 0);
    strokeWeight(6);
    drawOddFlower1();
    popMatrix();

    pushMatrix();
    translate(60, 375);
    scale(0.40);
    stroke(119, 0, 255);
    strokeWeight(4);
    drawOddFlower2();
    popMatrix();


    pushMatrix();
    translate(50, 50);
    scale(0.25);
    stroke(120, 78, 173);
    strokeWeight(6);
    drawOddFlower1();
    popMatrix();

    pushMatrix();
    translate(550, 250);
    scale(0.60);
    stroke(86, 181, 0);
    strokeWeight(6);
    drawOddFlower3();
    popMatrix();


    pushMatrix();
    translate(350, 350);
    stroke(255, 107, 199);
    strokeWeight(6);
    drawOddFlower4();
    popMatrix();

    


    fill(238, 242, 34);
    stroke(0);
    rect(300, 350, 200, 100, 28);
    fill(0);
    textAlign(CENTER, CENTER);
    pressStart = createFont("Press Start 2P", 16);
    textFont(pressStart);
    text("Start Game", 400, 400);

    textAlign(CENTER,CENTER);
    pressStart = createFont("Press Start 2P", 32);
    textFont(pressStart);
    text("Krabby Patty Catcher", 400, 50);

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
        int yStart = 0;
        int yEnd = height;
        color topColor = color(146, 242, 245);
        color bottomColor = color(33, 207, 91);

        for (int i = yStart; i <= yEnd; i++) {
        float inter = map(i, yStart, yEnd, 0, .5);
        color c = lerpColor(topColor, bottomColor, inter);
        stroke(c);
        line(0, i, width, i);
        }
       
        fill(255, 229, 161);
        stroke(255, 229, 161);
        rect(0,650,800,150);
        drawSand();
        noStroke();
        arc(0, 675, 100, 100, PI, TWO_PI);
        arc(300, 665, 150, 100, PI, TWO_PI);
        arc(600, 675, 100, 75, PI, TWO_PI);
        arc(800, 650, 100, 100, PI, TWO_PI);
        
        drawSeaweed();  
        
        pushMatrix();
        translate(200, 350);
        stroke(255, 128, 236);
        scale(0.20);
        strokeWeight(4);
        drawOddFlower4();
        popMatrix();
        
        pushMatrix();
        translate(100, 100);
        strokeWeight(4);
        stroke(255, 128, 236);
        scale(0.20);
        drawOddFlower1();
        popMatrix();

        pushMatrix();
        translate(450, 200);
        strokeWeight(4);
        stroke(255, 128, 236);
        scale(0.20);
        drawOddFlower3();
        popMatrix();

        pushMatrix();
        translate(300, 500);
        strokeWeight(4);
        stroke(255, 128, 236);
        scale(0.20);
        drawOddFlower2();
        popMatrix();

        pushMatrix();
        translate(500, 500);
        strokeWeight(4);
        stroke(255, 128, 236);
        scale(0.30);
        drawOddFlower1();
        popMatrix();

        pushMatrix();
        translate(650, 200);
        stroke(255, 128, 236);
        scale(0.40);
        strokeWeight(4);
        drawOddFlower4();
        popMatrix();
       
        //Bubbles 
        strokeWeight(2);
        drawBubbles();

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


void drawSeaweed(){
    stroke(25, 166, 25);
    line(14, 692, 21, 608);
    line(685, 681, 679, 621);
    line(242, 698, 250, 603);
    line(515, 677, 508, 638);
    line(87, 688, 80, 612);
    line(734, 695, 742, 627);
    line(364, 683, 357, 601);
    line(156, 699, 163, 641);
    line(601, 676, 594, 610);
    line(425, 690, 432, 632);
    line(27, 684, 20, 605);
    line(778, 697, 785, 619);
    line(191, 679, 184, 644);
    line(546, 686, 553, 604);
    line(308, 693, 301, 628);
    line(659, 678, 666, 615);
    line(120, 700, 113, 642);
    line(478, 682, 486, 607);
    line(224, 689, 217, 623);
    line(750, 696, 743, 639);
    line(388, 680, 395, 600);
    line(55, 691, 62, 631);
    line(621, 685, 614, 606);
    line(280, 698, 287, 640);
    line(707, 677, 700, 611);
    line(138, 686, 145, 620);
    line(453, 694, 446, 645);
    line(336, 681, 343, 602);
    line(789, 687, 782, 633);
    line(173, 699, 167, 609);
    line(568, 676, 575, 624);
    line(257, 692, 250, 643);
    line(642, 683, 649, 601);
    line(95, 695, 102, 632);
    line(499, 678, 492, 607);
    line(375, 689, 382, 635);
    line(722, 697, 715, 605);
    line(207, 684, 214, 618);
    line(614, 690, 607, 644);
    line(40, 682, 33, 616);
    line(412, 696, 419, 622);
    line(668, 679, 661, 644);
    line(180, 688, 187, 606);
    line(531, 694, 524, 631);
    line(295, 681, 302, 608);
    line(761, 687, 754, 641);
    line(108, 699, 115, 602);
    line(466, 676, 459, 627);
    line(235, 693, 242, 644);
    line(585, 685, 578, 612);
    line(349, 691, 356, 619);
    line(698, 678, 691, 638);
    line(68, 686, 75, 604);
    line(437, 697, 430, 634);
    line(629, 680, 636, 609);
    line(149, 695, 142, 641);
    line(518, 682, 525, 602);
    line(272, 689, 265, 625);
    line(780, 698, 787, 644);
    line(196, 677, 189, 608);
    line(553, 684, 560, 621);
    line(321, 692, 314, 642);
    line(677, 683, 684, 603);
    line(86, 696, 79, 617);
    line(488, 681, 495, 644);
    line(216, 688, 209, 606);
    line(739, 694, 746, 628);
    line(358, 679, 351, 613);
    line(607, 686, 614, 639);
    line(30, 693, 23, 618);
    line(398, 680, 405, 607);
    line(650, 687, 643, 634);
    line(132, 699, 139, 600);
    line(539, 676, 532, 643);
    line(284, 691, 291, 620);
    line(768, 685, 761, 610);
    line(164, 698, 171, 631);
    line(471, 677, 464, 605);
    line(248, 686, 255, 637);
    line(593, 692, 586, 613);
    line(380, 683, 387, 624);
    line(714, 696, 707, 644);
    line(48, 679, 55, 603);
    line(419, 688, 412, 627);
    line(636, 694, 643, 644);
    line(102, 682, 95, 606);
    line(513, 689, 520, 619);
    line(303, 697, 296, 641);
    line(757, 680, 764, 601);
    line(175, 687, 168, 625);
    line(560, 699, 567, 644);
    line(228, 676, 221, 611);
    line(691, 690, 698, 620);
    line(343, 684, 336, 644);
    line(59, 692, 66, 608);
    line(444, 681, 437, 618);
    line(618, 688, 625, 635);
    line(145, 695, 138, 605);
    line(526, 678, 533, 626);
    line(793, 689, 786, 612);
    line(38, 696, 31, 604);
    line(763, 683, 770, 622);
    line(189, 690, 182, 638);
    line(527, 677, 534, 609);
    line(294, 684, 287, 615);
    line(648, 692, 655, 642);
    line(111, 685, 104, 603);
    line(463, 698, 470, 629);
    line(231, 681, 224, 641);
    line(718, 688, 711, 607);
    line(372, 695, 379, 625);
    line(81, 679, 88, 601);
    line(584, 686, 577, 634);
    line(316, 693, 323, 610);
    line(672, 680, 665, 628);
    line(147, 687, 154, 605);
    line(495, 700, 488, 637);
    line(261, 676, 268, 612);
    line(745, 691, 738, 643);
    line(408, 684, 415, 602);
    line(65, 692, 58, 620);
    line(612, 678, 619, 640);
    line(339, 689, 332, 606);
    line(785, 697, 792, 623);
    line(168, 681, 161, 645);
    line(509, 688, 516, 611);
    line(277, 694, 270, 626);
    line(695, 682, 702, 604);
    line(126, 689, 119, 635);
    line(442, 696, 449, 618);
    line(355, 679, 348, 601);
    line(774, 686, 767, 639);
    line(201, 693, 208, 614);
    line(551, 680, 544, 627);
    line(21, 687, 28, 608);
    line(628, 700, 635, 642);
    line(431, 676, 424, 603);
    line(703, 691, 710, 630);
    line(158, 683, 151, 616);
    line(482, 690, 489, 644);
    line(302, 698, 295, 609);
    line(657, 682, 664, 621);
    line(93, 689, 86, 636);
    line(538, 695, 545, 605);
    line(245, 678, 238, 624);
    line(729, 686, 736, 640);
    line(384, 693, 377, 613);
    line(47, 680, 54, 632);
    line(596, 687, 589, 602);
    line(796, 699, 789, 626);
        

    

}
void drawBubbles(){
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

}
void drawSand(){
    stroke(0,0,0);
    point(200,700);
    point(200,700);
    point(100,675);
    point(100,675);
    point(300,660);
    point(300,660);
    point(10,750);
    point(10,750);
    point(600,725);
    point(600,725);
    point(700,655);
    point(700,655);
    point(50, 735);
    point(50, 735);
    point(400, 685);
    point(400, 685);
    point(350, 790);
    point(350, 790);
    point(700,700);
    point(700,700);
    point(345, 745);
    point(345, 745);
    point(60, 670);
    point(60, 670);
    point(15, 690);
    point(15, 690);
    point(455, 690);
    point(455, 690);
    point(600, 750);
    point(600, 750);
    point(215, 660);
    point(215,660);
    point(245, 700);
    point(245, 700);
    point(315, 715);
    point(315, 715);
    point(350, 670);
    point(350,670);
    point(380, 775);
    point(380,775);
    point(450, 695);
    point(450, 695);
    point(412, 723);
    point(58, 682);
    point(734, 789);
    point(192, 654);
    point(603, 715);
    point(315, 741);
    point(87, 796);
    point(521, 663);
    point(240, 778);
    point(694, 702);
    point(14, 659);
    point(768, 734);
    point(455, 689);
    point(32, 755);
    point(611, 781);
    point(188, 672);
    point(389, 729);
    point(742, 668);
    point(105, 712);
    point(548, 793);
    point(273, 685);
    point(637, 747);
    point(42, 718);
    point(781, 676);
    point(331, 762);
    point(496, 698);
    point(164, 784);
    point(719, 725);
    point(228, 652);
    point(573, 709);
    point(91, 766);
    point(410, 788);
    point(652, 661);
    point(137, 737);
    point(366, 694);
    point(795, 751);
    point(284, 714);
    point(519, 772);
    point(73, 679);
    point(628, 691);
    point(201, 743);
    point(447, 769);
    point(706, 681);
    point(122, 798);
    point(354, 657);
    point(589, 732);
    point(26, 706);
    point(761, 764);
    point(478, 674);
    point(179, 721);
    point(643, 792);
    point(308, 688);
    point(534, 717);
    point(68, 779);
    point(725, 655);
    point(215, 738);
    point(461, 701);
    point(679, 759);
    point(149, 665);
    point(395, 749);
    point(788, 711);
    point(83, 728);
    point(502, 786);
    point(257, 670);
    point(616, 735);
    point(342, 794);
    point(753, 693);
    point(114, 745);
    point(433, 662);
    point(567, 776);
    point(19, 684);
    point(691, 740);
    point(326, 708);
    point(485, 765);
    point(158, 697);
    point(774, 783);
    point(239, 722);
    point(598, 678);
    point(96, 752);
    point(377, 774);
    point(712, 667);
    point(171, 710);
    point(526, 727);
    point(291, 791);
    point(665, 686);
    point(47, 768);
    point(420, 704);
    point(746, 748);
    point(130, 673);
    point(559, 695);
    point(268, 757);
    point(604, 780);
    point(383, 651);
    point(799, 689);
    point(102, 771);
    point(469, 736);
    point(631, 716);
    point(222, 795);
    point(348, 677);
    point(511, 744);
}
void drawEvenFlower(){
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
void drawOddFlower1(){

     //Flowers
    noFill();
    

    //Petal
    beginShape();
    curveVertex(180,  200);
    curveVertex(180,  200);
    curveVertex(110,  100);
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
    curveVertex(-110,  -100);  
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
    curveVertex(-130,  -200); 
    curveVertex( 0,  -200);  
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
    curveVertex(-90,  -190);  
    curveVertex( 10,  -200);  
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
    curveVertex(-120,  -100);  
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
void drawOddFlower2(){

     //Flowers
    noFill();
    

    //Petal
    beginShape();
    curveVertex(180,  200);
    curveVertex(180,  200);
    curveVertex(160,  100);
    curveVertex(230,  100);
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
    curveVertex( 20,  -100);  
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
    curveVertex( -10,  -180);  
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
    curveVertex( 0,  -200);  
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
    curveVertex(-100,  -100);  
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
void drawOddFlower3(){

     //Flowers
    noFill();
    

    //Petal
    beginShape();
    curveVertex(180,  200);
    curveVertex(180,  200);
    curveVertex(160,  125);
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
    curveVertex( 10,  -100);  
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
    curveVertex(-40,  -200); 
    curveVertex( 20,  -200);  
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
    curveVertex(-120,  -200);  
    curveVertex(-30,  -200);  
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
void drawOddFlower4(){

     //Flowers
    noFill();
    

    //Petal
    beginShape();
    curveVertex(180,  200);
    curveVertex(180,  200);
    curveVertex(160,  100);
    curveVertex(240,  125);
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
    curveVertex( 30,  -120);  
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
    curveVertex(-130,  -200); 
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
    curveVertex(-90,  -80);  
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