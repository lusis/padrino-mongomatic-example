Pblog.controllers :post do

  get :index do
    @posts = Post.all
    render "post/index"
  end

  get :new do
    @post = Post.new
    render "post/new"
  end

  post :create do
    @post =Post.new(params[:post])
    if @post.insert
      flash[:notice] = 'Post was saved!'
    else
      flash[:error] = 'Post was NOT saved!'
      render "post/new"
    end
    redirect url(:post, :index)
  end

  get :edit, :with => :id do
    @post = Post.find_one({"_id" => BSON::ObjectID(params[:id])})
    render 'post/edit'
  end

  put :update, :with => :id do
    @post = Post.find_one({"_id" => BSON::ObjectID(params[:id])})
    @post.merge(params[:post])
    if @post.update
      flash[:notice] = "Post was updated!"
    else
      flash[:error] = "Post was not updated!"
      render "post/edit"
    end
    redirect url(:post, :index)
  end

  delete :destroy, :with => :id do
    post = Post.find_one({"_id" => BSON::ObjectID(params[:id])})
    if post.remove!
      flash[:notice] = 'Post was deleted'
    else
      flash[:error] = "Post was NOT deleted"
    end
    redirect url(:post, :index)
  end

end
