class SeoYmlGenerator < Rails::Generators::Base
  def create_seo_yml_file
    create_file "config/seo.yml", <<-EOS
/:
  title: Another titee
  description: Lorem impsum description
    EOS
  end
end