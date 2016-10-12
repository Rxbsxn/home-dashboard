require 'spec_helper'

RSpec.describe WeatherControllerController, type: :controller do
  describe '#index' do
    context 'index page' do
      before { get :index }
        it { expect(response).to render_template(:index) }
      end
    end
end
