Pod::Spec.new do |s|
  s.name             = "Device.swift"
  s.version          = "0.3.1"
  s.summary          = "Super-lightweight library to detect used device"

  s.homepage         = "https://github.com/schickling/Device.swift"
  s.license          = 'MIT'
  s.author           = { "Johannes Schickling" => "schickling.j@gmail.com" }
  s.source           = { :git => "https://github.com/schickling/Device.swift.git", :tag => s.version.to_s }
  s.platform         = :ios, '8.0'
  s.requires_arc     = true

  s.source_files     = 'Device/**/*.{swift}'
end
