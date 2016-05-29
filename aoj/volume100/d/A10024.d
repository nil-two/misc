import std.math;
import std.stdio;

void main() {
	double x1, y1, x2, y2;
	readf("%f %f %f %f", &x1, &y1, &x2, &y2);

	double distance = ((x2-x1).pow(2) + (y2-y1).pow(2)).sqrt;
	writefln("%.6f", distance);
}
