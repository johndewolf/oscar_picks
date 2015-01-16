require 'spec_helper'

describe Selection do
	it { should belong_to(:user) }
  it { should have_valid(:best_picture).when('American Sniper') }
  it { should_not have_valid(:best_picture).when(nil) }

  it { should have_valid(:best_actor).when("Bradley Cooper") }
  it { should_not have_valid(:best_actor).when(nil) }
end
