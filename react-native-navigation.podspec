require "json"
package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name          = "react-native-navigation"
  s.version       = package[version]
  s.source_files  = "ios/**/*.{h,m}"
  s.platform      = :ios, "8.0"
  s.authors       = { "Tal Kol" => "talkol@gmail.com" }
  s.license       = package["license"]
  s.summary       = package["description"]
  s.homepage      = "https://github.com/wix/react-native-navigation"
  s.source        = { :git => "https://github.com/wix/react-native-navigation.git" }
  s.requires_arc  = true
  s.preserve_paths= "package.json", "LICENSE"
  s.dependency 'React'
end
