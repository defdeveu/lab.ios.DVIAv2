use_frameworks!

target 'DVIA-v2' do
    pod 'Parse'
    pod 'GoogleAnalytics'
    #pod 'RealmSwift'
    pod 'couchbase-lite-ios'
#    pod 'Flurry-iOS-SDK/FlurrySDK'
end

post_install do |installer|
      installer.pods_project.targets.each do |target|
#            if target.name.include?('Realm')
                target.build_configurations.each do |config|
                      config.build_settings['EXCLUDED_ARCHS[sdk=iphonesimulator*]'] = 'arm64'
                end
#            end
      end
end