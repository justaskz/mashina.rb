Gem::Specification.new do |spec|
  spec.name                  = 'mashina'
  spec.version               = '0.1.0'
  spec.authors               = 'Justas Kazakauskas'
  spec.email                 = 'leakymirror@gmail.com'
  spec.summary               = 'CLI tool for misc admin tasks'
  spec.description           = 'CLI tool for misc admin tasks'
  spec.homepage              = 'https://github.com/justaskz/mashina'
  spec.license               = 'MIT'
  spec.required_ruby_version = '>= 2.7'
  spec.metadata              = { 'rubygems_mfa_required' => 'true' }

  spec.add_runtime_dependency 'faraday', '~> 2.12.0'
  spec.add_runtime_dependency 'lean_interactor', '~> 0.1'
  spec.add_runtime_dependency 'thor', '~> 1.3.2'

  spec.files       = Dir['lib/**/*.rb']
  spec.bindir      = 'bin'
  spec.executables << 'mashina'
end
