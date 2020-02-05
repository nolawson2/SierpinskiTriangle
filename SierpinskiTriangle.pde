int min = 5;


public void setup()

{
 size(1000,1000);
}
public void draw()
{
 sierpinski(500,0,500);
}
public void mouseDragged()//optional
{

}
public void sierpinski(float x, float y, float len) 
{
 if(len < min )
 triangle(x,y,x+len/2,y+len/(float)Math.sqrt(3), x-len/2,y+len/(float)Math.sqrt(3));
 else{
   sierpinski(x,y,len/2);
   sierpinski(x+len/2,y+len/(float)Math.sqrt(3),len/2);
   sierpinski( x-len/2,y+len/(float)Math.sqrt(3),len/2);
 }
 
}
