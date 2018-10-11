//your code here
void setup()
{
	size(600,600);
	NormalParticle bob = new NormalParticle();
	bob.show();
	bob.move();
	//your code here
}
void draw()
{
	background(0);
	

	//your code here
}
class NormalParticle
{
	//your code here
	int myColor;
	double myX, myY, myAngle, mySpeed;

	NormalParticle(){
		myColor = color((int)Math.random()*255,(int)Math.random()*255,(int)Math.random()*255);
		myX = 300;
		myY = 300;
		myAngle = Math.random()*Math.PI*2;
		mySpeed = Math.random()*10;
	}


	void show()
	{
		fill(myColor);
		ellipse((int)myX,(int)myY,5,5);
	}
	void move()
	{
		myX = myX + Math.cos((float)myAngle)*mySpeed;
		myX = myX + Math.sin((float)myAngle)*mySpeed;
	}
}
interface Particle
{
	//your code here

}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

