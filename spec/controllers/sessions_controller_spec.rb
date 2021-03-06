require 'spec_helper'
describe SessionsController do
  describe "GET new" do
    it "renders the new template for unauthenticated users" do
      get :new
      expect(response).to render_template :new
    end
    it "redirects to the home page for authenticated users" do
      session[:user_id] = Fabricate(:user).id
      get :new
      expect(response).to redirect_to home_path
    end
  end

  describe "POST create" do
    let(:alice) { Fabricate(:user) }
    context "with valid credential" do
      before do
        post :create, email: alice.email, password: alice.password
      end
      it "puts signed in user in the session" do
        expect(session[:user_id]).to eq(alice.id)
      end
      it "redirects to the home page" do
        expect(response).to redirect_to home_path
      end
      it "sets the notice" do
        expect(flash[:notice]).not_to be_blank
      end
    end
    context "with invalid credential" do
      before do
        alice = Fabricate(:user)
        post :create, email: alice.email, password: alice.password + "asdf"
      end
      it "does not put signed in user in the session" do
        expect(session[:user_id]).to be_nil
      end
      it "redirects sign in page" do
        expect(response).to redirect_to sign_in_path
      end
      it "sets the error message" do
        expect(flash[:danger]).not_to be_blank
      end
    end
  end

  describe "GET destroy" do
    before do
      session[:user_id] = Fabricate(:user).id
      get :destroy
    end
    it "clears the session for the user" do
      expect(session[:user_id]).to be_nil
    end
    it "redirects to the root path" do
      expect(response).to redirect_to root_path
    end
    it "sets the notice" do
      expect(flash[:notice]).not_to be_blank
    end
  end
end