import Authentication from 0x05

pub fun main(account: Address): Authentication.Profile {
    return Authentication.profiles[account]!
}
