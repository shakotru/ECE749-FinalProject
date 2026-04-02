verdiSetActWin -dock widgetDock_<Decl._Tree>
debImport "-f" "rtl_01.f"
wvCreateWindow
wvConvertFile -win $_nWave2 -o \
           "/home/v70369/mydata/final_proj_3_29/waves.vcd.fsdb" \
           "/home/v70369/mydata/final_proj_3_29/waves.vcd"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 {/home/v70369/mydata/final_proj_3_29/waves.vcd.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
nMemSetPreference
srcSetDisplayAttr -font {-fromGUI}
srcSetDisplayAttr -annotFont {Helvetica 10}
verdiWindowResize -win $_Verdi_1 "180" "42" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "tb_md_top" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "done" -line 21 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/done"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvDrop -win $_nWave2
wvZoomAll -win $_nWave2
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 1235984.022039 -snap {("G1" 1)}
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "tb_md_top.dut.pg" -win $_nTrace1
srcHBSelect "tb_md_top.dut.pg" -win $_nTrace1
srcHBSelect "tb_md_top.dut.pg" -win $_nTrace1
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcSetScope "tb_md_top.dut.pg" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top.dut.pg" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -line 5 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "valid_out" -line 9 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "computing" -line 16 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -line 18 -pos 1 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/pg/clk"
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvDrop -win $_nWave2
srcDrag -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
verdiSetActWin -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst" -line 19 -pos 1 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/pg/rst"
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvDrop -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -line 18 -pos 1 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/pg/clk"
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvDrop -win $_nWave2
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "j" -line 21 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "valid_out" -line 26 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "enable" -line 28 -pos 1 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/pg/enable"
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvDrop -win $_nWave2
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "computing" -line 28 -pos 1 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/pg/computing"
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvDrop -win $_nWave2
srcDrag -win $_nTrace1
srcHBSelect "tb_md_top" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {5 5 3 4 1 1}
srcSetScope "tb_md_top.dut" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "start" -line 30 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/start"
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "valid_pg" -line 31 -pos 1 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/valid_pg"
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvDrop -win $_nWave2
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_pg" -line 32 -pos 1 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/i_pg\[3:0\]"
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvDrop -win $_nWave2
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "j_pg" -line 33 -pos 1 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/j_pg\[3:0\]"
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvDrop -win $_nWave2
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "done" -line 34 -pos 2 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/done"
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDrag -win $_nTrace1
verdiSetActWin -win $_nWave2
wvZoom -win $_nWave2 0.000000 213741.597796
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {38 38 3 5 1 12}
srcDeselectAll -win $_nTrace1
srcSelect -signal "NUM_PIPELINES" -line 38 -pos 2 -win $_nTrace1
srcDrag -win $_nTrace1
wvZoomAll -win $_nWave2
verdiSetActWin -win $_nWave2
srcHBSelect "tb_md_top" -win $_nTrace1
srcHBSelect "tb_md_top" -win $_nTrace1
srcSelect -win $_nTrace1 -range {3 3 3 4 1 1}
srcSetScope "tb_md_top" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSearchString "idx" -next -case -win $_nTrace1
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "idx" -next
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {5 5 3 4 1 1}
srcSetScope "tb_md_top.dut" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHierTreeSearch -win $_nTrace1 "idx" -caseInsen off -next
uniFindSearchString -widget <Inst._Tree> -pattern "idx" -next
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
srcHBSelect "tb_md_top.dut.pg" -win $_nTrace1
srcHBSelect "tb_md_top.dut.pipes" -win $_nTrace1
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
srcHBSelect "tb_md_top.dut.pg" -win $_nTrace1
srcHBSelect "tb_md_top.dut.pipes" -win $_nTrace1
srcHBSelect "tb_md_top" -win $_nTrace1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcHBSelect "tb_md_top" -win $_nTrace1
srcHBSelect "tb_md_top" -win $_nTrace1
srcSelect -win $_nTrace1 -range {3 3 3 4 1 1}
srcSetScope "tb_md_top" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top" -win $_nTrace1
srcHBSelect "tb_md_top" -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcSearchString "pos" -next -case -win $_nTrace1
srcSelect -win $_nTrace1 -range {42 42 5 5 1 4}
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "pos" -next
srcSearchString "pos" -next -case -win $_nTrace1
srcSelect -win $_nTrace1 -range {68 68 5 5 1 4}
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "pos" -next
srcSearchString "pos" -next -case -win $_nTrace1
srcSelect -win $_nTrace1 -range {42 42 5 5 1 4}
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "pos" -next
srcSearchString "pos" -next -case -win $_nTrace1
srcSelect -win $_nTrace1 -range {68 68 5 5 1 4}
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "pos" -next
srcSearchString "pos" -next -case -win $_nTrace1
srcSelect -win $_nTrace1 -range {42 42 5 5 1 4}
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "pos" -next
srcSearchString "pos" -next -case -win $_nTrace1
srcSelect -win $_nTrace1 -range {68 68 5 5 1 4}
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "pos" -next
srcSearchString "pos" -next -case -win $_nTrace1
srcSelect -win $_nTrace1 -range {42 42 5 5 1 4}
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "pos" -next
srcSearchString "pos" -next -case -win $_nTrace1
srcSelect -win $_nTrace1 -range {68 68 5 5 1 4}
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "pos" -next
srcSearchString "pos" -next -case -win $_nTrace1
srcSelect -win $_nTrace1 -range {42 42 5 5 1 4}
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "pos" -next
srcSearchString "pos" -next -case -win $_nTrace1
srcSelect -win $_nTrace1 -range {68 68 5 5 1 4}
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "pos" -next
srcSearchString "pos" -next -case -win $_nTrace1
srcSelect -win $_nTrace1 -range {42 42 5 5 1 4}
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "pos" -next
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {5 5 3 4 1 1}
srcSetScope "tb_md_top.dut" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
debReload
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvConvertFile -win $_nWave2 -o \
           "/home/v70369/mydata/final_proj_3_29/waves.vcd.fsdb" \
           "/home/v70369/mydata/final_proj_3_29/waves.vcd"
wvOpenFile -win $_nWave2 {/home/v70369/mydata/final_proj_3_29/waves.vcd.fsdb}
wvZoom -win $_nWave2 0.000000 5060100.000000
wvSetPosition -win $_nWave2 {("G1" 0)}
wvAddSignal -win $_nWave2 "/tb_md_top/dut/valid_pg"
wvAddSignal -win $_nWave2 "/tb_md_top/dut/i_pg\[3:0\]"
wvAddSignal -win $_nWave2 "/tb_md_top/dut/j_pg\[3:0\]"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvZoom -win $_nWave2 0.000000 5060100.000000
srcFindScope -scope "Entity \(Architecture\)"
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcSignalView -off
srcSetOptions -identifyFalseLogic off -win $_nTrace1
verdiHighlightSignal -apply
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
verdiSetActWin -win $_nWave2
wvScrollDown -win $_nWave2 1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcSetScope "tb_md_top.dut" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcDeselectAll -win $_nTrace1
srcSelect -signal "pos_x" -line 17 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "tb_md_top/dut/pos_x\[0:15\]"
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvConvertFile -win $_nWave2 -o \
           "/home/v70369/mydata/final_proj_3_29/waves.vcd.fsdb" \
           "/home/v70369/mydata/final_proj_3_29/waves.vcd"
wvOpenFile -win $_nWave2 {/home/v70369/mydata/final_proj_3_29/waves.vcd.fsdb}
wvZoom -win $_nWave2 0.000000 5060100.000000
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvZoom -win $_nWave2 0.000000 5060100.000000
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pos_x" -line 17 -pos 1 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "tb_md_top/dut/pos_x\[0:15\]"
wvDrop -win $_nWave2
srcDrag -win $_nTrace1
srcHBSelect "tb_md_top" -win $_nTrace1
srcHBSelect "tb_md_top" -win $_nTrace1
srcSelect -win $_nTrace1 -range {3 3 3 4 1 1}
srcSetScope "tb_md_top" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcSetScope "tb_md_top.dut" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 20 -pos 2 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/idx"
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvDrop -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pos_x\[idx\]" -line 24 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "tb_md_top/dut/pos_x\[0:15\]"
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "pos_y\[idx\]" -line 25 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pos_x\[i_idx\]" -line 58 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "xi" -line 58 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/xi\[31:0\]"
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "yi" -line 59 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/yi\[31:0\]"
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "xj" -line 60 -pos 1 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/xj\[31:0\]"
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvDrop -win $_nWave2
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "yj" -line 61 -pos 1 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/yj\[31:0\]"
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvDrop -win $_nWave2
srcDrag -win $_nTrace1
verdiSetActWin -win $_nWave2
wvZoom -win $_nWave2 0.000000 1268509.917355
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvZoomAll -win $_nWave2
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "tb_md_top.dut.pg" -win $_nTrace1
srcHBSelect "tb_md_top.dut.pg" -win $_nTrace1
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcSetScope "tb_md_top.dut.pg" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top.dut.pg" -win $_nTrace1
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcSetScope "tb_md_top.dut.disp" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "valid_in" -line 8 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "valid_in" -line 8 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/disp/valid_in"
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "xi" -line 9 -pos 1 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/disp/xi\[31:0\]"
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvDrop -win $_nWave2
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "yi" -line 9 -pos 1 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/disp/yi\[31:0\]"
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 8)}
wvDrop -win $_nWave2
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "xj" -line 9 -pos 1 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/disp/xj\[31:0\]"
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G2" 9)}
wvDrop -win $_nWave2
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "yj" -line 9 -pos 1 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/disp/yj\[31:0\]"
wvSetPosition -win $_nWave2 {("G2" 9)}
wvSetPosition -win $_nWave2 {("G2" 10)}
wvDrop -win $_nWave2
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "valid_out" -line 11 -pos 1 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/disp/valid_out\[3:0\]"
wvSetPosition -win $_nWave2 {("G2" 10)}
wvSetPosition -win $_nWave2 {("G2" 11)}
wvDrop -win $_nWave2
srcDrag -win $_nTrace1
verdiSetActWin -win $_nWave2
wvZoom -win $_nWave2 0.000000 1301035.812672
wvSetCursor -win $_nWave2 41814.741454 -snap {("G2" 11)}
wvSetCursor -win $_nWave2 52567.103542 -snap {("G2" 11)}
srcActiveTrace "tb_md_top.dut.disp.valid_out\[3:0\]" -TraceByDConWave -TraceTime \
           45000 -TraceValue 0001 -win $_nTrace1
nsMsgExpandItem -tab trace -index {0}
nsMsgSwitchTab -tab trace
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
wvSetCursor -win $_nWave2 59735.344934 -snap {("G2" 11)}
wvSetCursor -win $_nWave2 60930.051833 -snap {("G2" 11)}
wvSetCursor -win $_nWave2 68098.293225 -snap {("G2" 11)}
wvSetCursor -win $_nWave2 72877.120820 -snap {("G2" 11)}
wvSetCursor -win $_nWave2 170843.086513 -snap {("G2" 11)}
wvSetCursor -win $_nWave2 272393.172901 -snap {("G2" 11)}
wvSetCursor -win $_nWave2 309429.086760 -snap {("G2" 11)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "valid_in" -line 30 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/disp/valid_in"
wvSetPosition -win $_nWave2 {("G2" 11)}
wvSetPosition -win $_nWave2 {("G2" 12)}
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 11 )} 
wvSelectSignal -win $_nWave2 {( "G2" 12 )} 
verdiSetActWin -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 11)}
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "valid_out\[pipeline_id\]" -line 32 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/disp/valid_out\[3:0\]"
wvSetPosition -win $_nWave2 {("G2" 11)}
wvSetPosition -win $_nWave2 {("G2" 12)}
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "pipeline_id" -line 40 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/disp/pipeline_id\[1:0\]"
wvSetPosition -win $_nWave2 {("G2" 12)}
wvSetPosition -win $_nWave2 {("G2" 13)}
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDrag -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 12 )} 
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 13 )} 
wvSetCursor -win $_nWave2 40620.034555 -snap {("G2" 13)}
wvSetCursor -win $_nWave2 50177.689745 -snap {("G2" 13)}
wvSetCursor -win $_nWave2 58540.638036 -snap {("G2" 13)}
wvSelectSignal -win $_nWave2 {( "G2" 12 )} 
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcHBSelect "tb_md_top.dut.pg" -win $_nTrace1
srcHBSelect "tb_md_top.dut.pg" -win $_nTrace1
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcSetScope "tb_md_top.dut.pg" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top.dut.pg" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcSetScope "tb_md_top.dut.disp" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
srcHBSelect "tb_md_top.dut.pipes" -win $_nTrace1
srcHBSelect "tb_md_top.dut.pipes" -win $_nTrace1
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcSetScope "tb_md_top.dut.pipes" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top.dut.pipes" -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "valid_in" -line 8 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
srcHBSelect "tb_md_top.dut.pipes.PIPELINES\[0\]" -win $_nTrace1
srcHBSelect "tb_md_top.dut.pipes.PIPELINES\[0\]" -win $_nTrace1
srcSelect -win $_nTrace1 -range {20 20 34 35 1 1}
srcSetScope "tb_md_top.dut.pipes.PIPELINES\[0\]" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top.dut.pipes.PIPELINES\[0\]" -win $_nTrace1
srcHBSelect "tb_md_top.dut.pipes.PIPELINES\[0\]" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "tb_md_top.dut.pipes.PIPELINES\[0\].fp" -win $_nTrace1
srcHBSelect "tb_md_top.dut.pipes.PIPELINES\[0\].fp" -win $_nTrace1
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcSetScope "tb_md_top.dut.pipes.PIPELINES\[0\].fp" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top.dut.pipes.PIPELINES\[0\].fp" -win $_nTrace1
srcHBSelect "tb_md_top.dut.pipes.PIPELINES\[0\].fp" -win $_nTrace1
srcHBSelect "tb_md_top.dut.pg" -win $_nTrace1
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcSetScope "tb_md_top.dut.disp" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "xi_bus\[pipeline_id*WIDTH +: WIDTH\]" -line 34 -pos 1 -win \
          $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/disp/xi_bus\[127:0\]"
wvSetPosition -win $_nWave2 {("G2" 13)}
wvSetPosition -win $_nWave2 {("G2" 14)}
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "yi_bus\[pipeline_id*WIDTH +: WIDTH\]" -line 35 -pos 1 -win \
          $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/disp/yi_bus\[127:0\]"
wvSetPosition -win $_nWave2 {("G2" 14)}
wvSetPosition -win $_nWave2 {("G2" 15)}
wvDrop -win $_nWave2
srcDrag -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
verdiSetActWin -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetCursor -win $_nWave2 1232937.519447 -snap {("G1" 7)}
wvZoom -win $_nWave2 1058510.312238 1299841.105773
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcSetScope "tb_md_top.dut" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcDeselectAll -win $_nTrace1
srcSelect -signal "xi" -line 80 -pos 2 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/xi\[31:0\]"
wvSetPosition -win $_nWave2 {("G2" 15)}
wvSetPosition -win $_nWave2 {("G2" 16)}
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "yi" -line 81 -pos 2 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/yi\[31:0\]"
wvSetPosition -win $_nWave2 {("G2" 16)}
wvSetPosition -win $_nWave2 {("G2" 17)}
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "xj" -line 82 -pos 2 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/xj\[31:0\]"
wvSetPosition -win $_nWave2 {("G2" 17)}
wvSetPosition -win $_nWave2 {("G2" 18)}
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDrag -win $_nTrace1
srcHBSelect "tb_md_top" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcSetScope "tb_md_top.dut" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcSearchString "pg_valid" -next -case -win $_nTrace1
srcSelect -win $_nTrace1 -range {33 33 3 4 1 1}
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "pg_valid" -next
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pg_valid" -line 33 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/pg_valid"
wvSetPosition -win $_nWave2 {("G2" 18)}
wvSetPosition -win $_nWave2 {("G2" 19)}
wvDrop -win $_nWave2
wvZoomAll -win $_nWave2
verdiSetActWin -win $_nWave2
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcSetScope "tb_md_top.dut.disp" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcSetScope "tb_md_top.dut" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcSearchString "disp_valid" -next -case -win $_nTrace1
srcSelect -win $_nTrace1 -range {69 69 11 12 1 1}
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "disp_valid" -next
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "disp_valid" -line 69 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/disp_valid\[3:0\]"
wvSetPosition -win $_nWave2 {("G2" 19)}
wvSetPosition -win $_nWave2 {("G2" 20)}
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
wvZoom -win $_nWave2 0.000000 376371.074380
debReload
nsMsgSwitchTab -tab general
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvConvertFile -win $_nWave2 -o \
           "/home/v70369/mydata/final_proj_3_29/waves.vcd.fsdb" \
           "/home/v70369/mydata/final_proj_3_29/waves.vcd"
wvOpenFile -win $_nWave2 {/home/v70369/mydata/final_proj_3_29/waves.vcd.fsdb}
wvZoom -win $_nWave2 0.000000 376371.074380
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 20)}
wvZoom -win $_nWave2 0.000000 376371.074380
srcFindScope -scope "Entity \(Architecture\)"
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcSignalView -off
srcSetOptions -identifyFalseLogic off -win $_nTrace1
verdiHighlightSignal -apply
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcSetScope "tb_md_top.dut.disp" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcSearchString "pipeline_id" -next -case -win $_nTrace1
srcSelect -win $_nTrace1 -range {18 18 14 15 1 1}
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "pipeline_id" -next
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pipeline_id" -line 18 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pipeline_id" -line 18 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/disp/pipeline_id\[1:0\]"
wvSetPosition -win $_nWave2 {("G2" 20)}
wvSetPosition -win $_nWave2 {("G2" 21)}
wvDrop -win $_nWave2
srcHBSelect "tb_md_top" -win $_nTrace1
srcHBSelect "tb_md_top" -win $_nTrace1
srcSelect -win $_nTrace1 -range {3 3 3 4 1 1}
srcSetScope "tb_md_top" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcSearchString "total_pairs" -next -case -win $_nTrace1
srcSelect -win $_nTrace1 -range {24 24 3 4 1 1}
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "total_pairs" -next
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "total_pairs" -line 24 -pos 1 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/total_pairs"
wvSetPosition -win $_nWave2 {("G2" 21)}
wvSetPosition -win $_nWave2 {("G2" 22)}
wvDrop -win $_nWave2
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "total_pairs" -line 24 -pos 1 -win $_nTrace1
srcAction -pos 23 2 8 -win $_nTrace1 -name "total_pairs" -ctrlKey off
srcAction -pos 23 2 8 -win $_nTrace1 -name "total_pairs" -ctrlKey off
srcActiveTrace "tb_md_top.total_pairs" -win $_nTrace1
nsMsgExpandItem -tab trace -index {0}
nsMsgSwitchTab -tab trace
srcHBSelect "tb_md_top" -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "total_pairs" -line 24 -pos 1 -win $_nTrace1
srcAction -pos 23 2 8 -win $_nTrace1 -name "total_pairs" -ctrlKey off
srcAction -pos 23 2 8 -win $_nTrace1 -name "total_pairs" -ctrlKey off
srcActiveTrace "tb_md_top.total_pairs" -win $_nTrace1
nsMsgExpandItem -tab trace -index {0}
srcHBSelect "tb_md_top" -win $_nTrace1
srcDrag -win $_nTrace1
srcSearchString "total_pairs" -next -case -win $_nTrace1
srcSelect -win $_nTrace1 -range {111 111 9 10 1 1}
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "total_pairs" -next
srcDrag -win $_nTrace1
srcSearchString "total_pairs" -next -case -win $_nTrace1
srcSelect -win $_nTrace1 -range {114 114 4 5 1 1}
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "total_pairs" -next
srcDrag -win $_nTrace1
srcSearchString "total_pairs" -next -case -win $_nTrace1
srcSelect -win $_nTrace1 -range {127 127 9 10 1 1}
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "total_pairs" -next
srcSearchString "total_pairs" -next -case -win $_nTrace1
srcSelect -win $_nTrace1 -range {130 130 4 5 1 1}
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "total_pairs" -next
srcDrag -win $_nTrace1
srcSearchString "total_pairs" -next -case -win $_nTrace1
srcSelect -win $_nTrace1 -range {142 142 2 3 1 1}
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "total_pairs" -next
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "total_cycles" -line 141 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/total_cycles"
wvSetPosition -win $_nWave2 {("G2" 22)}
wvSetPosition -win $_nWave2 {("G2" 23)}
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "end_cycle" -line 141 -pos 1 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/end_cycle"
wvSetPosition -win $_nWave2 {("G2" 23)}
wvSetPosition -win $_nWave2 {("G2" 24)}
wvDrop -win $_nWave2
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "start_cycle" -line 141 -pos 1 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/start_cycle"
wvSetPosition -win $_nWave2 {("G2" 24)}
wvSetPosition -win $_nWave2 {("G2" 25)}
wvDrop -win $_nWave2
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "cycle_count" -line 120 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "total_pairs" -line 114 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "end_cycle" -line 141 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "end_cycle" -line 141 -pos 1 -win $_nTrace1
srcAction -pos 140 5 4 -win $_nTrace1 -name "end_cycle" -ctrlKey off
srcAction -pos 140 5 4 -win $_nTrace1 -name "end_cycle" -ctrlKey off
srcActiveTrace "tb_md_top.end_cycle" -win $_nTrace1
nsMsgExpandItem -tab trace -index {1}
srcHBSelect "tb_md_top" -win $_nTrace1
srcDrag -win $_nTrace1
srcSearchString "end_cycle" -next -case -win $_nTrace1
srcSelect -win $_nTrace1 -range {100 100 2 2 3 12}
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "end_cycle" -next
srcDrag -win $_nTrace1
debReload
nsMsgSwitchTab -tab general
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvConvertFile -win $_nWave2 -o \
           "/home/v70369/mydata/final_proj_3_29/waves.vcd.fsdb" \
           "/home/v70369/mydata/final_proj_3_29/waves.vcd"
wvOpenFile -win $_nWave2 {/home/v70369/mydata/final_proj_3_29/waves.vcd.fsdb}
wvZoom -win $_nWave2 0.000000 376371.074380
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 25)}
wvZoom -win $_nWave2 0.000000 376371.074380
srcFindScope -scope "Entity \(Architecture\)"
srcSelect -win $_nTrace1 -range {3 3 3 4 1 1}
srcHBSelect "tb_md_top" -win $_nTrace1
srcSignalView -off
srcSetOptions -identifyFalseLogic off -win $_nTrace1
verdiHighlightSignal -apply
srcDrag -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 24 )} 
verdiSetActWin -win $_nWave2
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 23 )} 
wvZoom -win $_nWave2 1234356.336088 1255140.633609
srcDeselectAll -win $_nTrace1
srcSelect -signal "total_cycles" -line 114 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDrag -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
debReload
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvConvertFile -win $_nWave2 -o \
           "/home/v70369/mydata/final_proj_3_29/waves.vcd.fsdb" \
           "/home/v70369/mydata/final_proj_3_29/waves.vcd"
wvOpenFile -win $_nWave2 {/home/v70369/mydata/final_proj_3_29/waves.vcd.fsdb}
wvZoom -win $_nWave2 1234356.336088 1255140.633609
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 25)}
wvZoom -win $_nWave2 1234356.336088 1255140.633609
srcFindScope -scope "Entity \(Architecture\)"
srcSelect -win $_nTrace1 -range {3 3 3 4 1 1}
srcHBSelect "tb_md_top" -win $_nTrace1
srcSignalView -off
srcSetOptions -identifyFalseLogic off -win $_nTrace1
verdiHighlightSignal -apply
wvZoomAll -win $_nWave2
verdiSetActWin -win $_nWave2
wvScrollUp -win $_nWave2 20
wvScrollUp -win $_nWave2 5
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomAll -win $_nWave2
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcSetScope "tb_md_top.dut" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top.dut" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pg_valid" -line 79 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pg_valid" -line 57 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pg_valid" -line 42 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/pg_valid"
wvSetPosition -win $_nWave2 {("G2" 25)}
wvSetPosition -win $_nWave2 {("G2" 26)}
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 26557.713499 -snap {("G2" 26)}
verdiSetActWin -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "pg_valid" -line 57 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pos_x\[i_idx\]" -line 58 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "xi" -line 58 -pos 1 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/xi\[31:0\]"
wvSetPosition -win $_nWave2 {("G2" 26)}
wvSetPosition -win $_nWave2 {("G2" 27)}
wvDrop -win $_nWave2
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "yi" -line 59 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/yi\[31:0\]"
wvSetPosition -win $_nWave2 {("G2" 27)}
wvSetPosition -win $_nWave2 {("G2" 28)}
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "xj" -line 60 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/xj\[31:0\]"
wvSetPosition -win $_nWave2 {("G2" 28)}
wvSetPosition -win $_nWave2 {("G2" 29)}
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "yj" -line 61 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/yj\[31:0\]"
wvSetPosition -win $_nWave2 {("G2" 29)}
wvSetPosition -win $_nWave2 {("G2" 30)}
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "disp_valid" -line 69 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/disp_valid\[3:0\]"
wvSetPosition -win $_nWave2 {("G2" 30)}
wvSetPosition -win $_nWave2 {("G2" 31)}
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "xi" -line 80 -pos 2 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/xi\[31:0\]"
wvSetPosition -win $_nWave2 {("G2" 31)}
wvSetPosition -win $_nWave2 {("G2" 32)}
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 32 )} 
verdiSetActWin -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 31)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "disp_valid" -line 89 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/disp_valid\[3:0\]"
wvSetPosition -win $_nWave2 {("G2" 31)}
wvSetPosition -win $_nWave2 {("G2" 32)}
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "xi_bus" -line 90 -pos 2 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/xi_bus\[127:0\]"
wvSetPosition -win $_nWave2 {("G2" 32)}
wvSetPosition -win $_nWave2 {("G2" 33)}
wvDrop -win $_nWave2
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "yi_bus" -line 91 -pos 2 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/yi_bus\[127:0\]"
wvSetPosition -win $_nWave2 {("G2" 33)}
wvSetPosition -win $_nWave2 {("G2" 34)}
wvDrop -win $_nWave2
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "xj_bus" -line 92 -pos 2 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/xj_bus\[127:0\]"
wvSetPosition -win $_nWave2 {("G2" 34)}
wvSetPosition -win $_nWave2 {("G2" 35)}
wvDrop -win $_nWave2
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "yj_bus" -line 93 -pos 2 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/yj_bus\[127:0\]"
wvSetPosition -win $_nWave2 {("G2" 35)}
wvSetPosition -win $_nWave2 {("G2" 36)}
wvDrop -win $_nWave2
srcDrag -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 32 )} 
verdiSetActWin -win $_nWave2
wvZoom -win $_nWave2 33509.145802 318914.629016
srcDeselectAll -win $_nTrace1
srcSelect -signal "xi_bus" -line 90 -pos 2 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcSetScope "tb_md_top.dut.disp" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "valid_in" -line 30 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/disp/valid_in"
wvSetPosition -win $_nWave2 {("G2" 36)}
wvSetPosition -win $_nWave2 {("G2" 37)}
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "valid_out\[pipeline_id\]" -line 32 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/disp/valid_out\[3:0\]"
wvSetPosition -win $_nWave2 {("G2" 37)}
wvSetPosition -win $_nWave2 {("G2" 38)}
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "xi_bus\[pipeline_id*WIDTH +: WIDTH\]" -line 34 -pos 1 -win \
          $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/disp/xi_bus\[127:0\]"
wvSetPosition -win $_nWave2 {("G2" 38)}
wvSetPosition -win $_nWave2 {("G2" 39)}
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 84601.946455 -snap {("G2" 38)}
verdiSetActWin -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "xi" -line 34 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/disp/xi\[31:0\]"
wvSetPosition -win $_nWave2 {("G2" 39)}
wvSetPosition -win $_nWave2 {("G2" 40)}
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 54660.466503 -snap {("G2" 39)}
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 64824.088138 -snap {("G2" 39)}
wvSetCursor -win $_nWave2 75262.402249 -snap {("G2" 39)}
wvSetCursor -win $_nWave2 84052.561501 -snap {("G2" 39)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 209373.291627 -snap {("G2" 39)}
wvSetCursor -win $_nWave2 221475.794033 -snap {("G2" 39)}
wvSetCursor -win $_nWave2 228737.295476 -snap {("G2" 39)}
wvSetCursor -win $_nWave2 239629.547642 -snap {("G2" 39)}
wvSetCursor -win $_nWave2 242050.048123 -snap {("G2" 39)}
wvSetCursor -win $_nWave2 80212.570356 -snap {("G2" 39)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 209968.198874 -snap {("G2" 39)}
wvSetCursor -win $_nWave2 221296.590071 -snap {("G2" 39)}
wvSetCursor -win $_nWave2 231947.228096 -snap {("G2" 39)}
wvSetCursor -win $_nWave2 88755.316874 -snap {("G2" 39)}
debReload
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvConvertFile -win $_nWave2 -o \
           "/home/v70369/mydata/final_proj_3_29/waves.vcd.fsdb" \
           "/home/v70369/mydata/final_proj_3_29/waves.vcd"
wvOpenFile -win $_nWave2 {/home/v70369/mydata/final_proj_3_29/waves.vcd.fsdb}
wvZoom -win $_nWave2 0.000000 1035478.696858
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvAddSignal -win $_nWave2 "/tb_md_top/dut/xi\[31:0\]"
wvAddSignal -win $_nWave2 "/tb_md_top/dut/yi\[31:0\]"
wvAddSignal -win $_nWave2 "/tb_md_top/dut/xj\[31:0\]"
wvAddSignal -win $_nWave2 "/tb_md_top/dut/yj\[31:0\]"
wvAddSignal -win $_nWave2 "/tb_md_top/dut/xi\[31:0\]"
wvAddSignal -win $_nWave2 "/tb_md_top/dut/yi\[31:0\]"
wvAddSignal -win $_nWave2 "/tb_md_top/dut/xj\[31:0\]"
wvAddSignal -win $_nWave2 "/tb_md_top/dut/xi\[31:0\]"
wvAddSignal -win $_nWave2 "/tb_md_top/dut/yi\[31:0\]"
wvAddSignal -win $_nWave2 "/tb_md_top/dut/xj\[31:0\]"
wvAddSignal -win $_nWave2 "/tb_md_top/dut/yj\[31:0\]"
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvZoom -win $_nWave2 0.000000 1035478.696858
srcFindScope -scope "Entity \(Architecture\)"
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcHBSelect "tb_md_top.dut.disp" -win $_nTrace1
srcSignalView -off
srcSetOptions -identifyFalseLogic off -win $_nTrace1
verdiHighlightSignal -apply
wvScrollDown -win $_nWave2 32
wvSelectSignal -win $_nWave2 {( "G2" 28 )} 
wvSetCursor -win $_nWave2 73371.061949 -snap {("G2" 28)}
wvSetCursor -win $_nWave2 199995.314022 -snap {("G2" 28)}
wvSetCursor -win $_nWave2 214196.164721 -snap {("G2" 28)}
wvSetCursor -win $_nWave2 218929.781621 -snap {("G2" 28)}
wvSetCursor -win $_nWave2 222479.994296 -snap {("G2" 28)}
wvSetCursor -win $_nWave2 230763.823871 -snap {("G2" 28)}
wvSetCursor -win $_nWave2 79288.083074 -snap {("G2" 28)}
wvSetCursor -win $_nWave2 198811.909797 -snap {("G2" 28)}
wvZoom -win $_nWave2 159759.570372 686374.450489
wvSetCursor -win $_nWave2 212721.981173 -snap {("G2" 28)}
wvSetCursor -win $_nWave2 221749.664832 -snap {("G2" 28)}
wvSetCursor -win $_nWave2 203092.451936 -snap {("G2" 28)}
wvSetCursor -win $_nWave2 212721.981173 -snap {("G2" 28)}
wvSetCursor -win $_nWave2 223555.201564 -snap {("G2" 28)}
wvSetCursor -win $_nWave2 233960.041783 -snap {("G2" 28)}
wvSetCursor -win $_nWave2 342546.097506 -snap {("G2" 28)}
wvSetCursor -win $_nWave2 352801.447213 -snap {("G2" 28)}
wvZoom -win $_nWave2 360040.517595 372708.890763
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 374623.877404 -snap {("G2" 28)}
srcHBSelect "tb_md_top.dut.pipes" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "tb_md_top.dut.pipes" -win $_nTrace1
srcHBSelect "tb_md_top.dut.pipes" -win $_nTrace1
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcSetScope "tb_md_top.dut.pipes" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top.dut.pipes" -win $_nTrace1
srcHBSelect "tb_md_top.dut.pipes" -win $_nTrace1
srcHBSelect "tb_md_top.dut.pipes" -win $_nTrace1
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcSetScope "tb_md_top.dut.pipes" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top.dut.pipes" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -line 5 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst" -line 6 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "valid_in" -line 8 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "valid_in" -line 8 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "valid_out" -line 14 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/pipes/valid_out\[3:0\]"
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "force_out" -line 15 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/pipes/force_out\[127:0\]"
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvDrop -win $_nWave2
wvZoomAll -win $_nWave2
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 102350.581395 -snap {("G3" 2)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "force_out\[k*WIDTH +: WIDTH\]" -line 33 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "force_out\[k*WIDTH +: WIDTH\]" -line 33 -pos 1 -win $_nTrace1
srcAction -pos 32 4 2 -win $_nTrace1 -name "force_out\[k*WIDTH +: WIDTH\]" \
          -ctrlKey off
srcAction -pos 32 4 2 -win $_nTrace1 -name "force_out\[k*WIDTH +: WIDTH\]" \
          -ctrlKey off
srcActiveTrace "tb_md_top.dut.pipes.force_out\[127:0\]" -win $_nTrace1
nsMsgExpandItem -tab trace -index {0}
nsMsgSwitchTab -tab trace
srcHBSelect "tb_md_top.dut.pipes.PIPELINES\[0\].fp" -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dx_s1" -line 13 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {21 30 1 1 8 1}
srcDrag -win $_nTrace1
verdiSetActWin -win $_nWave2
debReload
nsMsgSwitchTab -tab general
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvConvertFile -win $_nWave2 -o \
           "/home/v70369/mydata/final_proj_3_29/waves.vcd.fsdb" \
           "/home/v70369/mydata/final_proj_3_29/waves.vcd"
wvOpenFile -win $_nWave2 {/home/v70369/mydata/final_proj_3_29/waves.vcd.fsdb}
wvZoom -win $_nWave2 0.000000 1257450.000000
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvZoom -win $_nWave2 0.000000 1257450.000000
srcFindScope -scope "Entity \(Architecture\)"
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcHBSelect "tb_md_top.dut.pipes.PIPELINES\[0\].fp" -win $_nTrace1
srcSignalView -off
srcSetOptions -identifyFalseLogic off -win $_nTrace1
verdiHighlightSignal -apply
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvSetCursor -win $_nWave2 108849.031008 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 105599.806202 -snap {("G3" 2)}
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "force_out" -line 46 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "force_out" -line 46 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 \
           "tb_md_top/dut/pipes/PIPELINES\[0\]/fp/force_out\[31:0\]"
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDrag -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "force_out" -line 46 -pos 1 -win $_nTrace1
srcDrag -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 \
           "tb_md_top/dut/pipes/PIPELINES\[0\]/fp/force_out\[31:0\]"
wvDrop -win $_nWave2
srcHBSelect "tb_md_top.dut.pipes" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "tb_md_top.dut.pipes.PIPELINES\[0\]" -win $_nTrace1
srcHBSelect "tb_md_top.dut.pipes" -win $_nTrace1
srcHBSelect "tb_md_top.dut.pipes" -win $_nTrace1
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcSetScope "tb_md_top.dut.pipes" -delim "." -win $_nTrace1
srcHBSelect "tb_md_top.dut.pipes" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "force_out\[k*WIDTH +: WIDTH\]" -line 33 -pos 1 -win $_nTrace1
wvGetActiveFileName -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_md_top/dut/pipes/force_out\[127:0\]"
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvDrop -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
wvSetCursor -win $_nWave2 107224.418605 -snap {("G3" 3)}
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 102350.581395 -snap {("G3" 3)}
wvSetCursor -win $_nWave2 3249.224806 -snap {("G3" 3)}
wvSetCursor -win $_nWave2 19495.348837 -snap {("G3" 3)}
wvSetCursor -win $_nWave2 320048.643411 -snap {("G3" 3)}
debReload
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvConvertFile -win $_nWave2 -o \
           "/home/v70369/mydata/final_proj_3_29/waves.vcd.fsdb" \
           "/home/v70369/mydata/final_proj_3_29/waves.vcd"
wvOpenFile -win $_nWave2 {/home/v70369/mydata/final_proj_3_29/waves.vcd.fsdb}
wvZoom -win $_nWave2 0.000000 1257450.000000
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvZoom -win $_nWave2 0.000000 1257450.000000
srcFindScope -scope "Entity \(Architecture\)"
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcHBSelect "tb_md_top.dut.pipes" -win $_nTrace1
srcSignalView -off
srcSetOptions -identifyFalseLogic off -win $_nTrace1
verdiHighlightSignal -apply
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G3" 2)}
debReload
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvConvertFile -win $_nWave2 -o \
           "/home/v70369/mydata/final_proj_3_29/waves.vcd.fsdb" \
           "/home/v70369/mydata/final_proj_3_29/waves.vcd"
wvOpenFile -win $_nWave2 {/home/v70369/mydata/final_proj_3_29/waves.vcd.fsdb}
wvZoom -win $_nWave2 0.000000 1257450.000000
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvZoom -win $_nWave2 0.000000 1257450.000000
srcFindScope -scope "Entity \(Architecture\)"
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcHBSelect "tb_md_top.dut.pipes" -win $_nTrace1
srcSignalView -off
srcSetOptions -identifyFalseLogic off -win $_nTrace1
verdiHighlightSignal -apply
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
