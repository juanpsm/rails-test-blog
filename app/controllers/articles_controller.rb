class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
    # declarando con @ se puede aceder desde la vista
    @article.title = 'Demo'
  end

  def create
    @article = Article.create(title: params[:article][:title], content: params[:article][:content]) # recibir datos del formulario
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
    redirect_to root_path
  end

  def find_article
    @article = Article.find(params[:id])
  end
end
