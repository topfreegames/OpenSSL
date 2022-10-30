Pod::Spec.new do |s|
  s.name         = "OpenSSL-TFG"
  s.version      = "1.1.1q"
  s.summary      = "OpenSSL for iOS and OS X"
  s.description  = "OpenSSL is an SSL/TLS and Crypto toolkit. Supports iOS including Simulator (armv7,armv7s,arm64,i386,x86_64)."
  s.homepage     = "https://github.com/tfgco/OpenSSL.git"
  s.license	     = { :type => 'OpenSSL (OpenSSL/SSLeay)', :file => 'LICENSE' }
  s.source       = { :git => "https://github.com/tfgco/OpenSSL.git", :tag => "#{s.version}" }

  s.authors       =  {'Mark J. Cox' => 'mark@openssl.org',
                     'Ralf S. Engelschall' => 'rse@openssl.org',
                     'Dr. Stephen Henson' => 'steve@openssl.org',
                     'Ben Laurie' => 'ben@openssl.org',
                     'Lutz Jänicke' => 'jaenicke@openssl.org',
                     'Nils Larsch' => 'nils@openssl.org',
                     'Richard Levitte' => 'nils@openssl.org',
                     'Bodo Möller' => 'bodo@openssl.org',
                     'Ulf Möller' => 'ulf@openssl.org',
                     'Andy Polyakov' => 'appro@openssl.org',
                     'Geoff Thorpe' => 'geoff@openssl.org',
                     'Holger Reif' => 'holger@openssl.org',
                     'Paul C. Sutton' => 'geoff@openssl.org',
                     'Eric A. Young' => 'eay@cryptsoft.com',
                     'Tim Hudson' => 'tjh@cryptsoft.com',
                     'Justin Plouffe' => 'plouffe.justin@gmail.com'}
  
  s.ios.deployment_target = '11.0'
  s.ios.source_files        = 'include/openssl/**/*.h'
  s.ios.public_header_files = 'include/openssl/**/*.h'
  s.ios.header_dir          = 'openssl'
  s.ios.preserve_paths      = 'lib/libcrypto.a', 'lib/libssl.a'
  s.ios.vendored_libraries  = 'lib/libcrypto.a', 'lib/libssl.a'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}

  s.libraries = 'ssl', 'crypto'
  s.requires_arc = false
end
