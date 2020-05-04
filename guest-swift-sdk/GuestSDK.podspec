Pod::Spec.new do |s|
  s.name = 'GuestSDK'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '0.11.5'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v0.11.5' }
  s.authors = 'OpenAPI Generator'
  s.license = 'Proprietary'
  s.homepage = 'https://github.com/OpenAPITools/openapi-generator'
  s.summary = 'GuestSDK Swift SDK'
  s.source_files = 'GuestSDK/Classes/**/*.swift'
  s.dependency 'Alamofire', '~> 4.9.1'
end
