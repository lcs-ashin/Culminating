//: [Previous](@previous) / [Next](@next)
//: # Blank canvas to copy
//:
//: ## To duplicate this page
//:
//: Place your cursor on line 19 of this page, press `Command-A` to select all text, and then `Command-C` to copy.
//:
//: Two-finger tap on the playground, then choose **New Playground Page**:
//:
//: ![new-playground](new-playground.png "New Playground")
//:
//: Move to the new page and press `Command-A` to select all text there, then `Command-V` to paste.
//:
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 500
let preferredHeight = Int(sqrt(625 - (625 / 4)) * 28)
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Create turtle
let turtle = Tortoise(drawingUpon: canvas)


//turtle.penUp()
//turtle.forward(steps: 100)
//turtle.left(by: 90)
//turtle.forward(steps: 100)
//turtle.right(by: 90)
//turtle.penDown()

// Draw stars
turtle.penUp()
turtle.left(by: 90)
turtle.forward(steps: Int(sqrt(625 - (625 / 4))))
turtle.right(by: 90)
turtle.penDown()

func drawStar() {

    for _ in 1...6 {
    turtle.forward(steps: 25)
    turtle.right(by: 60)
    turtle.forward(steps: 25)
    turtle.left(by: 120)
    }
    
}

// First stars (first, third, fifth, and seventh rows)
for _ in 1...4 {
    
    for _ in 1...5 {
        
        drawStar()
        turtle.penUp()
        turtle.forward(steps: 100)
        turtle.penDown()
        
    }
    
    turtle.penUp()
    turtle.left(by: 180)
    turtle.forward(steps: 500)
    turtle.right(by: 90)
    turtle.forward(steps: Int(sqrt(625 - (625 / 4)) * 8))
    turtle.right(by: 90)
    turtle.penDown()
    
}


turtle.penUp()
turtle.forward(steps: 50)
turtle.right(by: 90)
turtle.forward(steps: Int(sqrt(625 - (625 / 4)) * 28))
turtle.left(by: 90)
turtle.penDown()


// Second stars (second, fourth, and sixth rows)
for _ in 1...3 {

    for _ in 1...4 {

        drawStar()
        turtle.penUp()
        turtle.forward(steps: 100)
        turtle.penDown()
        
    }
    
    turtle.penUp()
    turtle.left(by: 180)
    turtle.forward(steps: 400)
    turtle.right(by: 90)
    turtle.forward(steps: Int(sqrt(625 - (625 / 4)) * 8))
    turtle.right(by: 90)
    turtle.penDown()
    
}
turtle.drawSelf()



/*:
 ## Show the Assistant Editor
 Don't see any results?
 
 Remember to show the Assistant Editor (1), and then switch to Live View (2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
