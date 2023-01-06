require 'swagger_helper'

RSpec.describe 'api/v1/tasks', type: :request do

  path '/api/v1/tasks' do

    get('list tasks') do
      tags 'tasks'
      response(200, 'successful') do

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    post('create task') do
      tags 'tasks'
      response(200, 'successful') do
        consumes 'application/json'
          parameter name: :task, in: :body, schema: {
            type: :object,
            properties: {
              title: { type: :string },
              description: { type: :string },
              project_id: { type: :integer }
            },
            required: [ 'title', 'description' ]
          }
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
