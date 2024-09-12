module Jekyll
  class CenterImageTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text.strip
    end

    def render(context)
      "<div style=\"text-align:center\">\n  ![#{@text}](#{@text})\n</div>"
    end
  end
end

Liquid::Tags.register_tag('center_image', Jekyll::CenterImageTag)
