source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/Artsy/Specs.git'

platform :ios, '8.0'
# 引用框架
use_frameworks!
# ignore all warnings from all pods(注解)
inhibit_all_warnings!

target 'NIHttpToolDemo' do
    pod 'AFNetworking', '~> 3.1.0'
    pod 'Reachability', '~> 3.2'
    pod 'MJExtension', '~> 3.0.13'
end

#Xcode里配置：项目名->Target->Build Settings->Enable BitCode中设置为NO就可以了.
post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['ENABLE_BITCODE'] = 'NO'
        end
    end
end


