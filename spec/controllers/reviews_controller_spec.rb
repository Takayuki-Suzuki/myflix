require 'spec_helper'

describe ReviewsController do
  let(:video) { Fabricate(:video) }
  describe "POST create" do
    context "with authenticated users" do
      let(:current_user) { Fabricate(:user) }
      before { session[:user_id] = current_user.id }
      context "with valid input" do
        before do
          post :create, review: Fabricate.attributes_for(:review), video_id: video.id
        end
        it "redirects to the video show page" do
          expect(response).to redirect_to video_path video
        end
        it "creates a review" do
          expect(Review.count).to eq(1)
        end
        it "created a review associated video" do
          expect(Review.first.video).to eq(video)
        end
        it "creates a review associated signed in users" do
          expect(Review.first.user).to eq(current_user)
        end

      end

      context "with invalid input" do
        it "renders video/show template" do
          post :create, review: { rating: 4 }, video_id: video.id
          expect(response).to render_template 'videos/show'
        end
        it "does not create a review" do
          post :create, review: { rating: 4 }, video_id: video.id
          expect(Review.count).to eq(0)
        end

        it "sets @video" do
          post :create, review: { rating: 4 }, video_id: video.id
          expect(assigns(:video)).to eq(video)
        end
        it "sets @reviews" do
          review1 = Fabricate(:review, video: video)
          review2 = Fabricate(:review, video: video)
          post :create, review: { rating: 4 }, video_id: video.id
          expect(assigns(:reviews)).to match_array [review1, review2]
        end
      end
    end
    context "with unauthenticated users" do
      it "redirects to the sign in path" do
        post :create, review: { rating: 4 }, video_id: video.id
        expect(response).to redirect_to sign_in_path
      end
    end
  end
end