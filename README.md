# Authentication Contract README

## Overview

This contract, named "Authentication," provides a simple authentication system where user profiles can be created and accessed on the Flow blockchain. Each user profile consists of a first name, last name, favorite number, and the associated account address.

## Contract Structure

The contract is composed of the following components:

### 1. `Profile` Struct

- A struct representing a user profile with the following fields:
  - `firstName` (String): First name of the user.
  - `lastName` (String): Last name of the user.
  - `favNum` (Integer): Favorite number chosen by the user.
  - `account` (Address): Address associated with the user's account.

### 2. `profiles` Storage

- A storage variable to store user profiles. It is a mapping from `Address` (account address) to `Profile` (user profile).

### 3. `addProfile` Function

- A public function to add a new user profile to the storage. It takes four arguments:
  - `firstName` (String): First name of the user.
  - `lastName` (String): Last name of the user.
  - `favNum` (Integer): Favorite number chosen by the user.
  - `account` (Address): Address associated with the user's account.

### 4. `init` Constructor

- The contract's initializer that initializes the `profiles` storage as an empty mapping.

## Transaction

The provided transaction script allows users to add a new profile by invoking the `addProfile` function of the `Authentication` contract. It takes the following parameters:

- `firstName` (String): First name of the user.
- `lastName` (String): Last name of the user.
- `favNum` (Integer): Favorite number chosen by the user.
- `account` (Address): Address associated with the user's account.

## Script

The script allows users to retrieve a user profile by providing the associated account address. It returns the `Profile` struct associated with the provided account address.

## Usage

To use this contract, you can follow these steps:

1. Deploy the `Authentication` contract to the Flow blockchain.
2. Create user profiles by invoking the `addProfile` function through transactions.
3. Retrieve user profiles by invoking the `main` script with the desired account address.

Example:

```flow
// Deploy the Authentication contract
// ...

// Add a new user profile
transaction {
  execute {
    Authentication.addProfile(firstName: "Chris", lastName: "Bale", favNum: 07, account: 0x06)
  }
}

// Retrieve user profile
script {
  pub fun main(account: Address): Authentication.Profile {
      return Authentication.profiles[account]!
  }
}
