

import UIKit
import XCPlayground

class Shape:UIView {
    var color:UIColor
    init(color:UIColor){
        self.color = color
        super.init(frame: CGRectZero)
        self.backgroundColor = color
    }
    
    func getArea() -> Double {
        return 0
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class Circle: Shape {
    var radius:Int
    init(radius:Int, color:UIColor) {
        self.radius = radius
        super.init(color: color)
        self.frame.size = CGSize(width: radius * 2, height: radius * 2)
        self.layer.cornerRadius = CGFloat(radius)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func getArea() -> Double {
        return(M_PI * Double(radius * radius))
    }
}

class Square: Shape {
    var width:Int
    init(width:Int, color:UIColor) {
        self.width = width
        super.init(color:color)
        self.frame.size = CGSize(width: width, height: width)
    }
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func getArea() -> Double {
        return(Double(width * width))
    }
}

class Rectangle: Shape {
    var width:Int
    var height:Int
    init(width:Int, height:Int, color:UIColor){
        self.width = width
        self.height = height
        super.init(color: color)
        self.frame.size = CGSize(width: width, height: height)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func getArea() -> Double {
        return(Double(width * height))
    }
}

class RoundedRectangle: Shape {
    var width:Int
    var height:Int
    init(width:Int, height:Int, color:UIColor){
        self.width = width
        self.height = height
        super.init(color: color)
        self.frame.size = CGSize(width: width, height: height)
        self.layer.cornerRadius = CGFloat(6)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func getArea() -> Double {
        return(Double(width * height))
    }
}


var circle = Circle(radius: 50, color: UIColor.blueColor())
circle.center = CGPoint(x: 50, y: 50)
circle.getArea()

var square = Square(width: 100, color: UIColor.redColor())
square.center = CGPoint(x: 200, y: 200)
square.getArea()


var rectangle:Rectangle = Rectangle(width: 200, height: 50, color: UIColor.greenColor())
rectangle.center = CGPoint(x: 250, y: 25)
rectangle.getArea()

var roundedrectangle:RoundedRectangle = RoundedRectangle(width: 50, height: 150, color: UIColor.purpleColor())
roundedrectangle.center = CGPoint(x: 50, y: 225)
roundedrectangle.getArea()

let view = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 320))

view.addSubview(circle)
view.addSubview(square)
view.addSubview(rectangle)
view.addSubview(roundedrectangle)
