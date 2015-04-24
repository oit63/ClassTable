platform :ios, '7.0'
target "JiaoWuXiTong" do
    
    pod "AFNetworking", "~> 2.0"
    pod 'ReactiveCocoa', '2.1.8'
    pod 'libextobjc', '0.3'
    pod 'ReactiveViewModel', '0.1.1'
    pod 'UIColor-Utilities', '1.0.1'
    
    inhibit_all_warnings!
    # Remove 64-bit build architecture from Pods targets
    post_install do |installer|
        installer.project.targets.each do |target|
            target.build_configurations.each do |configuration|
                target.build_settings(configuration.name)['ARCHS'] = '$(ARCHS_STANDARD_32_BIT)'
            end
        end
    end

end