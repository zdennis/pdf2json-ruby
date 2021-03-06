Gem::Specification.new do |s|
  s.name              = "pdf2json"
  s.version           = "0.2.0"
  s.platform          = Gem::Platform::RUBY
  s.authors           = ["Zach Dennis"]
  s.email             = ["zach.dennis@gmail.com"]
  s.homepage          = "http://github.com/zdennis/pdf2json-ruby"
  s.summary           = "Installs the pdf2json library for *nix-based systems"
  s.description       = "pdf2json installation wrapper for ruby"
  s.rubyforge_project = s.name

  s.required_rubygems_version = ">= 1.3.6"
  
  # If you have runtime dependencies, add them here
  # s.add_runtime_dependency "other", "~> 1.2"
  
  # If you have development dependencies, add them here
  # s.add_development_dependency "another", "= 0.9"

  # The list of files to be contained in the gem
  s.files         = `git ls-files`.split("\n")
  # s.executables   = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  # s.extensions    = `git ls-files ext/extconf.rb`.split("\n")
  
  s.require_path = 'lib'

  # For C extensions
  s.extensions = "ext/extconf.rb"
end