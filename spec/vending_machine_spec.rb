require 'spec_helper'

describe VendingMachine do
	let(:vm) { VendingMachine.new }

	describe "現在の投入金額を取得する" do
		context "お金を投入していないとき" do
			it { vm.total.should == 0 }
		end

		context "10円と100円を投入したとき" do
			before do
				vm.insert 10
				vm.insert 100
			end

			it { vm.total.should == 110 }
		end
	end

	describe "お金を投入したら合計金額が増えること" do
		it '10円を投入したら、合計金額が10円が増えること' do
			expect {
				vm.insert 10
			}.to change { vm.total }.by(10)
		end

		it '50円を投入したら、合計金額が50円が増えること' do
			expect {
				vm.insert 50
			}.to change { vm.total }.by(50)
		end

		it '100円を投入したら、合計金額が100円が増えること' do
			expect {
				vm.insert 100
			}.to change { vm.total }.by(100)
		end

		it '500円を投入したら、合計金額が500円が増えること' do
			expect {
				vm.insert 500
			}.to change { vm.total }.by(500)
		end

		it '1000円を投入したら、合計金額が1000円が増えること' do
			expect {
				vm.insert 1000
			}.to change { vm.total }.by(1000)
		end
	end

	describe "#refund" do
		before do
			vm.total = 10
		end

		it "全額払い戻されること" do
			vm.refund.should == 10
			vm.total.should == 0
		end
	end
end


