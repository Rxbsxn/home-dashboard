require 'rails_helper'

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

    describe '#create' do
      let(:attributes) { attributes_for(:todo) }
      let(:call_request) { post :create, todo: attributes }
      it_behaves_like 'an action creating object', [:title, :content]
end

end
