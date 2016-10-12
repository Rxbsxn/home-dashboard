require 'spec_helper'

RSpec.describe TobuysController, type: :controller do
  describe '#index' do
    context 'index page' do
      before { get :index }
        it { expect(response).to render_template(:index) }
      end
    end

    describe '#new' do
      context 'create page' do
        before { get :new }
        it { expect(response).to render_template(:new)}

      end
    end

    describe '#destroy' do
      let!(:tobuy) { create(:tobuy) }
      let(:call_request) { delete :destroy, id: tobuy.id }

      it_behaves_like 'an action destroying object'
  end
  end
