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
	double x, y, angle, speed;

	NormalParticle(){
		myColor = color((int)Math.random()*256,(int)Math.random()*256,(int)Math.random()*256);
		x = 300;
		y = 300;
		angle = 0;
	}

	void move()
	{
		x = x + Math.cos(angle);
	}
	void show()
	{
		
		ellipse((int)x,(int)y,5,5);
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

