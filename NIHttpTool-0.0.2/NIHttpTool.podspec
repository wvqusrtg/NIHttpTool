Pod::Spec.new do |s|
  s.name = "NIHttpTool"
  s.version = "0.0.2"
  s.summary = "NIHttpTool-\u6574\u7406\u4F18\u5316(\u8F7B\u91CF\u7EA7\u5355\u4F8B\u5C01\u88C5\u7F51\u7EDC\u8BF7\u6C42)"
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"1911398892@qq.com"=>"1911398892@qq.com"}
  s.homepage = "https://github.com/1911398892@qq.com/NIHttpTool"
  s.description = "NIHttpTool-\u6574\u7406\u4F18\u5316(\u8F7B\u91CF\u7EA7\u5355\u4F8B\u5C01\u88C5\u7F51\u7EDC\u8BF7\u6C42)"
  s.requires_arc = true
  s.source = { :path => '.' }

  s.ios.deployment_target    = '8.0'
  s.ios.vendored_framework   = 'ios/NIHttpTool.framework'
end
