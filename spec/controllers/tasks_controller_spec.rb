require 'spec_helper'

describe TasksController do
  let(:task) { create(:task) }

  context "with valid attributes" do
    it "creates a new task" do
      expect {
        post :create, task: task_attributes
      }.to change(Task, :count).by(1)
    end
  end
end
