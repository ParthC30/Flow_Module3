import MyContract from 0x<contract-address>

transaction {
    prepare(acct : AuthAccount){
        acct.contracts.getMyContract().addStructToArray(var1 : "Hello", var2: 9797)
    }
}

script {
    let myStruct = getAccount(0x<contract-address>).getMyContract().getStructFromArray(index : 0)
    log(myStruct : var1)
    log(myStruct : var2)
  
}
