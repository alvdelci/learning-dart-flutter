abstract class IEmployee {
  final String firstName;
  final String lastName;
  final String socialSecurityNumber;

  // constructor
  IEmployee(
      {this.firstName = "",
      this.lastName = "",
      this.socialSecurityNumber = ""});

  // return first name
  String getFirstName() {
    return firstName;
  }

  // return last name
  String getLastName() {
    return lastName;
  }

  // return social security number
  String getSocialSecurityNumber() {
    return socialSecurityNumber;
  }

  // abstract method must be overridden by concrete subclasses
  double earnings(); // no implementation here
} // end abstract class Employee