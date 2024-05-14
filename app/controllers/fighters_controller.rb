class FighterController < ApplicationController
    def index
        @fighters = Fighter.all
    end

    def show
        @fighter = Fighter.find()
    end
end