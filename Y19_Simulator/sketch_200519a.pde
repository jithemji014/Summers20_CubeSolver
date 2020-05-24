/*                                          PROJECT
                                        SpeedCubing Club
                                   Rubik's Cube Solver(Simulator) 

*/
/////////////////////////////////////////////////////////////////////////////////////////////////

import peasy.*;

PeasyCam cam;


int dim = 3;
cubie[] cube = new cubie[dim*dim*dim];   //Single array giving the dimesnsion to the cube

void setup(){
     size(600,600,P3D);                    //  P3D is 3D render for 3Dimension 
     
     cam = new PeasyCam(this,400);
     int index=0;
   
    
     for (int x=-1;x<=1;x++){               /* Specifying the position of each cubie*/ 
     for (int y=-1;y<=1;y++){               //
       for (int z=-1;z<=1;z++){             // 
         
        
         PMatrix3D matrix = new PMatrix3D();
         matrix.translate(x,y,z);
         cube[index]=new cubie(matrix,x,y,z);
         index++;
       }
     }
   }
 } 
     
    
  
       /*              Applying 2D Rotation of the Faces                  */
//////////////////////////////////////////////////////////////////////////////////////////////////////////


int index =0;

void turnX(int index,int dir){
        for (int i=0;i<cube.length;i++){
          cubie qb = cube[i];
          if(qb.x==index){
          PMatrix2D matrix2 = new PMatrix2D();
          
          matrix2.rotate(dir*HALF_PI);                //Firstly rotation
          matrix2.translate(qb.y, qb.z);               //Then providing the new positions to y and z             
     
          qb.update(qb.x,round(matrix2.m02),round(matrix2.m12));       // updating the new location to the matrices
           qb.turnFacesX(dir);
 
        }
     }
  }


 void turnY(int index,int dir){
        for (int i=0;i<cube.length;i++){
          cubie qb = cube[i];
        if(qb.y==index){
          PMatrix2D matrix2 = new PMatrix2D();
          
          matrix2.rotate(dir*HALF_PI);
          matrix2.translate(qb.x, qb.z);
     
          qb.update(round(matrix2.m02),qb.y,round(matrix2.m12));
           qb.turnFacesY(dir);
        }
        }
     
     
     }

  void turnZ(int index,int dir){
        for (int i=0;i<cube.length;i++){
          cubie qb = cube[i];
        if(qb.z==index){
          PMatrix2D matrix2 = new PMatrix2D();
          
          matrix2.rotate(dir*HALF_PI);
          matrix2.translate(qb.x, qb.y);
          
     
          qb.update(round(matrix2.m02),round(matrix2.m12),round(qb.z));
          qb.turnFacesZ(dir);
        }
      }
    }
    
     
     void keyPressed(){
       
       switch(key)
       {
       case 'f':
       turnZ(1,1);
       break;
       
       case 'F':
       turnZ(1,-1);
       break;
       
       case 'b':
       turnZ(-1,1 );
       break;
       
       case 'B':
       turnZ(-1,-1);
       break;
       
       case 'u':
       turnY(1,1);
       break;
       
       case 'U':
       turnY(1,-1);
       break;
       
       case 'd':
       turnY(-1,1);
       break;
       
       case 'D':
       turnY(-1,-1);
       break;
       
       case 'l':
       turnX(-1,1);
       break;
       
       case 'L':
       turnX(-1,-1);
       break;
       
       case 'r':
       turnX(1,1);
       break;
       
       case 'R':
       turnX(1,-1);
       break;
        }
      }
      
                         /*          Show The Cube           */
//////////////////////////////////////////////////////////////////////////////////////////////////////////////                         
 
void draw(){
  
  background(51);
  scale(51);
  
   for (int i=0;i<cube.length;i++){
     
         cube[i].show();
        }
   }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////   
