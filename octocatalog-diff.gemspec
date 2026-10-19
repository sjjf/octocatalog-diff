Gem::Specification.new do |s|
  s.name        = 'octocatalog-diff'
  s.version     = ENV['OCTOCATALOG_DIFF_VERSION'] || File.read(File.join(__dir__, '.version')).strip
  s.license     = 'MIT'
  s.authors     = ['Simon Fowler', 'SysEleven GmbH', 'GitHub, Inc.', 'Kevin Paulisse']
  s.email       = ['simon.fowler@anu.edu.au']
  s.homepage    = 'https://github.com/sjjf/octocatalog-diff'
  s.summary     = 'Compile OpenVox/Puppet catalogs from 2 branches, versions, etc., and compare them.'
  s.description = <<~DESC
    Octocatalog-Diff assists with Puppet/OpenVox development and testing by enabling the
    user to compile 2 catalogs and compare them. It is possible to compare different
    branches, different versions, and different fact values. This is intended to be run
    from a local development environment or in CI. This is the NCI fork, based on the
    SysEleven fork which updates the code for OpenVox 8 and Ruby >= 3.2, along with other
    pending merge requests from the original repository.
  DESC

  s.files = Dir.glob('doc/**/*.md') \
          + Dir.glob('lib/**/*') \
          + Dir.glob('scripts/**/*') \
          + %w[LICENSE README.md .version bin/octocatalog-diff]
  s.executables = ['octocatalog-diff']

  s.required_ruby_version = ['>= 3.2', '< 4']

  s.metadata = {
    'github_repo' => 'ssh://github.com/sjjf/octocatalog-diff',
    'source_code_uri' => 'https://github.com/sjjf/octocatalog-diff',
    'bug_tracker_uri' => 'https://github.com/sjjf/octocatalog-diff/issues',
    'changelog_uri' => 'https://github.com/sjjf/octocatalog-diff/blob/master/doc/CHANGELOG.md',
  }

  s.add_runtime_dependency 'diffy', '>= 3.4', '< 4'
  s.add_runtime_dependency 'httparty', '~> 0.21'
  s.add_runtime_dependency 'hashdiff', '>= 1.0', '< 2'
  s.add_runtime_dependency 'parallel', '>= 1.24', '< 2'
  s.add_runtime_dependency 'git', '~> 4'
  s.add_runtime_dependency 'openvox', '>= 8.19', '< 9'
  s.add_development_dependency 'rspec', '~> 3.4.0'
  s.add_development_dependency 'rake', '12.3.3'
  s.add_development_dependency 'parallel_tests', '2.7.1'
  s.add_development_dependency 'rspec-retry', '0.5.0'
  s.add_development_dependency 'rubocop', '= 0.49.0'
  s.add_development_dependency 'simplecov', '~> 0.14.1'
  s.add_development_dependency 'simplecov-erb', '~> 0.1.1'

end
