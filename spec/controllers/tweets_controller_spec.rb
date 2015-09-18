require 'rails_helper'

RSpec.describe TweetsController, :type => :controller do
  it "render template index" do
    get :index
    expect(response).to render_template :index
  end
  it "render template new" do
    get :new
    expect(response).to render_template :new
  end
  it "assigns edit" do
    test_tweet = create(:tweet)
    get :edit, id: test_tweet
    expect(assigns(:tweet)).to eq(test_tweet)
  end
  # it "update tweet" do
  #   patch :update, id: tweet, user: attributes_for(:tweet, name: "テスト")
  #   tweet.reload
  #   expect(tweet.name).to eq("テスト")
  # end
  # it "save success" do
  #   expect {
  #     post :create, tweet: create(:tweet)
  #   }.to change(Tweet, :count).by(1)
  # end

end
