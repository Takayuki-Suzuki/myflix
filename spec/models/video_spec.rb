require "spec_helper"

describe Video do
  it { should belong_to(:category)}
  it { should validate_presence_of(:title)}
  it { should validate_presence_of(:description)}
  it { should have_many(:reviews).order("created_at DESC")}
  describe "search_by_title" do
    it "returns empty array if there is no match" do
      futurama = Video.create(title: "futurama", description: "futurama test")
      something = Video.create(title: "something", description: "something test")
      expect(Video.search_by_title("key word")).to eq([])
    end
    it "returns an array of video for an exact match" do
      futurama = Video.create(title: "futurama", description: "futurama test")
      something = Video.create(title: "something", description: "something test")
      expect(Video.search_by_title("futurama")).to eq([futurama])
    end
    it "returns an array of video for an partial match" do
      futurama = Video.create(title: "futurama", description: "futurama test")
      something = Video.create(title: "something", description: "something test")
      expect(Video.search_by_title("uram")).to eq([futurama])
    end
    it "returns an array of all matches orderd by created_at" do
      futurama = Video.create(title: "futurama", description: "futurama test", created_at: 1.day.ago)
      back_to_future = Video.create(title: "back_to_future", description: "something test")
      expect(Video.search_by_title("futu")).to eq([back_to_future, futurama])
    end
    it "returns an empty array for a search with an empty string" do
      futurama = Video.create(title: "futurama", description: "futurama test", created_at: 1.day.ago)
      back_to_future = Video.create(title: "back_to_future", description: "something test")
      expect(Video.search_by_title("")).to eq([])
    end
  end
end