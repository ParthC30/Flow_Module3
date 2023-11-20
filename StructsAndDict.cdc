pub contract Mycontract {
    
    pub struct MyStruct {
        pub var1: String
        pub var2: Int 
    }

    pub var myArray : [MyStruct]

    pub var myDict : {String: MyStruct}

    pub fun addStructToArray(var1: String, var2: Int):  {
        let newStruct = MyStruct(var1: var1, var2: var2)
        self.myArray.append(newStruct)
    }

    pub fun addStructToDict(key: String, var1: String, var2: Int) {
        let newStruct = MyStruct(var1: var1, var2: var2)
        self.myDict[key] = newStruct
    }

    pub fun getStructFromArray(index: Int): MyStruct {
        return self.myArray[index]
    }

    pub fun getStructFromDict(key: String): MyStruct? {
        return self.myDict[key]
    }
}
