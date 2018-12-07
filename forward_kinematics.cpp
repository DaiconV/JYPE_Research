#include <iostream>
#include <vector>

#include "PA10Kinematics.hpp"

int main()
{
	PA10Kinematics converter;
	
	std::vector<double> joint_angle_vector(6);
	std::vector<double> pos_ori_vector(6);

	std::cout.precision(10);

	std::cout << "theta 0: ";
	std::cin >> joint_angle_vector[0];

	std::cout << "theta 1: ";
	std::cin >> joint_angle_vector[1];

	std::cout << "theta 2: ";
	std::cin >> joint_angle_vector[2];

	std::cout << "theta 3: ";
	std::cin >> joint_angle_vector[3];

	std::cout << "theta 4: ";
	std::cin >> joint_angle_vector[4];

	std::cout << "theta 5: ";
	std::cin >> joint_angle_vector[5];

	pos_ori_vector = converter.forward_kinematics(joint_angle_vector);

	std::cout << "x: " << std::fixed << pos_ori_vector[0] << std::endl;
	std::cout << "y: " << std::fixed << pos_ori_vector[1] << std::endl;
	std::cout << "z: " << std::fixed << pos_ori_vector[2] << std::endl;
	std::cout << "phi: " << std::fixed << pos_ori_vector[3] << std::endl;
	std::cout << "theta: " << std::fixed << pos_ori_vector[4] << std::endl;
	std::cout << "psi: " << std::fixed << pos_ori_vector[5] << std::endl;

}
