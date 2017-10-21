class SeoMiddleware

  def initialize(app)
    @app = app
  end

  def call(env)
    Rails.logger.debug '>>> from middlemare <<<'
    Rails.logger.debug env['REQUEST_PATH']
    conf_file = Rails.root.join 'config', 'seo.yml'
    if conf_file
      config = YAML.load_file(conf_file)
      env['seo_tags'] = config[env['REQUEST_PATH']] if config[env['REQUEST_PATH']]
    end
    @app.call(env)      
  end

end
