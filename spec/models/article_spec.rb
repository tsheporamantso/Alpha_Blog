require 'rails_helper'

RSpec.describe Article, type: :model do
  subject {Article.new(title: "This is the Test title", description: "This is the test description") }

  before { subject.save }

  describe "article attributes to be present" do
    it "title should be present" do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it "description shouldbe present" do
      subject.description = nil
      expect(subject).to_not be_valid
    end
  end

  describe "title and description text length" do
    it "title should not be too long" do
      subject.title = "t" * 101
      expect(subject).to_not be_valid
    end

    it "title shouldnot be too short" do
      subject.title = "a"
      expect(subject).to_not be_valid
    end

    it "description not to be too long" do
      subject.description = "d" * 301
      expect(subject).to_not be_valid
    end

    it "description not to be too short" do
      subject.description = "d"
      expect(subject).to_not be_valid
    end
  end
end
