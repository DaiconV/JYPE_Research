#include <cmath>

#include <fstream>
#include <iostream>
#include <vector>

#include "PA10Kinematics.hpp"

int main()
{
	std::ofstream trajectory_file;
	PA10Kinematics converter;
	std::vector<double> pos_ori_vector(6);
	std::vector<double> joint_angle_vector(6);
	int num_step = 100;

	std::cout.precision(10);

	trajectory_file.open("trajectory.csv");
//	trajectory_file << "t,theta_0,theta_1,theta_2,theta_3,theta_4,theta_5" << std::endl;

	//End position and orientation
	pos_ori_vector[0] = 600;
	pos_ori_vector[1] = 0;
	pos_ori_vector[2] = 600;
	pos_ori_vector[3] = -M_PI/2;
	pos_ori_vector[4] = -M_PI/2;
	pos_ori_vector[5] = 0;


	joint_angle_vector = converter.inverse_kinematics(pos_ori_vector);

	std::cout << "theta 0: " << std::fixed << joint_angle_vector[0] << std::endl;
	std::cout << "theta 1: " << std::fixed << joint_angle_vector[1] << std::endl;
	std::cout << "theta 2: " << std::fixed << joint_angle_vector[2] << std::endl;
	std::cout << "theta 3: " << std::fixed << joint_angle_vector[3] << std::endl;
	std::cout << "theta 4: " << std::fixed << joint_angle_vector[4] << std::endl;
	std::cout << "theta 5: " << std::fixed << joint_angle_vector[5] << std::endl;

	for(int step = 0; step < num_step; ++step) {
		trajectory_file << step;
		for(int angle = 0; angle < 6; ++angle) {
			trajectory_file << std::fixed << "," << joint_angle_vector[angle] * (static_cast<double>(step) / num_step);
		}
		trajectory_file << std::endl;
	}

	trajectory_file.close();
	return 0;
}
