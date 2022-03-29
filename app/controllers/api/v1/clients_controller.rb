# frozen_string_literal: true

module Api
  module V1
    class ClientsController < ApplicationController
      def index
        @clients = Client.all.order(client_id: :asc)
        render json: @clients, status: :ok
      end

      def show
        @client = Client.find(params[:id])
        render json: @client, status: :ok
      end

      def transactions_by_client
        @client = Client.find(params[:id])
        @content = {
          transactions: @client.transactions
        }
        render json: @content, status: :ok
      end

      def account
        @client = Client.find(params[:id])
        @account = Hash[pay: 0, paid: 0]
        @client.transactions.each do |t|
          if t.approved == '1'
            if t.summary.date < Date.today
              @account[:paid] += t.amount
            elsif t.summary.date > Date.today
              @account[:pay] += t.amount
            end
          end
        end
        render json: @account, status: :ok
      end
    end
  end
end
