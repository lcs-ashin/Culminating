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
let preferredWidth = 550
let preferredHeight = 600
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
// Speed of drawing 
canvas.highPerformance = true

// Create turtle
let turtle = Tortoise(drawingUpon: canvas)

// Draw the hahnentritt pattern
func drawPolygon() {
    turtle.forward(steps: 25)
    turtle.left(by: 45)
    turtle.forward(steps: Int(25 * sqrt(2)))
    turtle.right(by: 135)
    turtle.forward(steps: 25)
    turtle.left(by: 90)
    turtle.forward(steps: 25)
    turtle.right(by: 135)
    turtle.forward(steps: Int(25 * sqrt(2)))
    turtle.left(by: 45)
    turtle.forward(steps: 25)
    turtle.left(by: 135)
    turtle.forward(steps: Int(50 * sqrt(2)))
    turtle.left(by: 45)
    turtle.forward(steps: 25)
    turtle.right(by: 45)
    turtle.forward(steps: Int(25 * sqrt(2)))
    turtle.left(by: 135)
    turtle.forward(steps: 25)
    turtle.right(by: 90)
    turtle.forward(steps: 25)
    turtle.left(by: 135)
    turtle.forward(steps: Int(25 * sqrt(2)))
    turtle.right(by: 45)
    turtle.forward(steps: 25)
    turtle.left(by: 45)
    turtle.forward(steps: Int(50 * sqrt(2)))
    turtle.left(by: 135)
    
}

// Polygons in rows
for _ in 1...6 {
    
    for _ in 1...5 {
        
        drawPolygon()
        turtle.penUp()
        turtle.forward(steps: 100)
        turtle.penDown()
        
    }

    
    turtle.penUp()
    turtle.left(by: 180)
    turtle.forward(steps: 500)
    turtle.right(by: 90)
    turtle.forward(steps: 100)
    turtle.right(by: 90)
    turtle.penDown()

}

canvas.highPerformance = false
turtle.penUp()
turtle.forward(steps: 1)

turtle.copySVGToClipboard() 


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
