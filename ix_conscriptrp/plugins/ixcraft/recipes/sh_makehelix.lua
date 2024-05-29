RECIPE.name = "Create HELIX Armor"
RECIPE.description = "Dedicate a suit of MPF Officer Armor as an Official HELIX-Protective suit, making it much more resistant to Acidic Chemicals."
RECIPE.model = "models/tnb/items/aphelion/shirt_rebelmetrocop.mdl"
RECIPE.station = "Workbench"
RECIPE.category = "Armor"
RECIPE.requirements = {
["sewingthread"] = 1,
["chemicalmaterial"] = 2,
["mpfofficerarmor"] = 1,
}
RECIPE.tools = {
"sewingkit",
}
RECIPE.results = {
	["mpfhelixarmor"] = 1,

}



RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Workbench."
end)