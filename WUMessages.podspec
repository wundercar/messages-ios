Pod::Spec.new do |s|
  s.name                      = "WUMessages"
  s.version                   = "1.1.3"
  s.summary                   = "WUMessages"
  s.homepage                  = "https://github.com/wundercar/messages-ios"
  s.license                   = { :type => "MIT", :file => "LICENSE" }
  s.author                    = { "Vicente Crespo" => "vicente.crespo@wundermobility.com" }
  s.source                    = { :git => "https://github.com/wundercar/messages-ios.git", :tag => s.version.to_s }
  s.ios.deployment_target     = "10.0"
  s.tvos.deployment_target    = "9.0"
  s.watchos.deployment_target = "2.0"
  s.osx.deployment_target     = "10.10"
  s.swift_version             = '5.0'
  s.source_files              = "Sources/**/*"
  s.frameworks                = "Foundation"
  s.dependency 'NotificationBannerSwift', '3.0.2'

end
