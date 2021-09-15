require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe '新規投稿' do
    it 'title, content, area_id, image, user_idが存在すれば登録できる' do
      expect(@post).to be_valid
    end 

    it 'titleが空では登録できない' do
      @post.title = ''
      @post.valid?
      expect(@post.errors.full_messages).to include("Title can't be blank")
    end
    it 'contentが空では登録できない' do
      @post.content = ''
      @post.valid?
      expect(@post.errors.full_messages).to include("Content can't be blank")
    end
    it 'area_idが空では登録できない' do
      @post.area_id = 1
      @post.valid?
      expect(@post.errors.full_messages).to include("Area must be other than 1")
    end
    it 'userが紐付いていないと登録できない' do
      @post.user = nil
      @post.valid?
      expect(@post.errors.full_messages).to include("User must exist")
    end
    it 'imageが空では投稿できない' do
      @post.image = nil
      @post.valid?
      expect(@post.errors.full_messages).to include("Image can't be blank")
    end
  end
end
