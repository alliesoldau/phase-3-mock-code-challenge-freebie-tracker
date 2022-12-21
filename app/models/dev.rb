class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        self.freebies.find_by(item_name: item_name) !=nil ? true : false
    end

    def give_away(dev, freebie)
        self.id == freebie.dev.id ? freebie.update(dev_id: dev.id) : "You can't give away something that isn't yours"
    end
end
