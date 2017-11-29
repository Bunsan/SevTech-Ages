//Stop Chisel Blocks from becoming the 
//chosen block for mods when processing

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

//<chiselBlock> : <oreDict>
var oreDictChiselPairs = {
	<chisel:blockaluminum> : <ore:blockAluminum>,
	<chisel:blockbronze> : <ore:blockBronze>,
	<chisel:blockcobalt> : <ore:blockCobalt>,
	<chisel:blockcopper> : <ore:blockCopper>,
	<chisel:diamond> : <ore:blockDiamond>,
	<chisel:blockelectrum> : <ore:blockElectrum>,
	<chisel:emerald> : <ore:blockEmerald>,
	<chisel:gold> : <ore:blockGold>,
	<chisel:iron> : <ore:blockIron>,
	<chisel:lapis> : <ore:blockLapis>,
	<chisel:blocklead> : <ore:blockLead>,
	<chisel:blocknickel> : <ore:blockNickel>,
	<chisel:blockplatinum> : <ore:blockPlatinum>,
	<chisel:redstone> : <ore:blockRedstone>,
	<chisel:redstone1> : <ore:blockRedstone>,
	<chisel:blocksilver> : <ore:blockSilver>,
	<chisel:blocksteel> : <ore:blockSteel>,
	<chisel:blocktin> : <ore:blockTin>
} as IOreDictEntry[IItemStack];

//<chiselBlock> : count
//count = how many blocks there are
//use string instead of int as a workaround (ct bug?)
var oreDictChiselPairCounts = {
	<chisel:blockaluminum> : 7,
	<chisel:blockbronze> : 7,
	<chisel:blockcobalt> : 7,
	<chisel:blockcopper> : 7,
	<chisel:diamond> : 12,
	<chisel:blockelectrum> : 7,
	<chisel:emerald> : 14,
	<chisel:gold> : 15,
	<chisel:iron> : 15,
	<chisel:lapis> : 9,
	<chisel:blocklead> : 7,
	<chisel:blocknickel> : 7,
	<chisel:blockplatinum> : 7,
	<chisel:redstone> : 16,
	<chisel:redstone1> : 12,
	<chisel:blocksilver> : 7,
	<chisel:blocksteel> : 7,
	<chisel:blocktin> : 7
} as int[IItemStack];

for key in oreDictChiselPairs {
	//key (the chiselBlock) to reference the count in the map
	var count = oreDictChiselPairCounts[key];

	for i in 0 to count {
		var chiselBlock = key.definition.makeStack(i);
		oreDictChiselPairs[key].remove(chiselBlock);
	}
}
