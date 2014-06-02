class A {};
class B inherits A {};
 
class Main {   
    main():Int{     
        let x:B <- new B in {  
            let y:A <- x in {     
                if y = x then 0 else 1 fi;    
            };  
        }   
    };     
};