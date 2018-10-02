json.extract! enquiry, :id, :subject, :message_content, :created_at, :updated_at
json.url enquiry_url(enquiry, format: :json)
