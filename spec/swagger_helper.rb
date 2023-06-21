require 'rails_helper'

RSpec.configure do |config|
  config.swagger_root = Rails.root.join('swagger').to_s
  config.swagger_docs = {
    'v1/swagger.json' => {
      swagger: '2.0',
      info: {
        title: 'Car API',
        version: 'v1'
      },
      paths: {
        '/api/v1/users/index': {
          get: {
            tags: ['User'],
            summary: 'Get all users',
            operationId: 'getAllUsers',
            produces: ['application/json'],
            responses: {
              200 => { description: 'OK' },
              500 => { description: 'Internal Server Error' }
            }
          }
        },
        '/api/v1/login/{username}': {
          get: {
            tags: ['User'],
            summary: 'Login user',
            operationId: 'loginUser',
            produces: ['application/json'],
            parameters: [
              {
                name: 'username',
                in: 'path',
                type: 'string',
                description: 'username of user',
                required: true
              }
            ],
            responses: {
              200 => { description: 'OK' },
              500 => { description: 'Internal Server Error' }
            }
          }
        },
        '/api/v1/register': {
          post: {
            tags: ['User'],
            summary: 'Register user',
            operationId: 'registerUser',
            produces: ['application/json'],
            responses: {
              200 => { description: 'OK' },
              500 => { description: 'Internal Server Error' }
            }
          }
        },
        '/api/v1/cars': {
          get: {
            tags: ['Cars'],
            summary: 'Get all cars',
            operationId: 'getAllCars',
            produces: ['application/json'],
            responses: {
              200 => { description: 'OK' },
              500 => { description: 'Internal Server Error' }
            }
          }
        },
        '/api/v1/reservations': {
          get: {
            tags: ['Reservations'],
            summary: 'Get all reservations',
            operationId: 'getAllReservations',
            produces: ['application/json'],
            responses: {
              200 => { description: 'OK' },
              500 => { description: 'Internal Server Error' }
            }
          }
        },
        '/api/v1/car/{car_id}': {
          get: {
            tags: ['Cars'],
            summary: 'Get car by id',
            operationId: 'getCarById',
            produces: ['application/json'],
            parameters: [
              {
                name: 'car_id',
                in: 'path',
                type: 'integer',
                description: 'ID of car',
                required: true
              }
            ],
            responses: {
              200 => { description: 'OK' },
              500 => { description: 'Internal Server Error' }
            }
          },
          delete: {
            tags: ['Cars'],
            summary: 'Delete car',
            operationId: 'deleteCar',
            produces: ['application/json'],
            parameters: [
              {
                name: 'car_id',
                in: 'path',
                type: 'integer',
                description: 'ID of car',
                required: true
              }
            ],
            responses: {
              200 => { description: 'OK' },
              500 => { description: 'Internal Server Error' }
            }
          }
        },
        '/api/v1/reserve/cars/{date}': {
          get: {
            tags: ['Cars'],
            summary: 'Get cars by date',
            operationId: 'getCarsByDate',
            produces: ['application/json'],
            parameters: [
              {
                name: 'date',
                in: 'path',
                type: 'string',
                description: 'Date of reservation',
                required: true
              }
            ],
            responses: {
              200 => { description: 'OK' },
              500 => { description: 'Internal Server Error' }
            }
          }
        },
        '/api/v1/cars/{user_id}': {
          get: {
            tags: ['Cars'],
            summary: 'Get cars by user id',
            operationId: 'getCarsByUserId',
            produces: ['application/json'],
            parameters: [
              {
                name: 'user_id',
                in: 'path',
                type: 'integer',
                description: 'ID of user',
                required: true
              }
            ],
            responses: {
              200 => { description: 'OK' },
              500 => { description: 'Internal Server Error' }
            }
          }
        },
        '/api/v1/car': {
          post: {
            tags: ['Cars'],
            summary: 'Create car',
            operationId: 'createCar',
            produces: ['application/json'],
            parameters: [
              {
                name: 'car',
                in: 'body',
                schema: {
                  type: 'object',
                  properties: {
                    'name' => { type: 'string' },
                    'model' => { type: 'string' },
                    'year' => { type: 'integer' },
                    'price' => { type: 'number' },
                    'user_id' => { type: 'integer' }
                  }
                }
              }
            ],
            responses: {
              201 => { description: 'Created' },
              500 => { description: 'Internal Server Error' }
            }
          }
        },
        '/api/v1/reservation': {
          post: {
            tags: ['Reservations'],
            summary: 'Create reservation',
            operationId: 'createReservation',
            produces: ['application/json'],
            parameters: [
              {
                name: 'reservation',
                in: 'body',
                schema: {
                  type: 'object',
                  properties: {
                    'car_id' => { type: 'integer' },
                    'user_id' => { type: 'integer' },
                    'date' => { type: 'string' },
                    'price' => { type: 'number' },
                    'status' => { type: 'string' }
                  }
                }
              }
            ],
            responses: {
              201 => { description: 'Created' },
              500 => { description: 'Internal Server Error' }
            }
          }
        },
        '/api/v1/reservations/{reservation_id}': {
          get: {
            tags: ['Reservations'],
            summary: 'Get reservation by id',
            operationId: 'getReservationById',
            produces: ['application/json'],
            parameters: [
              {
                name: 'reservation_id',
                in: 'path',
                type: 'integer',
                description: 'ID of reservation',
                required: true
              }
            ],
            responses: {
              200 => { description: 'OK' },
              500 => { description: 'Internal Server Error' }
            }
          }
        }
      }
    }
  }
  config.swagger_format = :json
end
