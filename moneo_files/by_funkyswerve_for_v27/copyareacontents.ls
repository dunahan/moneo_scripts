// Script provided by dunahan@schwerterkueste.de
// Syntax version 4.0.6.27rc3

// Copies all contents from one area to another

// 1) Copy all scripts from source to the target area
%aresource = 'source.are' or die$!;
  print "Working on file: ", /ResRef, ". ", /Name, " is source-area.\n";
  print "Storing area-scripts in variables.\n";
  $OnEnter       = /OnEnter;        print "Stored OnEnter-Script of area from ",       $OnEnter,       "\n";
  $OnExit        = /OnExit;         print "Stored OnExit-Script of area from ",        $OnExit,        "\n";
  $OnHeartbeat   = /OnHeartbeat;    print "Stored OnHeartbeat-Script of area from ",   $OnHeartbeat,   "\n";
  $OnUserDefined = /OnUserDefined;  print "Stored OnUserDefined-Script of area from ", $OnUserDefined, "\n";
#close %aresource;

%aretarget = 'target.are' or die$!;
 print "Working on file: ", /ResRef, ". ", /Name, " is target-area.\n";
 print "Writing those scripts in the variables.\n";
 /OnEnter       = $OnEnter;        print "Set OnEnter-Script of area to ",       /OnEnter,       "\n";
 /OnExit        = $OnExit;         print "Set OnExit-Script of area to ",        /OnExit,        "\n";
 /OnHeartbeat   = $OnHeartbeat;    print "Set OnHeartbeat-Script of area to ",   /OnHeartbeat,   "\n";
 /OnUserDefined = $OnUserDefined;  print "Set OnUserDefined-Script of area to ", /OnUserDefined, "\n";
#close %aretarget;


/*   */
#%gitsource = 'source.git' or die$!;
# print "Going through all Critters in Creature List"
# for (/{'Creature List'}) {
# 
# }
# print "Going through all Doors in Door List"
# for (/{'Door List'}) {
# }
# print "Going through all Encounters in Encounter List"
# for (/{'Encounter List'}) {
# }
# print "Going through all Items in List"
# for (/{'List'}) {
# }
# print "Going through all Sounds in SoundList"
# for (/{'SoundList'}) {
# }
# print "Going through all Stores in StoreList"
# for (/{'StoreList'}) {
# }
# print "Going through all Triggers in TriggerList"
# for (/{'TriggerList'}) {
# }
# print "Going through all Waypoints in WaypointList"
# for (/{'WaypointList'}) {
#
# }
# print "Going through all Placeables in PlaceableList"
# for (/{'Placeable List'}) {
#   /~/AutoRemoveKey = $AutoRemoveKey;
#   /~/CloseLockDC = $CloseLockDC;
#   /~/Conversation = $Conversation;
#   /~/Interruptable = $Interruptable;
#   /~/Faction = $Faction;
#   /~/Plot = $Plot;
#   /~/KeyRequired = $KeyRequired;
#   /~/Lockable = $Lockable;
#   /~/Locked = $Locked;
#   /~/OpenLockDC = $OpenLockDC;
#   /~/TrapDetectable = $TrapDetectable;
#   /~/TrapDetectDC = $TrapDetectDC;
#   /~/TrapDisarmable = $TrapDisarmable;
#   /~/DisarmDC = $DisarmDC;
#   /~/TrapFlag = $TrapFlag;
#   /~/TrapOneShot = $TrapOneShot;
#   /~/TrapType = $TrapType;
#   /~/KeyName = $KeyName;
#   /~/AnimationState = $AnimationState;
#   /~/Appearance = $Appearance;
#   /~/HP = $HP;
#   /~/CurrentHP = $CurrentHP;
#   /~/Hardness = $Hardness;
#   /~/Fort = $Fort;
#   /~/Ref =$Ref;
#   /~/Will = $Will;
#   /~/Static = $Static;
#   /~/Description = $Description;
#   /~/HasInventory = $HasInventory;
#   /~/
#   /~/OnClick = $OnClick;
#   /~/OnClosed = $OnClosed;
#   /~/OnDamaged = $OnDamaged;
#   /~/OnDeath = $OnDeath;
#   /~/OnDisarm = $OnDisarm;
#   /~/OnHeartbeat = $OnHeartbeat;
#   /~/OnInvDisturbed = $OnInvDisturbed;
#   /~/OnLock = $OnLock;
#   /~/OnMeleeAttacked = $OnMeleeAttacked;
#   /~/OnOpen = $OnOpen;
#   /~/OnSpellCastAt = $OnSpellCastAt;
#   /~/OnTrapTriggered = $OnTrapTriggered;
#   /~/OnUnlock = $OnUnlock;
#   /~/OnUsed = $OnUsed;
#   /~/OnUserDefined = $OnUserDefined;
# }
#close %gitsource;

#%gittarget = 'target.git' or die$!;
#  print "Working on file: ", /ResRef, ". ", /Name, " is target-area. ";
#
#close %gittarget;


/*   */
#%gicsource = 'source.gic' or die$!;
#  print "Working on file: ", /ResRef, ". ", /Name, " is source-area. ";
#  
#close %gicsource;

#%gictarget = 'target.gic' or die$!;
#  print "Working on file: ", /ResRef, ". ", /Name, " is target-area. ";
#
#close %gictarget;