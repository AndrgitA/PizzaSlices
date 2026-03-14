PizzaSlices:RegisterModule('outfitter', function()
  PS.outfitter = {};

  function PS.outfitter.apply(data)
    if (PS.utils.hasOutfitter() and data and data.clearData and data.outfitData) then
      -- OutfitterItem_OnClick(data.outfitData);

      local outfitName = data.clearData.Name;
      local outfitCategory = data.outfitData.categoryID;

      if outfitName and outfitCategory then
        local outfits = Outfitter_GetOutfitsByCategoryID(outfitCategory)
        if outfits then
          for _, outfit in pairs(outfits) do
            if outfit.Name == outfitName then
              Outfitter_WearOutfit(outfit, outfitCategory)
              break
            end
          end
        end
      end
    end
  end
end)
