PizzaSlices:RegisterModule('outfitter', function()
  PS.outfitter = {};

  function PS.outfitter.apply(data)
    if (PS.utils.hasOutfitter() and data and data.outfitData) then
      OutfitterItem_OnClick(data.outfitData);
    end
  end
end)
