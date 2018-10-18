Particle [] bob;
void setup()
{
	size(600,600);
	bob = new Particle[1000];
	for(int i = 0; i < bob.length; i++)
	{
		bob[i] = new NormalParticle();
	}
	bob[0] = new OddballParticle();
	bob[1] = new JumboParticle();

}
void draw()
{
	background(0);
  	for(int i = 0; i < bob.length; i++){
    	bob[i].show();
    	bob[i].move();
 	 }	
}
class NormalParticle implements Particle
{
	int myColor;
	double myX, myY, myAngle, mySpeed, myX2, myY2, myX3, myY3, myX4, myY4, myX5, myY5;

	NormalParticle(){
		myX = myY = myX3 = myY4 = 0;
		myX2 = myY2 = myY3 = myX4 = 600;
		myX5 = myY5 = 300;
		myAngle = Math.random()*2*Math.PI;
		mySpeed = Math.random()*10;
		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	}

	public void move()
	{
		myX = myX + Math.cos(myAngle)*mySpeed;
		myY = myY + Math.sin(myAngle)*mySpeed;
		myX2 = myX2 + Math.cos(myAngle)*mySpeed;
		myY2 = myY2 + Math.sin(myAngle)*mySpeed;
		myX3 = myX3 + Math.cos(myAngle)*mySpeed;
		myY3 = myY3 + Math.sin(myAngle)*mySpeed;
		myX4 = myX4 + Math.cos(myAngle)*mySpeed;
		myY4 = myY4 + Math.sin(myAngle)*mySpeed;
		myX5 = myX5 + Math.cos(myAngle)*mySpeed;
		myY5 = myY5 + Math.sin(myAngle)*mySpeed;
		myAngle = myAngle + 0.03;
	}
	public void show()
	{
		fill(myColor);
		ellipse((int)myX,(int)myY,5,5);
		ellipse((int)myX2,(int)myY2,5,5);
		ellipse((int)myX3,(int)myY3,5,5);
		ellipse((int)myX4,(int)myY4,5,5);
		ellipse((int)myX5,(int)myY5,5,5);
	}

}
interface Particle
{
	public void move();
	public void show();

}
class OddballParticle implements Particle //uses an interface
{	
	private int myX, myY;
	OddballParticle()
	{
		myX = 300;
		myY = 300;
	}
	public void move()
	{
		myX = myX + 3;
		myY = myY - 1;
		if(myX > 600){
			myX = 0;
			myY = 400;
		}
	}
	public void show()
	{
		noStroke();
		fill(127);
		ellipse(myX,myY,50,50);
		fill(90);
		ellipse(myX-10,myY-10,10,10);
		ellipse(myX+6,myY+6,21,21);
	}
}
class JumboParticle extends NormalParticle//uses inheritance
{
	public void show(){
		fill(255,255,0);
		ellipse((int)myX5,(int)myY5,50,50);
	}
}

void mousePressed(){
	redraw();
}

