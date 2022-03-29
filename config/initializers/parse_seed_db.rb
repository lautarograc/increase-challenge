if Client.first.nil?
    FetchParseSummary.new.parse_txt
    ParseClient.new.parse_client
else
   Transaction.delete_all
   Discount.delete_all
   Summary.delete_all
   Client.delete_all
end