# PSCellStyleButton
Simple UIButton looking similar to UITableVIewCell with separator and disclosure indicator</br></br>
![Alt text](/screenshot.png?raw=true)
## Installation
Copy PSCellStyleButton folder into your project
## Installation - CocoaPods
<h3>Swift</h3></br>

```
pod 'PSCellStyleButton'
```
<h3>Objective-C</h3></br>

```
pod 'PSCellStyleButton'
use_frameworks!
```

## How To Use
In Interface Builder set your button's class to PSCellStyleButton</br></br>
Properties:
<ul>
<li><b>showDisclosureIndicator</b> - boolean controlling if right image is shown</li>
<li><b>showBottomLine</b> - boolean controlling if bottom line is shown</li>
<li><b>bottomLineColor</b> - black by default</li>
<li><b>bottomLineHeight</b> - 1.0 by default</li>
<li><b>bottomLineRightInset</b> - CGFloat controlling where does bottom line start at the right side of the button; 15 by default</li>
<li><b>bottomLineLeftInset</b> - CGFloat controlling where does bottom line start at the left side of the button; 15 by default</li>
<li><b>titleRightInset</b> - CGFloat controlling how far from the left side of the button title is; 0 by default</li>
<li><b>imageLeftInset</b> - CGFloat controlling how far from the right side of the button image is; 15 by default</li>
<li><b>rightImage</b> - right side Image; rightArrow.png(disclosure indicator) by default</li>
</ul>
## Requirements
iOS>=8
## Author
Predrag Samardzic, predragsamardzic13@gmail.com
## License
PSCellStyleButton is available under the MIT license. See the LICENSE file for more info.
