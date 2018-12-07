#include <iostream>
#include <cmath>

#include "Matrix.hpp"

int main()
{
		double theta_1, theta_2, theta_3, theta_4, theta_5, theta_6;
		Matrix matrix_1;
		Matrix matrix_2;
		Matrix matrix_3;
		Matrix matrix_4;
		Matrix matrix_5;
		Matrix matrix_6;
		Matrix matrix_7;

		Matrix pos(4, 1);

//		pos.setValue(2, 0, 500);
		pos.setValue(3, 0, 1);

		std::cout << "theta 1: ";
		std::cin >> theta_1;

		matrix_1.setValue(0, 0, static_cast<double>(static_cast<long>((cos(theta_1)) * 100000)) / 100000);
		matrix_1.setValue(0, 2, static_cast<double>(static_cast<long>((-sin(theta_1)) * 100000)) / 100000);
		matrix_1.setValue(1, 0, static_cast<double>(static_cast<long>((sin(theta_1)) * 100000)) / 100000);
		matrix_1.setValue(1, 2, static_cast<double>(static_cast<long>((cos(theta_1)) * 100000)) / 100000);
		matrix_1.setValue(2, 1, -1);
		matrix_1.setValue(2, 3, 317);
		matrix_1.setValue(3, 3, 1);
//		matrix_1.print();

		std::cout << "theta 2: ";
		std::cin >> theta_2;

		matrix_2.setValue(0, 0, static_cast<double>(static_cast<long>((cos(theta_2)) * 100000)) / 100000);
		matrix_2.setValue(0, 2, static_cast<double>(static_cast<long>((sin(theta_2)) * 100000)) / 100000);
		matrix_2.setValue(0, 3, 450*static_cast<double>(static_cast<long>((sin(theta_2)) * 100000)) / 100000);
		matrix_2.setValue(1, 0, static_cast<double>(static_cast<long>((sin(theta_2)) * 100000)) / 100000);
		matrix_2.setValue(1, 2, static_cast<double>(static_cast<long>((-cos(theta_2)) * 100000)) / 100000);
		matrix_2.setValue(1, 3, 450*static_cast<double>(static_cast<long>((-cos(theta_2)) * 100000)) / 100000);
		matrix_2.setValue(2, 1, 1);
		matrix_2.setValue(3, 3, 1);
//		matrix_2.print();

//		std::cout << "extra matrix:" << std::endl;
		matrix_3.setValue(0, 0, 1);
		matrix_3.setValue(1, 2, 1);
		matrix_3.setValue(2, 1, -1);
		matrix_3.setValue(3, 3, 1);
//		matrix_3.print();

		std::cout << "theta 3: ";
		std::cin >> theta_3;

		matrix_4.setValue(0, 0, static_cast<double>(static_cast<long>((cos(theta_3)) * 100000)) / 100000);
		matrix_4.setValue(0, 2, static_cast<double>(static_cast<long>((sin(theta_3)) * 100000)) / 100000);
		matrix_4.setValue(0, 3, 480*static_cast<double>(static_cast<long>((sin(theta_3)) * 100000)) / 100000);
		matrix_4.setValue(1, 0, static_cast<double>(static_cast<long>((sin(theta_3)) * 100000)) / 100000);
		matrix_4.setValue(1, 2, static_cast<double>(static_cast<long>((-cos(theta_3)) * 100000)) / 100000);
		matrix_4.setValue(1, 3, 480*static_cast<double>(static_cast<long>((-cos(theta_3)) * 100000)) / 100000);
		matrix_4.setValue(2, 1, 1);
		matrix_4.setValue(3, 3, 1);
//		matrix_4.print();

//		(matrix_1 * matrix_2 * matrix_3 * matrix_4).print();

		std::cout << "theta 4: ";
		std::cin >> theta_4;

		matrix_5.setValue(0, 0, static_cast<double>(static_cast<long>((cos(theta_4)) * 100000)) / 100000);
		matrix_5.setValue(0, 2, static_cast<double>(static_cast<long>((-sin(theta_4)) * 100000)) / 100000);
		matrix_5.setValue(1, 0, static_cast<double>(static_cast<long>((sin(theta_4)) * 100000)) / 100000);
		matrix_5.setValue(1, 2, static_cast<double>(static_cast<long>((cos(theta_4)) * 100000)) / 100000);
		matrix_5.setValue(2, 1, -1);
		matrix_5.setValue(3, 3, 1);
//		matrix_5.print();

		std::cout << "theta 5: ";
		std::cin >> theta_5;

		matrix_6.setValue(0, 0, static_cast<double>(static_cast<long>((cos(theta_5)) * 100000)) / 100000);
		matrix_6.setValue(0, 2, static_cast<double>(static_cast<long>((sin(theta_5)) * 100000)) / 100000);
		matrix_6.setValue(0, 3, 70*static_cast<double>(static_cast<long>((sin(theta_5)) * 100000)) / 100000);
		matrix_6.setValue(1, 0, static_cast<double>(static_cast<long>((sin(theta_5)) * 100000)) / 100000);
		matrix_6.setValue(1, 2, static_cast<double>(static_cast<long>((-cos(theta_5)) * 100000)) / 100000);
		matrix_6.setValue(1, 3, 70*static_cast<double>(static_cast<long>((-cos(theta_5)) * 100000)) / 100000);
		matrix_6.setValue(2, 1, 1);
		matrix_6.setValue(3, 3, 1);
//		matrix_6.print();

		std::cout << "theta 6: ";
		std::cin >> theta_6;

		matrix_7.setValue(0, 0, static_cast<double>(static_cast<long>((cos(theta_6)) * 100000)) / 100000);
		matrix_7.setValue(0, 1, static_cast<double>(static_cast<long>((-sin(theta_6)) * 100000)) / 100000);
		matrix_7.setValue(1, 0, static_cast<double>(static_cast<long>((sin(theta_6)) * 100000)) / 100000);
		matrix_7.setValue(1, 1, static_cast<double>(static_cast<long>((cos(theta_6)) * 100000)) / 100000);
		matrix_7.setValue(2, 2, 1);
		matrix_7.setValue(3, 3, 1);
//		matrix_7.print();

		std::cout << "Transformation matrix:" << std::endl;
		
		(matrix_1 * matrix_2 * matrix_3 * matrix_4 * matrix_5 * matrix_6 * matrix_7).print();

//		std::cout << "Position at end effector:" << std::endl;
		
//		pos.print();

//		std::cout << "Position at base (origin):" << std::endl;
		
//		(matrix_1 * matrix_2 * matrix_3 * matrix_4 * matrix_5 * matrix_6 * matrix_7 *  pos).print();

		return 0;
}
