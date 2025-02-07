import crafttweaker.item.IItemStack;

import mods.terrafirmacraft.ItemRegistry;


// --- Массивы

val RemoveItemRecipe as IItemStack[] = [
	<galacticraftcore:distributor>,
	<galacticraftcore:collector>,
	<galacticraftcore:oxygen_compressor>,
	<galacticraftcore:oxygen_compressor:4>,
	<galacticraftcore:fuel_loader>,
	<galacticraftcore:sealer>,
	<galacticraftcore:oxygen_detector>,
	<galacticraftcore:air_lock_frame>,
	<galacticraftcore:air_lock_frame:1>,
	<galacticraftcore:telemetry>,
	<galacticraftplanets:mars_machine:8>,
	<galacticraftplanets:mars_machine:4>,
	<galacticraftplanets:mars_machine>,
	<galacticraftplanets:basic_item_venus>,
	<galacticraftcore:solar>,
	<galacticraftcore:solar:4>,
	<galacticraftcore:air_vent>,
	<galacticraftcore:oxygen_tank_light_full:900>,
	<galacticraftcore:oxygen_tank_med_full:1800>,
	<galacticraftcore:oxygen_tank_heavy_full:2700>,
	<galacticraftcore:oxygen_mask>,
	<galacticraftcore:oxygen_gear>,
	<galacticraftplanets:thermal_padding>,
	<galacticraftplanets:thermal_padding:1>,
	<galacticraftplanets:thermal_padding:2>,
	<galacticraftplanets:thermal_padding:3>,
	<galacticraftplanets:item_basic_asteroids:7>,
	<galacticraftplanets:basic_item_venus:3>,
	<galacticraftplanets:walkway>,
	<galacticraftplanets:walkway:1>,
	<galacticraftplanets:walkway:2>,
	<galacticraftplanets:beam_receiver>,
	<galacticraftplanets:item_basic_asteroids:8>,
	<galacticraftplanets:basic_item_venus:2>,
	<galacticraftplanets:atomic_battery>,
	<galacticraftcore:landing_pad>,
	<galacticraftcore:landing_pad:1>,
	<galacticraftplanets:miner_base>,
	<galacticraftcore:spin_thruster>,
	<galacticraftcore:oil_canister_partial:1001>,
	<galacticraftcore:canister>,
	<galacticraftcore:arclamp>,
	<galacticraftcore:buggymat:1>,
	<galacticraftcore:buggymat:2>,
	<galacticraftplanets:beam_reflector>,
	<galacticraftcore:dishbase>,
	<galacticraftcore:basic_item:20>,
	<galacticraftcore:oxygen_concentrator>,
	<galacticraftplanets:orion_drive>,
	<galacticraftcore:buggymat>,
	<galacticraftcore:view_screen>,
	<galacticraftcore:basic_block_core:4>,
	<galacticraftcore:basic_block_core:3>,
	<galacticraftcore:panel_lighting>,
	<galacticraftcore:panel_lighting:1>,
	<galacticraftcore:panel_lighting:2>,
	<galacticraftcore:panel_lighting:3>,
	<galacticraftcore:panel_lighting:4>,
	<galacticraftcore:engine>,
	<galacticraftplanets:item_basic_asteroids:1>,
	<galacticraftcore:engine:1>,
	<galacticraftcore:rocket_fins>,
	<galacticraftplanets:item_basic_asteroids:2>,
	<galacticraftplanets:item_basic_asteroids:2>,
	<galacticraftcore:basic_item:19>,
	<galacticraftcore:food>,
	<galacticraftcore:food:1>,
	<galacticraftcore:food:2>,
	<galacticraftcore:food:3>,
	<galacticraftcore:food:9>,
	<galacticraftplanets:item_basic_mars:4>,
	<galacticraftcore:basic_block_core:12>,
	<galacticraftcore:item_basic_moon>,
	<galacticraftcore:steel_pole>,
	<galacticraftplanets:mars:8>,
	<galacticraftcore:enclosed:14>,
	<galacticraftcore:enclosed:15>,
	<galacticraftcore:enclosed:13>,
	<galacticraftcore:enclosed:1>,
	<galacticraftplanets:grapple>,
	<galacticraftcore:nose_cone>,
   <galacticraftcore:compact_workbench>
];

// --- Удаление рецептов

// Удаление рецептов
for item in RemoveItemRecipe{
   recipes.remove(item);
}

// Другие рецепты которые удалены
furnace.remove(<galacticraftcore:food:7>);
furnace.remove(<galacticraftcore:item_basic_moon>);
furnace.remove(<galacticraftcore:basic_item:4>);
furnace.remove(<galacticraftplanets:item_basic_mars:2>);
furnace.remove(<galacticraftplanets:carbon_fragments>);

// Именованное удаление
recipes.removeByRecipeName("galacticraftcore:slime_ball");
recipes.removeByRecipeName("galacticraftcore:cobblestone");
recipes.removeByRecipeName("galacticraftcore:cobblestone_alt");
recipes.removeByRecipeName("galacticraftcore:cobblestone_alt_alt");
recipes.removeByRecipeName("galacticraftcore:basic_item_18");
recipes.removeByRecipeName("galacticraftcore:basic_item_17");
recipes.removeByRecipeName("galacticraftcore:basic_item_16");
recipes.removeByRecipeName("galacticraftcore:basic_item_15");

// --- Добавление рецептов

// Еда из GC
ItemRegistry.registerFood(<galacticraftcore:food>, 4, 0.6, 0.7, 0.5, 0, 0, 1.0, 0, 0);
ItemRegistry.registerFood(<galacticraftcore:food:1>, 4, 0.6, 0.7, 0.5, 0, 1.0, 0, 0, 0);
ItemRegistry.registerFood(<galacticraftcore:food:2>, 4, 0.6, 0.7, 0.5, 0, 0, 1.0, 0, 0);
ItemRegistry.registerFood(<galacticraftcore:food:3>, 4, 0.6, 0.7, 0.5, 0, 1.0, 0, 0, 0);
ItemRegistry.registerFood(<galacticraftcore:food:9>, 4, 0.6, 0.9, 0.5, 0, 0, 0, 1.0, 0);

// Шест
recipes.addShaped("tfg/gc/steel_pole", <galacticraftcore:steel_pole> * 2, [
   [null, <ore:plateDenseSteel>, null],
   [null, <ore:plateDenseSteel>, <ore:gtce.tool.hard.hammers>],
   [null, <ore:plateDenseSteel>, null]]);

// Светофакел
recipes.addShapeless("tfg/gc/glowstone_torch", <galacticraftcore:glowstone_torch> * 2, [<minecraft:torch>, <minecraft:glowstone_dust>]);

// Slimeball
recipes.addShaped("tfg/gc/slime_ball", <minecraft:slime_ball>, [
   [<ore:dyeGreen>, <ore:dustSugar>, <ore:dyeGreen>],
   [<ore:dustSugar>, <firmalife:cheddar_wheel>,<ore:dustSugar>],
   [<ore:dyeGreen>, <ore:dustSugar>, <ore:dyeGreen>]]);

// Slimeling Inventory Bag
recipes.addShaped("tfg/gc/slimeling_inventory_bag", <galacticraftplanets:item_basic_mars:4>, [
   [<ore:leather>, <ore:plateDiamond>, <ore:leather>],
   [<ore:leather>, <ore:slimeball>, <ore:leather>],
   [null, <ore:chestWood>, null]]);

// Oxygen Mask
recipes.addShaped("tfg/gc/oxygen_mask", <galacticraftcore:oxygen_mask>, [
   [<minecraft:glass_pane>, <ore:craftingLensWhite>, <minecraft:glass_pane>],
   [<ore:plateDenseSteel>, <minecraft:leather_helmet>, <ore:plateDenseSteel>],
   [<minecraft:glass_pane>, <ore:pipeTinyFluidStainlessSteel>, <minecraft:glass_pane>]]);

// Oxygen Gear
recipes.addShaped("tfg/gc/oxygen_gear", <galacticraftcore:oxygen_gear>, [
   [<ore:plateAluminium>, <galacticraftcore:air_vent>, <ore:plateAluminium>],
   [<galacticraftcore:oxygen_concentrator>, <metaitem:drum.stainless_steel>, <galacticraftcore:oxygen_concentrator>],
   [<ore:cableGtQuadrupleCopper>, <ore:rotorStainlessSteel>, <ore:cableGtQuadrupleCopper>]]);

// Oxygen Detector
recipes.addShaped("tfg/gc/oxygen_detector", <galacticraftcore:oxygen_detector>, [
   [<metaitem:sensor.hv>, <ore:plateAluminium>, <metaitem:sensor.hv>],
   [<ore:plateAluminium>, <ore:circuitMv>, <ore:plateAluminium>],
   [<ore:cableGtQuadrupleCopper>, <ore:plateAluminium>, <ore:cableGtQuadrupleCopper>]]);

// Oxygen Sealer
recipes.addShaped("tfg/gc/oxygen_sealer", <galacticraftcore:sealer>, [
   [<metaitem:sensor.hv>, <galacticraftcore:air_vent>, <metaitem:sensor.hv>],
   [<ore:circuitHv>, <ore:rotorStainlessSteel>, <ore:circuitHv>],
   [<metaitem:electric.pump.mv>, <galacticraftcore:oxygen_concentrator>, <metaitem:electric.pump.mv>]]);

// Oxygen Bubble Distributor
recipes.addShaped("tfg/gc/oxygen_buble_distributor", <galacticraftcore:distributor>, [
   [<metaitem:sensor.hv>, <galacticraftcore:air_vent>, <metaitem:sensor.hv>],
   [<ore:circuitHv>, <ore:rotorStainlessSteel>, <ore:circuitHv>],
   [<metaitem:field.generator.ev>, <galacticraftcore:oxygen_concentrator>, <metaitem:field.generator.ev>]]);

// Oxygen Collector
recipes.addShaped("tfg/gc/oxygen_collector", <galacticraftcore:collector>, [
   [<galacticraftcore:air_vent>, <ore:circuitEv>, <galacticraftcore:air_vent>],
   [<ore:rotorStainlessSteel>, <metaitem:hull.hv>, <ore:rotorStainlessSteel>],
   [<metaitem:drum.stainless_steel>, <galacticraftcore:oxygen_concentrator>, <metaitem:drum.stainless_steel>]]);

// Oxygen Compressor
recipes.addShaped("tfg/gc/oxygen_compressor", <galacticraftcore:oxygen_compressor>, [
   [<ore:circuitHv>, <galacticraftcore:oxygen_concentrator>, <metaitem:electric.pump.hv>],
   [<ore:pipeSmallFluidStainlessSteel>, <metaitem:hull.hv>, <ore:pipeSmallFluidStainlessSteel>],
   [<metaitem:drum.stainless_steel>, <ore:plateBlackSteel>, <metaitem:electric.pump.hv>]]);

// Oxygen Decompressor
recipes.addShaped("tfg/gc/oxygen_decompressor", <galacticraftcore:oxygen_compressor:4>, [
   [<metaitem:electric.pump.hv>, <galacticraftcore:oxygen_concentrator>, <metaitem:drum.stainless_steel>],
   [<ore:pipeSmallFluidStainlessSteel>, <metaitem:hull.hv>, <ore:pipeSmallFluidStainlessSteel>],
   [<metaitem:electric.pump.hv>, <ore:plateBlackSteel>, <metaitem:compressor.hv>]]);

// Загручкик топлива
recipes.addShaped("tfg/gc/fuel_loader", <galacticraftcore:fuel_loader>, [
   [<ore:plateAluminium>, <ore:circuitMv>, <ore:plateAluminium>],
   [<metaitem:drum.stainless_steel>, <metaitem:hull.hv>, <metaitem:electric.pump.mv>],
   [<ore:pipeSmallFluidStainlessSteel>, <ore:pipeSmallFluidStainlessSteel>, <ore:pipeSmallFluidStainlessSteel>]]);

// Воздушный шлюз каркас
recipes.addShaped("tfg/gc/airlock_frame", <galacticraftcore:air_lock_frame> * 2, [
   [<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>],
   [<ore:plateStainlessSteel>, <ore:blockLead>, <ore:plateStainlessSteel>],
   [<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>]]);

// Контроллер воздушного шлюза
recipes.addShaped("tfg/gc/airlock_frame_controller", <galacticraftcore:air_lock_frame:1>, [
   [<ore:plateStainlessSteel>, <ore:cableGtDoubleGold>, <ore:plateStainlessSteel>],
   [<ore:circuitHv>, <ore:blockLead>, <ore:circuitHv>],
   [<ore:plateStainlessSteel>, <ore:cableGtDoubleGold>, <ore:plateStainlessSteel>]]);

// Телеметрический блок
recipes.addShaped("tfg/gc/telemetry", <galacticraftcore:telemetry>, [
   [<metaitem:sensor.hv>, <ore:cableGtDoubleGold>, <ore:circuitHv>],
   [<appliedenergistics2:wireless_access_point>, <metaitem:hull.hv>, <appliedenergistics2:wireless_access_point>],
   [<ore:plateDenseStainlessSteel>, <appliedenergistics2:part:480>, <ore:plateDenseStainlessSteel>]]);

// Контроллер запуска
recipes.addShaped("tfg/gc/start_controller", <galacticraftplanets:mars_machine:8>, [
   [<ore:circuitHv>, <ore:circuitHv>, <ore:circuitHv>],
   [<metaitem:sensor.ev>, <metaitem:hull.hv>, <metaitem:sensor.ev>],
   [<ore:cableGtDoubleGold>, <ore:cableGtDoubleGold>, <ore:cableGtDoubleGold>]]);

// Креокамера
recipes.addShaped("tfg/gc/creogenic_chamber", <galacticraftplanets:mars_machine:4>, [
   [<metaitem:electric.pump.hv>, <ore:circuitHv>, <metaitem:emitter.hv>],
   [<ore:plateDenseLead>, <ore:bed>, <ore:plateDenseLead>],
   [<galacticraftcore:oxygen_concentrator>, <ore:circuitHv>, <galacticraftcore:oxygen_concentrator>]]);

// Терраформер
recipes.addShaped("tfg/gc/terraformer", <galacticraftplanets:mars_machine>, [
   [<metaitem:sensor.ev>, <metaitem:emitter.ev>, <metaitem:sensor.ev>],
   [<ore:plateLead>, <ore:circuitIv>, <ore:plateLead>],
   [<ore:cableGtDoubleGold>, <metaitem:field.generator.ev>, <ore:cableGtDoubleGold>]]);

// Контроллер щита
recipes.addShaped("tfg/gc/shield_controller", <galacticraftplanets:basic_item_venus>, [
   [<ore:paneGlassBlack>, <ore:stickNeodymiumMagnetic>, <ore:paneGlassBlack>],
   [<ore:wireGtSingleMercuryBariumCalciumCuprate>, <metaitem:field.generator.ev>, <ore:wireGtSingleMercuryBariumCalciumCuprate>],
   [<ore:paneGlassBlack>, <ore:stickNeodymiumMagnetic>, <ore:paneGlassBlack>]]);

// Базовая солнечная панель
recipes.addShaped("tfg/gc/solar_panel/base", <galacticraftcore:solar>, [
   [<metaitem:cover.solar.panel>, <metaitem:cover.solar.panel>, <metaitem:cover.solar.panel>],
   [<ore:gearStainlessSteel>, <ore:stickStainlessSteel>, <ore:gearStainlessSteel>],
   [<metaitem:electric.piston.hv>, <metaitem:hull.mv>, <ore:cableGtQuadrupleGold>]]);

// Улучшенная солнечная панель
recipes.addShaped("tfg/gc/solar_panel/advanced", <galacticraftcore:solar:4>, [
   [<metaitem:cover.solar.panel.ulv>, <metaitem:cover.solar.panel.ulv>, <metaitem:cover.solar.panel.ulv>],
   [<ore:gearStainlessSteel>, <ore:stickStainlessSteel>, <ore:gearStainlessSteel>],
   [<metaitem:electric.piston.ev>, <metaitem:hull.hv>, <ore:cableGtQuadrupleGold>]]);

// Клапан
recipes.addShaped("tfg/gc/air_vent", <galacticraftcore:air_vent>, [
   [<ore:stickSteel>, <ore:stickLongSteel>, <ore:stickSteel>],
   [<ore:stickLongSteel>, <galacticraftcore:grating>, <ore:stickLongSteel>],
   [<ore:stickSteel>, <ore:stickLongSteel>, <ore:stickLongSteel>]]);

// Частотный модуль
recipes.addShaped("tfg/gc/freq_module", <galacticraftcore:basic_item:19>, [
   [<ore:plateLead>, <metaitem:emitter.hv>, <ore:plateLead>],
   [<metaitem:sensor.hv>, <ore:cableGtSingleRedAlloy>, <ore:circuitLv>],
   [<ore:componentResistor>, <metaitem:wireless>, <ore:componentResistor>]]);

// Тепло-шлем
recipes.addShaped("tfg/gc/thermal_helmet", <galacticraftplanets:thermal_padding>, [
   [<galacticraftplanets:item_basic_asteroids:7>, <minecraft:leather_helmet>, <galacticraftplanets:item_basic_asteroids:7>],
   [<galacticraftplanets:item_basic_asteroids:7>, null, <galacticraftplanets:item_basic_asteroids:7>],
   [null, null, null]]);

// Тепло-нагрудник
recipes.addShaped("tfg/gc/thermal_chestplate", <galacticraftplanets:thermal_padding:1>, [
   [<galacticraftplanets:item_basic_asteroids:7>, null, <galacticraftplanets:item_basic_asteroids:7>],
   [<galacticraftplanets:item_basic_asteroids:7>, <minecraft:leather_chestplate>, <galacticraftplanets:item_basic_asteroids:7>],
   [<galacticraftplanets:item_basic_asteroids:7>, <galacticraftplanets:item_basic_asteroids:7>, <galacticraftplanets:item_basic_asteroids:7>]]);

// Тепло-поножи
recipes.addShaped("tfg/gc/thermal_leggings", <galacticraftplanets:thermal_padding:2>, [
   [<galacticraftplanets:item_basic_asteroids:7>, <minecraft:leather_leggings>, <galacticraftplanets:item_basic_asteroids:7>],
   [<galacticraftplanets:item_basic_asteroids:7>, null, <galacticraftplanets:item_basic_asteroids:7>],
   [<galacticraftplanets:item_basic_asteroids:7>, null, <galacticraftplanets:item_basic_asteroids:7>]]);

// Тепло-ботинки
recipes.addShaped("tfg/gc/thermal_boots", <galacticraftplanets:thermal_padding:3>, [
   [null, null, null],
   [<galacticraftplanets:item_basic_asteroids:7>, null, <galacticraftplanets:item_basic_asteroids:7>],
   [<galacticraftplanets:item_basic_asteroids:7>, <minecraft:leather_boots>, <galacticraftplanets:item_basic_asteroids:7>]]);

// Тепло-ткань 1
recipes.addShaped("tfg/gc/thermal_material_1", <galacticraftplanets:item_basic_asteroids:7> * 2, [
   [<ore:wool>, <ore:wool>, <ore:wool>],
   [<ore:clothHighQuality>, <ore:clothHighQuality>, <ore:clothHighQuality>],
   [<ore:wool>, <ore:wool>, <ore:wool>]]);

// Тепло-ткань 2
recipes.addShaped("tfg/gc/thermal_material_2", <galacticraftplanets:basic_item_venus:3> * 2, [
   [null, <galacticraftplanets:item_basic_asteroids:7>, null],
   [<galacticraftplanets:item_basic_asteroids:7>, <ore:plateLead>, <galacticraftplanets:item_basic_asteroids:7>],
   [null, <galacticraftplanets:item_basic_asteroids:7>, null]]);

// Пешеходная дорожка
recipes.addShaped("tfg/gc/walkway", <galacticraftplanets:walkway>, [
   [<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>],
   [<ore:plateCurvedTitanium>, <ore:plateTitanium>, <ore:plateCurvedTitanium>],
   [null, <ore:plateTitanium>, null]]);

// Пеш. дор с проводом
recipes.addShaped("tfg/gc/walkway/cable", <galacticraftplanets:walkway:1>, [
   [<galacticraftplanets:walkway>, <ore:cableGtDoubleAluminium>, null],
   [<ore:cableGtDoubleAluminium>, null, null],
   [null, null, null]]);

// Пеш. дор с жид. трубой
recipes.addShaped("tfg/gc/walkway/fluid_pipe", <galacticraftplanets:walkway:2>, [
   [<galacticraftplanets:walkway>, <ore:pipeTinyFluidStainlessSteel>, null],
   [<ore:pipeTinyFluidStainlessSteel>, null, null],
   [null, null, null]]);

// Маяк ресивер
recipes.addShaped("tfg/gc/beam_reciever", <galacticraftplanets:beam_receiver>, [
   [<ore:plateBeryllium>, <ore:plateSilver>, <ore:plateBeryllium>],
   [<ore:plateSilver>, <galacticraftplanets:item_basic_asteroids:8>, <ore:plateSilver>],
   [<ore:plateBeryllium>, <ore:circuitIv>, <ore:plateBeryllium>]]);

// Лучевое ядро
recipes.addShaped("tfg/gc/solar_core", <galacticraftplanets:item_basic_asteroids:8>, [
   [<ore:dustRedstone>, <ore:platePlatinum>, <ore:dustRedstone>],
   [<ore:platePlatinum>, <galacticraftplanets:basic_item_venus:2>, <ore:platePlatinum>],
   [<ore:dustRedstone>, <ore:platePlatinum>, <ore:dustRedstone>]]);

// Радио-изотопное ядро
recipes.addShaped("tfg/gc/radioisotopic_core", <galacticraftplanets:basic_item_venus:2>, [
   [<ore:dustGraphite>, <metaitem:neutron_reflector>, <ore:dustGraphite>],
   [<ore:stickUranium235>, <metaitem:neutron_reflector>, <ore:stickUranium235>],
   [<ore:dustGraphite>, <metaitem:neutron_reflector>, <ore:dustGraphite>]]);

// Атомная батарейка
recipes.addShaped("tfg/gc/atom_battery", <galacticraftplanets:atomic_battery>, [
   [null, <ore:plateInvar>, null],
   [null, <galacticraftplanets:basic_item_venus:2>, null],
   [null, <metaitem:large_fluid_cell.tungstensteel>, null]]);

// Площадка телепортации
recipes.addShaped("tfg/gc/telepad_short", <galacticraftplanets:telepad_short>, [
   [<ore:plateDoubleTrinaquadalloy>, <ore:circuitIv>, <ore:plateDoubleTrinaquadalloy>],
   [<metaitem:magic_energy_absorber>, <galacticraftplanets:item_basic_asteroids:8>, <metaitem:magic_energy_absorber>],
   [<ore:plateDoubleTrinaquadalloy>, <ore:plateDoubleTrinaquadalloy>, <ore:plateDoubleTrinaquadalloy>]]);


// Спасательная коробка
recipes.addShaped("tfg/gc/emergency_box", <galacticraftcore:emergency_box>, [
   [<ore:glowstone>, <ore:plateDenseTin>, <ore:glowstone>],
   [<ore:plateDenseTin>, <ore:chestWood>, <ore:plateDenseTin>],
   [<ore:glowstone>, <ore:plateDenseTin>, <ore:glowstone>]]);

// Площадка для багги
recipes.addShaped("tfg/gc/landing_pad/buggy", <galacticraftcore:landing_pad:1> * 9, [
   [null, null, null],
   [<ore:plateDenseBlackSteel>, <ore:plateDenseBlackSteel>, <ore:plateDenseBlackSteel>],
   [<ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>]]);

// Взлетная площадка 
recipes.addShaped("tfg/gc/landing_pad/rocket", <galacticraftcore:landing_pad> * 9, [
   [null, null, null],
   [<ore:plateDenseIron>, <ore:plateDenseIron>, <ore:plateDenseIron>],
   [<ore:blockIron>, <ore:blockIron>, <ore:blockIron>]]);

// Основания астрономического шахтера
recipes.addShaped("tfg/gc/miner_base", <galacticraftplanets:miner_base>, [
   [<ore:plateDenseBlackSteel>, <ore:chestWood>, <ore:plateDenseBlackSteel>],
   [<galacticraftplanets:item_basic_asteroids:8>, <ore:circuitHv>, <galacticraftplanets:item_basic_asteroids:8>],
   [<ore:plateDenseBlackSteel>, <metaitem:battery_buffer.luv.16>, <ore:plateDenseBlackSteel>]]);

// Вращательный движок
recipes.addShaped("tfg/gc/spin_thruster", <galacticraftcore:spin_thruster>, [
   [<galacticraftcore:oil_canister_partial:1>, <ore:circuitIv>, <galacticraftplanets:item_basic_asteroids:1>],
   [<ore:plateDenseStainlessSteel>, <gregtech:metal_casing:7>, <ore:plateDenseStainlessSteel>],
   [<ore:wireGtDoubleElectrum>, <ore:wireGtDoubleElectrum>, <ore:wireGtDoubleElectrum>]]);

// Капсула из галактики под жидкости
recipes.addShaped("tfg/gc/oil_canister", <galacticraftcore:oil_canister_partial:1001>, [
   [<ore:plateDenseAluminium>, <ore:plateDenseBlackSteel>, <ore:plateDenseAluminium>],
   [<ore:plateDenseAluminium>, <ore:blockGlass>, <ore:plateDenseAluminium>],
   [<ore:plateDenseAluminium>, <galacticraftcore:canister>, <ore:plateDenseAluminium>]]);

// Канистра из олова
recipes.addShaped("tfg/gc/canister", <galacticraftcore:canister>, [
   [<ore:plateDenseTin>, null, <ore:plateDenseTin>],
   [<ore:plateDenseTin>, <ore:gtce.tool.hard.hammers>, <ore:plateDenseTin>],
   [<ore:plateDenseTin>, <ore:plateDenseTin>, <ore:plateDenseTin>]]);

// Дуговая лампа
recipes.addShaped("tfg/gc/arclamp", <galacticraftcore:arclamp>, [
   [<ore:plateBlackSteel>, <ore:dustGlowstone>, <ore:plateBlackSteel>],
   [<ore:dustGlowstone>, <galacticraftplanets:atomic_battery>, <ore:dustGlowstone>],
   [<ore:plateBlackSteel>, <ore:dustGlowstone>, <ore:plateBlackSteel>]]);

// Багги сиденье
recipes.addShaped("tfg/gc/buggy_seat", <galacticraftcore:buggymat:1>, [
   [<ore:plateBlackSteel>, null, null],
   [<ore:plateBlackSteel>, <ore:leather>, null],
   [<ore:plateBlackSteel>, <ore:plateBlackSteel>, <ore:plateBlackSteel>]]);

// Контейнер багги
recipes.addShaped("tfg/gc/buggy_container", <galacticraftcore:buggymat:2>, [
   [<ore:plateAluminium>, <ore:plateStainlessSteel>, <ore:plateAluminium>],
   [<ore:plateAluminium>, <ore:chestWood>, <ore:plateAluminium>],
   [<ore:plateAluminium>, <ore:plateStainlessSteel>, <ore:plateAluminium>]]);

// Маяк дефлектор
recipes.addShaped("tfg/gc/beam_reflector", <galacticraftplanets:beam_reflector>, [
   [null, <galacticraftplanets:item_basic_asteroids:8>, null],
   [<ore:circuitMv>, <ore:plateTitanium>, <minecraft:lever>],
   [<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>]]);

// Крюк
recipes.addShaped("tfg/gc/grapple", <galacticraftplanets:grapple>, [
   [null, null, <ore:string>],
   [<ore:stickIronAny>, <ore:string>, null],
   [<ore:gearIronAny>, <ore:stickIronAny>, null]]);

// Антена связи
recipes.addShaped("tfg/gc/dishbase", <galacticraftcore:dishbase>, [
   [<ore:plateDenseStainlessSteel>, <galacticraftcore:basic_item:19>, <ore:plateDenseStainlessSteel>],
   [null, <ore:plateDenseStainlessSteel>, null],
   [<ore:circuitIv>, <ore:blockSteel>, <ore:circuitIv>]]);

// Тепловой контроллер
recipes.addShaped("tfg/gc/thermal_controller", <galacticraftcore:basic_item:20>, [
   [<ore:cableGtDoubleElectrum>, <ore:circuitIv>, <ore:cableGtDoubleElectrum>],
   [<ore:plateBronze>, <ore:circuitIv>, <ore:plateBronze>],
   [<ore:plateDenseTungstenSteel>, <ore:plateBlackSteel>, <ore:plateDenseTungstenSteel>]]);

// Концентратор
recipes.addShaped("tfg/gc/oxygen_concentrator", <galacticraftcore:oxygen_concentrator>, [
   [<ore:plateDenseBlackSteel>, <ore:circuitMv>, <ore:plateDenseBlackSteel>],
   [<ore:plateDenseTin>, <galacticraftcore:canister>, <ore:plateDenseTin>],
   [<ore:plateDenseBlackSteel>, <galacticraftcore:air_vent>, <ore:plateDenseBlackSteel>]]);

// Привод ориона
recipes.addShaped("tfg/gc/orion_drive", <galacticraftplanets:orion_drive>, [
   [<ore:platePalladium>, <ore:circuitEv>, <ore:platePalladium>],
   [<metaitem:robot.arm.iv>, <galacticraftplanets:miner_base>, <metaitem:robot.arm.iv>],
   [<ore:platePalladium>, <ore:circuitIv>, <ore:platePalladium>]]);

// Колесо багги
recipes.addShaped("tfg/gc/buggy_wheal", <galacticraftcore:buggymat>, [
   [null, <ore:plateStyreneButadieneRubber>, null],
   [<ore:plateStyreneButadieneRubber>, <ore:plateVanadiumSteel>, <ore:plateStyreneButadieneRubber>],
   [null, <ore:plateStyreneButadieneRubber>, null]]);

// Экран просмотра
recipes.addShaped("tfg/gc/view_screen", <galacticraftcore:view_screen>, [
   [<ore:plateDenseBlackSteel>, <ore:circuitLv>, <ore:plateDenseBlackSteel>],
   [<ore:circuitLv>, <ore:paneGlass>, <ore:circuitLv>],
   [<ore:plateDenseBlackSteel>, <ore:circuitLv>, <ore:plateDenseBlackSteel>]]);

// ДО 1
recipes.addShaped("tfg/gc/decor_block_tin_1", <galacticraftcore:basic_block_core:4>, [
   [<ore:stone>, <ore:stone>, null],
   [<ore:stone>, <ore:stone>, <ore:plateDenseTin>],
   [null, null, null]]);

// ДО 2
recipes.addShaped("tfg/gc/decor_block_tin_2", <galacticraftcore:basic_block_core:3>, [
   [<ore:stone>, <ore:stone>, null],
   [<ore:stone>, <ore:stone>, null],
   [null, <ore:plateDenseTin>, null]]);

// Свет панель 1
recipes.addShaped("tfg/gc/lighting_panel_1", <galacticraftcore:panel_lighting>, [
   [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
   [<ore:paneGlass>, <galacticraftcore:glowstone_torch>, <ore:paneGlass>],
   [<ore:paneGlass>, <ore:plateBlackSteel>, <ore:paneGlass>]]);

// Свет панель 2
recipes.addShaped("tfg/gc/lighting_panel_2", <galacticraftcore:panel_lighting:1>, [
   [<ore:paneGlass>, null, <ore:paneGlass>],
   [null, <galacticraftcore:glowstone_torch>, null],
   [<ore:paneGlass>, <ore:plateBlackSteel>, <ore:paneGlass>]]);

// Свет панель 3
recipes.addShaped("tfg/gc/lighting_panel_3", <galacticraftcore:panel_lighting:2>, [
   [<ore:paneGlass>, null, <ore:paneGlass>],
   [<ore:paneGlass>, <galacticraftcore:glowstone_torch>, <ore:paneGlass>],
   [<ore:paneGlass>, <ore:plateBlackSteel>, <ore:paneGlass>]]);

// Свет панель 4
recipes.addShaped("tfg/gc/lighting_panel_4", <galacticraftcore:panel_lighting:3>, [
   [null, null, null],
   [<ore:paneGlass>, <galacticraftcore:glowstone_torch>, <ore:paneGlass>],
   [null, <ore:plateBlackSteel>, null]]);

// Свет панель 5
recipes.addShaped("tfg/gc/lighting_panel_5", <galacticraftcore:panel_lighting:4>, [
   [null, <ore:paneGlass>, null],
   [<ore:paneGlass>, <galacticraftcore:glowstone_torch>, null],
   [null, <ore:plateBlackSteel>, null]]);

// Sealable Alum. Wire
recipes.addShaped("tfg/gc/sealable_something_1", <galacticraftcore:enclosed:14>, [
   [null, null, null],
   [<galacticraftcore:basic_block_core:4>, <ore:cableGtDoubleAluminium>, <galacticraftcore:basic_block_core:4>],
   [null, null, null]]);

// Sealable Alum. Wire
recipes.addShaped("tfg/gc/sealable_something_2", <galacticraftcore:enclosed:15>, [
   [null, null, null],
   [<galacticraftcore:basic_block_core:4>, <ore:cableGtOctalAluminium>, <galacticraftcore:basic_block_core:4>],
   [null, null, null]]);

// Sealable Alum. Wire
recipes.addShaped("tfg/gc/sealable_something_3", <galacticraftcore:enclosed:13>, [
   [null, null, null],
   [<galacticraftcore:basic_block_core:4>, <ore:ae2.cable.glass>, <galacticraftcore:basic_block_core:4>],
   [null, null, null]]);

// Sealable Alum. Wire
recipes.addShaped("tfg/gc/sealable_something_4", <galacticraftcore:enclosed:1>, [
   [null, null, null],
   [<galacticraftcore:basic_block_core:4>, <ore:pipeSmallFluidStainlessSteel>, <galacticraftcore:basic_block_core:4>],
   [null, null, null]]);

// Еда
// Фруктовая канистра
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <ore:categoryFruit> * 2)
   .outputs(<galacticraftcore:food>)
   .duration(460).EUt(2).buildAndRegister();

// Морковная канистра
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <tfc:food/carrot> * 2)
   .outputs(<galacticraftcore:food:1>)
   .duration(460).EUt(2).buildAndRegister();

// Арбузная канистра
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <firmalife:melon> * 2)
   .outputs(<galacticraftcore:food:2>)
   .duration(460).EUt(2).buildAndRegister();

// Картофельная канистра
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <tfc:food/potato> * 2)
   .outputs(<galacticraftcore:food:3>)
   .duration(460).EUt(2).buildAndRegister();

// Мясная канистра
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <ore:categoryMeat> * 2)
   .outputs(<galacticraftcore:food:9>)
   .duration(460).EUt(2).buildAndRegister();

// Баллоны
// Легкий
assembler.recipeBuilder()
   .inputs(<metaitem:super_tank.lv>, <ore:pipeTinyFluidAluminium> * 4 , <ore:plateDenseTin> * 2, <metaitem:electric.pump.lv> * 2)
   .circuit(6)
   .outputs(<galacticraftcore:oxygen_tank_light_full:900>)
   .property("cleanroom", "cleanroom")
   .duration(1000).EUt(128).buildAndRegister();
// Средний
assembler.recipeBuilder()
   .inputs(<metaitem:super_tank.mv>, <ore:pipeTinyFluidAluminium> * 4, <ore:plateDenseTin> * 4, <metaitem:electric.pump.mv> * 2)
   .circuit(6)
   .outputs(<galacticraftcore:oxygen_tank_med_full:1800>)
   .property("cleanroom", "cleanroom")
   .duration(1000).EUt(256).buildAndRegister();
// Тяжелый
assembler.recipeBuilder()
   .inputs(<metaitem:super_tank.hv>, <ore:pipeTinyFluidAluminium> * 4, <ore:plateDenseTin> * 6, <metaitem:electric.pump.hv> * 2)
   .circuit(6)
   .outputs(<galacticraftcore:oxygen_tank_heavy_full:2700>)
   .property("cleanroom", "cleanroom")
   .duration(1000).EUt(512).buildAndRegister();

// Гидравлический подьемник
assembler.recipeBuilder()
   .inputs(<ore:plateDenseTungstenSteel> * 16, <metaitem:electric.piston.iv> * 4, <ore:plateLead> * 6)
   .circuit(7)
   .outputs(<galacticraftcore:platform>)
   .duration(1000).EUt(1012).buildAndRegister();

// Вакумное стекло
forming_press.recipeBuilder()
   .inputs(<ore:plateDenseAluminium> * 4, <ore:blockGlass> * 5)
   .outputs(<galacticraftcore:space_glass_strong> * 5)
   .property("cleanroom", "cleanroom")
   .duration(300).EUt(480).buildAndRegister();
forming_press.recipeBuilder()
   .inputs(<galacticraftcore:basic_block_core:4> * 4, <galacticraftcore:space_glass_strong> * 5)
   .outputs(<galacticraftcore:space_glass_strong:1> * 5)
   .property("cleanroom", "cleanroom")
   .duration(300).EUt(480).buildAndRegister();

forming_press.recipeBuilder()
   .inputs(<ore:ingotTin> * 4, <ore:blockGlass> * 5)
   .outputs(<galacticraftcore:space_glass_vanilla> * 5)
   .property("cleanroom", "cleanroom")
   .duration(300).EUt(480).buildAndRegister();
forming_press.recipeBuilder()
   .inputs(<galacticraftcore:basic_block_core:4> * 4, <galacticraftcore:space_glass_vanilla> * 5)
   .outputs(<galacticraftcore:space_glass_vanilla:1> * 5)
   .property("cleanroom", "cleanroom")
   .duration(300).EUt(480).buildAndRegister();

forming_press.recipeBuilder()
   .inputs(<ore:ingotAluminum> * 4, <ore:blockGlass> * 5)
   .outputs(<galacticraftcore:space_glass_clear> * 5)
   .property("cleanroom", "cleanroom")
   .duration(300).EUt(480).buildAndRegister();
forming_press.recipeBuilder()
   .inputs(<galacticraftcore:basic_block_core:4> * 4, <galacticraftcore:space_glass_clear> * 5)
   .outputs(<galacticraftcore:space_glass_clear:1> * 5)
   .property("cleanroom", "cleanroom")
   .duration(300).EUt(480).buildAndRegister();

// Грузовой загрузчик
assembler.recipeBuilder()
   .inputs(<ore:plateDenseAluminium> * 2, <ore:plateDenseSteel> * 5, <ore:gtce.block.crate> * 6, <metaitem:robot.arm.hv> * 2)
   .circuit(7)
   .outputs(<galacticraftcore:cargo>)
   .duration(1000).EUt(512).buildAndRegister();
// Грузовой разгрузчик
assembler.recipeBuilder()
   .inputs(<ore:plateDenseAluminium> * 2, <ore:plateDenseSteel> * 5, <ore:gtce.block.crate> * 6, <metaitem:robot.arm.hv> * 2)
   .circuit(8)
   .outputs(<galacticraftcore:cargo:4>)
   .duration(1000).EUt(512).buildAndRegister();

// Парашуты
assembler.recipeBuilder()
   .circuit(1)
   .inputs([
      <galacticraftcore:canvas> * 6,
      <ore:string> * 4
   ])
   .outputs([<galacticraftcore:parachute>])
   .duration(20).EUt(480).buildAndRegister();
chemical_bath.recipeBuilder()
   .inputs([<ore:gc.parachute.colors>])
   .fluidInputs([<liquid:chlorine> * 144])
   .outputs([<galacticraftcore:parachute>])
   .duration(8).EUt(480).buildAndRegister();
for i in 0 .. 16 {
   chemical_bath.recipeBuilder()
      .inputs([<ore:gc.parachute>])
      .fluidInputs([colorLiquid[i] * 18])
      .outputs([gcParachute[i]])
      .duration(20).EUt(7).buildAndRegister();
}

// Тир 1 лэндер
recipes.addShaped("tfg/galacticraft/rocket_modules", <contenttweaker:lander_tier1>,
   [[<galacticraftcore:basic_item:19>, <ore:plateBlackSteel>, <ore:plateBlackSteel>],
   [<ore:plateBlackSteel>, <galacticraftcore:buggymat:1>, <galacticraftcore:heavy_plating>],
   [<galacticraftcore:steel_pole>, <galacticraftcore:engine>, <galacticraftcore:steel_pole>]]);

// Тир 3 лэндер
recipes.addShaped("tfg/galacticraft/lander_tier_2", <contenttweaker:lander_tier2>,
   [[<galacticraftcore:canvas>, <ore:gc.parachute>, <galacticraftcore:canvas>],
   [<ore:string>, <contenttweaker:lander_tier1>, <ore:string>],
   [<galacticraftcore:canvas>, <ore:string>, <galacticraftcore:canvas>]]);

// Тир 3 лэндер
recipes.addShaped("tfg/galacticraft/lander_tier_3", <contenttweaker:lander_tier3>,
   [[<ore:plateBlackSteel>, <ore:chestWood>, <ore:plateBlackSteel>],
   [<galacticraftcore:steel_pole>, <contenttweaker:lander_tier2>, <galacticraftcore:steel_pole>],
   [<ore:plateBlackSteel>, <ore:plateBlackSteel>, <ore:plateBlackSteel>]]);