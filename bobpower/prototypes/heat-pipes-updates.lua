if
  settings.startup["bobmods-power-steam"].value == true
  or settings.startup["bobmods-power-nuclear"].value == true
  or settings.startup["bobmods-power-heatsources"].value == true
then
  if data.raw.item["tin-plate"] then
    bobmods.lib.recipe.replace_ingredient("heat-pipe", "steel-plate", "tin-plate")
  end

  if data.raw.item["bronze-alloy"] then
    bobmods.lib.recipe.replace_ingredient("heat-pipe-2", "copper-plate", "bronze-alloy")
    bobmods.lib.tech.add_prerequisite("bob-heat-pipe-2", "alloy-processing")
  end

  if data.raw.item["aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("heat-pipe-3", "steel-plate", "aluminium-plate")
    bobmods.lib.tech.add_prerequisite("bob-heat-pipe-3", "aluminium-processing")
  end

  if data.raw.item["silver-plate"] then
    bobmods.lib.recipe.replace_ingredient("heat-pipe-3", "copper-plate", "silver-plate")
  end

  if data.raw.item["copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("heat-pipe-4", "steel-plate", "copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("bob-heat-pipe-4", "tungsten-alloy-processing")
  end

  if data.raw.item["gold-plate"] then
    bobmods.lib.recipe.replace_ingredient("heat-pipe-4", "copper-plate", "gold-plate")
    bobmods.lib.tech.add_prerequisite("bob-heat-pipe-4", "gold-processing")
  end
end
