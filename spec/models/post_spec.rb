require 'rails_helper'

describe Post do

  describe '.validates' do
    it 'must have a title' do 
      expect(Post.new(title: nil)).to_not be_valid
    end
    it 'must have a body' do 
      expect(Post.new(content: nil)).to_not be_valid
    end
  end

end

