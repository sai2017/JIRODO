# -*- encoding: utf-8 -*-
# stub: bcrypt_pbkdf 1.0.0 ruby lib
# stub: ext/mri/extconf.rb

Gem::Specification.new do |s|
  s.name = "bcrypt_pbkdf"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Miklos Fazekas"]
  s.date = "2016-11-25"
  s.description = "    This gem implements bcrypt_pdkfd (a variant of PBKDF2 with bcrypt-based PRF)\n"
  s.email = "mfazekas@szemafor.com"
  s.extensions = ["ext/mri/extconf.rb"]
  s.extra_rdoc_files = ["README.md", "COPYING", "CHANGELOG.md", "lib/bcrypt_pbkdf.rb"]
  s.files = ["CHANGELOG.md", "COPYING", "README.md", "ext/mri/extconf.rb", "lib/bcrypt_pbkdf.rb"]
  s.homepage = "https://github.com/net-ssh/bcrypt_pbkdf-ruby"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--title", "bcrypt_pbkdf", "--line-numbers", "--inline-source", "--main", "README.md"]
  s.rubygems_version = "2.5.1"
  s.summary = "OpenBSD's bcrypt_pdkfd (a variant of PBKDF2 with bcrypt-based PRF)"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake-compiler>, ["~> 0.9.7"])
      s.add_development_dependency(%q<minitest>, [">= 5"])
      s.add_development_dependency(%q<rbnacl>, ["~> 3.3"])
      s.add_development_dependency(%q<rbnacl-libsodium>, ["~> 1.0.8"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<rake-compiler-dock>, ["~> 0.5.3"])
    else
      s.add_dependency(%q<rake-compiler>, ["~> 0.9.7"])
      s.add_dependency(%q<minitest>, [">= 5"])
      s.add_dependency(%q<rbnacl>, ["~> 3.3"])
      s.add_dependency(%q<rbnacl-libsodium>, ["~> 1.0.8"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<rake-compiler-dock>, ["~> 0.5.3"])
    end
  else
    s.add_dependency(%q<rake-compiler>, ["~> 0.9.7"])
    s.add_dependency(%q<minitest>, [">= 5"])
    s.add_dependency(%q<rbnacl>, ["~> 3.3"])
    s.add_dependency(%q<rbnacl-libsodium>, ["~> 1.0.8"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<rake-compiler-dock>, ["~> 0.5.3"])
  end
end
