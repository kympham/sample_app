require "spec_helper"

describe SignupNotifier do
  describe "confirmed" do
    let(:mail) { SignupNotifier.confirmed }

    it "renders the headers" do
      mail.subject.should eq("Confirmed")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
