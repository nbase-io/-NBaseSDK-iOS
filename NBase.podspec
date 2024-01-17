#
# Be sure to run `pod lib lint NBase.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NBaseSDK'
  s.version          = '1.0.1'
  s.summary          = 'Nbase SDKs contain pre-built components and libraries you need for application development and operation.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Accelerate development
Streamline operation
Nbase SDKs contain pre-built components and libraries you need for
application development and operation.
Minimize the time and resources needed to develop applications.
                       DESC

  s.homepage         = 'https://www.nbase.io'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '6132218' => 'osoriz@naver.com' }
  s.source           = { :git => 'https://github.com/6132218/NBase.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'NBase/Classes/**/*'
  s.swift_version = '4.2'

  s.static_framework = true

  # s.resource_bundles = {
  #   'NBase' => ['NBase/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
