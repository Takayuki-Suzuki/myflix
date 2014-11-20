require "spec_helper"

describe Category do
  it { should have_many(:videos) }

  describe "recent_video" do
    it "returns the videos in the reverse chronic order by created at" do
      comedies = Category.create(name: "Comedies")
      futurama = Video.create(title: "futurama", description: "futurama test", category: comedies, created_at: 1.day.ago)
      back_to_future = Video.create(title: "back_to_future", description: "something test", category: comedies)
      expect(comedies.recent_videos).to eq([back_to_future, futurama])
    end
    it "returns all the videos if there are less than 6 videos" do
      comedies = Category.create(name: "Comedies")
      futurama = Video.create(title: "futurama", description: "futurama test", category: comedies, created_at: 1.day.ago)
      back_to_future = Video.create(title: "back_to_future", description: "something test", category: comedies)
      expect(comedies.recent_videos.count).to eq(2)
    end
    it "returns 6 videos if there are more than 6 videos" do
      comedies = Category.create(name: "Comedies")
      7.times { Video.create(title: "foo", description: "foo", category: comedies) }
      expect(comedies.recent_videos.count).to eq(6)
    end
    it "returns most recent 6 videos" do
      comedies = Category.create(name: "Comedies")
      6.times { Video.create(title: "foo", description: "foo", category: comedies) }
      futurama = Video.create(title: "futurama", description: "futurama test", category: comedies, created_at: 1.day.ago)
      expect(comedies.recent_videos).not_to include(futurama)
    end
    it "returns an empty array if the category does not have any videos" do
      comedies = Category.create(name: "Comedies")
      expect(comedies.recent_videos).to eq([])
    end
  end
end