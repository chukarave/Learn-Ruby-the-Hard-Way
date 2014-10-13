# encoding: utf-8
lib = File.expand_path('../lib', __FILE__) 
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "ex46"
  spec.version       = '1.0'
  spec.authors       = ["Noa Rave"]
  spec.email         = ["noa.rave@berlinonline.de"]
  spec.summary       = %q{project short summary}
  spec.description   = %q{project description}
  spec.hompage       = "http://domainforproject.com"
  spec.license       = "MIT"   
  
  spec.files         = ['lib/ex46.rb']
  spec.executables   = ['bin/ex46']
  spec.test_files    = ['tests/test_ex46.rb']
  spec.require.paths = ["lib"]
end


