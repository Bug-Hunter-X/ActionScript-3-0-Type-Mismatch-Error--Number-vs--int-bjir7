function myFunction(param1:String, param2:int):void{

    trace(param1);
    trace(param2);

}

// Example of the problem:
var num:Number = 10.5;
myFunction("Hello", num); // Error: Argument type mismatch

// Solution 1: Explicit type conversion
var num1:Number = 10.5;
var intNum:int = int(num1); // Convert Number to int
myFunction("Hello", intNum); // Works correctly, outputs 10

//Solution 2: Change function parameter type
function myFunction2(param1:String, param2:Number):void{
    trace(param1);
    trace(param2);
}
myFunction2("Hello", num);
//Works correctly

//Solution 3: Use a more general type
function myFunction3(param1:String, param2:*):void{
    trace(param1);
    trace(param2);
}
myFunction3("Hello", num); // Works correctly; * indicates it can accept any type