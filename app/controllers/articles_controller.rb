class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
    # declarando con @ se puede aceder desde la vista
    @article.title = 'Demo'
  end

  def create
    # @article = Article.create(title: params[:article][:title], # recibir datos del formulario
    #                           content: params[:article][:content],
    #                           user: current_user) # el create debe estar protegido por auth
    # otra forma, accediendo desde la coleccion de articulos del usuario
    @article = current_user.articles.create(title: params[:article][:title],
                                            content: params[:article][:content])
    redirect_to @article # mostrar 
  end

  def show
  end

  def edit
  end

  def update
    @article.update(title: params[:article][:title], content: params[:article][:content])
    redirect_to @article
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  def find_article
    @article = Article.find(params[:id])
  end
end
