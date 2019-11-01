Particle[] starfield;
void setup()
{
	size(500,500);
	background(0);
	starfield = new Particle[3000];
	
	for(int i = 0; i < starfield.length; i++)
	{
		starfield[i] = new Particle();
	}
	starfield[0] = new OddballParticle();

}
void draw()
{
	background(0);
	for(int i = 0; i < starfield.length; i++)
	{
		starfield[i].move();
		starfield[i].show();
	}
}
class Particle
{
	double myX, myY, myAngle, mySpeed;
	int myColor;
	Particle()
{
	myX = 250;
	myY = 250;
	mySpeed = Math.random()*8;
	myAngle = Math.random()*2*Math.PI;
	myColor = color((int)(Math.random()*256),255,255);
}

void move()
{
	myX = myX + Math.cos(myAngle)*mySpeed;
	myY = myY + Math.sin(myAngle)*mySpeed;
}

void show()
{
	fill(myColor);
	stroke(255);
	ellipse((float)myX,(float)myY,10,10);
}
}
class OddballParticle extends Particle
{
	OddballParticle()
	{
		myColor = color(255,0,255);
	}
void show()
{
	fill(myColor);
	stroke(myColor);
	ellipse((int)myX,(int)myY,50,50);

	ellipse((int)myX,(int)myY,25,20);
	ellipse((int)myX+5,(int)myY+8,15,10);
	ellipse((int)myX-10,(int)myY-4,15,10);
	ellipse((int)myX,(int)myY-13,20,10);
	ellipse((int)myX+10,(int)myY+15,15,7);
}
void move()
{
		myX = myX + (int)(Math.random()*4)-2;
		myY = myY + (int)(Math.random()*4)-2;
}
}



