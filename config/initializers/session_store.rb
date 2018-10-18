Rails.application.config.session_store :active_record_store, :key => ENV['sac_equihens_session'], expire_after: 30.minutes
