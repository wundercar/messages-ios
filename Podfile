platform :ios, '10.0'
source 'https://github.com/CocoaPods/Specs.git'
# ignore all warnings from all pods
inhibit_all_warnings!
use_frameworks!
## Do not send stats
ENV['COCOAPODS_DISABLE_STATS'] = 'true'

# Workspace and project definition

# Project libraries

def app_pods
  pod 'NotificationBannerSwift', '2.5.1'
end

# Framework target

target 'WUMessages-iOS' do

  app_pods
  
  target 'WUMessages-iOSTests' do
    inherit! :search_paths

  end
end

# Example Target

target 'Example' do

  app_pods

end
