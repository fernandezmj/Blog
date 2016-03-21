require 'rails_helper'

describe Post do 
	let!(:post) {Post.create(title: "wat", body: "wat")}

	describe "validations" do
		describe "#title" do
			context "validate title" do
				it "should return title" do
					expect(post.title).to eq "wat"
				end
			end
		end
	end
end