class Act
   # An Act that a user owns, comprised of many assets and people
   # possibly not part of this system.
   include Mongoid::Document

   belongs_to :user
   has_many :passets

   validates_presence_of :stage_name, :contact_phone_number, :short_description, :length
   validates_numericality_of :length
   
   field :stage_name, :type => String
   field :names_of_performers, :type => String
   field :contact_phone_number, :type => String
   field :length, :type => Integer     # length in minutes
   field :short_description, :type => String

   field :sound_cue, :type => String
   field :prop_placement, :type => String

   field :lighting_info, :type => String
   field :clean_up, :type => String
   field :mc_intro, :type => String
   field :run_through, :type => String
   field :extra_notes, :type => String
end