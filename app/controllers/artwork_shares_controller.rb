class ArtworkSharesController < ApplicationController
    # def index
    #     shares = ArtworkShare.all
    #     render json: shares
    # end

    # def show
    #     shares = ArtworkShare.find(params[:id])
    #     render json: shares
    # end

    def create
        shares = ArtworkShare.new(artwork_shares_params)
        if shares.save!
            render json: shares
        else
            render json: shares.errors.full_messages, status: 422
        end
    end

    # def update
    #     shares = ArtworkShare.find(params[:id])
    #     if shares.update(artwork_shares_params)
    #         render json: shares
    #     else
    #         render json: shares.errors.full_messages, status: 422
    #     end
    # end

    def destroy
        shares = ArtworkShare.find(params[:id])
        shares.destroy
        redirects_to artwork_share_url
    end

    private
    def artwork_shares_params
        params.require(:artwork_shares).permit(:artwork_id, :viewer_id)
    end
end