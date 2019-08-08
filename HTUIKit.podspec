#
# Be sure to run `pod lib lint HTUIKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HTUIKit'
  s.version          = '0.1.14'
  s.summary          = 'ICP-Mobile UI组件库之 HTUIKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/icpmobile/HTUIKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lqve521' => 'lqve521@163.com' }
  s.source           = { :git => 'https://github.com/icpmobile/HTUIKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  #s.source_files = 'HTUIKit/Classes/**/*'
  
#   s.resource_bundles = {
#     'HTUIKit' => ['HTUIKit/Assets/*.png']
#   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
#
  s.subspec 'WRNavigationBar' do |wr|
    wr.source_files = 'HTUIKit/Classes/WRNavigationBar'
  end
#
  s.subspec 'BRPickerView' do |br|
    br.source_files = 'HTUIKit/Classes/BRPickerView/**/*'
  end
#
  s.subspec 'HTFormView' do |form|
    form.source_files = 'HTUIKit/Classes/HTFormView'
    form.dependency 'HTUIKit/BRPickerView'
    form.resource_bundles = {
      'HTFormView' => ['HTUIKit/Assets/HTFormView/*']
    }
  end
#
  s.subspec 'HTSignature' do |si|
    si.source_files = 'HTUIKit/Classes/HTSignature'
  end
#
  s.subspec 'QMUI_Common' do |qm|
    qm.source_files = 'HTUIKit/Classes/QMUI_Common/**/*'
    qm.dependency 'QMUIKit', '3.1.7'
  end

  s.subspec 'DLRadioButton' do |dl|
    dl.source_files = 'HTUIKit/Classes/DLRadioButton'
  end

  s.subspec 'LGAlertView' do |lgav|
    lgav.source_files = 'HTUIKit/Classes/LGAlertView'
  end
  
  s.subspec 'LisztPageKit' do |dlv|
      dlv.source_files = 'HTUIKit/Classes/LisztPageKit/**/*'
  end
  
  s.subspec 'HTDownloadView' do |dlv|
    dlv.source_files = 'HTUIKit/Classes/HTDownloadView'
  end
  
  s.subspec 'DLSlideView' do |udl|
    udl.source_files = 'HTUIKit/Classes/DLSlideView/**/*'
  end
  
  s.subspec 'LXGradientProcessView' do |ulx|
    ulx.source_files = 'HTUIKit/Classes/LXGradientProcessView'
  end
  
  
  s.subspec 'DropdownMenu' do |udm|
    udm.source_files = 'HTUIKit/Classes/DropdownMenu'
    udm.resource_bundles = {
      'DropdownMenu' => ['HTUIKit/Assets/DropdownMenu/*']
    }
  end
  
end
