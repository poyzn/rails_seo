require 'rails_seo/middlewares/seo_middleware.rb'
require 'rails_seo/helpers/meta_tags_helpers.rb'

module RailsSeo
  class Railtie < Rails::Railtie
    initializer 'rails_seo_initializer' do |app|
      app.middleware.use RailsSeo::SeoMiddleware
      ActionView::Base.send :include, RailsSeo::MetaTagsHelpers
    end
  end
end
