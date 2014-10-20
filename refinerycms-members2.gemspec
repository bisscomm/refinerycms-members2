Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-members2'
  s.version           = '3.0.0'
  s.summary           = 'Members engine for Refinery CMS'
  s.description       = 'Ruby on Rails Members engine for Refinery CMS 2.0'
  s.authors           = ['n5ken', 'Slava Kravchenko']
  s.homepage          = "https://github.com/cordawyn/refinerycms-members2"

  s.files         = `git ls-files`.split($\) - %w(Gemfile.lock)
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = %w(lib)

  s.add_dependency "refinerycms", "~> 3.0.0"
  s.add_dependency "refinerycms-pages", "~> 3.0.0"
end
