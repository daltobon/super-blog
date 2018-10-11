module PostsHelper
	def form_submit
			@post.new_record? ? "Crear Publicación!" : "Actualizar Publicación!"
	end

	def title(page_title)
		  content_for :title, page_title.to_s
	end
end
