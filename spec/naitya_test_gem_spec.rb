RSpec.describe NaityaTestGem do
  it "has a version number" do
    expect(NaityaTestGem::VERSION).not_to be nil
  end

  it "Returns a string different from the specified string" do
    expect(NaityaTestGem::Shuffle.run("abc")).to_not eq("abc")
  end

  it "Returned string is same size as the specified string" do
    expect(NaityaTestGem::Shuffle.run("abc").size).to eq("abc".size)
  end
end
