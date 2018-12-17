# frozen_string_literal: true

require 'rails_helper'

describe AssignmentsController, type: :routing do
  it 'routes to #index' do
    expect(get: '/assignments').to route_to 'assignments#index'
  end

  it 'routes to #show' do
    expect(get: '/assignments/1').to route_to 'assignments#show', id: '1'
  end

  it 'routes to #create' do
    expect(post: '/assignments/').to route_to 'assignments#create'
  end

  it 'routes to #edit' do
    expect(get: '/assignments/1/edit').to route_to 'assignments#edit', id: '1'
  end

  it 'routes to #update' do
    expect(patch: '/assignments/1').to route_to 'assignments#update', id: '1'
    expect(put: '/assignments/1').to route_to 'assignments#update', id: '1'
  end
end
