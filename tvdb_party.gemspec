# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{tvdb_party}
  s.version = "0.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jon Maddox"]
  s.date = %q{2010-01-15}
  s.description = %q{Simple Ruby library to talk to thetvdb.com's api}
  s.email = %q{jon@mustacheinc.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.textile"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.textile",
     "Rakefile",
     "VERSION",
     "lib/tvdb_party.rb",
     "lib/tvdb_party/banner.rb",
     "lib/tvdb_party/episode.rb",
     "lib/tvdb_party/httparty_icebox.rb",
     "lib/tvdb_party/search.rb",
     "lib/tvdb_party/series.rb",
     "test/test_helper.rb",
     "test/tvdb_party_test.rb",
     "tvdb_party.gemspec"
  ]
  s.homepage = %q{http://github.com/maddox/tvdb_party}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Simple Ruby library to talk to thetvdb.com's api}
  s.test_files = [
    "test/test_helper.rb",
     "test/tvdb_party_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_runtime_dependency(%q<httparty>, [">= 0.4.3"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<httparty>, [">= 0.4.3"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<httparty>, [">= 0.4.3"])
  end
end

