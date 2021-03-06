# -*- encoding: utf-8 -*-
# stub: sassc-rails 1.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "sassc-rails".freeze
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ryan Boland".freeze]
  s.date = "2016-08-10"
  s.description = "Integrate SassC-Ruby into Rails.".freeze
  s.email = ["ryan@tanookilabs.com".freeze]
  s.homepage = "https://github.com/sass/sassc-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.7".freeze
  s.summary = "Integrate SassC-Ruby into Rails.".freeze

  s.installed_by_version = "2.7.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<mocha>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<sass>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<sassc>.freeze, ["~> 1.9"])
      s.add_runtime_dependency(%q<tilt>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<railties>.freeze, [">= 4.0.0"])
      s.add_runtime_dependency(%q<sprockets>.freeze, ["> 2.11"])
      s.add_runtime_dependency(%q<sprockets-rails>.freeze, [">= 0"])
    else
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<mocha>.freeze, [">= 0"])
      s.add_dependency(%q<sass>.freeze, [">= 0"])
      s.add_dependency(%q<sassc>.freeze, ["~> 1.9"])
      s.add_dependency(%q<tilt>.freeze, [">= 0"])
      s.add_dependency(%q<railties>.freeze, [">= 4.0.0"])
      s.add_dependency(%q<sprockets>.freeze, ["> 2.11"])
      s.add_dependency(%q<sprockets-rails>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<mocha>.freeze, [">= 0"])
    s.add_dependency(%q<sass>.freeze, [">= 0"])
    s.add_dependency(%q<sassc>.freeze, ["~> 1.9"])
    s.add_dependency(%q<tilt>.freeze, [">= 0"])
    s.add_dependency(%q<railties>.freeze, [">= 4.0.0"])
    s.add_dependency(%q<sprockets>.freeze, ["> 2.11"])
    s.add_dependency(%q<sprockets-rails>.freeze, [">= 0"])
  end
end
