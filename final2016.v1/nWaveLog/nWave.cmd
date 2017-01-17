wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/users/course/2016F/cs4125/dsd17/final_project/final2016.v1/pipeline.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Pipeline"
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pipeline/Pipeline/Dmem_output\[31:0\]} \
{/Pipeline/Pipeline/clk} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/rst_n} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetActiveFile -win $_nWave1 -applyAnnotation off \
           {/users/course/2016F/cs4125/dsd17/final_project/final2016.v1/pipeline.fsdb}
wvOpenFile -win $_nWave1 \
           {/users/course/2016F/cs4125/dsd17/final_project/final2016.v1/pipeline_syn.fsdb}
wvSetActiveFile -win $_nWave1 -applyAnnotation off \
           {/users/course/2016F/cs4125/dsd17/final_project/final2016.v1/pipeline_syn.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/Pipeline"
wvGetSignalSetScope -win $_nWave1 "/Pipeline/d_mem"
wvGetSignalSetScope -win $_nWave1 "/Pipeline/Pipeline"
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvSetActiveFile -win $_nWave1 \
           {/users/course/2016F/cs4125/dsd17/final_project/final2016.v1/pipeline.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/Pipeline/Pipeline/Dmem_output\[31:0\]} \
{/Pipeline/Pipeline/clk} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/rst_n} \
}
wvSetActiveFile -win $_nWave1 \
           {/users/course/2016F/cs4125/dsd17/final_project/final2016.v1/pipeline_syn.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/Pipeline/Pipeline/Dmem_output\[31:0\]} \
{/Pipeline/Pipeline/clk} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/rst_n} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 7 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvSetActiveFile -win $_nWave1 \
           {/users/course/2016F/cs4125/dsd17/final_project/final2016.v1/pipeline.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/Pipeline/Pipeline/Dmem_output\[31:0\]} \
{/Pipeline/Pipeline/clk} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/rst_n} \
}
wvSetActiveFile -win $_nWave1 \
           {/users/course/2016F/cs4125/dsd17/final_project/final2016.v1/pipeline_syn.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/Pipeline/Pipeline/Dmem_output\[31:0\]} \
{/Pipeline/Pipeline/clk} \
{/Pipeline/Pipeline/instruction\[31:0\]} \
{/Pipeline/Pipeline/pc\[31:0\]} \
{/Pipeline/Pipeline/rst_n} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 7 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalClose -win $_nWave1
