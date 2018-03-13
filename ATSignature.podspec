#
# Be sure to run `pod lib lint ATSignature.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ATSignature'
  s.version          = '0.1.0'
  s.summary          = 'It is one of the most simple customized signature view with basic controls https://github.com/apptasklpaco/ATSignature '
  s.description      = 'The controls include Button Actions, Button color, Button title. It has total four styles in the Example. You can simply override several delegate functions to handle user interactions. The implementation of delegate functions is optional. It also has several styles for the signature view. *(The size of signature view is based on a super view  assigned to the view controller. You should fix the size of the super view. Auto size is not recommended.)'
  s.homepage         = 'https://github.com/apptasklpaco/ATSignature'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'AppTasnk - paco.yeung' => 'paco.yeung@eventionapp.com' }
  s.source           = { :git => 'https://github.com/apptasklpaco/ATSignature.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.source_files = 'ATSignature/Classes/**/*'

end
