Gem::Specification.new do |s|
  # Release Specific Information
  s.version = "1.0.5beta"
  s.date = "2012-04-02"

  # Gem Details
  s.name = "chosen.scss"
  s.authors = ["Emil Melgaard"]
  s.summary = %q{A sass implementation of Chosen for Compass}
  s.description = %q{A sass implementation of Chosen for Compass}
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