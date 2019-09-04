Pod::Spec.new do |s|
s.name                = "Marketo-AL-iOS-SDK"
s.version             = "0.8.3"
s.summary             = "Add Marketo Mobile Engagement to your project."
s.description         = <<-DESC
                            MarketoPod provides the following features:

                            * Use Adobe extension
			    * Create lead on app install
                            * Associate lead with user
                            * Track user actions
                            * Send push notifications
                            * In-app notifications
                            * Triggered campaigns
                        DESC
s.homepage            = "https://github.com/Marketo/iOS-Launch-SDK.git"
s.license             = {
:type => 'Copyright',
:text => <<-LICENSE
Copyright 2015 Marketo, Inc. All rights reserved.
LICENSE
}

s.author              = { "Marketo Inc" => "mbijapur@marketo.com" }
s.source              = { :git => "https://github.com/Marketo/iOS-Launch-SDK.git", :tag => s.version, :branch => 'master' }
s.source_files		  = 'Marketo.framework/**/*.h'

s.platform            = :ios, '10.0'
s.requires_arc        = false

# dependency on the core library
s.dependency "ACPCore", ">= 2.1.1"
s.static_framework = true

s.preserve_paths      = 'Marketo.framework'
s.public_header_files = 'Marketo.framework/**/*.h'
s.vendored_frameworks = "Marketo.framework"
s.frameworks          = 'SystemConfiguration', 'Security', 'CoreTelephony'
s.library			  = 'sqlite3'
s.resource_bundles 	  = {
    'MKTResources' => [
        'ResourcePod/**/*.{png,storyboard}'
    ]
}
end