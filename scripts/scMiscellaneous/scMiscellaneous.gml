#region miscellaneous
function storePlayersIds() {
	// array to store ids
	global.instance_ids = [];

	// calculate number of players
	var object_to_find = oPlayer;

	// Get the number of instances of the object
	var n_of_players = instance_number(object_to_find);

	// Loop through all instances of the object and store their IDs in the array
	for (var i = 0; i < n_of_players; i++) {
	    var id_instance = instance_find(object_to_find, i);
	    array_push(global.instance_ids, id_instance);
	}
}
#endregion


#region timer before events
//start a timer in seconds
function startTimer(time) {
	if !(instance_exists(oTimer)) {
		with instance_create_layer(x,y,"Instances",oTimer) {
			timerDuration = time * 60;
		}
	}
}
#endregion

#region //+1 Level
function levelUp(text) {
	with instance_create_layer(x,y,"Instances",oPlusOne) {
		playerWhoScored = text;
		playerWhoSpawned = other;
		color = other.ownColor;
		gayLevelShow = true;
	}
}




//music
function getRandomMenuMusic() {
	var _music = choose(mMVC2,mHereWeGo,mShuffleOrBoogie,mMetalSlugCharSelect);
	return _music;
}

function getRandomGameMusic() {
	var _music = choose(mWaluigiPinball,mSlider,mFiddleDeChocobo,mMischeviousRobot,mScambiaBare,mGesu3,mYTPMV_ITA,mPjanooZeb,mEarthBoundHippie,mScatman,mBattleBigBridge);
	return _music;
}

function getRandomRankMusic() {
	var _music = choose(mMarioPartyMiniGame);
	return _music;
}

function getRandomPreGameSound() {
	var _music = choose(snReadyGo);
	return _music;
}

function getRandomGameEndSound() {
	var _music = choose(snGameMelee);
	return _music;
}

function getEventMusic() {
	var _music = choose(snSuspense);
	return _music;
}

function getPreEventSound() {
	var _music = choose(snWarioNewEvent);
	return _music;
}

function getGaspSound() {
	var _music = choose(snGasp1,snGasp2,snGasp3,snGasp4);
	return _music;
}

function getPostWinMusic() {
	var _music = choose(snMarioPartyWin2,mFanfare,mFanfare8);
	return _music;
}

//function getRandomMenuMusic() {
//	return choose(mMVC2,mHereWeGo,mShuffleOrBoogie,mMetalSlugCharSelect);
//}
