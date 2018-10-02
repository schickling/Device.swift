Pod::Spec.new do |s|
  s.name                        = 'Device.swift'
  s.version                     = '1.1.2'
  s.license                     = { :type => 'MIT', :file => 'LICENSE' }
  s.summary                     = 'Super-lightweight library to detect used device'
  s.homepage                    = 'https://github.com/schickling/Device.swift'
  s.source                      = { :git => 'https://github.com/schickling/Device.swift.git', :tag => s.version.to_s }

  s.source_files                = 'Device/**/*.{swift}'
  s.ios.deployment_target       = '8.0'
  s.ios.frameworks              = 'UIKit'
  s.requires_arc                = true
  s.swift_version               = '4.2'

  s.authors                     = { 'Johannes Schickling' => 'schickling.j@gmail.com',
                                    'Cody Winton' => 'cody.t.winton@gmail.com' }
end
