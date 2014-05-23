require 'spec_helper'

describe Task do

  it "can be created from a factory" do 
    task = FactoryGirl.create :task
    expect(task.id).not_to be_nil
  end

  context "add model validations" do
    it {should validate_presence_of :to_do}
    it {should validate_presence_of :status}
  end

end