class KnowledgeDomainsController < ApplicationController
  before_action :set_knowledge_domain, only: [:show, :edit, :update, :destroy]

  # GET /knowledge_domains
  # GET /knowledge_domains.json
  def index
    @knowledge_domains = KnowledgeDomain.all
  end

  # GET /knowledge_domains/1
  # GET /knowledge_domains/1.json
  def show
  end

  # GET /knowledge_domains/new
  def new
    @knowledge_domain = KnowledgeDomain.new
  end

  # GET /knowledge_domains/1/edit
  def edit
  end

  # POST /knowledge_domains
  # POST /knowledge_domains.json
  def create
    @knowledge_domain = KnowledgeDomain.new(knowledge_domain_params)

    respond_to do |format|
      if @knowledge_domain.save
        format.html { redirect_to @knowledge_domain, notice: 'Knowledge domain was successfully created.' }
        format.json { render :show, status: :created, location: @knowledge_domain }
      else
        format.html { render :new }
        format.json { render json: @knowledge_domain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /knowledge_domains/1
  # PATCH/PUT /knowledge_domains/1.json
  def update
    respond_to do |format|
      if @knowledge_domain.update(knowledge_domain_params)
        format.html { redirect_to @knowledge_domain, notice: 'Knowledge domain was successfully updated.' }
        format.json { render :show, status: :ok, location: @knowledge_domain }
      else
        format.html { render :edit }
        format.json { render json: @knowledge_domain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /knowledge_domains/1
  # DELETE /knowledge_domains/1.json
  def destroy
    @knowledge_domain.destroy
    respond_to do |format|
      format.html { redirect_to knowledge_domains_url, notice: 'Knowledge domain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_knowledge_domain
      @knowledge_domain = KnowledgeDomain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def knowledge_domain_params
      params.require(:knowledge_domain).permit(:name, :description, :score_img)
    end
end
