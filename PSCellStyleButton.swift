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

public class PSCellStyleButton: UIButton {
    
    public var showDisclosureIndicator:Bool = true{
        didSet {
            self.setNeedsLayout()
        }
    }
    public var showBottomLine:Bool = true{
        didSet {
            self.setNeedsLayout()
        }
    }
    public var bottomLineColor:UIColor = UIColor.blackColor(){
        didSet {
            self.setNeedsLayout()
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
    public var imageLeftInset:CGFloat = 15.0{
        didSet {
            self.setNeedsLayout()
        }
    }
    
    public var rightImage: UIImage? = (UIImage(named: "rightArrow")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)){
        didSet {
            self.setNeedsLayout()
        }
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        self.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Left
        self.setupBottomLine()
        self.setupImage()
        
    }
    
    func setupImage(){
        if(showDisclosureIndicator){
            self.setImage(rightImage, forState: UIControlState.Normal)
            if((rightImage) != nil){
                self.imageEdgeInsets = UIEdgeInsetsMake(0, self.frame.size.width - (rightImage!.size.width + imageLeftInset), 0, 0);
                self.titleEdgeInsets = UIEdgeInsetsMake(0, titleLeftInset, 0, rightImage!.size.width);
            }
        }
    }
    
    func setupBottomLine(){
        if let oldLine = self.viewWithTag(100){
            oldLine.removeFromSuperview()
        }
        if(showBottomLine){
            let line = UIView.init(frame: CGRect(x: bottomLineLeftInset, y: self.frame.size.height-bottomLineHeight, width: self.frame.size.width-bottomLineLeftInset-bottomLineRightInset, height: bottomLineHeight))
            line.backgroundColor = bottomLineColor
            line.tag = 100
            self.addSubview(line)
        }
    }
    
}
