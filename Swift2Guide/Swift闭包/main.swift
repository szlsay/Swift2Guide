

func add(a: Float, b : Float) -> Float {
    return a + b
}

func addFunc(a: Float, b : Float , fun:  ( Float, Float ) -> Float     ) -> Float {
    return fun(a, b)
}

//addFunc(2, b: 3) { (c, d) -> Float in
//    return c + d
//}


//
//let add0 = addFunc(3, b: 4, fun: add)
//print("\(__FUNCTION__) \(add0)")

//
//func square(a:Float) -> Float {
//    return a * a
//}
//
//func cube(a:Float) -> Float {
//    return a * a * a
//}
//
//func averageSumOfSquares(a:Float,b:Float) -> Float {
//    return (square(a) + square(b)) / 2.0
//}
//
//func averageSumOfCubes(a:Float,b:Float) -> Float {
//    return (cube(a) + cube(b)) / 2.0
//}
//
//
//print(averageSumOfCubes(4, b: 5))
//
//func averageOfFunction(a:Float,b:Float, fun:Float->Float) -> Float {
//    return (fun(a) + fun(b))/2
//}


//func averageOfFunction(a:Float,b:Float, fun:(Float -> Float)) -> Float {
//    return (fun(a) + fun(b))/2
//}
//
//
////
//print("\(__FUNCTION__) \(averageOfFunction(4, b: 3, fun: square))")
//
////averageOfFunction(4, b: 3, fun: square)
////
////averageOfFunction(4, b: 3, fun: square)
//
//print("\(__FUNCTION__) \(averageOfFunction(3, b: 4, fun: {(x: Float) -> Float in return x * x}))")
//
//print("\(__FUNCTION__) \(averageOfFunction(3, b: 4, fun: {x in return x * x}))")
//
//print("\(__FUNCTION__) \(averageOfFunction(3, b: 4, fun: {x in x * x}))")
//
//print("\(__FUNCTION__) \(averageOfFunction(3, b: 4, fun: {$0 * $0}))")
//
//
////Map
////map用于将每个数组元素通过某个方法进行转换。
//
//let array = [4, 5]
//
//func intToString(a: Int) -> String{
//    return String(a) + "?"
//}




//
//let arrayString = array.map{intToString($0)}
//let arrayString = array.map(intToString)
//
//print("\(__FUNCTION__) \(arrayString)")
//
//
//print("\(__FUNCTION__) \(array.map{"\($0)" + "?"})")
//print("\(__FUNCTION__) \(array.map{"\($0)?"})")



//filter用于选择数组元素中满足某种条件的元素。
let moneyArray = [23, 45, 78]
//var filteredArray : [Int] = []
//for money in moneyArray {
//    if (money > 30) {
//        filteredArray += [money]
//    }
//}
//
//print("\(__FUNCTION__) \(filteredArray)")
//print("\(__FUNCTION__) \(moneyArray.filter({$0 > 30}))")


//let arrayBool = moneyArray.filter{$0 > 30}
//
//print("\(__FUNCTION__) \(arrayBool)")

//
////Reduce
////
////reduce方法把数组元素组合计算为一个值。
var sum = 0
for money in moneyArray {
    sum = sum + money
}
//
print("\(__FUNCTION__) \(sum)")

//moneyArray.reduce(4, combine: +)




//
////reduce(initial: U, combine: (U, T) -> U) -> U
////
////接收两个参数，一个为类型U的初始值，另一个为把类型为U的元素和类型为T的元素组合成一个类型为U的值的函数。最终结果整个数组就变成了一个类型为U的值。
//
//
//
//print("\(__FUNCTION__) \(moneyArray.reduce(0, combine: +))")


