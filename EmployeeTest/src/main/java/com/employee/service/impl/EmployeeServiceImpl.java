package com.employee.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.employee.model.Employee;
import com.employee.repository.EmployeeRepository;
import com.employee.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService {
	@Autowired
	private EmployeeRepository employeeRepository;

	@Override
	@Transactional
	public void createEmployee(Employee employee) {
		employeeRepository.save(employee);
	}

	@Override
	public List<Employee> getEmployeesList() {
		// TODO Auto-generated method stub
		return employeeRepository.findAll();
	}

	@Override
	@Transactional
	public List<Employee> findBySalaryLessThan(Double salary) {
		List<Employee> employee = employeeRepository.findBySalaryLessThan(salary);
		for (Employee employee2 : employee) {
			System.out.println(employee);
		}
		// TODO Auto-generated method stub
		return employee;
	}

}
