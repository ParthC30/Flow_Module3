import Authentication from 0x05

transaction(firstName: String, lastName: String,favNum: Integer, account: Address) {

    prepare(signer: AuthAccount) {}

    execute {
        Authentication.addProfile(firstName: firstName, lastName: lastName, favNum: favNum, account: account)
        log("We're done.")
    }
}
