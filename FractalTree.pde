private double fractionLength = .8; 
private int smallestBranch = 15; 
private double branchAngle = .2;  

public void setup() 
{   
	size(1000,1200);    
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(500,1000,500,1100);   
	drawBranches(500,1000,150,3*Math.PI/2);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1 =angle-branchAngle;
	double angle2=angle+branchAngle;
	int startX = x;
	int startY = y;
	int endX1 = (int)(x+branchLength*Math.cos(angle1));
	int endY1 = (int)(y+branchLength*Math.sin(angle1));
	int endX2 = (int)(x+branchLength*Math.cos(angle2));
	int endY2 = (int)(y+branchLength*Math.sin(angle2));

	if(branchLength <= smallestBranch) {
		line(startX,startY,endX1,endY1);
		line(startX,startY,endX2,endY2);

	}
	else {
		line(startX,startY,endX1,endY1);
		line(startX,startY,endX2,endY2);
		drawBranches(endX1,endY1,branchLength*fractionLength,angle1);
		drawBranches(endX2,endY2,branchLength*fractionLength,angle2);
	}
} 
