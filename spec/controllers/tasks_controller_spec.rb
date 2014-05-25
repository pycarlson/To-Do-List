require 'spec_helper'

task = FactoryGirl.create(:task)

describe TasksController do

  context "with valid attributes" do
    it "creates a new task" do
      expect {
        post :create, task: FactoryGirl.attributes_for(:task)
      }.to change(Task, :count).by(1)
    end
  end

  context "with valid attributes" do
    it "deletes a task" do
      expect {
        post :destroy, :id => task.id
      }.to change(Task, :count).by(-1)
    end
  end
end
