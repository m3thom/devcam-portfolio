class CommentsController < ApplicationController
    def create
        @comment = current_user.comments.build(strong_params)
    end

    private
    def strong_params
        params.require(:comment).permit(:content)
    end
end
