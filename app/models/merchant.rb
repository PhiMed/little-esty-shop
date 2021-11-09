class Merchant < ApplicationRecord
  has_many :items
  has_many :invoice_items, through: :items

  def top_customers
    wip = Customer.select("customers.*, COUNT(transactions.*) AS transaction_count")
                          .joins(invoices: [:transactions, {items: :merchant}])
                          .where(transactions: {result: :success}, merchants: {id: "#{self.id}"})
                          .group(:id)
                          .order(transaction_count: :desc)
                          .limit(5)
  end

  def shippable_items
    items.select("items.*, invoice_items.invoice_id AS invoice_id, invoices.created_at AS invoice_created_at")
         .joins(:invoices)
         .where(invoice_items: {status: '0'})
         .order(:invoice_created_at)
  end

  def invoice_ids
    items.joins(:invoices).distinct.pluck(:invoice_id)
  end
end
