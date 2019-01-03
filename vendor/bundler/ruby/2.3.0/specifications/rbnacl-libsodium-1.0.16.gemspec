# -*- encoding: utf-8 -*-
# stub: rbnacl-libsodium 1.0.16 ruby lib
# stub: ext/rbnacl/extconf.rb

Gem::Specification.new do |s|
  s.name = "rbnacl-libsodium"
  s.version = "1.0.16"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Artiom Di", "Tony Arcieri"]
  s.date = "2017-12-13"
  s.email = ["kron82@gmail.com", "bascule@gmail.com"]
  s.extensions = ["ext/rbnacl/extconf.rb"]
  s.files = ["ext/rbnacl/extconf.rb"]
  s.homepage = "https://github.com/cryptosphere/rbnacl-libsodium"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.6")
  s.rubygems_version = "2.5.1"
  s.summary = "rbnacl with bundled libsodium"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rbnacl>, [">= 3.0.1"])
      s.add_development_dependency(%q<bundler>, ["~> 1.5"])
      s.add_development_dependency(%q<rake>, [">= 10"])
      s.add_development_dependency(%q<rake-compiler>, ["~> 0.9.7"])
      s.add_development_dependency(%q<rake-compiler-dock>, ["~> 0.5.2"])
    else
      s.add_dependency(%q<rbnacl>, [">= 3.0.1"])
      s.add_dependency(%q<bundler>, ["~> 1.5"])
      s.add_dependency(%q<rake>, [">= 10"])
      s.add_dependency(%q<rake-compiler>, ["~> 0.9.7"])
      s.add_dependency(%q<rake-compiler-dock>, ["~> 0.5.2"])
    end
  else
    s.add_dependency(%q<rbnacl>, [">= 3.0.1"])
    s.add_dependency(%q<bundler>, ["~> 1.5"])
    s.add_dependency(%q<rake>, [">= 10"])
    s.add_dependency(%q<rake-compiler>, ["~> 0.9.7"])
    s.add_dependency(%q<rake-compiler-dock>, ["~> 0.5.2"])
  end
end
