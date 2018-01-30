Rails.application.routes.draw do
  get 'admin_views/aManage'

  get 'sample_pages/assessment'

  get 'sample_pages/UCPDResults'

  get 'sample_pages/UCPD'

  get 'sample_pages/ADRDBM'

  get 'sample_pages/UADD'

  get 'admin_views/dashboard'

  get 'admin_views/assign'

  get 'admin_views/scores'

  get 'admin_views/users'

  get 'admin_views/index'

  get 'sample_pages/assign'

  get 'sample_pages/customize'

  get 'sample_pages/scores'

  get 'sample_pages/users'

  root 'admin_views#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
