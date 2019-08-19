class CommentsController < ApplicationController

    def index
        @comments = Comment.where(postUrl: params[:postUrl])
        if @comments
            @comments.order! 'created_at DESC'
            render json: @comments
        else
            render json: "no comments found", status: 404
        end
    end

    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            render json: @comment
        else
            render json: @comment.errors.full_messages, status: 404
        end
    end

    private
    def comment_params
        params.require(:comment).permit(:postUrl, :name, :body, :email)
    end
end
