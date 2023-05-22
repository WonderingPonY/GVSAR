--
--
FilePath  = "Q:\\MOOSE\\"

blueFileName = "BlueGroundGroups.csv"
redFileName = "RedGroundGroups.csv"
randomsFileNames = "Randoms.csv"
SaveInterval = 30

function saveBlueGroups(Path,Fname)
    blueSaveGroups = SET_GROUP:New():FilterCategoryGround():FilterCoalitions("blue"):FilterOnce()
    if UTILS.SaveSetOfGroups(blueSaveGroups,Path,Fname,true) then
        BASE:I("*************BLUE GROUND GROUPS SAVED SUCCESSFULLY************")
    else
        BASE:I("***** Error saving Blue Ground positions!")
    end
end



function loadBlueGroups(Path,Fname)
    if UTILS.LoadSetOfGroups(Path,Fname,true,true,false) then
      BASE:I("***** Blue Ground positions loaded successfully!")
    else
     BASE:I("***** Error loading Blue Ground positions!")
    end
end

TimerLoadBlueGroups = TIMER:New(loadBlueGroups,FilePath,blueFileName)
TimerLoadBlueGroups:Start(10)

timerBlueSave = TIMER:New(saveBlueGroups,FilePath,blueFileName)
timerBlueSave:Start(60,SaveInterval)


function saveRedGroups(Path,Fname)
    redSaveGroups = SET_GROUP:New():FilterCategoryGround():FilterCoalitions("red"):FilterOnce()
    if UTILS.SaveSetOfGroups(redSaveGroups,Path,Fname,true) then
        BASE:I("*************RED GROUND GROUPS SAVED SUCCESSFULLY************")
    else
        BASE:I("***** Error saving RED Ground positions!")
    end
end



function loadRedGroups(Path,Fname)
    if UTILS.LoadSetOfGroups(Path,Fname,true,true,false) then
      BASE:I("***** RED Ground positions loaded successfully!")
    else
     BASE:I("***** Error loading RED Ground positions!")
    end
end

TimerLoadBlueGroups = TIMER:New(loadBlueGroups,FilePath,blueFileName)
TimerLoadBlueGroups:Start(10)

timerRedSave = TIMER:New(saveRedGroups,FilePath,redFileName)
timerREDSave:Start(60,SaveInterval)