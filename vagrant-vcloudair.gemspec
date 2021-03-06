$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'vagrant-vcloudair/version'

Gem::Specification.new do |s|
  s.name = 'vagrant-vcloudair'
  s.version = VagrantPlugins::VCloudAir::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ['Fabio Rapposelli', 'Timo Sugliani']
  s.email = ['fabio@rapposelli.org', 'timo.sugliani@gmail.com']
  s.homepage = 'https://github.com/gosddc/vagrant-vcloudair'
  s.license = 'MIT'
  s.summary = 'VMware vCloud® Air™ provider'
  s.description = 'Enables Vagrant to manage machines with VMware vCloud® Air™.'

  s.add_runtime_dependency 'i18n', '~> 0.6.4'
  s.add_runtime_dependency 'log4r', '~> 1.1.10'
  s.add_runtime_dependency 'nokogiri', '~> 1.6'
  s.add_runtime_dependency 'httpclient', '~> 2.3.4.1'
  s.add_runtime_dependency 'ruby-progressbar', '~> 1.1.1'
  s.add_runtime_dependency 'netaddr', '~> 1.5.0'
  s.add_runtime_dependency 'awesome_print', '~> 1.2.0'
  s.add_runtime_dependency 'terminal-table', '~> 1.4.5'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec-core', '~> 2.12.2'
  s.add_development_dependency 'rspec-expectations', '~> 2.12.1'
  s.add_development_dependency 'rspec-mocks', '~> 2.12.1'

  s.files = `git ls-files`.split($/)
  s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files = s.files.grep(%r{^(test|spec|features)/})
  s.require_path = 'lib'
end
