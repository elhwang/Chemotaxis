Bacteria [] bob;  
 void setup()   
 {     
   background(256,256,256);
   size(500,500);
   bob = new Bacteria[100];
   for(int i = 0; i < bob.length; i++){
    bob[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   //move and show the bacteria
   background(256,256,256); 
   for(int i = 0; i < bob.length; i++){
     bob[i].show();
     bob[i].move();
   }
 }  
 class Bacteria    
 {     
   int myX, myY, rgb;
   Bacteria()
   { 
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    rgb = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256),70);
   }
   void move()
   {
     if(myX < 500 || myY < 500){
     myX += ((int)(Math.random()*3)-1)*3;
     myY += ((int)(Math.random()*3)-1)*3;
     }
   }
   void show()
   {
     fill(rgb);
     rect(myX,myY,50,50);
     fill(0);
     textSize(13);
     text("Error 404",myX, myY + 30);
   }
 }    
