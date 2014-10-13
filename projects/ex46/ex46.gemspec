# encoding: utf-8
$:.unshift File.join(File.dirname(__FILE__), ["..", "lib"])

Gem::Specification.new do |spec|
  spec.name          = "ex46"
  spec.version       = '1.0'
  spec.authors       = ["Noa Rave"]
  spec.email         = ["noa.rave@berlinonline.de"]
  spec.summary       = %q{project short summary}
  spec.description   = %q{project description}
  spec.homepage       = "http://domainforproject.com"
  spec.license       = "MIT"   
  
  spec.files         = `git ls-files`.split("\n")
  spec.executables   = ['ex46']
  spec.test_files    = ['tests/test_ex46.rb']
  spec.require_paths = ["lib"]

end


