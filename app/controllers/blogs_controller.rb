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
	end

	def show
		@blog = Blog.find(params[:id])
		#find :idを使ってモデルからレコードを探す
	end

	private
		def blog_params
			params.require(:blog).permit(:title, :body, :category)
			#viewから送信されがデータはparamsというメソッドに入っている
		end
end
