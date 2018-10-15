//your code here

void setup()
{

	size(600,600);
	//your code here
}
void draw()
{
	background(0);
	NormalParticle bob = new NormalParticle();
	bob.show();
	bob.move();

	//your code here
}
class NormalParticle
{
	//your code here
	int myColor;
	double myX, myY, myAngle, mySpeed;

	NormalParticle(){
		myColor = color(255,0,0);
		myX = 300;
		myY = 300;
		mySpeed = 10;
	}

	public void move()
	{
		myX = myX + (int)mySpeed;
		myY = myY + (int)mySpeed;
	}
	public void show()
	{
		fill((int)myColor);
		ellipse((int)myX,(int)myY,20,20);
	}

}
interface Particle
{
	//your code here

}
class OddballParticle  //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

