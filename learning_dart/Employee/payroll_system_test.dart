import 'base_plus_commission_employee.dart';
import 'commission_employee.dart';
import 'employee.dart';

void main() {
  // create subclass objects
  CommissionEmployee commissionEmployee = CommissionEmployee(
      firstName: "Sue",
      lastName: "Jones",
      socialSecurityNumber: "333-33-3333",
      grossSales: 10000,
      commissionRate: .06);

  BasePlusCommissionEmployee basePlusCommissionEmployee =
      BasePlusCommissionEmployee(
          firstName: "Bob",
          lastName: "Jack",
          socialSecurityNumber: "333-33-3333",
          grossSales: 10000,
          baseSalary: 5000,
          commissionRate: .06);

  print("Employees processed individually:");

  print(commissionEmployee.firstName +
      " " +
      commissionEmployee.lastName +
      " earned " +
      commissionEmployee.earnings().toString());
  print(basePlusCommissionEmployee.firstName +
      " " +
      commissionEmployee.lastName +
      " earned " +
      basePlusCommissionEmployee.earnings().toString());

  // create four-element Employee array
  List<IEmployee> employees = <IEmployee>[];

  // initialize array with Employees

  employees.add(commissionEmployee);
  employees.add(basePlusCommissionEmployee);

  print("\nEmployees processed polymorphically");

  // generically process each element in array employees
  for (IEmployee currentEmployee in employees) {
    print(currentEmployee); // invokes toString

    // determine whether element is a BasePlusCommissionEmployee
    if (currentEmployee is BasePlusCommissionEmployee) {
      // downcast Employee reference to
      // BasePlusCommissionEmployee reference
      BasePlusCommissionEmployee employee = currentEmployee;

      employee.setBaseSalary(1.10 * employee.getBaseSalary());

      print("new base salary with 10% increase is: " +
          employee.getBaseSalary().toString());
    }

    print("earned " + currentEmployee.earnings().toString());
  }
} // end main
