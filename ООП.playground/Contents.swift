import UIKit




// наследование


class Parents {                                 // родительский класс
    
    
    var firstname = "Alim"
    var lastname = "Kuprianov"
    
    var fullname: String {
        return firstname + "" + lastname
    }
    
    func printStr() -> String {
        return "Hi, miss - "
    }
}


class Child:Parents {                           // класс Child наследует класс Parents
    
    override func printStr() -> String {
        return super.printStr() + "Anna"
    }
    
}


let parents = Parents ()     
parents.firstname

let child =  Child ()
child.lastname








// перезапись


class People {
    
    
    var firstname = "Alim"
    var lastname = "Kuprianov"
    
    var fullname: String {
        return firstname + "" + lastname
    }
    
    func printStr() -> String {                 //будет перезапись этой функции в классе Child
        return "Hi, miss - "
    }
}


class Children:People {
    
    override func printStr() -> String {        // override  в классе - перезапись
        return super.printStr() + "Anna"
    }
    
}


let people = People ()
parents.firstname
people.printStr()     // имя Aнна не отобразится при выводе потому что ее перезапись в классе Children,                           а не People

let children =  Children ()
child.lastname

children.printStr() // имя Aнна  отобразится при выводе потому что ее перезапись в классе Children








// инкапсуляция  - для сокрытия информации


class Human {
    
    public var Name = "Albert"        //public - публичная переменная, private - закрытая 
    private var LastName = "Migel"    // скрыть переменную ластнейм  чтобы не было в наследуемых классах
    
    
    final  func printHi() {          // final позволяет прочитать метод, но не изменять его override
        print("Hi")
    }
}




class Girls: Human {
    
    override func printHi() {
        print ("AAAAA")
    }
    
}

let girls = Girls()

girls.









// Полиморфизм





class Main {
    
    func methodHi()  {
        print("Hello Main")
    }
}



class junPeople: Main {
    
    override func methodHi() {
        print("Hi junPeople")
    }
}



class midPeople: Main {
    
    
    override func methodHi() {
        print("Hi midPeople ")
    }
}

// три экземпляра верхних классов

let main = Main ()
let junpeople = junPeople ()
let midpeople = midPeople ()



var Array = [main, junpeople, midpeople]    // и есть полиморфизм, объединение в одну группу чего-то по                                                 общему признаку


for  obj in Array {
    obj.methodHi()
}
