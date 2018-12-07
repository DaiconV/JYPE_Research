#include <iostream>
#include <vector>

#include <cmath>

#include "Matrix.hpp"
#include "PA10Kinematics.hpp"

PA10Kinematics::PA10Kinematics()
{
	phi_ori = Matrix(3, 3);
	theta_ori = Matrix(3, 3);
	psi_ori = Matrix(3, 3);

	matrix_0.set_value(2, 1, -1);
	matrix_0.set_value(2, 3, 317);
	matrix_0.set_value(3, 3, 1);

	matrix_1.set_value(2, 1, 1);
	matrix_1.set_value(3, 3, 1);

	matrix_2.set_value(0, 0, 1);
	matrix_2.set_value(1, 2, 1);
	matrix_2.set_value(2, 1, -1);
	matrix_2.set_value(3, 3, 1);

	matrix_3.set_value(2, 1, 1);
	matrix_3.set_value(3, 3, 1);

	matrix_4.set_value(2, 1, -1);
	matrix_4.set_value(3, 3, 1);

	matrix_5.set_value(2, 1, 1);
	matrix_5.set_value(3, 3, 1);

	matrix_6.set_value(2, 2, 1);
	matrix_6.set_value(3, 3, 1);

	phi_ori.set_value(2, 2, 1);

	theta_ori.set_value(0, 0, 1);

	psi_ori.set_value(2, 2, 1);
}

std::vector<double> PA10Kinematics::forward_kinematics(std::vector<double> joint_angle_vector)
{
	Matrix pa10_matrix;
	std::vector<double> return_vector(6);

	matrix_0.set_value(0, 0, cos(joint_angle_vector[0]));
	matrix_0.set_value(0, 2, -sin(joint_angle_vector[0]));
	matrix_0.set_value(1, 0, sin(joint_angle_vector[0]));
	matrix_0.set_value(1, 2, cos(joint_angle_vector[0]));

	pa10_matrix = matrix_0;

	matrix_1.set_value(0, 0, cos(joint_angle_vector[1]));
	matrix_1.set_value(0, 2, sin(joint_angle_vector[1]));
	matrix_1.set_value(0, 3, 450*sin(joint_angle_vector[1]));
	matrix_1.set_value(1, 0, sin(joint_angle_vector[1]));
	matrix_1.set_value(1, 2, -cos(joint_angle_vector[1]));
	matrix_1.set_value(1, 3, 450*-cos(joint_angle_vector[1]));

	pa10_matrix *= matrix_1;

	matrix_3.set_value(0, 0, cos(joint_angle_vector[2]));
	matrix_3.set_value(0, 2, sin(joint_angle_vector[2]));
	matrix_3.set_value(0, 3, 480*sin(joint_angle_vector[2]));
	matrix_3.set_value(1, 0, sin(joint_angle_vector[2]));
	matrix_3.set_value(1, 2, -cos(joint_angle_vector[2]));
	matrix_3.set_value(1, 3, 480*-cos(joint_angle_vector[2]));

	pa10_matrix *= matrix_2 * matrix_3;

	matrix_4.set_value(0, 0, cos(joint_angle_vector[3]));
	matrix_4.set_value(0, 2, -sin(joint_angle_vector[3]));
	matrix_4.set_value(1, 0, sin(joint_angle_vector[3]));
	matrix_4.set_value(1, 2, cos(joint_angle_vector[3]));

	pa10_matrix *= matrix_4;

	matrix_5.set_value(0, 0, cos(joint_angle_vector[4]));
	matrix_5.set_value(0, 2, sin(joint_angle_vector[4]));
	matrix_5.set_value(0, 3, 70*sin(joint_angle_vector[4]));
	matrix_5.set_value(1, 0, sin(joint_angle_vector[4]));
	matrix_5.set_value(1, 2, -cos(joint_angle_vector[4]));
	matrix_5.set_value(1, 3, 70*-cos(joint_angle_vector[4]));

	pa10_matrix *= matrix_5;

	matrix_6.set_value(0, 0, cos(joint_angle_vector[5]));
	matrix_6.set_value(0, 1, -sin(joint_angle_vector[5]));
	matrix_6.set_value(1, 0, sin(joint_angle_vector[5]));
	matrix_6.set_value(1, 1, cos(joint_angle_vector[5]));

	pa10_matrix *= matrix_6;

	return_vector[0] = pa10_matrix.get_value(0, 3);
	return_vector[1] = pa10_matrix.get_value(1, 3);
	return_vector[2] = pa10_matrix.get_value(2, 3);
	return_vector[5] = atan2(pa10_matrix.get_value(0, 2), -pa10_matrix.get_value(1, 2));
	return_vector[4] = acos(pa10_matrix.get_value(2, 2));
	return_vector[5] = atan2(pa10_matrix.get_value(2, 0), pa10_matrix.get_value(2, 1));
	
	return return_vector;
}

std::vector<double> PA10Kinematics::inverse_kinematics(std::vector<double> pos_ori_vector)
{
	Matrix end_effector_ori(3, 3), pa10_matrix_123(3, 3), pa10_matrix_123_inv(3, 3), T_prime(3, 3);
	std::vector<double> return_vector(6);

	phi_ori.set_value(0, 0, cos(pos_ori_vector[3]));
	phi_ori.set_value(0, 1, -sin(pos_ori_vector[3]));
	phi_ori.set_value(1, 0, sin(pos_ori_vector[3]));
	phi_ori.set_value(1, 1, cos(pos_ori_vector[3]));
	
	theta_ori.set_value(1, 1, cos(pos_ori_vector[4]));
	theta_ori.set_value(1, 2, -sin(pos_ori_vector[4]));
	theta_ori.set_value(2, 1, sin(pos_ori_vector[4]));
	theta_ori.set_value(2, 2, cos(pos_ori_vector[4]));

	psi_ori.set_value(0, 0, cos(pos_ori_vector[5]));
	psi_ori.set_value(0, 1, -sin(pos_ori_vector[5]));
	psi_ori.set_value(1, 0, sin(pos_ori_vector[5]));
	psi_ori.set_value(1, 1, cos(pos_ori_vector[5]));

	end_effector_ori = phi_ori * theta_ori * psi_ori;

	// Mathstuff, may add explination somewhere...
	double x_W, y_W, z_W, discr_1;
	x_W = pos_ori_vector[0] - 70 * end_effector_ori.get_value(0, 2);
	y_W = pos_ori_vector[1] - 70 * end_effector_ori.get_value(1, 2);
	z_W = pos_ori_vector[2] - 70 * end_effector_ori.get_value(2, 2);
	discr_1 = (x_W * x_W) + (y_W * y_W);

	return_vector[0] = bind_angle(2 * atan2(((x_W > 0) ? -x_W + sqrt(discr_1) : -x_W - sqrt(discr_1)), y_W)); 

	double A, B, C, discr_2;
	A = x_W * cos(return_vector[0]) + y_W * sin(return_vector[0]);
	B = z_W - 317;
	C = ((450 * 450) + (A * A) + (B * B) - (480 * 480)) / 900;
	discr_2 = (A * A) + (B * B) - (C * C);

	return_vector[1] = 2 * atan2((x_W > 0 ? A + sqrt(discr_2) : A - sqrt(discr_2)), (B + C));
	return_vector[2] = asin((A - 450 * sin(return_vector[1]))/ 480) - return_vector[1];

	matrix_0.set_value(0, 0, cos(return_vector[0]));
	matrix_0.set_value(0, 2, -sin(return_vector[0]));
	matrix_0.set_value(1, 0, sin(return_vector[0]));
	matrix_0.set_value(1, 2, cos(return_vector[0]));

	pa10_matrix_123 = matrix_0;

	matrix_1.set_value(0, 0, cos(return_vector[1]));
	matrix_1.set_value(0, 2, sin(return_vector[1]));
	matrix_1.set_value(0, 3, 450*sin(return_vector[1]));
	matrix_1.set_value(1, 0, sin(return_vector[1]));
	matrix_1.set_value(1, 2, -cos(return_vector[1]));
	matrix_1.set_value(1, 3, 450*-cos(return_vector[1]));

	pa10_matrix_123 *= matrix_1;

	matrix_3.set_value(0, 0, cos(return_vector[2]));
	matrix_3.set_value(0, 2, sin(return_vector[2]));
	matrix_3.set_value(0, 3, 480*sin(return_vector[2]));
	matrix_3.set_value(1, 0, sin(return_vector[2]));
	matrix_3.set_value(1, 2, -cos(return_vector[2]));
	matrix_3.set_value(1, 3, 480*-cos(return_vector[2]));

	pa10_matrix_123 *= matrix_2 * matrix_3;
	
	for(int i = 0; i < 3; ++i) {
		for(int j = 0; j < 3; ++j) {
			pa10_matrix_123_inv.set_value(i, j, pa10_matrix_123.get_value(j, i));
		}
	}

	T_prime = pa10_matrix_123_inv * end_effector_ori;

	return_vector[3] = atan2(T_prime.get_value(1, 2), T_prime.get_value(0, 2));
	return_vector[4] = atan2(T_prime.get_value(0, 2) * cos(return_vector[3]) + T_prime.get_value(1, 2) * sin(return_vector[3]), T_prime.get_value(2, 2));
	return_vector[5] = atan2(T_prime.get_value(1, 0) * cos(return_vector[3]) - T_prime.get_value(0, 0) * sin(return_vector[3]), T_prime.get_value(1, 1) * cos(return_vector[3]) - T_prime.get_value(0, 1) * sin(return_vector[3]));

	return return_vector;
}

double PA10Kinematics::bind_angle(double angle)
{
	if(angle < 0) {
		return std::abs(angle) < angle + (2*M_PI) ? angle : angle + (2*M_PI);
	}
	return angle < std::abs(angle - (2*M_PI)) ? angle : angle - (2*M_PI);
}
