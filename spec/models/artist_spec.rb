require 'rails_helper'

RSpec.describe Artist do

  it {should have_many :songs}

  describe 'instance methods' do
    describe '#avg_song_length' do
      before do
        @ohbliv = Artist.create!(name: "Ohbliv", hometown: "Richmond, VA")
        @btrue = @ohbliv.songs.create!(title: "Be True", length: 204, play_count: 1039)
        @strnge = @ohbliv.songs.create!(title: "Strange Heart", length: 323, play_count: 1202)
        @explore = @ohbliv.songs.create(title: "Let's Explore", length: 325, play_count: 1914)
        @chokmah = @ohbliv.songs.create(title: "Chokmah", length: 242, play_count: 2175)
        @kyma = @ohbliv.songs.create!(title:"Kyma", length: 77, play_count: 161)
        @inter1 = @ohbliv.songs.create!(title:"Innalude", length: 11, play_count: 15)
        @inter2 = @ohbliv.songs.create!(title:"Innalude 2", length: 16, play_count: 9)
      end


      it 'returns avg song length' do
        expect(@ohbliv.avg_song_length.round(2)).to eq(171.14)
      end
    end
  end
end