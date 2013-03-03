module WebBreaker
  module ApplicationHelper

    def icon_tag(name, options = {})
      klass = "icon-#{name.to_s}"
      klass << " icon-white" unless options[:black]
      content_tag :i, '', class: klass
    end

    def badge_tag(content, state = nil)
      html_class = 'label'
      html_class << " label-#{state}" if state

      content_tag :span, content, class: html_class
    end

    def link_to_with_icon(icon, body, options = {}, html_options = {})
      link_to(options, html_options) do
        "#{icon_tag(icon)} #{body}".html_safe
      end
    end

  end
end
