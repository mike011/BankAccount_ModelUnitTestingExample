class AccountNameValidator {
    func validate(_ name: String) -> Bool {
        return !name.isEmpty  && name.count < 20
    }
}

enum AccountType {
    case currentAccount, savingsAccount
}

class BankAccount {

    init?(accountName: String, accountNumber: Int, sortingCode: String, type: AccountType, transactions: [Transaction], owners: [AccountOwner], accountNameValidator: AccountNameValidator? = nil) {

        let accountNameValidator2 = accountNameValidator ?? AccountNameValidator()
        if !accountNameValidator2.validate(accountName) {
            return nil
        }

        if String(accountNumber).count != 9 {
            return nil
        }

        if sortingCode.count != 6 || !sortingCode.starts(with: "40") && !sortingCode.starts(with: "49"){
            return nil
        }

        if owners.count < 1 || owners.count > 2 {
            return nil
        }

    }
}

