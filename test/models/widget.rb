class Widget < ActiveRecord::Base
  acts_as_versioned :sequence_name => 'widgets_seq', :association_options => {
    :dependent => :nullify
  }

  non_versioned_columns << 'foo'
end
