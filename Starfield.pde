NormalParticle [] bob;
void setup()
{
	size(600,600);
	bob = new NormalParticle[1000];
	for(int i = 0; i < bob.length; i++)
	{
		bob[i] = new NormalParticle();
	}
}
void draw()
{
	background(0);
  	for(int i = 0; i < bob.length; i++){
    	bob[i].show();
    	bob[i].move();
 	 }	
}
class NormalParticle
{
	int myColor;
	double myX, myY, myAngle, mySpeed, myX2, myY2, myX3, myY3, myX4, myY4;

	NormalParticle(){
		myX = myY = myX3 = myY4 = 0;
		myX2 = myY2 = myY3 = myX4 = 600;
		myAngle = Math.random()*2*Math.PI;
		mySpeed = Math.random()*10;
		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	}

	public void move()
	{
		myX = myX + Math.cos(myAngle)*mySpeed;
		myY = myY + Math.sin(myAngle)*mySpeed;
		myAngle = myAngle + 0.03;
		myX2 = myX2 + Math.cos(myAngle)*mySpeed;
		myY2 = myY2 + Math.sin(myAngle)*mySpeed;
		myX3 = myX3 + Math.cos(myAngle)*mySpeed;
		myY3 = myY3 + Math.sin(myAngle)*mySpeed;
		myX4 = myX4 + Math.cos(myAngle)*mySpeed;
		myY4 = myY4 + Math.sin(myAngle)*mySpeed;
	}
	public void show()
	{
		fill(myColor);
		ellipse((int)myX,(int)myY,5,5);
		ellipse((int)myX2,(int)myY2,5,5);
		ellipse((int)myX3,(int)myY3,5,5);
		ellipse((int)myX4,(int)myY4,5,5);
	}

}
interface Particle
{
	public void move();
	public void show();

}
class OddballParticle  //uses an interface
{
	//your code here
}
class JumboParticle extends NormalParticle//uses inheritance
{
}

