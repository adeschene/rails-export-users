class User < ApplicationRecord
  def self.to_csv
    attributes = %w{first_name last_name phone address}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |user|
        csv << attributes.map{ |attr| user.send(attr) }
      end
    end
  end
end
