require "lucifer"

describe Lucifer, "Lucifer" do
  it "iniciando classe" do
      lucifer = Lucifer.new
      lucifer.class.should == Lucifer
  end
end