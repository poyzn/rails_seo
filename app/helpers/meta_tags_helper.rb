module MetaTagsHelper

  def meta_title
    content_tag 'title', request.env['seo_tags'] && request.env['seo_tags']['title'] ? request.env['seo_tags']['title'] : 'Lingva.Club'
  end

  def meta_description
    tag 'meta', name: 'description', content: request.env['seo_tags'] && request.env['seo_tags']['description'] ? request.env['seo_tags']['description'] : 'Lingva.Club'
  end

end
