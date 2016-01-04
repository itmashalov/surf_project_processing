void setup() {
size(800, 600);


}
PImage main= loadImage("surf_main.jpg");
PImage bg3 = loadImage("bg3.jpg");



int bg=0;
int bg2=0;
void draw()
{
 
 if(bg==0){
   background(main);
 }


 
 
 
  println(frameCount);
 
 

 







   
    if(mouseX<380 || mouseX>460 || mouseY<450 || mouseY>495){
      fill(10,188,135);
  
    }
    else{
      fill(5,72,248);
      mPressed1();
       
    }
   
  if(bg==0){
    rect(380, 450, 80, 45);
    fill(255,255,255);
    textSize(18);
    text("Start ", 401.5, 476);  
  }
////////////////

if(mouseX<220 || mouseX>290 || mouseY<15 || mouseY>25){
      fill(10,188,135);
  
    }
    else{
      fill(5,72,248);
      mPressed2();
       
    }
    
    
////////////////////////
  if((mouseX<85.5 || mouseX>210 || mouseY<546 || mouseY>556) && bg==1 && bg2!=1){
      
      if(bg==1){
        
        fill(0);
        textSize(16);
        text("Watergate Bay ", 85.5, 556);
        fill(10,188,135);
        rect(200, 546, 10, 10);
      }  
  }
  
  
    else{
      
      if(bg==1 && bg2!=1){
        fill(0);
        textSize(16);
        text("Watergate Bay ", 85.5, 556);
        fill(5,72,248);
        rect(200, 546, 10, 10);
      }
    }

    
    
    if((mouseX<246 || mouseX>380 || mouseY<285 || mouseY>295) && bg==1 && bg2!=1){
      
      if(bg==1){
        
        fill(0);
        textSize(16);
        text("Saltburn Beach ", 246, 295);
        fill(10,188,135);
        rect(370, 285, 10, 10);
      }  
  }
    else{
      
      if(bg==1 && bg2!=1){
        fill(0);
        textSize(16);
        text("Saltburn Beach ", 246, 295);
        fill(5,72,248);
        rect(370, 285, 10, 10);
      }
    }
    
    
    
    if((mouseX<230 || mouseX>321 || mouseY<190 || mouseY>200) && bg==1 && bg2!=1){
      
      if(bg==1){
        
        fill(0);
        textSize(16);
        text("Pease Bay ", 230, 200);
        fill(10,188,135);
        rect(311, 190, 10, 10);
      }  
  }
    else{
      
      if(bg==1 && bg2!=1){
        fill(0);
        textSize(16);
        text("Pease Bay ", 230, 200);
        fill(5,72,248);
        rect(311, 190, 10, 10);
      }
    }
    
/////////
 if((mouseX<135 || mouseX>240 || mouseY<480 || mouseY>490) && bg==1 && bg2!=1){
      
      if(bg==1){
        
        fill(0);
        textSize(16);
        text("Llangennith ", 135, 490);
        fill(10,188,135);
        rect(230, 480, 10, 10);
      }  
  }
    else{
      
      if(bg==1 && bg2!=1){
        fill(0);
        textSize(16);
        text("Llangennith ", 135, 490);
        fill(5,72,248);
        rect(230, 480, 10, 10);
      }
    }

////////////////


if((mouseX<168 || mouseX>250 || mouseY<565 || mouseY>575) && bg==1 && bg2!=1){
      
      if(bg==1){
        
        fill(0);
        textSize(16);
        text("Bantham ", 168, 576);
        fill(10,188,135);
        rect(240, 565, 10, 10);
      }  
  }
    else{
      
      if(bg==1 && bg2!=1){
        fill(0);
        textSize(16);
        text("Bantham ", 168, 576);
        fill(5,72,248);
        rect(240, 565, 10, 10);
      }
    }
    
 ////////////////////////////   
    
if((mouseX<220 || mouseX>335 || mouseY<535 || mouseY>545) && bg==1 && bg2!=1){
      
      if(bg==1){
        
        fill(0);
        textSize(16);
        text("Bournemouth ", 220, 545);
        fill(10,188,135);
        rect(325, 535, 10, 10);
      }  
  }
    else{
      
      if(bg==1 && bg2!=1){
        fill(0);
        textSize(16);
        text("Bournemouth ", 220, 545);
        fill(5,72,248);
        rect(325, 535, 10, 10);
      }
    }    
    
/////////////////////////

if((mouseX<220 || mouseX>290 || mouseY<15 || mouseY>25) && bg==1&& bg2!=1 && bg2!=1){
      
      if(bg==1){
        
        fill(0);
        textSize(16);
        text("Thurso ", 220, 25);
        fill(10,188,135);
        rect(280, 15, 10, 10);
      }  
  }
    else{
      
      if(bg==1 && bg2!=1){
        fill(0);
        textSize(16);
        text("Thurso ", 220, 25);
        fill(5,72,248);
        rect(280,15, 10, 10);
      }
    }    
    










    
    
}

void mPressed1(){
    if (mousePressed == true) {
      fill(0);
      background(bg3);
      bg=1;
      bg2=0;
       
  }
}

void mPressed2(){
    if (mousePressed == true) {
      fill(0);
      background(255,255,255);
      bg2=1;
       dataWeb1();
  }
}

String dataWeb1(){

    float bit;
  int y;
  float x = 0;
  String[] hr1;
  String[] hr2;
  String[] hr3;
  String[] hr4;
  String[] hr5;
  String[] hr6;
   String[] hr7;
  String[] hr8;
  String[] hr9;
  



String[] page = loadStrings("http://www.a1surf.com/thurso-east/surf-report.aspx");
 
    // initilise a new string variable to put the page into
    String p = "";
    String p1 = "";

    //for every line
   
    
    for (int i=0;i<page.length;i++) {
      p += page[i];
    }
    
    
    
    String startMarker = "HWLWTableHWLWCell";
    String endMarker = "</tbody>";
    int start = p.indexOf(startMarker);
    p = p.substring(start+startMarker.length(), p.length());
    int end = p.indexOf(endMarker);
    String ss = p.substring(0, end);
 
 
    String[] list1 = split(ss, "/td");
    hr1 = list1[0].split(">");
    hr1 = hr1[1].split("<");

    String[] list2 = split(ss, "/td>");
    hr2 = list2[1].split(">");
    hr2 = hr2[1].split("<");
    
    String[] list3 = split(ss, "/td>");
    hr3 = list3[2].split(">");
    hr3 = hr3[1].split("<");
    
    String[] list4 = split(ss, "/td>");
    hr4 = list4[3].split(">");
    hr4 = hr4[3].split("<");
    
    String[] list5 = split(ss, "/td>");
    hr5 = list5[4].split(">");
    hr5 = hr5[1].split("<");
    
    String[] list6 = split(ss, "/td>");
    hr6 = list6[5].split(">");
    hr6 = hr6[1].split("<");
   
    String[] list7 = split(ss, "/td>");
    hr7 = list7[6].split(">");
    hr7 = hr7[3].split("&nbsp;m<");
    
    String[] list8 = split(ss, "/td>");
    hr8 = list8[7].split(">");
    hr8 = hr8[1].split("&nbsp;m<");
    
    
    String[] list9 = split(ss, "/td>");
    hr9 = list9[8].split(">");
    hr9 = hr9[1].split("&nbsp;m<");
   
   String ppp=hr1[0]+hr2[0]+hr3[0];
  
   text("                "+ppp+".", 0, 280);
 
   
   
    String ppp1="           "+hr4[0]+"                         "+hr5[0]+"                          "+hr6[0];
  
   text("Tide times   "+ppp1+".", 0, 320);
   
    String ppp2="         "+hr7[0]+"m                          "+hr8[0]+"m                           "+hr9[0]+"m";
  
   text("Waves height:"+ppp2+".", 0, 360);

return ppp;

















}

