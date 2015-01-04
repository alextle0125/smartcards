class DecksController < ApplicationController
	def new
		@deck = Deck.new
		render 'new'
	end

	def create
		upload = File.readlines(params[:deck][:deck].tempfile)
		deck = Deck.create(title: params[:deck][:title], description: params[:deck][:description], private?: params[:deck][:private], author: User.find(session[:user]))
		card_set = []
		upload.each do |line| 
			card_set << line.split(",") 
		end
		card_set.each do |card|
			Card.create(question: card[0], answer: card[1], option: card[2], deck_id: deck.id)
		end
		redirect_to user_path(session[:user])
	end

	private

		def deck_params
			params.require(:deck).permit(:title, :description, :deck_image, :deck, :private?)
		end
end
