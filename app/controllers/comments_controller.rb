class CommentsController < ApplicationController
	before_action :require_signin
	before_action :set_product

	def create
	 	@comment = @product.comments.build(comment_params)
	 	@comment.user = current_user
	 	if @comment.save
	 	  flash[:notice] = "comment has been created"
	 	  redirect_to @product
	   else
   	      @comments = @product.comments
	   	  flash[:alert] = "comment has not been created"
	   	  render 'products/show'
	   end
    end

	def destroy

	end

	private

	def set_product
  	  	@product = Product.where(id: params[:product_id]).first
    end

	def comment_params
		params.require(:comment).permit!
	end
end