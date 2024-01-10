require 'rails_helper'

RSpec.describe Article, type: :model do
  subject {Article.new(title: "This is the Test title", description: "This is the test description") }

  before { subject.save }

  describe "article attributes to be present" do
    it "title should be present" do
      subject.title = 'This is some random text for title'
      expect(subject).to be_valid
    end
  end
end
