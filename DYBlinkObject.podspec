#
# Be sure to run `pod lib lint DYBlinkObject.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DYBlinkObject'
  s.version          = '1.0.0'
  s.summary          = 'Swift library that creates animated objects that seem to flickering.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'You can easily create a blinking object with only two methods.'

  s.homepage         = 'https://github.com/BluePepper-iOS/DYBlinkObject'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.cogitm/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'doyeonjeong' => 'debby_@kakao.com' }
  s.source           = { :git => 'https://github.com/BluePepper-iOS/DYBlinkObject.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'
  s.swift_version = '5.1'

  s.source_files = 'DYBlinkObject/Classes/**/*'
  
  # s.resource_bundles = {
  #   'DYBlinkObject' => ['DYBlinkObject/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
