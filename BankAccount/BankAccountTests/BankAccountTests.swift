import XCTest

class BankAccountTests: XCTestCase {

    private let validFirstName = "Andrew"
    private let validLastName = "Hill"
    private let validEmail = "a.hill@abcfinancial.com"

    private let invalidFirstName = "A"
    private let invalidLastName = "H"

    func testAccountOwner_ValidFirstName_ValidLastName_ValidEmail_CanBeInstantiated() {
        let accountOwner = AccountOwner(firstName: validFirstName, lastName: validLastName, email: validEmail)
        XCTAssertNotNil(accountOwner)
    }

    func testAccountOwner_InvalidFirstName_ValidFirstName_ValidEmail_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: invalidFirstName, lastName: validLastName, email: validEmail)
        XCTAssertNil(accountOwner)
    }

    func testAccountOwner_ValidFirstName_InvalidFirstName_ValidEmail_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: validFirstName, lastName: invalidLastName, email: validEmail)
        XCTAssertNil(accountOwner)
    }
}
