ActiveAdmin.register EventRegistration do
  belongs_to :event

  index download_links: true do
    column :last_name
    column :first_name
    column :email
    default_actions
  end
end
