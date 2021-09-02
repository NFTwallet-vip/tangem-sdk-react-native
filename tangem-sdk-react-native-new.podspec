require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "tangem-sdk-react-native-new"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platforms    = { :ios => "13.0" }
  s.source       = { :git => "https://github.com/tangem/tangem-sdk-react-native-new.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,mm,swift}"
  s.ios.deployment_target = '11.0'

  s.requires_arc = true
  s.platform = :ios, '13.0'
  s.ios.deployment_target = '13.0'

  s.dependency "React-Core"
  s.dependency "TangemSdk"
end