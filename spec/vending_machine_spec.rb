require 'spec_helper'

describe VendingMachine do
	let(:vm) { VendingMachine.new }

	describe "現在の投入金額を取得する" do
		context "お金を投入していないとき" do
			it { vm.get_sum.should == 0 }
		end
	end

	it "お金を投入できること" do
		pending
			vm.put(0)
			
	end
end