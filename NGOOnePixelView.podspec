Pod::Spec.new do |s|
  s.name            = "NGOOnePixelView"
  s.version         = "0.3"
  s.summary         = "A UIView subclass for times when the designer insists on a 1px separator line."
  s.homepage        = "https://github.com/andgotravel/NGOOnePixelView"
  s.license         = 'MIT'
  s.author          = { "Stas Zhukovskiy" => "stzhuk@gmail.com" }
  s.source          = { :git => "https://github.com/andgotravel/NGOOnePixelView.git", :tag => s.version.to_s }
  s.platform        = :ios, '7.0'
  s.requires_arc    = true
  s.source_files    = 'Pod/Classes/*'
  s.frameworks      = 'UIKit', 'CoreGraphics'
end
