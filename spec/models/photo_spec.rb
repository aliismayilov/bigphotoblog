require 'spec_helper'

describe Photo do
  describe :validations do
    it { should validate_presence_of :user }
  end

  describe :associations do
    it { should belong_to :user }
  end

  describe :paperclip do
    it { should have_attached_file(:upload) }
    it { should validate_attachment_presence(:upload) }
    it { should validate_attachment_content_type(:upload).
                       allowing('image/png', 'image/gif').
                       rejecting('text/plain', 'text/xml') }
  end
end
