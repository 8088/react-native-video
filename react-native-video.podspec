require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-video"
  s.version      = package["version"]
  s.summary      = "A <Video /> element for react-native"
  s.author       = "Brent Vatne <brentvatne@gmail.com> (https://github.com/brentvatne)"

  s.homepage     = "https://github.com/brentvatne/react-native-video"

  s.license      = "MIT"
  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/brentvatne/react-native-video.git", :tag => "#{s.version}" }

  s.source_files  = "*.{h,m}"

  s.dependency "React"
end
