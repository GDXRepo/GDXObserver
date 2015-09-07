Pod::Spec.new do |s|
  s.name             = "GDXObserver"
  s.version          = "1.0.1"
  s.summary          = "Light-weight notifications management simplifying library."
  s.homepage         = "https://github.com/GDXRepo/GDXObserver"
  s.license          = { :type => "Apache", :file => "LICENSE" }
  s.author           = { "Georgiy Malyukov" => "" }
  s.source           = { :git => "https://github.com/GDXRepo/GDXObserver.git", :tag => s.version.to_s }
  s.social_media_url = 'http://deadlineru.livejournal.com'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'test' => ['Pod/Assets/*.png']
  }
end