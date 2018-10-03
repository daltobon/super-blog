module PostsHelper
	def form_submit
			@post.new_record? ? "Crear Publicación!" : "Actualizar Publicación!"
	end
end
