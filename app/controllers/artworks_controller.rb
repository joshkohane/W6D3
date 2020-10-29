class ArtworksController < ApplicationController
    
    def index
        artwork = Artwork.all
        render json: artwork
    end

    def show
        art = Artwork.find(params[:id])
        render json: art
    end

    def create
        art = Artwork.new(artwork_params)
        if art.save!
            render json: art
        else
            render json: art.errors.full_messages, status: 422
        end
    end

    def update
        art = Artwork.find(params[:id])
        if art.update(artwork_params)
            render json: art
        else
            render json: art.errors.full_messages, status: 422
        end
    end

    def destroy
        art = Artwork.find(params[:id])
        art.destroy
        redirect_to artwork_url
    end 

    private
    def artwork_params
        params.require(:artworks).permit(:title, :image_url, :artist_id)
    end
end