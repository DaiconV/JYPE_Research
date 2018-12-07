#include <algorithm>
#include <iostream>
#include <cmath>

#include "Matrix.hpp"

int main()
{
	double x, y, z, phi, theta, psi, x_W, y_W, z_W, t;
	Matrix orie_phi(3, 3), orie_theta(3, 3), orie_psi(3, 3), orie(3, 3), display_matrix;
	std::cout.precision(10);

	std::cout << "x: ";
	std::cin >> x;
	std::cout << "y: ";
	std::cin >> y;
	std::cout << "z: ";
	std::cin >> z;
	std::cout << "phi: ";
	std::cin >> phi;
	orie_phi.setValue(0, 0, static_cast<double>(static_cast<long>((cos(phi)) * 10000000)) / 10000000);
	orie_phi.setValue(0, 1, static_cast<double>(static_cast<long>((-sin(phi)) * 10000000)) / 10000000);
	orie_phi.setValue(1, 0, static_cast<double>(static_cast<long>((sin(phi)) * 10000000)) / 10000000);
	orie_phi.setValue(1, 1, static_cast<double>(static_cast<long>((cos(phi)) * 10000000)) / 10000000);
	orie_phi.setValue(2, 2, 1);
//	orie_phi.print();

	std::cout << "theta: ";
	std::cin >> theta;
	orie_theta.setValue(0, 0, 1);
	orie_theta.setValue(1, 1, static_cast<double>(static_cast<long>((cos(theta)) * 10000000)) / 10000000);
	orie_theta.setValue(1, 2, static_cast<double>(static_cast<long>((-sin(theta)) * 10000000)) / 10000000);
	orie_theta.setValue(2, 1, static_cast<double>(static_cast<long>((sin(theta)) * 10000000)) / 10000000);
	orie_theta.setValue(2, 2, static_cast<double>(static_cast<long>((cos(theta)) * 10000000)) / 10000000);
//	orie_theta.print();
	std::cout << "psi: ";
	std::cin >> psi;
	orie_psi.setValue(0, 0, static_cast<double>(static_cast<long>((cos(psi)) * 10000000)) / 10000000);
	orie_psi.setValue(0, 1, static_cast<double>(static_cast<long>((-sin(psi)) * 10000000)) / 10000000);
	orie_psi.setValue(1, 0, static_cast<double>(static_cast<long>((sin(psi)) * 10000000)) / 10000000);
	orie_psi.setValue(1, 1, static_cast<double>(static_cast<long>((cos(psi)) * 10000000)) / 10000000);
	orie_psi.setValue(2, 2, 1);
//	orie_psi.print();

	orie = orie_phi * orie_theta * orie_psi;
	std::cout << "Transformation matrix:" << std::endl;
	for(int i = 0; i < 3; ++i)
		for(int j = 0; j < 3; ++j)
			display_matrix.setValue(i, j, orie.getValue(i, j));
	display_matrix.setValue(0, 3, x);
	display_matrix.setValue(1, 3, y);
	display_matrix.setValue(2, 3, z);
	display_matrix.setValue(3, 3, 1);
	
	display_matrix.print();

	x_W = x - 70 * orie.getValue(0, 2);
	y_W = y - 70 * orie.getValue(1, 2);
	z_W = z - 70 * orie.getValue(2, 2);

//	std::cout << "x_W: " << x_W << std::endl;
//	std::cout << "y_W: " << y_W << std::endl;
//	std::cout << "z_W: " << z_W << std::endl;

	double discr, theta_1, theta_2, theta_3, theta_4, theta_5, theta_6;

	discr = (x_W * x_W) + (y_W * y_W);
//	std::cout << "discri: " << discr << std::endl;
//	std::cout << "+: " << -x_W + sqrt(discr) << std::endl;
//	std::cout << "-: " << -x_W - sqrt(discr) << std::endl;

	theta_1 = 2 * atan2(((abs(-x_W + sqrt(discr)) <= abs(-x_W - sqrt(discr))) ? -x_W + sqrt(discr) : -x_W - sqrt(discr)), y_W); 
	std::cout << "theta1: " << std::fixed << theta_1 << std::endl;

	double A, B, C;
	A = static_cast<double>(static_cast<long>((x_W*cos(theta_1) + y_W*sin(theta_1)) * 100000)) / 100000;
	B = z_W - 317;
	C = ((450 * 450) + (A * A) + (B * B) - (480 * 480)) / 900;
//	std::cout << "A: " << A << std::endl;
//	std::cout << "B: " << B << std::endl;
//	std::cout << "C: " << C << std::endl;

	discr = static_cast<double>(static_cast<long>(((A * A) + (B * B) - (C * C)) * 100000000) / 100000000);

//	std::cout << "discr: " << discr << std::endl;

//	std::cout << "Y: " << A + sqrt(discr) << std::endl;
//	std::cout << "X: " << (C - B) << std::endl;

	theta_2 = 2 * atan2(A + sqrt(discr), (B + C));
	std::cout << "theta2: " << std::fixed << theta_2 << std::endl;
	theta_3 = asin((A - 450 * sin(theta_2))/ 480) - theta_2;
	std::cout << "theta3: " << std::fixed << theta_3 << std::endl;

	Matrix matrix_1, matrix_2, matrix_temp, matrix_3, matrix_123, inv_matrix_123_orie(3, 3), T_prime(3, 3);

	matrix_1.setValue(0, 0, cos(theta_1));
	matrix_1.setValue(0, 2, -sin(theta_1));
	matrix_1.setValue(1, 0, sin(theta_1));
	matrix_1.setValue(1, 2, cos(theta_1));
	matrix_1.setValue(2, 1, -1);
	matrix_1.setValue(2, 3, 317);
	matrix_1.setValue(3, 3, 1);
//	matrix_1.print();

	matrix_2.setValue(0, 0, cos(theta_2));
	matrix_2.setValue(0, 2, sin(theta_2));
	matrix_2.setValue(0, 3, 450*sin(theta_2));
	matrix_2.setValue(1, 0, sin(theta_2));
	matrix_2.setValue(1, 2, -cos(theta_2));
	matrix_2.setValue(1, 3, 450*-cos(theta_2));
	matrix_2.setValue(2, 1, 1);
	matrix_2.setValue(3, 3, 1);
//	matrix_2.print();

	matrix_temp.setValue(0, 0, 1);
	matrix_temp.setValue(1, 2, 1);
	matrix_temp.setValue(2, 1, -1);
	matrix_temp.setValue(3, 3, 1);
//	matrix_temp.print();

	matrix_3.setValue(0, 0, cos(theta_3));
	matrix_3.setValue(0, 2, sin(theta_3));
	matrix_3.setValue(0, 3, 480*sin(theta_3));
	matrix_3.setValue(1, 0, sin(theta_3));
	matrix_3.setValue(1, 2, -cos(theta_3));
	matrix_3.setValue(1, 3, 480*-cos(theta_3));
	matrix_3.setValue(2, 1, 1);
	matrix_3.setValue(3, 3, 1);
//	matrix_3.print();

	matrix_123 = matrix_1 * matrix_2 * matrix_temp * matrix_3;
//	matrix_123.print();

	for(int i = 0; i < 3; ++i)
		for(int j = 0; j < 3; ++j)
			inv_matrix_123_orie.setValue(i, j, static_cast<double>(static_cast<long>(matrix_123.getValue(j, i) * 10000000)) / 10000000);
//	inv_matrix_123_orie.print();

	T_prime = inv_matrix_123_orie * orie;
//	std::cout << "T': " << std::endl;
//	T_prime.print();
	theta_4 = static_cast<double>(static_cast<long>((atan2(T_prime.getValue(1, 2), T_prime.getValue(0, 2))) * 10000000)) / 10000000;
	theta_5 = static_cast<double>(static_cast<long>((atan2(T_prime.getValue(0, 2) * cos(theta_4) + T_prime.getValue(1, 2) * sin(theta_4), T_prime.getValue(2, 2))) * 10000000)) / 10000000;
	theta_6 = static_cast<double>(static_cast<long>((atan2(T_prime.getValue(1, 0) * cos(theta_4) - T_prime.getValue(0, 0) * sin(theta_4), T_prime.getValue(1, 1) * cos(theta_4) - T_prime.getValue(0, 1) * sin(theta_4))) * 10000000)) / 10000000;

	std::cout << "theta4: " << std::fixed << theta_4 << std::endl;
	std::cout << "theta5: " << std::fixed << theta_5 << std::endl;
	std::cout << "theta6: " << std::fixed << theta_6 << std::endl;


	return 0;
}
