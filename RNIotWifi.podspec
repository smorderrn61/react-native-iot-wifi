require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNIotWifi"
  s.version      = package['version']
  s.summary      = package['description']
  s.description  = package['description']
  s.homepage     = 'https://github.com/smorderrn61/react-native-iot-wifi.git'
  s.license      = package['license']
  s.authors      = package['authors']
  s.platform     = :ios, '10.0'
  s.source       = { :git => "https://github.com/smorderrn61/react-native-iot-wifi.git", :tag => 'master' }
  s.source_files  = "ios/**/*.{h,m}"
  
  s.ios.deployment_target = '10.0'
  s.tvos.deployment_target = '10.0'

  s.dependency 'React'
end
