Pod::Spec.new do |s|
  s.name         = 'PSCellStyleButton'
  s.version      = '0.0.1'
  s.summary      = 'Simple UIButton looking similar to UITableVIewCell with separator and disclosure indicator'
  s.homepage         = "https://github.com/Vugla/PSCellStyleButton.git"
  s.license          = 'MIT'
  s.author = {
    'Predrag Samardzic' => 'predragsamardzic13@gmail.com'
  }
  s.source = {
    :git => 'https://github.com/Vugla/PSCellStyleButton.git',
    :tag => s.version.to_s
  }
  s.source_files = 'PSCellStyleButton/*.swift'
s.resources = 'PSCellStyleButton/*.png'
  s.platform     = :ios
s.ios.deployment_target = '8.0'
  s.requires_arc = true
  s.frameworks = 'UIKit'
end
