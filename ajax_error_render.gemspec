require_relative "lib/ajax_error_render/version"

Gem::Specification.new do |spec|
  spec.name        = "ajax_error_render"
  spec.version     = AjaxErrorRender::VERSION
  spec.authors     = ["shun0211"]
  spec.email       = ["ss211_sabcabc12312395_18@yahoo.co.jp"]
  spec.homepage    = "https://github.com/shun0211/ajax_error_render"
  spec.summary     = "a friend with turbolinks and form_with"
  spec.description = "It is a Gem for creating and rendering the HTML of the error message when there is a validation error for the request sent by ajax."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.4", ">= 6.1.4.4"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "pry-rails"
  spec.add_development_dependency "puma"
  spec.add_development_dependency "turbolinks", '~> 5'
  spec.add_development_dependency "webpacker", '~> 5.0'
end
