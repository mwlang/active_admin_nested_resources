ActiveAdmin.register Event do

  action_item :only => [:show, :edit] do
    link_to('Edit Registrants', admin_event_event_registrations_path(event))
  end    
  
  show do |o|
    attributes_table do
      row :title
      row :starts_on
      row :ends_on
      row :description
    end

    panel "Registrants" do
      if o.event_registrations.present?  
        table_for o.event_registrations do 
          column :first_name
          column :last_name
          column :email
        end
      else
        "There are no registrations for this event, yet."
      end
    end
  end

  index do
    column :title
    column :starts_on
    column :ends_on
    column :registrants do |e|
      e.event_registrations.size
    end
    default_actions
  end
  
end
