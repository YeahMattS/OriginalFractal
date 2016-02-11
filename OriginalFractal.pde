public void setup()
{
	size(500, 500);
	background(0);
}

private float n = 200;

public void draw()
{
	background(0);
	stroke(0, 255, 0);
	translate(width/2, height/2);
	line(0, 100, 0, -100);
	translate(0, 0);	
	dragon(n);
}

public void dragon(float len)
{
	// len/=Math.sqrt(2);
	float lenPrime = (float)(len/Math.sqrt(2));

	if (lenPrime > 2)
	{
		pushMatrix();		
		rotate((float)Math.PI/4);
		line(0, 0, lenPrime, 0);
		translate(lenPrime/2, 0);
		dragon(lenPrime);
		popMatrix();

		pushMatrix();
		rotate((float)(-3*Math.PI/4));
		line(0, 0, lenPrime, 0);
		translate(lenPrime/2, 0);
		dragon(lenPrime);
		popMatrix();

		// pushMatrix();
		// rotate((float)Math.PI/4);
		// line(0, 0, lenPrime, 0);
		// translate(lenPrime/2, 0);
		// dragon(lenPrime);
		// popMatrix();

		// pushMatrix();		
		// rotate((float)(3*Math.PI/4));
		// line(0, 0, lenPrime, 0);
		// translate(lenPrime/2, 0);
		// dragon(lenPrime);
		// popMatrix();
	}
}

void mousePressed()
{
	if (mouseButton == LEFT)
		n+=10;
	if (mouseButton == RIGHT)
		n-=10;
}