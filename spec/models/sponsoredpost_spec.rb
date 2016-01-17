require 'rails_helper'
include RandomData

RSpec.describe Sponsoredpost, type: :model do

  let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }
  let(:sponserpost) { topic.posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph) }

  it { should belong_to(:topic) }

  describe "attributes" do

    it "should respond to title" do
      expect(sponserpost).to respond_to(:title)
    end

    it "should respond to body" do
      expect(sponserpost).to respond_to(:body)
    end
  end
end
