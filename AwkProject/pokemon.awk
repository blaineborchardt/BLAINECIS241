
BEGIN{
	FS = ","
	numrows = 800
}
#calculating the total highest power
mostPower<$5 {mostPower = $5+0; name = $2;next}
mostPower==$5 {name = name ORS $2}

#finding the total of each column
{totalSum += $5}
{hpSum += $6}
{attackSum += $7}
{defenseSum += $8}
{spAttSum += $9}
{spDefSum += $10}
{speSum += $11}

#most powerful pokemon of each type
/Grass/ && mostPowerfulGrass<$5 {mostPowerfulGrass = $5 + 0; nameGrass = $2;next}
/Grass/ && mostPowerfulGrass==$5 {nameGrass = nameGrass ORS $2}
/Poison/ && mostPowerfulPoison<$5 {mostPowerfulPoison = $5+0; namePoison = $2;next}
/Poison/ && mostPowerfulPoison==$5 {namePoison = namePoison ORS $2}
/Fire/ && mostPowerfulFire<$5 {mostPowerfulFire = $5+0; nameFire = $2;next}
/Fire/ && mostPowerfulFire==$5 {nameFire = nameFire ORS $2}
/Flying/ && mostPowerfulFlying<$5 {mostPowerfulFlying = $5+0; nameFlying = $2;next}
/Flying/ && mostPowerfulFlying==$5 {nameFire = nameFire ORS $2}
/Dragon/ && mostPowerfulDragon<$5 {mostPowerfulDragon = $5+0; nameDragon = $2;next}
/Dragon/ && mostPowerfulDragon==$5 {nameDragon = nameDragon ORS $2}
/Water/ && mostPowerfulWater<$5 {mostPowerfulWater = $5+0; nameWater = $2;next}
/Water/ && mostPowerfulWater==$5 {nameWater = nameWater ORS $2}
/Bug/ && mostPowerfulBug<$5 {mostPowerfulBug = $5+0; nameBug = $2;next}
/Bug/ && mostPowerfulBug==$5 {nameBug = nameBug ORS $2}
/Normal/ && mostPowerfulNormal<$5 {mostPowerfulNormal = $5+0; nameNormal = $2;next}
/Normal/ && mostPowerfulNormal==$5 {nameNormal = nameNormal ORS $2}
/Electric/ && mostPowerfulElectric<$5 {mostPowerfulElectric = $5+0; nameElectric = $2;next}
/Electric/ && mostPowerfulElectric==$5 {nameElectric = nameElectric ORS $2}
/Ground/ && mostPowerfulGround<$5 {mostPowerfulGround = $5+0; nameGround = $2;next}
/Ground/ && mostPowerfulGround==$5 {nameGround = nameGround ORS $2}
/Fairy/ && mostPowerfulFairy<$5 {mostPowerfulFairy = $5+0; nameFairy = $2;next}
/Fairy/ && mostPowerfulFairy==$5 {nameFairy = nameFairy ORS $2}
/Fighting/ && mostPowerfulFighting<$5 {mostPowerfulFighting = $5+0; nameFighting = $2;next}
/Fighting/ && mostPowerfulFighting==$5 {nameFighting = nameFighting ORS $2}
/Psychic/ && mostPowerfulPsychic<$5 {mostPowerfulPsychic = $5+0; namePsychic = $2;next}
/Psychic/ && mostPowerfulPsychic==$5 {namePsychic = namePsychic ORS $2}
/Steel/ && mostPowerfulSteel<$5 {mostPowerfulSteel = $5+0; nameSteel = $2;next}
/Steel/ && mostPowerfulSteel==$5 {nameSteel = nameSteel ORS $2}
/Rock/ && mostPowerfulRock<$5 {mostPowerfulRock = $5+0; nameRock = $2;next}
/Rock/ && mostPowerfulRock==$5 {nameRock = nameRock ORS $2}
/Ice/ && mostPowerfulIce<$5 {mostPowerfulIce = $5+0; nameIce = $2;next}
/Ice/ && mostPowerfulIce==$5 {nameIce = nameIce ORS $2}
/Dark/ && mostPowerfulDark<$5 {mostPowerfulDark = $5+0; nameDark = $2;next}
/Dark/ && mostPowerfulDark==$5 {nameDark = nameDark ORS $2}

#Average statistics of each pokemon per type
/Grass/ {numGrass += 1}
/Grass/ {totalGrass += $5}
/Poison/ {numPoison += 1}
/Poison/ {totalPoison += $5}
/Fire/ {numFire += 1}
/Fire/ {totalFire += $5}
/Flying/ {numFlying += 1}
/Flying/ {totalFlying += $5}
/Dragon/ {numDragon += 1}
/Dragon/ {totalDragon += $5}
/Water/  {numWater += 1}
/Water/ {totalWater += $5}
/Bug/ {numBug += 1}
/Bug/ {totalBug += $5}
/Normal/ {numNormal += 1} 
/Normal/ {totalNormal += $5}
/Electric/ {numElectric += 1}
/Electric/ {totalElectric += $5}
/Ground/ {numGround += 1}
/Ground/ {totalGround += $5}
/Fairy/ {numFairy += 1}
/Fairy/ {totalFairy += $5}
/Fighting/ {numFighting += 1}
/Fighting/ {totalFighting += $5}
/Psychic/ {numPsychic += 1}
/Psychic/ {totalPsychic += $5}
/Steel/ {numSteel += 1}
/Steel/ {totalSteel += $5}
/Rock/ {numRock += 1}
/Rock/ {totalRock += $5}
/Ice/ {numIce += 1}
/Ice/ {totalIce += $5}
/Dark/ {numDark += 1}
/Dark/ {totalDark += $5}

END{
	print "The overall most powerful pokemon are:\n" name
	print "And these pokemon have a power of " mostPower "\n\n"
	print "The average of the columns are:\ntotal: "totalSum/numrows
	print "HP: "hpSum/numrows
	print "Attack: "attackSum/numrows
	print "Defense: "defenseSum/numrows
	print "Sp.Atk: "spAttSum/numrows
	print "Sp.Def: "spDefSum/numrows
        print "Speed: "speSum
	print "Most powerful Grass pokemon are:\n" nameGrass " with " mostPowerfulGrass "\n"	
	print "Most powerful Poison pokemon are:\n" namePoison " with " mostPowerfulPoison "\n"
	print "Most powerful Flying pokemon are:\n" nameFlying " with " mostPowerfulFlying "\n"
	print "Most powerful Fire pokemon are:\n" nameFire " with " mostPowerfulFire "\n"
	print "Most powerful Dragon pokemon are:\n" nameDragon " with " mostPowerfulDragon "\n"
	print "Most powerful Water pokemon are:\n" nameWater " with " mostPowerfulWater "\n"
	print "Most powerful Bug pokemon are:\n" nameBug " with " mostPowerfulBug "\n"
	print "Most powerful Normal pokemon are:\n" nameNormal " with " mostPowerfulNormal "\n"
	print "Most powerful Electric pokemon are:\n" nameElectric " with " mostPowerfulElectric "\n"
	print "Most powerful Ground pokemon are:\n" nameGround " with " mostPowerfulGround "\n"
	print "Most powerful Fairy pokemon are:\n" nameFairy " with " mostPowerfulFairy "\n"
	print "Most powerful Fighting pokemon are:\n" nameFighting " with " mostPowerfulFighting "\n"
	print "Most powerful Steel pokemon are:\n" nameSteel " with " mostPowerfulSteel "\n"
	print "Most powerful Rock pokemon are:\n" nameRock " with " mostPowerfulRock "\n"
	print "Most powerful Ice pokemon are:\n" nameIce " with " mostPowerfulIce "\n"
	print "Most powerful Dark pokemon are:\n" nameDark " with " mostPowerfulDark "\n"
	print "The average power of Grass pokemon is " totalGrass/numGrass
	print "The average power of Poison pokemon is " totalPoison/numPoison
	print "The average power of Flying pokemon is " totalFlying/numFlying
	print "The average power of Fire pokemon is " totalFire/numFire
	print "The average power of Dragon pokemon is " totalDragon/numDragon
	print "The average power of Water pokemon is " totalWater/numWater
	print "The average power of Bug pokemon is " totalBug/numBug
	print "The average power of Normal pokemon is " totalNormal/numNormal
	print "The average power of Electric pokemon is " totalElectric/numElectric
	print "The average power of Ground pokemon is " totalGround/numGround
	print "The average power of Fairy pokemon is " totalFairy/numFairy
	print "The average power of Fighting pokemon is " totalFighting/numFighting
	print "The average power of Psychic pokemon is " totalPsychic/numPsychic
	print "The average power of Steel pokemon is " totalSteel/numSteel
	print "The average power of Rock pokemon is " totalRock/numRock
	print "The average power of Ice pokemon is " totalIce/numIce
	print "The average power of Dark pokemon is " totalDark/numDark




	}



