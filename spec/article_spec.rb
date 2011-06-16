require 'liferay_content/article'

describe LiferayContent::Article do
  it "stupid test" do
    LiferayContent::Article.get2("toto").should eql("titi")
  end
end

