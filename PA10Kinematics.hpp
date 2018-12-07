#ifndef PA10KINEMATICS_HPP
#define PA10KINEMATICS_HPP

#include <vector>

#include "Matrix.hpp"

class PA10Kinematics
{
	public:
		PA10Kinematics();
		std::vector<double> forward_kinematics(std::vector<double> joint_angle_vector);
		std::vector<double> inverse_kinematics(std::vector<double> pos_ori_vector);
	private:
		Matrix matrix_0, matrix_1, matrix_2, matrix_3, matrix_4, matrix_5, matrix_6;
		Matrix phi_ori, theta_ori, psi_ori;
		double bind_angle(double angle);
};

#endif //PA10KINEMATICS_HPP 
