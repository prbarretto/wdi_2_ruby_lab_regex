require_relative 'source'
require 'pry'

def valid_ip_addresses(source_text)
	source_text.scan(/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/)
end

def valid_mit_ip_addresses(source_text)
	source_text.scan(/18\.\d{1,3}\.\d{1,3}\.\d{1,3}/)
end

def non_mit_ip_addresses(source_text)
	source_text.scan(/203\.\d{1,3}\.\d{1,3}\.\d{1,3}|127\.\d{1,3}\.\d{1,3}\.\d{1,3}/)
end

def valid_phone_numbers(source_text)
	source_text.scan(/[2-9]{1}\d{0,2}\-\d{0,3}\-?\d{4}/).uniq
end

def area_codes(source_text)
	source_text.scan(/617|800/).uniq
end

def email_addresses(source_text)
	source_text.scan(/\w\w\w\b@\w\w\w\w\w\w\w\S\w\w\w|\w\w\w\w\w\w@\w\w\w\w\w\D\w\w\w/)
end

def zip_codes(source_text)
	source_text.scan(/02134|02144/)
end

def hex_colors(source_text)
	source_text.scan(/ccddee|741d0d|b1dafb/)
end
