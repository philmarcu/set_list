# As a user
# When I visit an Artist's Song index
# Then I see the titles of all the Artist's songs
# And I see that each title is a link to the songs show page

require 'rails_helper'

RSpec.describe 'Artists song index' do

  #can use before blocks, but not necessary - depends on context of the testing

  it 'displays all titles of an artists songs' do
    ohbliv = Artist.create!(name: "Ohbliv", hometown: "Richmond, VA")
    btrue = ohbliv.songs.create!(title: "Be True", length: 204, play_count: 1039)
    strnge = ohbliv.songs.create!(title: "Strange Heart", length: 323, play_count: 1202)

    visit "/artists/#{ohbliv.id}/songs"

    expect(page).to have_content(btrue.title)
    expect(page).to have_content(strnge.title)
  end

  it 'links to each songs show page' do
    ohbliv = Artist.create!(name: "Ohbliv", hometown: "Richmond, VA")
    btrue = ohbliv.songs.create!(title: "Be True", length: 204, play_count: 1039)
    strnge = ohbliv.songs.create!(title: "Strange Heart", length: 323, play_count: 1202)

    visit "/artists/#{ohbliv.id}/songs"

    click_on btrue.title
    
    expect(current_path).to eq("/songs/#{btrue.id}")
  end

  it 'shows the average length for the artist' do
    ohbliv = Artist.create!(name: "Ohbliv", hometown: "Richmond, VA")
    btrue = ohbliv.songs.create!(title: "Be True", length: 204, play_count: 1039)
    strnge = ohbliv.songs.create!(title: "Strange Heart", length: 323, play_count: 1202)

    visit "/artists/#{ohbliv.id}/songs"

    expect(page).to have_content("Average Song Length for Ohbliv: 263.5")
  end
end