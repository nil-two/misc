import std.math;
import std.stdio;

void main() {
	double r;
	readf("%f", &r);

	auto area = PI * r.pow(2);
	auto circumference = 2 * PI * r;
	writefln("%.6f %.6f", area, circumference);
}
