require 'spec_helper'

RSpec.describe TodosController, type: :controller do
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
end
