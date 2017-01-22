Pod::Spec.new do |s|
  s.name         = "FFmpeg"
  s.version      = "3.2.2"
  s.summary      = "FFmpeg static libraries compiled for iOS"
  s.homepage     = "https://github.com/jlopez/FFmpeg-iOS"
  
  s.license      = { :type => 'LGPL', :file => 'LICENSE' }
  s.author       = { "Chris Ballinger" => "chris@chatsecure.org" } # Podspec maintainer
  s.requires_arc = false
  
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/jlopez/FFmpeg-iOS.git", :tag => "3.2.2", :submodules => true }

  s.default_subspec = 'precompiled'

  s.subspec 'precompiled' do |ss|
    ss.source_files        = 'ffmpeg-ios-static-libs/include/**/*.h'
    ss.public_header_files = 'ffmpeg-ios-static-libs/include/**/*.h'
    ss.header_mappings_dir = 'ffmpeg-ios-static-libs/include'
    ss.vendored_libraries  = 'ffmpeg-ios-static-libs/lib/*.a'
    ss.libraries = 'avcodec', 'avdevice', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale', 'iconv', 'z', 'bz2'
    ss.frameworks = 'AVFoundation'
  end

end
