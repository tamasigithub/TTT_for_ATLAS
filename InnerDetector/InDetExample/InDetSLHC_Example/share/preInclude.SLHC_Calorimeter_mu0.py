
### Commands needed to run with calorimeters ###

from LArROD.LArRODFlags import larRODFlags
larRODFlags.doOFCPileupOptimization.set_Value_and_Lock(True)
larRODFlags.NumberOfCollisions.set_Value_and_Lock(0)

from AthenaCommon.BeamFlags import jobproperties
jobproperties.Beam.bunchSpacing = 25

from CaloTools.CaloNoiseFlags import jobproperties
jobproperties.CaloNoiseFlags.FixedLuminosity.set_Value_and_Lock(0)

if rec.OutputFileNameForRecoStep() == 'RAWtoESD':
    from CaloRec.CaloCellFlags import jobproperties
    jobproperties.CaloCellFlags.doLArCellEmMisCalib = False
    from tauRec.tauRecFlags import tauFlags
    tauFlags.tauRecSeedMaxEta.set_Value_and_Lock(4.0)
