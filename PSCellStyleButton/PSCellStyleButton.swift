//The MIT License (MIT)
//
//Copyright (c) 2015 Predrag Samardzic
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in all
//copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//SOFTWARE.

import UIKit

func loadImage()->UIImage?{
    if let image = (UIImage(named: "rightArrow")?.withRenderingMode(UIImageRenderingMode.alwaysTemplate)){
        return image
    }
    
    let testBundle = Bundle(for: PSCellStyleButton.classForCoder())
    if let bundlePath = testBundle.path(forResource: "PSCellStyleButtonResources", ofType: "bundle"){
        let bundle = Bundle(path: bundlePath)
        return UIImage(named: "rightArrow.png", in: bundle, compatibleWith: nil)?.withRenderingMode(UIImageRenderingMode.alwaysTemplate)
    }
    return nil
}


public class PSCellStyleButton: UIButton {
    
    public var showDisclosureIndicator:Bool = true{
        didSet {
            self.setNeedsLayout()
        }
    }
    public var showBottomLine:Bool = true{
        didSet {
            bottomLine.isHidden = !showBottomLine
        }
    }
    public var bottomLineColor:UIColor = UIColor.black {
        didSet {
            bottomLine.backgroundColor = bottomLineColor
        }
    }
    public var bottomLineHeight:CGFloat = 1.0{
        didSet {
            self.setNeedsLayout()
        }
    }
    public var bottomLineRightInset:CGFloat = 15.0{
        didSet {
            self.setNeedsLayout()
        }
    }
    public var bottomLineLeftInset:CGFloat = 10.0{
        didSet {
            self.setNeedsLayout()
        }
    }
    public var titleLeftInset:CGFloat = 0.0{
        didSet {
            self.setNeedsLayout()
        }
    }
    public var imageRightInset:CGFloat = 15.0{
        didSet {
            self.setNeedsLayout()
        }
    }
    
    public var rightImage: UIImage? = loadImage(){
        didSet {
            self.setNeedsLayout()
        }
    }
    
    private let bottomLine = UIView()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        addSubview(bottomLine)
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        self.contentHorizontalAlignment = UIControlContentHorizontalAlignment.left
        self.setupBottomLine()
        self.setupImage()
        
    }
    
    func setupImage(){
        if(showDisclosureIndicator){
            self.setImage(rightImage, for: .normal)
            if((rightImage) != nil){
                self.imageEdgeInsets = UIEdgeInsetsMake(0, self.frame.size.width - (rightImage!.size.width + imageRightInset), 0, 0);
                self.titleEdgeInsets = UIEdgeInsetsMake(0, titleLeftInset, 0, rightImage!.size.width);
            }
        } else {
            self.setImage(nil, for: .normal)
        }
    }
    
    func setupBottomLine(){
        if(showBottomLine){
            bottomLine.isHidden = false
            var frame = bottomLine.frame
            frame = CGRect(x: bottomLineLeftInset, y: self.frame.size.height-bottomLineHeight, width: self.frame.size.width-bottomLineLeftInset-bottomLineRightInset, height: bottomLineHeight)
            bottomLine.frame = frame
            bottomLine.backgroundColor = bottomLineColor
        } else {
            bottomLine.isHidden = true
        }
    }
    
   }
