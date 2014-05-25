 require 'spec_helper'

 describe TasksController do

  task = FactoryGirl.create(:task)

  describe "routing" do
    it { expect(get("/tasks")).to route_to("tasks#index") }
    it { expect(get("/tasks/new")).to route_to("tasks#new") }
    it { expect(post("/tasks")).to route_to("tasks#create") }
    # it { expect(delete("/tasks/#{task.id}/delete")).to route_to("tasks#destroy") }
    # it { expect(post("/tasks/#{task.id}/toggle")).to route_to("tasks#toggle") }
  end

end
