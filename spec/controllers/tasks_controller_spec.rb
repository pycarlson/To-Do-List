require 'spec_helper'

describe TasksController do

  context "with valid attributes" do
    it "creates a new task" do
      expect {
        post :create, task: FactoryGirl.attributes_for(:task)
      }.to change(Task, :count).by(1)
    end
  end
end
