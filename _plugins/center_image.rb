def render(context)
  if @text =~ /(.+)\s+(.+)/
    alt_text, image_url = $1, $2
    "<div style=\"text-align:center\"><img src=\"#{image_url}\" alt=\"#{alt_text}\"></div>"
  else
    "<div style=\"text-align:center\"><img src=\"#{@text}\" alt=\"\"></div>"
  end
end

Liquid::Tags.register_tag('center_image', Jekyll::CenterImageTag)
