import std.stdio;
import std.math;

void main() {
	double a, b, c;
	double deg, rad;
	readf("%f %f %f", &a, &b, &deg);
	rad = deg * PI / 180;
	c   = (a.pow(2) + b.pow(2) - 2*a*b*cos(rad)).sqrt;

	double area      = a*b*sin(rad) / 2; 
	double perimeter = a + b + c;
	double h         = 2*area / a;
	writefln("%.6f", area);
	writefln("%.6f", perimeter);
	writefln("%.6f", h);
}
