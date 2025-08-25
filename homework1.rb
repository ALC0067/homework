# Array holds the contacts
contacts = []

# ---- Methods ----

def display_menu
  puts "\nAddress Book Menu:"
  puts "1. Add a contact"
  puts "2. View all contacts"
  puts "3. Search for a contact"
  puts "4. Delete a contact"
  puts "5. Exit"
  print "Enter your choice: "
end

def add_contact(contacts)
  print "Enter name: "
  name = gets.chomp
  print "Enter phone number: "
  phone = gets.chomp
  print "Enter email: "
  email = gets.chomp

  contacts << { name: name, phone: phone, email: email }
  puts "Contact added."
end

def view_contacts(contacts)
  if contacts.empty?
    puts "No contacts found."
  else
    puts "\nAll Contacts:"
    contacts.each_with_index do |contact, index|
      puts "#{index + 1}. Name: #{contact[:name]}"
      puts "   Phone: #{contact[:phone]}"
      puts "   Email: #{contact[:email]}"
    end
  end
end

def search_contact(contacts)
  print "Enter name to search: "
  search_name = gets.chomp
  found = contacts.find { |c| c[:name].downcase == search_name.downcase }

  if found
    puts "Contact found:"
    puts "Name: #{found[:name]}"
    puts "Phone: #{found[:phone]}"
    puts "Email: #{found[:email]}"
  else
    puts "Contact not found."
  end
end

def delete_contact(contacts)
  print "Enter name of contact to delete: "
  name_to_delete = gets.chomp
  index = contacts.find_index { |c| c[:name].downcase == name_to_delete.downcase }

  if index
    contacts.delete_at(index)
    puts "Contact deleted."
  else
    puts "Contact not found."
  end
end

# ---- Main Program Loop ----
loop do
  display_menu
  choice = gets.chomp.to_i

  case choice
  when 1
    add_contact(contacts)
  when 2
    view_contacts(contacts)
  when 3
    search_contact(contacts)
  when 4
    delete_contact(contacts)
  when 5
    puts "Goodbye!"
    break
  else
    puts "Invalid choice. Please try again."
  end
end
