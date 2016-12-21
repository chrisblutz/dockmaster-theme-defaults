$LOAD_PATH.unshift(File.expand_path('../lib', __FILE__))

require 'dockmaster/theme/default/version'

Gem::Specification.new do |s|
  s.name      = 'dockmaster-theme-default'
  s.version   = Dockmaster::Theme::VERSION
  s.license   = 'MIT'
  s.authors   = ['Christopher Lutz']

  s.files     = `git ls-files lib theme LICENSE.txt`.split($RS)

  s.summary   = 'The default theme included with Dockmaster'
  s.homepage  = ''

  s.add_development_dependency 'dockmaster', '~> 0.1.0'
  s.add_development_dependency 'bundler', '~> 1.13'
end
