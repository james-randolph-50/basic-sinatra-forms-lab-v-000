describe App do

  describe 'GET /newteam' do
    it 'sends a 200 status code' do
      get '/newteam'
      expect(last_response.status).to eq(200)
    end

    it 'renders basketball team form' do 
      visit '/newteam'
      expect(page).to have_selector("form")
      expect(page).to have_field(:name)
      expect(page).to have_field(:coach)
      expect(page).to have_field(:pg)
      expect(page).to have_field(:sg)
      expect(page).to have_field(:sf)
      expect(page).to have_field(:pf)
      expect(page).to have_field(:c)
    end
  end

  describe 'POST /team' do
    it "displays the basketball team name in the browser" do 
      visit '/newteam'

      fill_in(:name, :with => "Bballers")
      click_button "submit"
      expect(page).to have_text("Team Name: Bballers")
    end





  end
end