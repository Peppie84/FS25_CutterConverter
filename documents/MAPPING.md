# Modding for Mapper

## What do I need?




## 1. Adding the fruits to convert from, to your map

**Step1**:
We want to add the `WINTER_WHEAT` and `WINTER_BARLEY` to our fruittypes. Open your `map_fruittypes.xml` and add the winterwheat entry. It's up to you to adjust the values.

> ⚠️INFO: If not present, than add it to your map. Copy the default from the `game-folder/data/maps` and add the file into your `map.xml`

```xml
<fruitType name="winter_wheat" shownOnMap="true" useForFieldJob="true">
    <general startStateChannel="0" numStateChannels="4" />
    <cultivation needsSeeding="true" needsRolling="true" allowsSeeding="true" directionSnapAngle="0" alignsToSun="false" seedUsagePerSqm="0.05" />
    <harvest minHarvestingGrowthState="8" maxHarvestingGrowthState="8" cutState="10" minForageGrowthState="7" allowsPartialGrowthState="false" literPerSqm="0.80" cutHeight="0.15" chopperTypeName="CHOPPER_STRAW"/>
    <growth witheredState="9" numGrowthStates="8" growthStateTime="24000000" resetsSpray="true" growthRequiresLime="true" />
    <growthGroundTypeChange state="8" groundType="HARVEST_READY" />
    <windrow name="straw" litersPerSqm="3.08" />
    <cropCare maxWeederState="5" maxWeederHoeState="3" />
    <options lowSoilDensityRequired="true" increasesSoilDensity="false" consumesLime="true" startSprayState="0" />
    <destruction canBeDestroyed="true" filterStart="4" filterEnd="9" />
    <mapColors default="0.6172 0.4072 0.0782 1" colorBlind="0.2918 0.3564 0.7011 1"/>
</fruitType>
```

Add the winterbarley entry:
```xml
<fruitType name="winter_barley" shownOnMap="true" useForFieldJob="true">
    <general startStateChannel="0" numStateChannels="4" />
    <cultivation needsSeeding="true" needsRolling="true" allowsSeeding="true" directionSnapAngle="0" alignsToSun="false" seedUsagePerSqm="0.05" />
    <harvest minHarvestingGrowthState="7" maxHarvestingGrowthState="7" cutState="9" minForageGrowthState="6" allowsPartialGrowthState="false" literPerSqm="0.87" cutHeight="0.15" chopperTypeName="CHOPPER_STRAW"/>
    <growth witheredState="8" numGrowthStates="7" growthStateTime="24000000" resetsSpray="true" growthRequiresLime="true" />
    <growthGroundTypeChange state="7" groundType="HARVEST_READY" />
    <windrow name="straw" litersPerSqm="3.08" />
    <cropCare maxWeederState="4" maxWeederHoeState="3" />
    <options lowSoilDensityRequired="true" increasesSoilDensity="false" consumesLime="true" startSprayState="0" />
    <destruction canBeDestroyed="true" filterStart="4" filterEnd="8" />
    <mapColors default="0.2502 0.1683 0.0612 1" colorBlind="0.6795 0.6867 0.7231 1"/>
</fruitType>
```

**Step2**:
Scroll down to the `fruitTypeCategories` section and add `WINTER_WHEAT` and `WINTER_BARLEY` to every category where wheat or barley is set. For example:
```xml
<fruitTypeCategories>
    <fruitTypeCategory name="GRAINHEADER">WHEAT WINTER_WHEAT BARLEY WINTER_BARLEY OAT CANOLA SOYBEAN SORGHUM</fruitTypeCategory>
    ...
</fruitTypeCategories>
```

Than you can close the `map_fruittypes.xml`.

**Step3**:
We also have to add the `WINTER_WHEAT` and `WINTER_BARLEY` to your filltypes. Open your `map_filltypes.xml` and add the following lines:

> ⚠️INFO: If not present, than add it to your map. Copy the default from the `game-folder/data/maps` and add the file into your `map.xml`
> ⚠️INFO 2: Rename Wheat and Barley on this file to something like: Summer wheat & Summer barley

```xml
<fillType name="WINTER_WHEAT" title="Winter wheat" showOnPriceTable="true" unitShort="$l10n_unit_literShort">
    <physics massPerLiter="0.78" maxPhysicalSurfaceAngle="15" />
    <economy pricePerLiter="0.337">
        <factors>
            <factor period="1" value="1.00" />
            <factor period="2" value="1.07" />
            <factor period="3" value="0.99" />
            <factor period="4" value="0.94" />
            <factor period="5" value="0.85" />
            <factor period="6" value="0.81" />
            <factor period="7" value="0.86" />
            <factor period="8" value="0.99" />
            <factor period="9" value="1.08" />
            <factor period="10" value="1.13" />
            <factor period="11" value="1.21" />
            <factor period="12" value="1.08" />
        </factors>
    </economy>
    <image hud="$dataS/menu/hud/fillTypes/hud_fill_wheat.png" />
    <pallet filename="$data/objects/pallets/fillablePallet/fillablePallet.xml" />
    <textures diffuse="$data/fillPlanes/wheat_diffuse.png" normal="$data/fillPlanes/wheat_normal.png" specular="$data/fillPlanes/wheat_specular.png" distance="$data/fillPlanes/distance/wheatDistance_diffuse.png" />
</fillType>
<fillType name="WINTER_BARLEY" title="Winter barley" showOnPriceTable="true" unitShort="$l10n_unit_literShort">
    <physics massPerLiter="0.68" maxPhysicalSurfaceAngle="15" />
    <economy pricePerLiter="0.313">
        <factors>
            <factor period="1" value="1.00" />
            <factor period="2" value="1.07" />
            <factor period="3" value="0.99" />
            <factor period="4" value="0.94" />
            <factor period="5" value="0.85" />
            <factor period="6" value="0.81" />
            <factor period="7" value="0.86" />
            <factor period="8" value="0.99" />
            <factor period="9" value="1.08" />
            <factor period="10" value="1.13" />
            <factor period="11" value="1.21" />
            <factor period="12" value="1.08" />
        </factors>
    </economy>
    <image hud="$dataS/menu/hud/fillTypes/hud_fill_barley.png" />
    <pallet filename="$data/objects/pallets/fillablePallet/fillablePallet.xml" />
    <textures diffuse ="$data/fillPlanes/barley_diffuse.png" normal="$data/fillPlanes/barley_normal.png" specular="$data/fillPlanes/barley_specular.png" distance="$data/fillPlanes/distance/barleyDistance_diffuse.png" />
</fillType>
```
> ℹ️ INFO: With `<image hud="...." />` you can change the normal fill icon with a fillicon + a small snow flake ;-)


**Step4**:
Scroll down to the `fillTypeCategories` section and add `WINTER_WHEAT` and `WINTER_BARLEY` to every category where wheat or barley is set.

If you have some fillTypeSounds also defined, add `WINTER_WHEAT` and `WINTER_BARLEY` as well to every wheat and barley entry. For example:
```xml
<fillTypeSound fillTypes="WHEAT BARLEY WINTER_BARLEY WINTER_WHEAT CANOLA SOYBEAN SEEDS FERTILIZER">
    <sound template="grainMediumFill"/>
</fillTypeSound>
```

Than you can close the `map_filltypes.xml`.

**Step5**:
You have to change the growth for wheat and barley and add the growth for the new fruits. Open your `map_growth.xml`. Just remove the full entry for wheat and barley and copy the following lines completely into your `map_growth.xml`.

> ⚠️INFO: If not present, than add it to your map. Copy the default from the `game-folder/data/maps` and add the file into your `map.xml`

```xml
<fruit name="wheat" initialState="8">
    <period index="1" plantingAllowed="true">
        <update range="2-4" add="1" />
        <update range="1" add="1" />
        <update range="10" set="10" />
    </period>
    <period index="2" plantingAllowed="true">
        <update range="3-5" add="1" />
        <update range="2" add="1" />
        <update range="10" set="10" />
    </period>
    <period index="3">
        <update range="3" add="2" />
        <update range="4" add="2" />
        <update range="5-6" add="1" />
        <update range="10" set="10" />
    </period>
    <period index="4">
        <update range="6-7" add="1" />
        <update range="5" add="2" />
        <update range="10" set="10" />
    </period>
    <period index="5">
        <update range="7" add="1" />
        <update range="10" set="10" />
    </period>
    <period index="6">
        <update range="8" add="1" />
        <update range="10" set="10" />
    </period>
    <period index="7">
        <update range="1" add="1" />
        <update range="10" set="10" />
    </period>
    <period index="8">
        <update range="1-2" add="1" />
        <update range="10" set="10" />
    </period>
    <period index="9">
        <update range="1-3" add="1" />
        <update range="10" set="10" />
    </period>
    <period index="10">
        <update range="10" set="10" />
    </period>
    <period index="11">
        <update range="10" set="10" />
    </period>
    <period index="12">
        <update range="10" set="10" />
    </period>
</fruit>
<fruit name="barley">
    <period index="1" plantingAllowed="true">
        <update range="4" add="1" />
        <update range="1" add="1" />
        <update range="9" set="9" />
    </period>
    <period index="2" plantingAllowed="true">
        <update range="5" add="1" />
        <update range="2" add="1" />
        <update range="9" set="9" />
    </period>
    <period index="3">
        <update range="6" add="1" />
        <update range="3" add="2" />
        <update range="9" set="9" />
    </period>
    <period index="4">
        <update range="5" add="1" />
        <update range="9" set="9" />
    </period>
    <period index="5">
        <update range="6" add="1" />
        <update range="9" set="9" />
    </period>
    <period index="6">
        <update range="7" add="1" />
        <update range="9" set="9" />
    </period>
    <period index="7">
        <update range="1" add="1" />
        <update range="9" set="9" />
    </period>
    <period index="8">
        <update range="2" add="1" />
        <update range="9" set="9" />
    </period>
    <period index="9">
        <update range="9" set="9" />
    </period>
    <period index="10">
        <update range="9" set="9" />
    </period>
    <period index="11">
        <update range="9" set="9" />
    </period>
    <period index="12">
        <update range="3" add="1" />
        <update range="9" set="9" />
    </period>
</fruit>
<!-- add growth for the winter_wheat and winter_barley -->
<fruit name="winter_wheat" initialState="8">
    <period index="1">
        <update range="3-4" add="1" />
    </period>
    <period index="2">
        <update range="4-5" add="1" />
    </period>
    <period index="3">
        <update range="5-6" add="1" />
    </period>
    <period index="4">
        <update range="6-7" add="1" />
    </period>
    <period index="5">
        <update range="7" add="1" />
    </period>
    <period index="6">
        <update range="8" add="1" />
    </period>
    <period index="7" plantingAllowed="true">
        <update range="1" add="1" />
    </period>
    <period index="8" plantingAllowed="true">
        <update range="1-2" add="1" />
    </period>
    <period index="9">
    </period>
    <period index="10">
    </period>
    <period index="11">
    </period>
    <period index="12">
        <update range="2-3" add="1" />
    </period>
</fruit>
<fruit name="winter_barley">
    <period index="1">
        <update range="3-4" add="1" />
    </period>
    <period index="2">
        <update range="4-5" add="1" />
    </period>
    <period index="3">
        <update range="5-6" add="1" />
    </period>
    <period index="4">
        <update range="6" add="1" />
    </period>
    <period index="5">
        <update range="7" add="1" />
    </period>
    <period index="6">
    </period>
    <period index="7" plantingAllowed="true">
        <update range="1" add="1" />
    </period>
    <period index="8" plantingAllowed="true">
        <update range="1-2" add="1" />
    </period>
    <period index="9">
    </period>
    <period index="10">
    </period>
    <period index="11">
    </period>
    <period index="12">
        <update range="2-3" add="1" />
    </period>
</fruit>
```

**Step6**:
Now we also need to set a cutter effect for the new fruits. Open your `cutterEffects.xml` file. We only duplicate the wheat and barley harvestReady state. Add the following lines to your effects file:
```xml
<!-- WINTER_WHEAT - harvestReady -->
<motionPathEffect effectClass="CutterMotionPathEffect" effectType="CUTTER CUTTER_FORAGE" filename="$data/effects/cutter/wheat/wheat_harvestReady.i3d">
    <effectGeneration rootNode="0|1|1" minRot="0 0 0" maxRot="0 360 0" minScale="1 0.9 1" maxScale="1 1.1 1" useFoliage="wheat" useFoliageStage="8" useFoliageLOD="0"/>
    <typeDefinition fruitTypes="WINTER_WHEAT" growthStates="8" speedScale="0.25"/>

    <effectMeshes>
        <!-- grain cutters -->
        <effectMesh node="0|0|0" numRows="32" rowLength="42" skipPositions="1" boundingBox="18 3 5"/>

        <!-- forage harvesters -->
        <effectMesh node="0|0|1" numRows="6" rowLength="5" skipPositions="0" boundingBox="6 4 4"/>
        <effectMesh node="0|0|2" numRows="6" rowLength="20" skipPositions="0" boundingBox="10 7.5 7.5"/>
        <effectMesh node="0|0|3" numRows="12" rowLength="26" skipPositions="0" boundingBox="16 7.5 7.5"/>
        <effectMesh node="0|0|4" numRows="20" rowLength="36" skipPositions="0" boundingBox="24 7.5 7.5"/>
    </effectMeshes>

    <customShaderDefaults>
        <customShaderMap name="shapeArray" filename="$data/effects/cutter/arrays/grainheader/beltXArray.dds"/>
        <customShaderVariation name="scaleByTexture_verticalOffsetCut_alphaMap_keepNormals"/>
        <customShaderParameter name="verticalOffset" value="-0.15 0 0 0"/>
    </customShaderDefaults>
</motionPathEffect>

<!-- WINTER_BARLEY - harvestReady -->
<motionPathEffect effectClass="CutterMotionPathEffect" effectType="CUTTER CUTTER_FORAGE" filename="$data/effects/cutter/barley/barley_harvestReady.i3d">
    <effectGeneration rootNode="0|2|1" minRot="0 0 0" maxRot="0 360 0" minScale="1 0.9 1" maxScale="1 1.1 1" useFoliage="barley" useFoliageStage="7" useFoliageLOD="0"/>
    <typeDefinition fruitTypes="WINTER_BARLEY" growthStates="7" speedScale="0.25"/>

    <effectMeshes>
        <!-- grain cutters -->
        <effectMesh node="0|0|0" numRows="32" rowLength="42" skipPositions="1" boundingBox="18 3 5"/>

        <!-- forage harvesters -->
        <effectMesh node="0|0|1" numRows="6" rowLength="5" skipPositions="0" boundingBox="6 4 4"/>
        <effectMesh node="0|0|2" numRows="6" rowLength="20" skipPositions="0" boundingBox="10 7.5 7.5"/>
        <effectMesh node="0|0|3" numRows="12" rowLength="26" skipPositions="0" boundingBox="16 7.5 7.5"/>
        <effectMesh node="0|0|4" numRows="20" rowLength="36" skipPositions="0" boundingBox="24 7.5 7.5"/>
    </effectMeshes>

    <customShaderDefaults>
        <customShaderMap name="shapeArray" filename="$data/effects/cutter/arrays/grainheader/beltXArray.dds"/>
        <customShaderVariation name="scaleByTexture_verticalOffsetCut_alphaMap_keepNormals"/>
        <customShaderParameter name="verticalOffset" value="-0.15 0 0 0"/>
    </customShaderDefaults>
</motionPathEffect>
```

**Step7**:
Now we have also to add the new filltypes to the `chopperEffects.xml`. Open your `chopperEffects.xml` and add to every filltype where wheat or barley is set also `WINTER_WHEAT` and `WINTER_BARLEY`.
```xml
...
<typeDefinition fillTypes="WHEAT BARLEY OAT MAIZE CANOLA SOYBEAN FIELDBEAN SUNFLOWER SORGHUM STRAW WINTER_WHEAT WINTER_BARLEY"/>
...
<effectMaterial materialType="CHOPPER" node="0|1|0|0" fillTypes="WHEAT BARLEY OAT STRAW WINTER_WHEAT WINTER_BARLEY LINSEED" speedScale="1.0">
    <customShaderParameter name="sizeScale" value="0.75 3.75 0.0 0.0"/>
</effectMaterial>
...
```
and so on.

**Step8**:
Now the last step. Add the foliage types for the new fruits into your `map.i3d`. Open the `map.i3d` with your Notepad. Find the `FoliageSystem` section. Add within the `FoliageMultiLayer` section a new entry for `WINTER_WHEAT` and `WINTER_BARLEY` with the same file reference as the original fruit.

For Example:
On my map, the wheat has the file reference `301` and barley `303`.
```xml
<FoliageMultiLayer ...>
    ...
    <FoliageType name="wheat" foliageXmlId="301"/>
    <FoliageType name="winter_wheat" foliageXmlId="301"/>
    <FoliageType name="barley" foliageXmlId="303"/>
    <FoliageType name="winter_barley" foliageXmlId="303"/>
    ...
</FoliageMultiLayer>
```
Now open the `map.i3d` with Giants Editor and click save and than you can close the editor.


## 2. Adding the converter to your map
Open your `map_fruitTypes.xml` again. Scroll down to the `fruitTypeConverters` section and add a new `fruitTypeConverter` for cutters:

```xml
<fruitTypeConverters>
    ...
    <fruitTypeConverter name="CUTTER">
        <converter from="WINTER_WHEAT" to="WHEAT" factor="1.2" />
        <converter from="WINTER_BARLEY" to="BARLEY" factor="1.4" />
    </fruitTypeConverter>
    ...
</fruitTypeConverters>
```


## 3. Add the CutterConverter Mod to your dependency list
Last final step. Open your `modDesc.xml` and add the `FS22_CutterConverter` as a dependency. For exmaple:
```xml
<dependencies>
    ...
    <dependency>FS22_CutterConverter</dependency>
    ...
</dependencies>
```