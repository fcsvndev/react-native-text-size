require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNTextSize"
  s.version      = package["version"]
  s.summary      = "Measure text accurately before laying it out and get font information from your App"
  s.homepage     = "https://github.com/aMarCruz/react-native-text-size"
  s.license      = "BSD 2-Clause"
  s.author             = { "Alberto Martínez" => "amarcruzbox_git@yahoo.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/fcsvndev/react-native-text-size.git", :tag => "#{s.version}" }

  s.source_files  = "ios/**/*.{h,m}"

  s.dependency "React"
end