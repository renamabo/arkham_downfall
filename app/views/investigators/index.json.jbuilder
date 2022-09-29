# frozen_string_literal: true

json.array! @investigators, partial: 'investigators/investigator', as: :investigator
