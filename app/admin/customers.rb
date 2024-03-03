
  # ActiveAdmin.register Customer do
  #   filter :image, as: :string, label: 'Image', filters: []
  #   permit_params :full_name, :phone_number, :email_address, :notes, :image

  #   form do |f|
  #     f.inputs do
  #       f.input :full_name
  #       f.input :phone_number
  #       f.input :email_address
  #       f.input :notes
  #       f.input :image, as: :file
  #     end
  #     f.actions
  #   end
  # end

  ActiveAdmin.register Customer do
    remove_filter :image
    permit_params :full_name, :phone_number, :email_address, :notes, :image

    index do
      selectable_column
      id_column
      column :full_name
      column :phone_number
      column :email_address
      column :notes
      actions
    end

    filter :email_address
    filter :phone_number
    filter :notes
    filter :full_name

    form do |f|
      f.inputs do
        f.input :full_name
        f.input :phone_number
        f.input :email_address
        f.input :notes
        f.input :image, as: :file
      end
      f.actions
    end
  end


