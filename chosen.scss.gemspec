Gem::Specification.new do |s|
  # Release Specific Information
  s.version = "1.0.10.1"
  s.date = "2013-02-11"

  # Gem Details
  s.name = "chosen.scss"
  s.authors = ["Emil Bay"]
  s.summary = %q{Chosen.scss is a compass implementation of Chosen}
  s.description = %q{Read more over at github: https://github.com/tixz/chosen.scss}
  s.email = "compass@tixz.dk"
  s.homepage = "http://tixz.dk/"

  # Gem Files
  s.files += Dir.glob("README.md")
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")
  s.files += Dir.glob("templates/**/*.*")

  # Gem Bookkeeping
  s.rubygems_version = %q{1.3.6}
  s.add_dependency("compass", [">= 0.11"])
end
