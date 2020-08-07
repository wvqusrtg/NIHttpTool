#
# Be sure to run `pod lib lint NIHttpTool.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NIHttpTool'
  s.version          = '0.0.2'
  s.summary          = 'NIHttpTool-整理优化(轻量级单例封装网络请求)'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'NIHttpTool-整理优化(轻量级单例封装网络请求)'

  s.homepage         = 'https://github.com/1911398892@qq.com/NIHttpTool'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '1911398892@qq.com' => '1911398892@qq.com' }
  s.source           = { :git => 'https://github.com/wvqusrtg/NIHttpTool.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'NIHttpTool/Classes/**/*'
  s.requires_arc = true
  # s.resource_bundles = {
  #   'NIHttpTool' => ['NIHttpTool/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency "AFNetworking", "~> 3.1.0"
  s.dependency "Reachability", "~> 3.2"
  
end
