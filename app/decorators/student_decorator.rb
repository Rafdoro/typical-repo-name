class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    notes = subject_item_notes.for_subject_item(subject_item).average(:value)
    notes.nil? ? "0.00" : "%.2f" % notes
  end
end
