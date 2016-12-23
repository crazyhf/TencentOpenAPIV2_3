Pod::Spec.new do |s|
  s.name         = 'TencentOpenAPIV2_3'
  s.version      = '3.1.3'
  s.summary      = 'TencentOpenAPI v2.3'
  s.description  = <<-DESC
                   This pod is used who want to use tencentOpenAPI v2.3 with podfile.
                   DESC
  s.author       = 'http://open.qq.com'
  s.homepage     = 'http://open.qq.com'
  s.license      = {
      :type => 'LGPL',
      :file => "LICENSE"
  }
  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source       = { :git => 'https://github.com/crazyhf/TencentOpenAPIV2_3.git', :tag => 'v#{spec.version}' }

  s.resources = "TencentOpenAPI/TencentOpenApi_IOS_Bundle.bundle"
  s.vendored_frameworks = 'TencentOpenAPI/TencentOpenAPI.framework'
  s.public_header_files = "TencentOpenAPI/TencentOpenAPI.framework/Headers/**/*.h"
  
  the_frameworks =  [
                      '"SystemConfiguration"',
                      '"CoreTelephony"'
                    ]
  the_ldflags    = '$(inherited) -lz -lsqlite3 -liconv -lstdc++ -framework ' + the_frameworks.join(' -framework ') + ''

  s.xcconfig = { 'OTHER_LDFLAGS' => the_ldflags }
end
