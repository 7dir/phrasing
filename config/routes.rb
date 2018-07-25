Rails.application.routes.draw do
  scope '/:locale', locale: /#{I18n.available_locales.join("|")}/ do
    resources Phrasing.route,
              as: :phrasing_phrases,
              controller: :phrasing_phrases,
              only: [:index, :edit, :update, :destroy] do
      collection do
        get  :help
        get  :import_export
        get  :download
        post :upload
      end
    end

    resources :phrasing_phrase_versions, only: :destroy
  end
end
