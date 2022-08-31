BlueHQ = GROUP:FindByName( "BlueHQ" )
RedHQ = GROUP:FindByName( "RedHQ" )

BlueCommandCenter = COMMANDCENTER
  :New( BlueHQ, "Blue Command" )
RedCommandCenter = COMMANDCENTER
  :New( RedHQ, "Red Command" )

BlueRecceSetGroup = SET_GROUP:New():FilterCoalitions("blue"):FilterPrefixes( {"Reece Blue"} ):FilterStart()
RedRecceSetGroup = SET_GROUP:New():FilterCoalitions("red"):FilterPrefixes( {"Reece Red"} ):FilterStart()

BLUE_CAS_Set = SET_GROUP:New():FilterPrefixes( {"Ace Hog","Rookie Sabre","Rookie Tiger","Rookie Viggen","Rookie Hog","Ace Tomcat","Rookie F1","Ace Viper","Ace Hornet","Veteran Eagle","Veteran Harrier", "LM08","LM26","LM68","LM54","LM95","LM97","MM26","MM34","MM74","MM82"} ):FilterStart()
RED_CAS_Set = SET_GROUP:New():FilterPrefixes( {"Ace FlankerD","Ace Flanker","Ace Thunder","Rookie Fishbed","Rookie Frogfoot","Veteran Frogfoot","Rookie Farmer", "KM76","KM88","LM26","LM38","LM67","LM64","MM17","MM05","MM45","MM43"} ):FilterStart()

BlueRecceDetection = DETECTION_AREAS:New(BlueRecceSetGroup, 25000)
  :SetAcceptRange(25000)
  :FilterCategories( { Unit.Category.GROUND_UNIT } )
--  :SetAlphaAngleProbability(0.9)
--  :SetDistanceProbability(0.9)

RedRecceDetection = DETECTION_AREAS:New(RedRecceSetGroup, 25000)
  :SetAcceptRange(25000)
  :FilterCategories( { Unit.Category.GROUND_UNIT } )
--  :SetAlphaAngleProbability(0.9)
--  :SetDistanceProbability(0.9)

BlueReconDesignation = DESIGNATE:New( BlueCommandCenter, BlueRecceDetection, BLUE_CAS_Set)
  :SetThreatLevelPrioritization(true)
  :SetMaximumDistanceAirDesignation(25000)
  :SetMaximumDistanceDesignations(25000)
  :SetMaximumDistanceGroundDesignation(25000)
  :SetMaximumDesignations(4)
  :SetLaserCodes({1688, 1777, 1687, 1685})
  :SetDesignateName("JTAC")
  :SetLaseDuration(900)
  :AddMenuLaserCode(1688, "Lase with %d for A-10")
  :AddMenuLaserCode(1777, "Lase with %d for Apache")
  :MenuSmoke( Index, "red" )
  :Detect()
--  :__Detect(-1)

RedReconDesignation = DESIGNATE:New( RedCommandCenter, RedRecceDetection, RED_CAS_Set)
  :SetThreatLevelPrioritization(true)
  :SetMaximumDistanceAirDesignation(25000)
  :SetMaximumDistanceDesignations(25000)
  :SetMaximumDistanceGroundDesignation(25000)
  :SetMaximumDesignations(4)
  :SetLaserCodes({1686, 1687, 1688, 1689 })
  :SetDesignateName("JTAC")
  :SetLaseDuration(900)
  :AddMenuLaserCode(1113, "Lase with %d for Su-25T")
  :MenuSmoke( Index, "blue" )
  :Detect()
--  :__Detect(-1)