# -*- encoding: utf-8 -*-
# stub: webpacker 3.5.5 ruby lib

Gem::Specification.new do |s|
  s.name = "webpacker"
  s.version = "3.5.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/rails/webpacker/blob/v3.5.5/CHANGELOG.md", "source_code_uri" => "https://github.com/rails/webpacker/tree/v3.5.5" } if s.respond_to? :metadata=
  s.require_paths = ["lib"]
  s.authors = ["David Heinemeier Hansson", "Gaurav Tiwari"]
  s.date = "2018-07-09"
  s.email = ["david@basecamp.com", "gaurav@gauravtiwari.co.uk"]
  s.homepage = "https://github.com/rails/webpacker"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.0")
  s.rubygems_version = "2.5.1"
  s.summary = "Use webpack to manage app-like JavaScript modules in Rails"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 4.2"])
      s.add_runtime_dependency(%q<railties>, [">= 4.2"])
      s.add_runtime_dependency(%q<rack-proxy>, [">= 0.6.1"])
      s.add_development_dependency(%q<bundler>, ["~> 1.12"])
    else
      s.add_dependency(%q<activesupport>, [">= 4.2"])
      s.add_dependency(%q<railties>, [">= 4.2"])
      s.add_dependency(%q<rack-proxy>, [">= 0.6.1"])
      s.add_dependency(%q<bundler>, ["~> 1.12"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 4.2"])
    s.add_dependency(%q<railties>, [">= 4.2"])
    s.add_dependency(%q<rack-proxy>, [">= 0.6.1"])
    s.add_dependency(%q<bundler>, ["~> 1.12"])
  end
end
