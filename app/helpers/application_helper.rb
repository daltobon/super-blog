module ApplicationHelper
	def markdown(text)
	    options = {
	      filter_html:     true,
	      hard_wrap:       true,
	      link_attributes: { rel: 'nofollow', target: "_blank" },
	      space_after_headers: true,
	      fenced_code_blocks: true
	    }
	     extensions = {
	     	autolink: true,
	     	superscript: true,
	     	no_intra_emphasis: true,
	     	highlight: true,
	     	no_styles: false,
	     	lax_spacing: true,
	     	strikethrough: true,
	     	underline: true,
	     	footnotes: true,
	     	tables: true,
	     	disable_indented_code_blocks: false
	    }
	    
	    renderer = Redcarpet::Render::HTML.new(options)
	    markdown = Redcarpet::Markdown.new(renderer, extensions)
	    markdown.render(text).html_safe
  end
end
