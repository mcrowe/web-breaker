module WebBreaker
  module ApplicationHelper

    def icon_tag(name)
      content_tag :i, '', class: "icon-#{name.to_s}"
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
