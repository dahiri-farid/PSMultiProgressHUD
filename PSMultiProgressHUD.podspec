#
# Be sure to run `pod lib lint PSMultiProgressHUD.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "PSMultiProgressHUD"
  s.version          = "0.1.0"
  s.summary          = "PSMultiProgressHUD - combines multiple HUBs and lets you choose which one to show."
  s.description      = "* PSMultiProgressHUD allows to choose which of the well known github's progress HUDs to show."
  s.homepage         = "https://github.com/dahiri-farid/PSMultiProgressHUD"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Dahiri Farid" => "dahiri.farid@gmail.com" }
  s.source           = { :git => "https://github.com/dahiri-farid/PSMultiProgressHUD.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/farid_dahiri'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'PSMultiProgressHUD' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/PSMultiProgressHUD.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'MBProgressHUD',  '0.9.1'
  s.dependency 'SVProgressHUD',  '1.1.3'
  s.dependency 'MRProgress',     '0.8.2'
end
