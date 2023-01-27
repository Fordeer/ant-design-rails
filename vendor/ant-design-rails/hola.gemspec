# frozen_string_literal: true

require_relative "lib/ant/design/rails/version"

Gem::Specification.new do |spec|
  spec.name               = "ant-design-rails"
  spec.version            = Ant::Design::Rails::VERSION.dup
  spec.authors            = ["Minqi Pan"]
  spec.email              = %q{pmq2001@gmail.com}
  spec.summary            = %q{Ant Design on Rails: pairing world's best backend framework with the best frontend framework, without wrapping everything in API!}
  spec.description        = %q{Ant Design on Rails: pairing world's best backend framework with the best frontend framework, without wrapping everything in API!}
  spec.homepage           = %q{https://github.com/pmq20/ant-design-rails}
  spec.metadata           = {
    "homepage_uri"      => "https://ant-design-rails.minqi-pan.com/api/welcome",
    "source_code_uri"   => "https://github.com/pmq20/ant-design-rails",
    "bug_tracker_uri"   => "https://github.com/pmq20/ant-design-rails/issues",
    "wiki_uri"          => "https://github.com/pmq20/ant-design-rails/wiki"
  }
  spec.require_paths      = ["lib"]
  spec.licenses           = ["MIT"]
  spec.test_files         = spec.files.grep(%r{^(test|spec|features)/})
  spec.bindir             = "exe"
  spec.executables        = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
