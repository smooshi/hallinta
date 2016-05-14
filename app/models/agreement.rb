class Agreement < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user

  has_many :device_in_agreements, :dependent => :restrict_with_exception
  has_many :software_in_agreements, :dependent => :restrict_with_exception
  has_many :devices, through: :device_in_agreements
  has_many :software, through: :software_in_agreements

  validates :restaurant_id, presence: true
  validates :user_id, presence: true
  validates :start_date, presence: true
  validates :agreement_length, presence: true
  validates :responsible_user_id, presence: true


  def as_file
    output = [self.restaurant.name]
    output << "\n Sopimus \n"
    output << "Sopimusaika :" + self.start_date.day.to_s + "." + self.start_date.month.to_s + "." + self.start_date.year.to_s + " "+ self.end_date.day.to_s + "." + self.end_date.month.to_s + "." + self.end_date.year.to_s + "\n"
    output << "Irtisanomisaika : "+ self.term_of_notice_in_months.to_s + " kk\n"
    output << "Laskutusaika : "+self.invoicing_payment_time.to_s + "\n"
    output << "Laskutuspäivä : "+self.invoicing_date.to_s+"\n"

    if self.software.present?
      output << " Ohjelmisto "
      self.software.each {|item| output << item.name+ " " + item.software_in_agreement.monthly_price.to_s + "€/kk\n"}
    end

    if self.devices.present?
      output << "Laitteisto"
      self.devices.each do |item|
        if (item.device_in_agreement.price_is_leasing)
          output << item.device_type.name+ " " + item.device_in_agreement.monthly_price.to_s + "€/kk \n"
        else
          output << "Kertamaksu "+item.device_type.name+ " " + item.device_in_agreement.total_price.to_s + "€\n"
        end
      end
      output.join("\n")
    end
  end
end
