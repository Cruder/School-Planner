# frozen_string_literal: true

require 'rails_helper'

describe DisciplinesController, type: :routing do
  it 'routes to #index' do
    expect(get: '/disciplines').to route_to 'disciplines#index'
  end

  it 'routes to #show' do
    expect(get: '/disciplines/1').to route_to 'disciplines#show', id: '1'
  end

  it 'routes to #create' do
    expect(post: '/disciplines/').to route_to 'disciplines#create'
  end

  it 'routes to #edit' do
    expect(get: '/disciplines/1/edit').to route_to 'disciplines#edit', id: '1'
  end

  it 'routes to #update' do
    expect(patch: '/disciplines/1').to route_to 'disciplines#update', id: '1'
    expect(put: '/disciplines/1').to route_to 'disciplines#update', id: '1'
  end
end
