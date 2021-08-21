import 'employee.dart';

class CommissionEmployee extends IEmployee {
  double grossSales; // gross weekly sales
  double commissionRate; // commission percentage

  CommissionEmployee(
      {this.grossSales = 0.0,
      this.commissionRate = 0.0,
      String firstName = "",
      String lastName = "",
      String socialSecurityNumber = ""})
      : super(
            firstName: firstName,
            lastName: lastName,
            socialSecurityNumber: socialSecurityNumber) {
      if (commissionRate <= 0.0 || commissionRate >= 1.0) {
        // validate
        throw Exception("Commission rate must be > 0.0 and < 1.0");
      }

      if (grossSales < 0.0) // validate
        throw Exception("Gross sales must be >= 0.0");

      this.grossSales = grossSales;
      this.commissionRate = commissionRate;
  }

  // set gross sales amount
  void setGrossSales(double grossSales) {
    if (grossSales < 0.0) // validate
      throw Exception("Gross sales must be >= 0.0");

    this.grossSales = grossSales;
  }

  // return gross sales amount
  double getGrossSales() {
    return grossSales;
  }

  // set commission rate
  void setCommissionRate(double commissionRate) {
    if (commissionRate <= 0.0 || commissionRate >= 1.0) // validate
      throw Exception("Commission rate must be > 0.0 and < 1.0");

    this.commissionRate = commissionRate;
  }

  // return commission rate
  double getCommissionRate() {
    return commissionRate;
  }

  // calculate earnings; override abstract method earnings in Employee
  @override
  double earnings() {
    return getCommissionRate() * getGrossSales();
  }
} // end class CommissionEmployee
