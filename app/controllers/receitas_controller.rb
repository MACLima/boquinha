class ReceitasController < ApplicationController
  # GET /receitas
  # GET /receitas.xml
  def index
    @receita = Receita.random

    respond_to do |format|
      format.html { render :template => "receitas/show" } # show.html.erb
      format.xml  { render :xml => @receita }
    end
  end
  
  # GET /receitas/lista
  # GET /receitas/lista.xml
  def lista
    @receitas = Receita.all

    respond_to do |format|
      format.html # lista.html.erb
      format.xml  { render :xml => @receitas }
    end
  end
  
  # GET /receitas/1
  # GET /receitas/1.xml
  def show
    @receita = Receita.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @receita }
    end
  end

  # GET /receitas/new
  # GET /receitas/new.xml
  def new
    @receita = Receita.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @receita }
    end
  end

  # GET /receitas/1/edit
  def edit
    @receita = Receita.find(params[:id])
  end

  # POST /receitas
  # POST /receitas.xml
  def create
    @receita = Receita.new(params[:receita])

    respond_to do |format|
      if @receita.save
        flash[:notice] = 'Receita was successfully created.'
        format.html { redirect_to(@receita) }
        format.xml  { render :xml => @receita, :status => :created, :location => @receita }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @receita.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /receitas/1
  # PUT /receitas/1.xml
  def update
    @receita = Receita.find(params[:id])

    respond_to do |format|
      if @receita.update_attributes(params[:receita])
        flash[:notice] = 'Receita was successfully updated.'
        format.html { redirect_to(@receita) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @receita.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /receitas/1
  # DELETE /receitas/1.xml
  def destroy
    @receita = Receita.find(params[:id])
    @receita.destroy

    respond_to do |format|
      format.html { redirect_to(receitas_url) }
      format.xml  { head :ok }
    end
  end
end
