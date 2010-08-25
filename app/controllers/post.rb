Pblog.controllers :post do

  get :index do
    @posts = Post.all
    render "posts/index"
  end

  get :new do
    @post = Post.new
    render "posts/new"
  end

  post :create do
    @post =Post.new(params[:post])
    if @post.insert
      redirect url(:post, :index)
    else
      render "posts/new"
    end
  end

  get :edit, :with => :id do
    @post = Post.find_one({"_id" => BSON::ObjectID(params[:id])})
    render 'posts/edit'
  end

  put :update, :with => :id do
    @post = Post.find_one({"_id" => BSON::ObjectID(params[:id])})
    @post.merge(params[:post])
    if @post.update
      redirect url(:post, :index)
    else
      render "posts/edit"
    end
  end

end
