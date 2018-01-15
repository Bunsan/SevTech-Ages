import crafttweaker.item.IItemStack;

var STAGE = STAGES.one;

var itemsForStage = [
	<minecraft:chest>,
	<minecraft:concrete:*>,
	<minecraft:concrete_powder:*>,
	<minecraft:crafting_table>,
	<minecraft:furnace>,
	<minecraft:item_frame>,
	<minecraft:sign>,
	<tconstruct:stone_ladder>,
	<minecraft:cake>,
	<minecraft:lit_pumpkin>,
	<minecraft:tnt>,

	//Hunting Dimension
	<huntingdim:biome_changer:*>,

	//Brick
	<betterwithaddons:bricks_stained:*>,
	<minecraft:brick_block>,
	<minecraft:stone_slab:4>,
	<quark:polished_netherrack:1>,
	<quark:polished_netherrack_bricks_slab>,
	<quark:polished_netherrack_bricks_stairs>,
	<quark:polished_netherrack_bricks_wall>,
	<quark:stone_andesite_bricks_slab>,
	<quark:stone_andesite_bricks_stairs>,
	<quark:stone_andesite_bricks_wall>,
	<quark:stone_diorite_bricks_slab>,
	<quark:stone_diorite_bricks_stairs>,
	<quark:stone_diorite_bricks_wall>,
	<quark:stone_granite_bricks_slab>,
	<quark:stone_granite_bricks_stairs>,
	<quark:stone_granite_bricks_wall>,
	<quark:world_stone_bricks:*>,
	<tconstruct:brownstone:3>,
	<tconstruct:brownstone_slab2:1>,
	<tconstruct:brownstone_slab2:2>,
	<tconstruct:brownstone_slab:3>,
	<tconstruct:brownstone_slab:4>,
	<tconstruct:brownstone_slab:5>,
	<tconstruct:brownstone_slab:6>,
	<tconstruct:brownstone_stairs_brick>,
	<tconstruct:brownstone_stairs_brick_cracked>,
	<tconstruct:brownstone_stairs_brick_fancy>,
	<tconstruct:brownstone_stairs_brick_small>,
	<tconstruct:brownstone_stairs_brick_square>,
	<tconstruct:brownstone_stairs_brick_triangle>,
	<tconstruct:deco_ground>,
	<tconstruct:deco_ground_slab>,
	<tconstruct:dried_brick_stairs>,
	<tconstruct:dried_clay:1>,
	<tconstruct:dried_clay_slab:1>,
	<tconstruct:mudbrick_stairs>,
	<traverse:blue_rock_bricks>,
	<traverse:blue_rock_bricks_chiseled>,
	<traverse:blue_rock_bricks_slab>,
	<traverse:blue_rock_bricks_stairs>,
	<traverse:red_rock_bricks>,
	<traverse:red_rock_bricks_chiseled>,
	<traverse:red_rock_bricks_slab>,
	<traverse:red_rock_bricks_stairs>,

	//Abyssalcraft
	<abyssalcraft:crate>,

	//Primal Tech
	<primal_tech:stone_anvil>,

	//Tinkers'
	<tconstruct:slime_congealed:3>,
	<tconstruct:slime:3>,
	<tconstruct:edible:3>,
	<tconstruct:channel>,

	//Fences and Doors
	<abyssalcraft:abydreadbrickfence>,
	<abyssalcraft:abyfence>,
	<abyssalcraft:cstonebrickfence>,
	<abyssalcraft:darkethaxiumbrickfence>,
	<abyssalcraft:dltfence>,
	<abyssalcraft:dreadbrickfence>,
	<abyssalcraft:drtfence>,
	<abyssalcraft:dsbfence>,
	<abyssalcraft:ethaxiumfence>,
	<minecraft:acacia_door>,
	<minecraft:acacia_fence>,
	<minecraft:acacia_fence_gate>,
	<minecraft:birch_door>,
	<minecraft:birch_fence>,
	<minecraft:birch_fence_gate>,
	<minecraft:dark_oak_door>,
	<minecraft:dark_oak_fence>,
	<minecraft:dark_oak_fence_gate>,
	<minecraft:fence>,
	<minecraft:fence_gate>,
	<minecraft:jungle_door>,
	<minecraft:jungle_fence>,
	<minecraft:jungle_fence_gate>,
	<minecraft:nether_brick_fence>,
	<minecraft:spruce_door>,
	<minecraft:spruce_fence>,
	<minecraft:spruce_fence_gate>,
	<minecraft:trapdoor>,
	<minecraft:wooden_door>,
	<natura:amaranth_fence>,
	<natura:amaranth_fence_gate>,
	<natura:bloodwood_fence>,
	<natura:bloodwood_fence_gate>,
	<natura:darkwood_fence>,
	<natura:darkwood_fence_gate>,
	<natura:eucalyptus_fence>,
	<natura:eucalyptus_fence_gate>,
	<natura:fusewood_fence>,
	<natura:fusewood_fence_gate>,
	<natura:ghostwood_fence>,
	<natura:ghostwood_fence_gate>,
	<natura:hopseed_fence>,
	<natura:hopseed_fence_gate>,
	<natura:maple_fence>,
	<natura:maple_fence_gate>,
	<natura:redwood_fence>,
	<natura:redwood_fence_gate>,
	<natura:sakura_fence>,
	<natura:sakura_fence_gate>,
	<natura:silverbell_fence>,
	<natura:silverbell_fence_gate>,
	<natura:tiger_fence>,
	<natura:tiger_fence_gate>,
	<natura:willow_fence>,
	<natura:willow_fence_gate>,
	<primal:fence>,
	<primal:fence:1>,
	<primal:fence:2>,
	<primal:fence:3>,
	<quark:nether_brick_fence_gate>,
	<rustic:fence_gate_ironwood>,
	<rustic:fence_gate_olive>,
	<rustic:fence_ironwood>,
	<rustic:fence_olive>,
	<rustic:ironwood_door>,
	<rustic:olive_door>,
	<traverse:fir_door>,
	<traverse:fir_fence>,
	<traverse:fir_fence_gate>,
	<tallgates:tall_gate>,
	<tallgates:tall_gate:1>,
	<tallgates:tall_gate:2>,
	<tallgates:tall_gate:3>,
	<tallgates:tall_gate:4>,
	<tallgates:tall_gate:5>,

	//Hoes
	<abyssalcraft:dhoe>,
	<cyclicmagic:sandstone_hoe>,
	<minecraft:stone_hoe>,
	<primal:flint_hoe>,

	//Rustic
	<rustic:andesite_pillar>,
	<rustic:barrel>,
	<rustic:cabinet>,
	<rustic:chair_acacia>,
	<rustic:chair_big_oak>,
	<rustic:chair_birch>,
	<rustic:chair_ironwood>,
	<rustic:chair_jungle>,
	<rustic:chair_oak>,
	<rustic:chair_olive>,
	<rustic:chair_spruce>,
	<rustic:crop_stake>,
	<rustic:crushing_tub>,
	<rustic:diorite_pillar>,
	<rustic:evaporating_basin>,
	<rustic:granite_pillar>,
	<rustic:rope>,
	<rustic:slate_pillar>,
	<rustic:stone_pillar>,
	<rustic:table_acacia>,
	<rustic:table_big_oak>,
	<rustic:table_birch>,
	<rustic:table_ironwood>,
	<rustic:table_jungle>,
	<rustic:table_oak>,
	<rustic:table_olive>,
	<rustic:table_spruce>,
	<rustic:vase>,

	//Ceramics
	<ceramics:channel>,
	<ceramics:clay_barrel_stained:*>,
	<ceramics:clay_barrel_stained_extension:*>,
	<ceramics:clay_boots>,
	<ceramics:clay_chestplate>,
	<ceramics:clay_helmet>,
	<ceramics:clay_leggings>,
	<ceramics:faucet>,
	<ceramics:porcelain_barrel:*>,
	<ceramics:porcelain_barrel_extension:*>,
	<ceramics:unfired_clay:1>,
	<minecraft:flower_pot>,

	//Stairs
	<minecraft:acacia_stairs>,
	<minecraft:birch_stairs>,
	<minecraft:brick_stairs>,
	<minecraft:dark_oak_stairs>,
	<minecraft:jungle_stairs>,
	<minecraft:nether_brick_stairs>,
	<minecraft:oak_stairs>,
	<minecraft:purpur_stairs>,
	<minecraft:quartz_stairs>,
	<minecraft:red_sandstone_stairs>,
	<minecraft:sandstone_stairs>,
	<minecraft:spruce_stairs>,
	<minecraft:stone_brick_stairs>,
	<minecraft:stone_stairs>,
	<quark:hardened_clay_tiles_stairs>,
	<quark:prismarine_bricks_stairs>,
	<quark:prismarine_dark_stairs>,
	<quark:stained_clay_tiles_black_stairs>,
	<quark:stained_clay_tiles_blue_stairs>,
	<quark:stained_clay_tiles_brown_stairs>,
	<quark:stained_clay_tiles_cyan_stairs>,
	<quark:stained_clay_tiles_gray_stairs>,
	<quark:stained_clay_tiles_green_stairs>,
	<quark:stained_clay_tiles_light_blue_stairs>,
	<quark:stained_clay_tiles_lime_stairs>,
	<quark:stained_clay_tiles_magenta_stairs>,
	<quark:stained_clay_tiles_orange_stairs>,
	<quark:stained_clay_tiles_pink_stairs>,
	<quark:stained_clay_tiles_purple_stairs>,
	<quark:stained_clay_tiles_red_stairs>,
	<quark:stained_clay_tiles_silver_stairs>,
	<quark:stained_clay_tiles_white_stairs>,
	<quark:stained_clay_tiles_yellow_stairs>,
	<quark:stone_andesite_stairs>,
	<quark:stone_diorite_stairs>,
	<quark:stone_granite_stairs>,
	<quark:stone_stairs>,
	<rustic:stairs_ironwood>,
	<rustic:stairs_olive>,
	<traverse:blue_rock_cobblestone_stairs>,
	<traverse:red_rock_cobblestone_stairs>,
	<traverse:fir_stairs>,
	<tconstruct:dried_clay_stairs>,

	//Immersive Engineering
	<immersiveengineering:storage_slab:5>,




	//Better With Mods
	<betterwithmods:candle>,
	<betterwithmods:candle:1>,
	<betterwithmods:candle:2>,
	<betterwithmods:candle:3>,
	<betterwithmods:candle:4>,
	<betterwithmods:candle:5>,
	<betterwithmods:candle:6>,
	<betterwithmods:candle:7>,
	<betterwithmods:candle:8>,
	<betterwithmods:candle:9>,
	<betterwithmods:candle:10>,
	<betterwithmods:candle:11>,
	<betterwithmods:candle:12>,
	<betterwithmods:candle:13>,
	<betterwithmods:candle:14>,
	<betterwithmods:candle:15>,	
	<betterwithaddons:bag:*>,
	<betterwithaddons:chute>,
	<betterwithaddons:crate:*>,
	<betterwithaddons:inverted_gearbox>,
	<betterwithaddons:loom>,
	<betterwithaddons:scaffold>,
	<betterwithaddons:weight_stone>,
	<betterwithaddons:weight_wood>,
	<betterwithmods:axle_generator:2>,
	<betterwithmods:axle_generator>,
	<betterwithmods:bamboo_chime:*>,
	<betterwithmods:grate:*>,
	<betterwithmods:material:11>,
	<betterwithmods:platform>,
	<betterwithmods:screw_pump>,
	<betterwithmods:slats:*>,
	<betterwithmods:vase:*>,
	<betterwithaddons:crate:10>,
	<betterwithaddons:crate:7>,
	<betterwithaddons:crate>,
	<betterwithaddons:crate:9>,
	<betterwithaddons:crate:6>,
	<betterwithaddons:crate:3>,
	<betterwithaddons:crate:5>,
	<betterwithaddons:crate:1>,
	<betterwithaddons:crate:2>,
	<betterwithaddons:crate:8>,
	<betterwithaddons:crate:11>,
	<betterwithaddons:crate:4>,
	<betterwithaddons:bag:9>,
	<betterwithaddons:bag:1>,
	<betterwithaddons:bag:2>,
	<betterwithaddons:bag>,
	<betterwithaddons:bag:8>,
	<betterwithaddons:bag:5>,
	<betterwithaddons:bag:10>,
	<betterwithaddons:bag:4>,
	<betterwithaddons:bag:3>,
	<betterwithaddons:bag:13>,
	<betterwithaddons:bolt>,
	<betterwithaddons:bolt:1>,
	<betterwithaddons:bolt:6>,
	<betterwithmods:single_machine:1>,
	<betterwithmods:anchor>,
	<betterwithmods:hemp>,
	<betterwithmods:aesthetic:4>,
	<betterwithmods:aesthetic:5>,
	<betterwithmods:aesthetic:9>,
	<betterwithmods:material:41>,
	<betterwithaddons:japanmat:10>,
	<betterwithmods:material:22>,
	<betterwithmods:material:21>,


	//Tinkers'
	<tconstruct:faucet>,
	<tconstruct:slime_boots:3>,
	<tconstruct:slime_boots>,
	<tconstruct:tooltables:1>,
	<tconstruct:tooltables:2>,
	<tconstruct:tooltables:3>,
	<tconstruct:tooltables:4>,
	<tconstruct:tooltables:5>,

	//Bibliocraft
	<bibliocraft:shelf:1>,
	<bibliocraft:shelf:2>,
	<bibliocraft:shelf:3>,
	<bibliocraft:shelf:4>,
	<bibliocraft:shelf:5>,
	<bibliocraft:shelf:6>,
	<bibliocraft:shelf>,
	<bibliocraft:toolrack:*>,

	//Dark Utils
	<darkutils:charm_gluttony>,
	<darkutils:charm_sleep>,
	<darkutils:slime_dyed:*>,

	//Actually Additions
	<actuallyadditions:block_fishing_net>,
	<actuallyadditions:block_misc:1>,
	<actuallyadditions:block_misc:2>,
	<actuallyadditions:block_misc>,
	<actuallyadditions:block_tiny_torch>,
	<actuallyadditions:item_crafter_on_a_stick>,
	<actuallyadditions:item_misc:5>,
	<actuallyadditions:item_axe_quartz>,
	<actuallyadditions:item_boots_quartz>,
	<actuallyadditions:item_chest_quartz>,
	<actuallyadditions:item_helm_quartz>,
	<actuallyadditions:item_hoe_quartz>,
	<actuallyadditions:item_pants_quartz>,
	<actuallyadditions:item_pickaxe_quartz>,
	<actuallyadditions:item_shovel_quartz>,
	<actuallyadditions:item_sword_quartz>,
	<actuallyadditions:quartz_paxel>,

	//TeslaCore
	<teslacorelib:gear_stone>,

	//Ceramics
	//<ceramics:clay_barrel_unfired:1>,
	<ceramics:clay_barrel_unfired:2>,
	<ceramics:clay_barrel_unfired:3>,
	<ceramics:clay_barrel_unfired>,
	<ceramics:clay_hard:1>,
	<ceramics:clay_hard:2>,
	<ceramics:clay_hard:4>,
	<ceramics:clay_hard:5>,
	<ceramics:clay_hard:6>,
	<ceramics:clay_hard>,
	<ceramics:clay_shears>,
	<ceramics:clay_slab:1>,
	<ceramics:clay_slab:2>,
	<ceramics:clay_slab:4>,
	<ceramics:clay_slab:5>,
	<ceramics:clay_slab:6>,
	<ceramics:clay_slab>,
	<ceramics:clay_wall:1>,
	<ceramics:clay_wall:2>,
	<ceramics:clay_wall:3>,
	<ceramics:clay_wall:5>,
	<ceramics:clay_wall:6>,
	<ceramics:clay_wall:7>,
	<ceramics:clay_wall>,
	<ceramics:dark_bricks_stairs>,
	<ceramics:dragon_bricks_stairs>,
	<ceramics:lava_bricks_stairs>,
	<ceramics:marine_bricks_stairs>,
	<ceramics:porcelain:10>,
	<ceramics:porcelain:11>,
	<ceramics:porcelain:12>,
	<ceramics:porcelain:13>,
	<ceramics:porcelain:14>,
	<ceramics:porcelain:15>,
	<ceramics:porcelain:1>,
	<ceramics:porcelain:2>,
	<ceramics:porcelain:3>,
	<ceramics:porcelain:4>,
	<ceramics:porcelain:5>,
	<ceramics:porcelain:6>,
	<ceramics:porcelain:7>,
	<ceramics:porcelain:8>,
	<ceramics:porcelain:9>,
	<ceramics:porcelain>,
	<ceramics:porcelain_bricks_stairs>,
	<ceramics:rainbow_bricks_stairs>,
	<ceramics:rainbow_clay:1>,
	<ceramics:rainbow_clay:2>,
	<ceramics:rainbow_clay:3>,
	<ceramics:rainbow_clay:4>,
	<ceramics:rainbow_clay:5>,
	<ceramics:rainbow_clay:6>,
	<ceramics:rainbow_clay:7>,
	<ceramics:rainbow_clay>,
	<ceramics:unfired_clay:8>,

	//Quark
	<quark:candle:*>,
	<quark:hardened_clay_tiles>,
	<quark:hardened_clay_tiles_slab>,
	<quark:polished_stone>,
	<quark:sandy_bricks>,
	<quark:stained_clay_tiles:*>,
	<quark:stained_clay_tiles_black_slab>,
	<quark:stained_clay_tiles_blue_slab>,
	<quark:stained_clay_tiles_brown_slab>,
	<quark:stained_clay_tiles_cyan_slab>,
	<quark:stained_clay_tiles_gray_slab>,
	<quark:stained_clay_tiles_green_slab>,
	<quark:stained_clay_tiles_light_blue_slab>,
	<quark:stained_clay_tiles_lime_slab>,
	<quark:stained_clay_tiles_magenta_slab>,
	<quark:stained_clay_tiles_orange_slab>,
	<quark:stained_clay_tiles_pink_slab>,
	<quark:stained_clay_tiles_purple_slab>,
	<quark:stained_clay_tiles_red_slab>,
	<quark:stained_clay_tiles_silver_slab>,
	<quark:stained_clay_tiles_white_slab>,
	<quark:stained_clay_tiles_yellow_slab>,
	<quark:sturdy_stone>,

	//Embers
	<embers:stamp_bar_raw>,
	<embers:stamp_flat_raw>,
	<embers:stamp_plate_raw>,
	<embers:stone_edge>,

	//Simply Tea
	<simplytea:teabag_green>,
	<simplytea:teabag_black>,
	<simplytea:cup>,
	<simplytea:cup_tea_black>,
	<simplytea:cup_tea_green>,
	<simplytea:teapot>,
	<simplytea:teapot:1>

] as IItemStack[];

for item in itemsForStage {
	mods.recipestages.Recipes.setRecipeStage(STAGE, item);
}

/////
//
//Off and still need recipes for this stage
//
////

//buttons
mods.recipestages.Recipes.setRecipeStage("one", <minecraft:stone_button>);
mods.recipestages.Recipes.setRecipeStage("one", <minecraft:wooden_button>);
mods.recipestages.Recipes.setRecipeStage("one", <abyssalcraft:dsbutton>);
mods.recipestages.Recipes.setRecipeStage("one", <abyssalcraft:dltbutton>);
mods.recipestages.Recipes.setRecipeStage("one", <abyssalcraft:abybutton>);
mods.recipestages.Recipes.setRecipeStage("one", <abyssalcraft:cstonebutton>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:nether_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:maple_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:silverbell_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:amaranth_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:tiger_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:willow_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:eucalyptus_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:hopseed_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:sakura_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:redwood_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:ghostwood_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:bloodwood_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:darkwood_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:fusewood_button>);

mods.recipestages.Recipes.addShapeless("one", <minecraft:stone_button>, [<minecraft:stone>]);
mods.recipestages.Recipes.addShapeless("one", <minecraft:wooden_button>, [plank]);
mods.recipestages.Recipes.addShapeless("one", <abyssalcraft:dsbutton>, [<abyssalcraft:stone>]);
mods.recipestages.Recipes.addShapeless("one", <abyssalcraft:dltbutton>, [<abyssalcraft:dltlog>]);
mods.recipestages.Recipes.addShapeless("one", <abyssalcraft:abybutton>, [<abyssalcraft:stone:1>]);
mods.recipestages.Recipes.addShapeless("one", <abyssalcraft:cstonebutton>, [<abyssalcraft:stone:4>]);

////
//
// TO DO
//
////
mods.recipestages.Recipes.setRecipeStage("one", <cyclicmagic:sandstone_spade>);
mods.recipestages.Recipes.setRecipeStage("one", <cyclicmagic:sandstone_pickaxe>);
mods.recipestages.Recipes.setRecipeStage("one", <cyclicmagic:plate_launch_large>);
mods.recipestages.Recipes.setRecipeStage("one", <cyclicmagic:tool_harvest_leaves>);
mods.recipestages.Recipes.setRecipeStage("one", <cyclicmagic:plate_launch_small>);
mods.recipestages.Recipes.setRecipeStage("one", <cyclicmagic:sandstone_axe>);
mods.recipestages.Recipes.setRecipeStage("one", <rustic:book>);