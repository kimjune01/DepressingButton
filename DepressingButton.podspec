#
# Be sure to run `pod lib lint DepressingButton.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "DepressingButton"
  s.version          = "0.1.0"
  s.summary          = "A UIButton extension to allow a depressing animation when touched down"
  s.homepage         = "https://github.com/kimjune01/DepressingButton"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "June Kim" => "kimjune01@gmail.com" }
  s.source           = { :git => "https://github.com/kimjune01/DepressingButton.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.1'
  s.requires_arc = false

  s.source_files = 'DepressingButton.swift'
  s.frameworks = 'UIKit'
end
