require 'spec_helper'

feature "User interacts with queue" do
  scenario "User adds and reorder videos in the queue" do
    comedies = Fabricate(:category)
    monk = Fabricate(:video, title: "Monk", category: comedies)
    south_park = Fabricate(:video, title: "South Park", category: comedies)
    futurama = Fabricate(:video, title: "Futurama", category: comedies)
    sign_in

    add_video_to_queue(monk)
    expect(page).to have_content(monk.title)

    visit video_path(monk)
    expect(page).not_to have_content("+ My Queue")

    add_video_to_queue(south_park)
    add_video_to_queue(futurama)

    find("input[data-video-id='#{monk.id}']").set(3)
    find("input[data-video-id='#{south_park.id}']").set(2)
    find("input[data-video-id='#{futurama.id}']").set(1)
    #require 'pry'; binding.pry
    click_button "Update Instant Queue"
    #require 'pry'; binding.pry
    expect(find("input[data-video-id='#{south_park.id}']").value).to eq("2")
    expect(find("input[data-video-id='#{futurama.id}']").value).to eq("1")
    expect(find("input[data-video-id='#{monk.id}']").value).to eq("3")
  end

  def add_video_to_queue(video)
    visit home_path
    find("a[href='/videos/#{video.id}']").click
    click_link "+ My Queue"
  end
end