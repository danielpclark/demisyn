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

  it "fails on invalid strings" do
    _(->{~"'asdf' reverse pikachu split('s') join capitalize"}).must_raise NoMethodError
  end

  it "fails on invalid arrays of strings" do
    _(->{~%w"'asdf' reverse pikachu split('s') join capitalize"}).must_raise NoMethodError
  end
end

if RUBY_VERSION == "2.3.0"
  describe "lonely operator tests" do
    using Demisyn
    it "runs strings" do
      _(-"'asdf' reverse split('s') join capitalize").must_equal "Fda"
    end

    it "runs arrays of strings" do
      _(-%w"'asdf' reverse split('s') join capitalize").must_equal "Fda"
    end

    it "fails on invalid strings" do
      _(->{-"'asdf' reverse pikachu split('s') join capitalize"}).must_raise NoMethodError
    end

    it "fails on invalid arrays of strings" do
      _(->{-%w"'asdf' reverse pikachu split('s') join capitalize"}).must_raise NoMethodError
    end

    it "does the lonely op thing" do
      _(-"'asdf'[7] reverse split('s') join capitalize").must_equal nil
      _(-%w"'asdf'[7] reverse split('s') join capitalize").must_equal nil
    end
  end
end

