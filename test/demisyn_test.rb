require 'test_helper'

describe "Demisyn" do
  using Demisyn

  it "is versioned" do  
    _(::Demisyn::VERSION).wont_be :nil?
  end

  it "runs strings" do
    _(~"'asdf' reverse split('s') join capitalize").must_equal "Fda"
  end

  it "runs arrays of strings" do
    _(~%w"'asdf' reverse split('s') join capitalize").must_equal "Fda"
  end

  it "fails cleanly on invalid strings" do
    _(~"'asdf' pikachu split('s') join capitalize").must_be :nil?
  end

  it "fails cleanly on invalid arrays of strings" do
    _(~%w"'asdf' pikachu split('s') join capitalize").must_be :nil?
  end

end
