RSpec.describe Api::CocktailsController, type: :request do
  before do
    get "/api/cocktails/12754"
  end

  it "returns a 200 status" do
    expect(response.status).to eq 200
  end

  it "returns name of drink" do
    expect(response_json["drink"]["strDrink"]).to eq "Sex on the Beach"
  end
end
