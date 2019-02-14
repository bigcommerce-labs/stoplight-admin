# coding: utf-8

lib = File.expand_path('lib', File.dirname(__FILE__))
$LOAD_PATH.push(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name = 'stoplight-admin'
  gem.version = '0.3.2'
  gem.summary = 'A simple administration interface for Stoplight.'
  gem.description = gem.summary
  gem.homepage = 'https://github.com/orgsync/stoplight-admin'
  gem.license = 'MIT'

  {
    'Cameron Desautels' => 'camdez@gmail.com',
    'Taylor Fausak' => 'taylor@fausak.me'
  }.tap do |hash|
    gem.authors = hash.keys
    gem.email = hash.values
  end

  gem.files = %w(LICENSE.md README.md) +
    Dir.glob(File.join('lib', '**', '*.rb')) +
    Dir.glob(File.join('lib', '**', '*.haml'))

  gem.required_ruby_version = '>= 1.9.3'

  {
    'haml' => '5.0',
    'redis' => '3.2',
    'sinatra-contrib' => '2.0',
  }.each do |name, version|
    gem.add_dependency(name, "~> #{version}")
  end

  gem.add_dependency 'stoplight', '>= 1.4'

  {
    'bundler' => '1.10',
    'rake' => '11.1'
  }.each do |name, version|
    gem.add_development_dependency(name, "~> #{version}")
  end
end
