import PDFKit
import AppKit
let root = "independent/l7_frame_extents/"
let doc = PDFDocument(url: URL(fileURLWithPath: "references/akr-dcg-2022.pdf"))!
for n in [7,8,9,10,11,28] {
    let page = doc.page(at:n-1)!
    try page.string!.write(toFile: root + "pdf-page-\(n).txt", atomically:true, encoding:.utf8)
    if [7,10,28].contains(n) {
        let img = page.thumbnail(of: NSSize(width:1400,height:1900), for:.mediaBox)
        let rep = NSBitmapImageRep(data:img.tiffRepresentation!)!
        try rep.representation(using:.png,properties:[:])!.write(to: URL(fileURLWithPath: root + "pdf-page-\(n).png"))
    }
}
print("Extracted PDF pages 7–11 and 28; rendered pages 7, 10, 28.")
