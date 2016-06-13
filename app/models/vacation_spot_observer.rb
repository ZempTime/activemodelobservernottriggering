class VacationSpotObserver < ActiveRecord::Observer
  def after_create(vacation_spot)
    Hooplah.create(
      vacation_spot_id: vacation_spot.id,
      description: "They sicken of the calm who know the storm of #{vacation_spot.name}!!!"
    )
  end
end
