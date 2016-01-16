require 'rails_helper'

RSpec.describe Advertisement, type: :model do

  let(:advertisement) { Advertisement.create!(title: "New Advertisement Title", copy: "New Copy Body", price: 0) }

  describe "attributes" do
    it "responds to title" do
      expect(advertisement).to respond_to(:title)
    end

    it "responds to copy" do
      expect(advertisement).to respond_to(:copy)
    end

    it "responds to price" do
      expect(advertisement).to respond_to(:price)
    end
  end
end
