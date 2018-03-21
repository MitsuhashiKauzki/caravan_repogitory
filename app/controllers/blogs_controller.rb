class BlogsController < ApplicationController

	def index
		@blogs = Blog.all
	end

	def new
		@blog = Blog.new
		#プログモデルと紐付いた空の箱を定義 ：インスタンス
	end

	def create
		blog = Blog.new(blog_params)
		#viewから送られてきたデータを空き箱"blog"に入れている
		blog.save
		redirect_to "/blogs"
		#binding.pry
		#コンソールに入りたい場所でこれを記述
	end

	def show
		@blog = Blog.find(params[:id])
		#find :idを使ってモデルからレコードを探す
	end

	def edit
		@blog = Blog.find(params[:id])
	end

	def update
		blog = Blog.find(params[:id])
		blog.update(blog_params)
		redirect_to blogs_path
		# redirect_to blog_path(blog.id)
	end

	def destroy
		blog = Blog.find(params[:id])
		blog.destroy
		redirect_to blogs_path
	end

	private
		def blog_params
			params.require(:blog).permit(:title, :body, :category, :blog_image)
			#viewから送信されがデータはparamsというメソッドに入っている
		end
end
