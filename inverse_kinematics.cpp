#include <iostream>
#include <vector>

#include "PA10Kinematics.hpp"

int main()
{
	PA10Kinematics converter;

	std::vector<double> pos_ori_vector(6);
	std::vector<double> joint_angle_vector(6);

	std::cout.precision(10);

	std::cout << "x: ";
	std::cin >> pos_ori_vector[0];

	std::cout << "y: ";
	std::cin >> pos_ori_vector[1];

	std::cout << "z: ";
	std::cin >> pos_ori_vector[2];

	std::cout << "phi: ";
	std::cin >> pos_ori_vector[3];

	std::cout << "theta: ";
	std::cin >> pos_ori_vector[4];

	std::cout << "psi: ";
	std::cin >> pos_ori_vector[5];

	joint_angle_vector = converter.inverse_kinematics(pos_ori_vector);

	std::cout << "theta 0: " << std::fixed << joint_angle_vector[0] << std::endl;
	std::cout << "theta 1: " << std::fixed << joint_angle_vector[1] << std::endl;
	std::cout << "theta 2: " << std::fixed << joint_angle_vector[2] << std::endl;
	std::cout << "theta 3: " << std::fixed << joint_angle_vector[3] << std::endl;
	std::cout << "theta 4: " << std::fixed << joint_angle_vector[4] << std::endl;
	std::cout << "theta 5: " << std::fixed << joint_angle_vector[5] << std::endl;

	return 0;
}
