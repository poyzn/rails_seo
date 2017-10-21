Gem::Specification.new do |s|
  s.name        = 'rails_seo'
  s.version     = '0.0.1'
  s.date        = '2017-10-22'
  s.summary     = "Easy SEO tags management"
  s.description = "Simply config title and description for a path in yml format"
  s.authors     = ["Anton Grigoryev"]
  s.email       = 'info@rubyroid.com'
  s.files       = ['app/helpers/meta_tags_helper.rb', 'app/initializers/seo.rb', 'app/middlewares/seo_middleware.rb', "lib/rails_seo.rb"]
  s.homepage    =
    'http://rubygems.org/gems/rails_seo'
  s.license       = 'MIT'
end
