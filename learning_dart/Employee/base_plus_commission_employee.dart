import 'commission_employee.dart';

class BasePlusCommissionEmployee extends CommissionEmployee {
  double baseSalary; // base salary per week

  // constructor
  BasePlusCommissionEmployee(
      {this.baseSalary = 0.0,
      String firstName = "",
      String lastName = "",
      String socialSecurityNumber = "",
      double grossSales = 0.0,
      double commissionRate = 0.0})
      : assert(baseSalary >= 0.0),
        super(
            firstName: firstName,
            lastName: lastName,
            socialSecurityNumber: socialSecurityNumber,
            grossSales: grossSales,
            commissionRate: commissionRate);

  // set base salary
  void setBaseSalary(double baseSalary) {
    if (baseSalary < 0.0) // validate baseSalary
      throw Exception("Base salary must be >= 0.0");

    this.baseSalary = baseSalary;
  }

  // return base salary
  double getBaseSalary() {
    return this.baseSalary;
  }

  // calculate earnings; override method earnings in CommissionEmployee
  @override
  double earnings() {
    return getBaseSalary() + super.earnings();
  }
} // end class BasePlusCommissionEmployee
