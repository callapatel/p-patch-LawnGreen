require 'rails_helper'

describe Comment do

  describe '.validates' do
    it 'must have a body' do
      expect(Comment.new(content: nil)).to_not be_valid
    end
  end

end
