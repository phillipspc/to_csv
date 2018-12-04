require 'csv'

class ActiveRecord::Relation
  def to_csv
    attributes = self.attribute_names

    CSV.generate(headers: true) do |csv|
      csv << attributes

      self.each do |record|
        csv << attributes.map { |attr| record.send(attr) }
      end
    end
  end
end
