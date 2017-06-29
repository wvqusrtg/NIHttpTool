Pod::Spec.new do |s|
  s.name         = "NIHttpTool"
  s.version      = "0.0.1"
  s.summary      = "NIHttpTool:简单封装AFNetWorking网络请求，基于AFNetworking (3.1.0)"
  s.description  = <<-DESC
                  简单封装AFNetWorking网络请求，基于AFNetworking (3.1.0);提供了常用的API，调用简单。若在使用过程中有问题，请反馈与作者，以便完善之！
                   DESC

  s.homepage     = "https://nixinsheng.github.io/"
  s.license      = "MIT"
  s.author             = { "倪新生" => "1911398892@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/wvqusrtg/NIHttpTool.git", :tag => "0.0.1" }
  s.source_files  = "NIHttpTool", "*.{h,m}"
  s.subspec 'Reachability' do |reac|
    reac.ios.deployment_target = '7.0'
    reac.source_files = 'Pods/Reachability/Reachability.{h,m}'
    reac.public_header_files = 'Pods/Reachability/Reachability.h'
  end

  s.requires_arc = true

  s.dependency "AFNetworking", "~> 3.1.0"
  s.dependency "Reachability", "~> 3.2"

end
