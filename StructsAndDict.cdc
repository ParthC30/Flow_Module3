pub contract Authentication {

    pub var profiles: {Address: Profile}
    
    pub struct Profile {
        pub let firstName: String
        pub let lastName: String
        pub let favNum: Integer
        pub let account: Address

        // You have to pass in 4 arguments when creating this Struct.
        init(_firstName: String, _lastName: String, _favNum: Integer, _account: Address) {
            self.firstName = _firstName
            self.lastName = _lastName
            self.favNum = _favNum
            self.account = _account
        }
    }

    pub fun addProfile(firstName: String, lastName: String, favNum : Integer, account: Address) {
        let newProfile = Profile(_firstName: firstName, _lastName: lastName, _favNum: favNum, _account: account)
        self.profiles[account] = newProfile
    }

    init() {
        self.profiles = {}
    }

}
