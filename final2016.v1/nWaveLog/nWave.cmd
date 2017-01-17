wvOpenFile -win $_nWave1 -mul \
           {/users/course/2016F/cs4125/dsd17/final_project/final2016.v1/pipeline.fsdb} {/users/course/2016F/cs4125/dsd17/final_project/final2016.v1/pipeline_syn.fsdb} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/Pipeline"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalSetScope -win $_nWave1 "/Pipeline/I_mem"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetCursor -win $_nWave1 110102.768647 -snap {("G1" 6)}
wvResizeWindow -win $_nWave1 8 31 1916 1008
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetCursor -win $_nWave1 91255.467621 -snap {("G1" 10)}
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline"
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Pipeline/Pipeline/C_sel\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Pipeline/Pipeline/C_sel\[1:0\]} \
{/Pipeline/Pipeline/EX_PS} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline/InstrMemory_OEN_reg"
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline/instruction_decode"
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Pipeline/Pipeline/C_sel\[1:0\]} \
{/Pipeline/Pipeline/EX_PS} \
{/Pipeline/Pipeline/instruction_decode/PS} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetCursor -win $_nWave1 49670.697566 -snap {("G2" 3)}
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline"
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Pipeline/Pipeline/C_sel\[1:0\]} \
{/Pipeline/Pipeline/EX_PS} \
{/Pipeline/Pipeline/instruction_decode/PS} \
{/Pipeline/Pipeline/DOF_PS} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 51788.440485 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 51595.918402 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 51403.396318 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 69692.994259 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 52366.006736 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 50248.263817 -snap {("G2" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 72003.259262 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 51210.874235 -snap {("G1" 10)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 56986.536742 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline/Function_unit"
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Pipeline/Pipeline/C_sel\[1:0\]} \
{/Pipeline/Pipeline/EX_PS} \
{/Pipeline/Pipeline/instruction_decode/PS} \
{/Pipeline/Pipeline/DOF_PS} \
{/Pipeline/Pipeline/Function_unit/Z} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetCursor -win $_nWave1 52366.006736 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 53906.183405 -snap {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Pipeline/Pipeline/C_sel\[1:0\]} \
{/Pipeline/Pipeline/EX_PS} \
{/Pipeline/Pipeline/instruction_decode/PS} \
{/Pipeline/Pipeline/DOF_PS} \
{/Pipeline/Pipeline/Function_unit/Z} \
{/Pipeline/Pipeline/Function_unit/C} \
{/Pipeline/Pipeline/Function_unit/N} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Pipeline/Pipeline/C_sel\[1:0\]} \
{/Pipeline/Pipeline/EX_PS} \
{/Pipeline/Pipeline/instruction_decode/PS} \
{/Pipeline/Pipeline/DOF_PS} \
{/Pipeline/Pipeline/Function_unit/Z} \
{/Pipeline/Pipeline/Function_unit/C} \
{/Pipeline/Pipeline/Function_unit/N} \
{/Pipeline/Pipeline/Function_unit/F\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetCursor -win $_nWave1 51980.962569 -snap {("G2" 8)}
wvZoomIn -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline"
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Pipeline/Pipeline/C_sel\[1:0\]} \
{/Pipeline/Pipeline/EX_PS} \
{/Pipeline/Pipeline/instruction_decode/PS} \
{/Pipeline/Pipeline/DOF_PS} \
{/Pipeline/Pipeline/Function_unit/Z} \
{/Pipeline/Pipeline/Function_unit/C} \
{/Pipeline/Pipeline/Function_unit/N} \
{/Pipeline/Pipeline/Function_unit/F\[31:0\]} \
{/Pipeline/Pipeline/Bus_B\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetPosition -win $_nWave1 {("G2" 9)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Pipeline/Pipeline/C_sel\[1:0\]} \
{/Pipeline/Pipeline/EX_PS} \
{/Pipeline/Pipeline/instruction_decode/PS} \
{/Pipeline/Pipeline/DOF_PS} \
{/Pipeline/Pipeline/Function_unit/Z} \
{/Pipeline/Pipeline/Function_unit/C} \
{/Pipeline/Pipeline/Function_unit/N} \
{/Pipeline/Pipeline/Function_unit/F\[31:0\]} \
{/Pipeline/Pipeline/Bus_B\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetCursor -win $_nWave1 53328.617154 -snap {("G2" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 51018.352151 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 50922.091109 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 51403.396318 -snap {("G2" 9)}
wvSetCursor -win $_nWave1 51499.657360 -snap {("G2" 9)}
wvSetCursor -win $_nWave1 50440.785900 -snap {("G2" 9)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline"
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Pipeline/Pipeline/C_sel\[1:0\]} \
{/Pipeline/Pipeline/EX_PS} \
{/Pipeline/Pipeline/instruction_decode/PS} \
{/Pipeline/Pipeline/DOF_PS} \
{/Pipeline/Pipeline/Function_unit/Z} \
{/Pipeline/Pipeline/Function_unit/C} \
{/Pipeline/Pipeline/Function_unit/N} \
{/Pipeline/Pipeline/Function_unit/F\[31:0\]} \
{/Pipeline/Pipeline/Bus_B\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Pipeline/Pipeline/B_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetCursor -win $_nWave1 51692.179444 -snap {("G2" 9)}
wvSetCursor -win $_nWave1 50922.091109 -snap {("G2" 9)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Pipeline/Pipeline/C_sel\[1:0\]} \
{/Pipeline/Pipeline/EX_PS} \
{/Pipeline/Pipeline/instruction_decode/PS} \
{/Pipeline/Pipeline/DOF_PS} \
{/Pipeline/Pipeline/Function_unit/Z} \
{/Pipeline/Pipeline/Function_unit/C} \
{/Pipeline/Pipeline/Function_unit/N} \
{/Pipeline/Pipeline/Function_unit/F\[31:0\]} \
{/Pipeline/Pipeline/Bus_B\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Pipeline/Pipeline/B_data\[31:0\]} \
{/Pipeline/Pipeline/BUS_D\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetCursor -win $_nWave1 71329.431970 -snap {("G3" 2)}
wvSetCursor -win $_nWave1 70751.865719 -snap {("G3" 2)}
wvSetCursor -win $_nWave1 27241.874828 -snap {("G4" 0)}
wvSetCursor -win $_nWave1 30707.272333 -snap {("G4" 0)}
wvSetCursor -win $_nWave1 33402.581503 -snap {("G3" 2)}
wvSetCursor -win $_nWave1 50825.830068 -snap {("G2" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Pipeline/Pipeline/C_sel\[1:0\]} \
{/Pipeline/Pipeline/EX_PS} \
{/Pipeline/Pipeline/instruction_decode/PS} \
{/Pipeline/Pipeline/DOF_PS} \
{/Pipeline/Pipeline/Function_unit/Z} \
{/Pipeline/Pipeline/Function_unit/C} \
{/Pipeline/Pipeline/Function_unit/N} \
{/Pipeline/Pipeline/Function_unit/F\[31:0\]} \
{/Pipeline/Pipeline/Bus_B\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Pipeline/Pipeline/B_data\[31:0\]} \
{/Pipeline/Pipeline/BUS_D\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Pipeline/Pipeline/C_sel\[1:0\]} \
{/Pipeline/Pipeline/EX_PS} \
{/Pipeline/Pipeline/instruction_decode/PS} \
{/Pipeline/Pipeline/DOF_PS} \
{/Pipeline/Pipeline/Function_unit/Z} \
{/Pipeline/Pipeline/Function_unit/C} \
{/Pipeline/Pipeline/Function_unit/N} \
{/Pipeline/Pipeline/Function_unit/F\[31:0\]} \
{/Pipeline/Pipeline/Bus_B\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Pipeline/Pipeline/B_data\[31:0\]} \
{/Pipeline/Pipeline/BUS_D\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 70655.604677 -snap {("G3" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 19540.991484 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 14920.461478 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 15401.766687 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 18674.642108 -snap {("G2" 6)}
wvSetCursor -win $_nWave1 19059.686275 -snap {("G2" 7)}
wvSetCursor -win $_nWave1 17134.465439 -snap {("G2" 7)}
wvSetCursor -win $_nWave1 866.349376 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 3850.441672 -snap {("G2" 6)}
wvSetCursor -win $_nWave1 2984.092296 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 2406.526045 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 2599.048128 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 3946.702714 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 4620.530006 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 23583.955240 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 23487.694198 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 39659.549219 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 39852.071303 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 30418.489207 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 2310.265003 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 70655.604677 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 1828.959794 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 71425.693012 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 50825.830068 -snap {("G2" 3)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/Pipeline"
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline"
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline/instruction_decode"
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline/Function_unit"
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Pipeline/Pipeline/C_sel\[1:0\]} \
{/Pipeline/Pipeline/EX_PS} \
{/Pipeline/Pipeline/instruction_decode/PS} \
{/Pipeline/Pipeline/DOF_PS} \
{/Pipeline/Pipeline/Function_unit/Z} \
{/Pipeline/Pipeline/Function_unit/C} \
{/Pipeline/Pipeline/Function_unit/N} \
{/Pipeline/Pipeline/Function_unit/F\[31:0\]} \
{/Pipeline/Pipeline/Bus_B\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Pipeline/Pipeline/B_data\[31:0\]} \
{/Pipeline/Pipeline/BUS_D\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/Pipeline/Pipeline/Function_unit/V} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetPosition -win $_nWave1 {("G4" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/Pipeline"
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline"
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline/instruction_decode"
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline/Function_unit"
wvSetCursor -win $_nWave1 51884.701527 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 51595.918402 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 50729.569026 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 51403.396318 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 51884.701527 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 51018.352151 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 50825.830068 -snap {("G2" 3)}
wvResizeWindow -win $_nWave1 8 31 1916 1008
wvResizeWindow -win $_nWave1 8 31 1916 1008
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline/instruction_decode"
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Pipeline/Pipeline/C_sel\[1:0\]} \
{/Pipeline/Pipeline/EX_PS} \
{/Pipeline/Pipeline/instruction_decode/PS} \
{/Pipeline/Pipeline/DOF_PS} \
{/Pipeline/Pipeline/Function_unit/Z} \
{/Pipeline/Pipeline/Function_unit/C} \
{/Pipeline/Pipeline/Function_unit/N} \
{/Pipeline/Pipeline/Function_unit/F\[31:0\]} \
{/Pipeline/Pipeline/Bus_B\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Pipeline/Pipeline/B_data\[31:0\]} \
{/Pipeline/Pipeline/BUS_D\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/Pipeline/Pipeline/Function_unit/V} \
{/Pipeline/Pipeline/instruction_decode/flush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetCursor -win $_nWave1 70900.446987 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 26202.339104 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 26491.335491 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 27165.660395 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 48069.732400 -snap {("G5" 0)}
wvSetCursor -win $_nWave1 48551.393046 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 50478.035627 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 31500.606202 -snap {("G1" 10)}
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline"
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Pipeline/Pipeline/C_sel\[1:0\]} \
{/Pipeline/Pipeline/EX_PS} \
{/Pipeline/Pipeline/instruction_decode/PS} \
{/Pipeline/Pipeline/DOF_PS} \
{/Pipeline/Pipeline/Function_unit/Z} \
{/Pipeline/Pipeline/Function_unit/C} \
{/Pipeline/Pipeline/Function_unit/N} \
{/Pipeline/Pipeline/Function_unit/F\[31:0\]} \
{/Pipeline/Pipeline/Bus_B\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Pipeline/Pipeline/B_data\[31:0\]} \
{/Pipeline/Pipeline/BUS_D\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/Pipeline/Pipeline/Function_unit/V} \
{/Pipeline/Pipeline/instruction_decode/flush} \
{/Pipeline/Pipeline/DOF_flush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Pipeline/Pipeline/C_sel\[1:0\]} \
{/Pipeline/Pipeline/EX_PS} \
{/Pipeline/Pipeline/instruction_decode/PS} \
{/Pipeline/Pipeline/DOF_PS} \
{/Pipeline/Pipeline/Function_unit/Z} \
{/Pipeline/Pipeline/Function_unit/C} \
{/Pipeline/Pipeline/Function_unit/N} \
{/Pipeline/Pipeline/Function_unit/F\[31:0\]} \
{/Pipeline/Pipeline/Bus_B\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Pipeline/Pipeline/B_data\[31:0\]} \
{/Pipeline/Pipeline/BUS_D\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/Pipeline/Pipeline/Function_unit/V} \
{/Pipeline/Pipeline/instruction_decode/flush} \
{/Pipeline/Pipeline/DOF_flush} \
{/Pipeline/Pipeline/rst_n} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetCursor -win $_nWave1 30151.956395 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 30151.956395 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 30440.952783 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 385.328516 -snap {("G4" 4)}
wvGetSignalSetSignalFilter -win $_nWave1 "*clk"
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Pipeline/Pipeline/C_sel\[1:0\]} \
{/Pipeline/Pipeline/EX_PS} \
{/Pipeline/Pipeline/instruction_decode/PS} \
{/Pipeline/Pipeline/DOF_PS} \
{/Pipeline/Pipeline/Function_unit/Z} \
{/Pipeline/Pipeline/Function_unit/C} \
{/Pipeline/Pipeline/Function_unit/N} \
{/Pipeline/Pipeline/Function_unit/F\[31:0\]} \
{/Pipeline/Pipeline/Bus_B\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Pipeline/Pipeline/B_data\[31:0\]} \
{/Pipeline/Pipeline/BUS_D\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/Pipeline/Pipeline/Function_unit/V} \
{/Pipeline/Pipeline/instruction_decode/flush} \
{/Pipeline/Pipeline/DOF_flush} \
{/Pipeline/Pipeline/rst_n} \
{/Pipeline/Pipeline/clk} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSetCursor -win $_nWave1 29477.631492 -snap {("G4" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Pipeline/Pipeline/C_sel\[1:0\]} \
{/Pipeline/Pipeline/EX_PS} \
{/Pipeline/Pipeline/instruction_decode/PS} \
{/Pipeline/Pipeline/DOF_PS} \
{/Pipeline/Pipeline/Function_unit/Z} \
{/Pipeline/Pipeline/Function_unit/C} \
{/Pipeline/Pipeline/Function_unit/N} \
{/Pipeline/Pipeline/Function_unit/F\[31:0\]} \
{/Pipeline/Pipeline/Bus_B\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Pipeline/Pipeline/B_data\[31:0\]} \
{/Pipeline/Pipeline/BUS_D\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/Pipeline/Pipeline/Function_unit/V} \
{/Pipeline/Pipeline/instruction_decode/flush} \
{/Pipeline/Pipeline/DOF_flush} \
{/Pipeline/Pipeline/rst_n} \
{/Pipeline/Pipeline/clk} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 71767.436149 -snap {("G3" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 51056.028401 -snap {("G1" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline"
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Pipeline/Pipeline/C_sel\[1:0\]} \
{/Pipeline/Pipeline/EX_PS} \
{/Pipeline/Pipeline/instruction_decode/PS} \
{/Pipeline/Pipeline/DOF_PS} \
{/Pipeline/Pipeline/Function_unit/Z} \
{/Pipeline/Pipeline/Function_unit/C} \
{/Pipeline/Pipeline/Function_unit/N} \
{/Pipeline/Pipeline/Function_unit/F\[31:0\]} \
{/Pipeline/Pipeline/Bus_B\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Pipeline/Pipeline/B_data\[31:0\]} \
{/Pipeline/Pipeline/BUS_D\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/Pipeline/Pipeline/Function_unit/V} \
{/Pipeline/Pipeline/instruction_decode/flush} \
{/Pipeline/Pipeline/DOF_flush} \
{/Pipeline/Pipeline/rst_n} \
{/Pipeline/Pipeline/clk} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/Pipeline/Pipeline/EX_BUS_B\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetCursor -win $_nWave1 1551147.742055 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 3564.288775 -snap {("G2" 9)}
wvSetCursor -win $_nWave1 2986.296001 -snap {("G2" 9)}
wvSetCursor -win $_nWave1 1371812.135233 -snap {("G2" 9)}
wvSelectSignal -win $_nWave1 {( "G2" 8 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline/Function_unit"
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Pipeline/Pipeline/C_sel\[1:0\]} \
{/Pipeline/Pipeline/EX_PS} \
{/Pipeline/Pipeline/instruction_decode/PS} \
{/Pipeline/Pipeline/DOF_PS} \
{/Pipeline/Pipeline/Function_unit/Z} \
{/Pipeline/Pipeline/Function_unit/C} \
{/Pipeline/Pipeline/Function_unit/N} \
{/Pipeline/Pipeline/Function_unit/F\[31:0\]} \
{/Pipeline/Pipeline/Bus_B\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Pipeline/Pipeline/B_data\[31:0\]} \
{/Pipeline/Pipeline/BUS_D\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/Pipeline/Pipeline/Function_unit/V} \
{/Pipeline/Pipeline/instruction_decode/flush} \
{/Pipeline/Pipeline/DOF_flush} \
{/Pipeline/Pipeline/rst_n} \
{/Pipeline/Pipeline/clk} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/Pipeline/Pipeline/EX_BUS_B\[31:0\]} \
{/Pipeline/Pipeline/Function_unit/B\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetCursor -win $_nWave1 1362756.915102 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 1369307.499878 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 1371523.138846 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 1373546.113556 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 1368729.507103 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 1370174.489039 -snap {("G5" 1)}
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline"
wvSetPosition -win $_nWave1 {("G5" 4)}
wvSetPosition -win $_nWave1 {("G5" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Pipeline/Pipeline/C_sel\[1:0\]} \
{/Pipeline/Pipeline/EX_PS} \
{/Pipeline/Pipeline/instruction_decode/PS} \
{/Pipeline/Pipeline/DOF_PS} \
{/Pipeline/Pipeline/Function_unit/Z} \
{/Pipeline/Pipeline/Function_unit/C} \
{/Pipeline/Pipeline/Function_unit/N} \
{/Pipeline/Pipeline/Function_unit/F\[31:0\]} \
{/Pipeline/Pipeline/Bus_B\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Pipeline/Pipeline/B_data\[31:0\]} \
{/Pipeline/Pipeline/BUS_D\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/Pipeline/Pipeline/Function_unit/V} \
{/Pipeline/Pipeline/instruction_decode/flush} \
{/Pipeline/Pipeline/DOF_flush} \
{/Pipeline/Pipeline/rst_n} \
{/Pipeline/Pipeline/clk} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/Pipeline/Pipeline/EX_BUS_B\[31:0\]} \
{/Pipeline/Pipeline/Function_unit/B\[31:0\]} \
{/Pipeline/Pipeline/Bus_A\[31:0\]} \
{/Pipeline/Pipeline/EX_BUS_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 3 4 )} 
wvSetPosition -win $_nWave1 {("G5" 4)}
wvSetCursor -win $_nWave1 2504.635356 -snap {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 5)}
wvSetPosition -win $_nWave1 {("G5" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/I_mem/Q\[31:0\]} \
{/Pipeline/Pipeline/Instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/InstrAddr\[10:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Pipeline/Pipeline/C_sel\[1:0\]} \
{/Pipeline/Pipeline/EX_PS} \
{/Pipeline/Pipeline/instruction_decode/PS} \
{/Pipeline/Pipeline/DOF_PS} \
{/Pipeline/Pipeline/Function_unit/Z} \
{/Pipeline/Pipeline/Function_unit/C} \
{/Pipeline/Pipeline/Function_unit/N} \
{/Pipeline/Pipeline/Function_unit/F\[31:0\]} \
{/Pipeline/Pipeline/Bus_B\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Pipeline/Pipeline/B_data\[31:0\]} \
{/Pipeline/Pipeline/BUS_D\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/Pipeline/Pipeline/Function_unit/V} \
{/Pipeline/Pipeline/instruction_decode/flush} \
{/Pipeline/Pipeline/DOF_flush} \
{/Pipeline/Pipeline/rst_n} \
{/Pipeline/Pipeline/clk} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/Pipeline/Pipeline/EX_BUS_B\[31:0\]} \
{/Pipeline/Pipeline/Function_unit/B\[31:0\]} \
{/Pipeline/Pipeline/Bus_A\[31:0\]} \
{/Pipeline/Pipeline/EX_BUS_A\[31:0\]} \
{/Pipeline/Pipeline/Dmem_output\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 5 )} 
wvSetPosition -win $_nWave1 {("G5" 5)}
wvSetCursor -win $_nWave1 1390207.039929 -snap {("G5" 5)}
