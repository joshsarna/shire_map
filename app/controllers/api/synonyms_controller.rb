class Api::SynonymsController < ApplicationController
  def index
    @synonyms = Synonym.all
    render "index.json.jbuilder"
  end
end
