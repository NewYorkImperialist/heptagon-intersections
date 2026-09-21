import Foundation
import PDFKit
import AppKit

let args = CommandLine.arguments
guard args.count >= 4, let doc = PDFDocument(url: URL(fileURLWithPath: args[1])) else {
    FileHandle.standardError.write("usage: pdfrast <pdf> <page1based> <out.png> [scale]\n".data(using:.utf8)!)
    exit(1)
}
let pageNo = Int(args[2])! - 1
let out = args[3]
let scale: CGFloat = args.count > 4 ? CGFloat(Double(args[4])!) : 3.0
guard let page = doc.page(at: pageNo) else { exit(2) }
let rect = page.bounds(for: .mediaBox)
let w = Int(rect.width * scale), h = Int(rect.height * scale)
let img = NSImage(size: NSSize(width: w, height: h))
img.lockFocus()
NSColor.white.setFill()
NSRect(x:0,y:0,width:w,height:h).fill()
let ctx = NSGraphicsContext.current!.cgContext
ctx.scaleBy(x: scale, y: scale)
ctx.translateBy(x: -rect.origin.x, y: -rect.origin.y)
page.draw(with: .mediaBox, to: ctx)
img.unlockFocus()
let tiff = img.tiffRepresentation!
let rep = NSBitmapImageRep(data: tiff)!
let png = rep.representation(using: .png, properties: [:])!
try! png.write(to: URL(fileURLWithPath: out))
print("wrote \(out) \(w)x\(h)")
