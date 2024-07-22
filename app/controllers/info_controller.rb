class InfoController < ActionController::Base
    def show
      shop_info = {
        name: "Catchau",
        color: "#a0a168",
        owner: "Felipe Rocha Silveira",
        department: "Loja de Hardware"
      }
      render json: shop_info
    end
  end