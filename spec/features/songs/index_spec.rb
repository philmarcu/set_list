# As a user,
# when I visit '/songs'
# I see each song's title and play count

require 'rails_helper'

RSpec.describe "songs index page", type: :feature do
  it "can see all songs titles and play count" do
    ohbliv = Artist.create!(name: "Ohbliv", hometown: "Richmond, VA")
    song_1 = Song.create!(title: "Be True", length: 204, play_count: 1039, artist_id: ohbliv.id)
    song_2 = Song.create!(title: "Strange Heart", length: 323, play_count: 1202, artist_id: ohbliv.id)

    visit "/songs"

    expect(page).to have_content(song_1.title)
    expect(page).to have_content("Play Count: #{song_1.play_count}")
    expect(page).to have_content(song_2.title)
    expect(page).to have_content("Play Count: #{song_2.play_count}")
  end
end
