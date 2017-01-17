wvOpenFile -win $_nWave1 -mul \
           {/users/course/2016F/cs4125/dsd17/final_project/final2016.v1/pipeline.fsdb} {/users/course/2016F/cs4125/dsd17/final_project/final2016.v1/pipeline_syn.fsdb} 
wvSetActiveFile -win $_nWave1 -applyAnnotation off \
           {/users/course/2016F/cs4125/dsd17/final_project/final2016.v1/pipeline.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Pipeline"
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/Pipeline/clk} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/rst_n} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/Pipeline/clk} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/rst_n} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetActiveFile -win $_nWave1 -applyAnnotation off \
           {/users/course/2016F/cs4125/dsd17/final_project/final2016.v1/pipeline_syn.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/Pipeline"
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline"
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvSetActiveFile -win $_nWave1 \
           {/users/course/2016F/cs4125/dsd17/final_project/final2016.v1/pipeline.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/Pipeline/Pipeline/clk} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/rst_n} \
}
wvSetActiveFile -win $_nWave1 \
           {/users/course/2016F/cs4125/dsd17/final_project/final2016.v1/pipeline_syn.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/Pipeline/Pipeline/clk} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/rst_n} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 8 9 10 11 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvSetActiveFile -win $_nWave1 \
           {/users/course/2016F/cs4125/dsd17/final_project/final2016.v1/pipeline.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/Pipeline/Pipeline/clk} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/rst_n} \
}
wvSetActiveFile -win $_nWave1 \
           {/users/course/2016F/cs4125/dsd17/final_project/final2016.v1/pipeline_syn.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/Pipeline/Pipeline/clk} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/rst_n} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 8 9 10 11 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 71602.725451 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 20341.683367 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 50447.374749 -snap {("G1" 11)}
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 29698.857715 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 46785.871743 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 48820.040080 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 27257.855711 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 69161.723447 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 26444.188377 -snap {("G1" 12)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 28885.190381 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 28986.898798 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 30309.108216 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 27766.397796 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 19121.182365 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 29902.274549 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 20341.683367 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 27257.855711 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 30207.399800 -snap {("G1" 7)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/Pipeline"
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline"
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvSetActiveFile -win $_nWave1 \
           {/users/course/2016F/cs4125/dsd17/final_project/final2016.v1/pipeline.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/Pipeline/Pipeline/clk} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/rst_n} \
}
wvSetActiveFile -win $_nWave1 \
           {/users/course/2016F/cs4125/dsd17/final_project/final2016.v1/pipeline_syn.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/Pipeline/Pipeline/clk} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/rst_n} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 13 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvSetActiveFile -win $_nWave1 \
           {/users/course/2016F/cs4125/dsd17/final_project/final2016.v1/pipeline.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/Pipeline/Pipeline/clk} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/rst_n} \
}
wvSetActiveFile -win $_nWave1 \
           {/users/course/2016F/cs4125/dsd17/final_project/final2016.v1/pipeline_syn.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/Pipeline/Pipeline/clk} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/instruction_next\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/pc_next\[31:0\]} \
{/Pipeline/Pipeline/rst_n} \
{/Pipeline/Pipeline/pc_1\[31:0\]} \
{/Pipeline/Pipeline/pc_2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 13 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 89706.823647 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 90622.199399 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 29902.274549 -snap {("G1" 12)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 50752.500000 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 91537.575150 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 110251.923848 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 70585.641283 -snap {("G1" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 19324.599198 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 30105.691383 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 30105.691383 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 20850.225451 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 9153.757515 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 29800.566132 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 50447.374749 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 50040.541082 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 39259.448898 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 30105.691383 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 71094.183367 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 71195.891784 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 91944.408818 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 111777.550100 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 50549.083166 -snap {("G1" 10)}
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 84824.819639 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 61228.466934 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 84417.985972 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 35801.362725 -snap {("G1" 7)}
