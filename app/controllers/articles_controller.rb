class ArticlesController < ApplicationController
  def new
    @article = Article.new
    # declarando con @ se puede aceder desde la vista
    @article.title = 'Demo'
  end

  def create
    @article = Article.create(title: params[:article][:title], content: params[:article][:content]) #recibir datos del formulario
    render json: @article #mostrar version json del objeto que se creo en la bd
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(title: params[:article][:title], content: params[:article][:content])
    reditect_to @article
  end
end
