#
# Be sure to run `pod lib lint ModuleManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ModuleManager'
  s.version          = '0.1.0'
  s.summary          = 'ModuleManager is a light framework to manage all the Modules in your porject.'

  s.description      = <<-DESC
  ModuleManager is a light framework to manage all the Modules in your porject.
                       DESC

  s.homepage         = 'https://github.com/hujewelz/ModuleManager'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'huluobo' => 'hujewelz@163.com' }
  s.source           = { :git => 'https://github.com/hujewelz/ModuleManager.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ModuleManager/Classes/**/*'
end
