local stack_size = settings.startup["bos-stacksize"].value

local function is_valid(item_table)
	return item_table.subgroup == "raw-resource" or item_table.subgroup == "raw-material"
end

for item, tbl in pairs(data.raw.item) do
	if is_valid(tbl) then
		tbl.stack_size = stack_size
	end
end
