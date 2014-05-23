 require 'spec_helper'

 describe TasksController do

  describe "routing" do
    it { expect(get("/tasks")).to route_to("tasks#index") }
    it { expect(get("/tasks/new")).to route_to("tasks#new") }
    it { expect(post("/tasks")).to route_to("tasks#create") }
    it { expect(delete("/tasks/1")).to route_to("tasks#destroy") }
  end

end
