# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'geoip_city/version'

Gem::Specification.new do |spec|
  spec.name             = "geoip_city19"
  spec.version          = GeoipCity::VERSION
  spec.authors          = ["ry dahl", "Chris Kraybill"]
  spec.email            = ['ry@tinyclouds.org', 'ckraybill@gmail.com']
  spec.description      = "Ruby 1.9 library provides a binding to the C library for, given an IP address, return a JSON hash of best-guess geographical data"
  spec.summary          = "A Binding to the GeoIP C library for Ruby 19"
  spec.homepage         = 'https://github.com/ckraybill/geoip_city19'

  spec.files            = Dir.glob('lib/**/*.rb') +
                          Dir.glob('ext/**/*.{c,h,rb}')
  spec.executables      = []
  spec.extensions       = ["ext/geoip_city/extconf.rb"]
  spec.extra_rdoc_files = ['README', 'ext/geoip_city/geoip_city.c']
  spec.test_files       = ["test/test.rb"]
  spec.require_paths    = ["lib"]

  spec.add_development_dependency "rake-compiler"
end
