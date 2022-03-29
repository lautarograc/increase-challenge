# frozen_string_literal: true

class FetchParseSummary
  require 'faraday'
  def parse_txt
    request = Faraday.get('https://increase-transactions.herokuapp.com/file.txt') do |auth|
      auth.headers['Authorization'] = 'Bearer 1234567890qwertyuiopasdfghjklzxcvbnm'
    end

    lines = request.body.split(/\n/)
    count = 0
    responses = []
    lines.each do |line|
      responses[count] ||= []
      responses[count] << line
      count += 1 if line[0] == '4'
    end

    responses.each do |response|
      client = Client.find_or_create_by(client_id: response.last[24..55])
      summary_params = {
        client: client,
        summary_id: response[0][1..32],
        currency: response[0][36..38],
        amount: response[0][39..51],
        discount: response[0][52..64],
        total_amount: response[0][65..77],
        date: response.last[16..23]
      }

      summary = Summary.new(summary_params)
      summary.save unless summary.id.present?

      transaction_lines = response.select { |line| line[0] == '2' }
      transaction_lines.each do |transaction_line|
        transaction_params = {
          summary: summary,
          transaction_id: transaction_line[1..32],
          amount: transaction_line[33..45],
          approved: transaction_line[51]
        }
        Transaction.create(transaction_params)
      end
      discount_lines = response.select { |line| line[0] == '3' }
      discount_lines.each do |discount_line|
        discount_params = {
          summary: summary,
          discount_id: discount_line[1..32],
          amount: discount_line[33..45],
          discount_type: discount_line[49]
        }
        Discount.create(discount_params)
      end
    end
  end
end
