# README for CS4125 Final Project 2015 V1

## Good luck and happy designing

### Setup File for Synopsys Design Compiler

You should rename it to .synopsys_dc.setup

-    synopsys_dc.setup

### A Sample Test Stimulus

The stimulus comes with a Makefile, a header file and the sample waveform for
your reference.

-    Makefile
-    header.v
-    risc_t.v
-    risc.orig.fsdb

### Memory Model

-    RAM2Kx32.v
-    RAM2Kx32_slow_syn.db (we include the synthesis model of RAM2Kx32 in
     .synopsys_dc.setup so you may perform synthesis of the whole design 
     including memories)

### Sample test programs (binary code):

Note: Some of them may not be fully verified.  They are here for your
reference.  Please report any bug you find out.

-    01_gcd_plain-unified.dat
     The test code of GCD function for unified instruction/data memory.
     In the test stimulus rist_t.v using separate I/D memory, the test
     code is split to two files:

         01_gcd_plain-bin.dat for the binary code and
         01_gcd_plain-data.dat for the data segment.

     Note that the following test programs are all in the unified style.
     You should convert them to separate format by your own.
         
-    02_mult.dat
-    03_division.dat
-    04_lcm.dat
-    05_factorial.dat
-    06_fibonacci_recursive.dat
-    07_lcm_2.dat
-    08_summation.dat
-    09_fabonacci.dat
-    10_division_2.dat
-    11_lcm_3.dat
-    12_factional_2.dat
-    13_procedure_call.dat

### Separate instruction and data memories

- Test stimulus risc_t.v 使用分開的 I/D memories (源自同一個 RAM2Kx32
  reference, 並以 parameter preload_file 預載記憶體初始值).
  使用方法請參考 risc_t.v 中的 IMEM, DMEM instances.
- 同時 code segment (如 01_gcd_plain-unified.dat) 需要分成兩個檔案:

      01_gcd_plain-bin.dat 是 binary code 的內容
      01_gcd_plain-data.dat 則是 data segment 的部份

  你可以參考 risc_t.v 第 71-93 行, 分別將這兩份 binary code 與 data segment
  一開始便載入 IMEM 與 DMEM 中. 這兩個檔案則是定義成 program_code, program_data
  兩個 parameters.
- 在 risc_t.v 中的測試範例分兩部分, 一開始是針對 instruction memory 做
  instruction fetch, 注意我只是用一個 while loop 來做. 你必須配合不同的
  binary code 修改 instr_count 這個參數的數值. 否則 risc_t.v 不知道何時應該正確
  結束. 你也可以定義一個特殊的 instruction, 例如叫做 EOF (OPCode = 7'b1111111),
  fetch 到 EOF 就自動判斷結束模擬.
- 第二部分是對 data memory 先寫入三個位置, 再讀取五個位置 (包括 preload 到位址
  1024, 1025 的值. 請參考這兩部分的例子，設計你的 RISC processor.

### Debugging features

- Debugging 的功能請參考 header.v 裡有關 debugging feature 的
  開關設定. 總共有下列幾種:

  DEBUG_MEM

      一開始會把 preload 進去的 data 傾印出來, 供作檢查. 因為有兩個 2K addresses
      的記憶體, 會比較長. 你可以在確認 preload 無誤後關掉, 不需每次都印出. 或者
      可以用小範圍的區段, 並修改 RAM2Kx32.v 不要印出全部. 譬如 test code 只佔用
      addresses 0-31, data segment 也只用 addresses 0-31, 就直接修改 RAM2Kx32.v
      裡的傾印功能, 只顯示 0-31.

  DEBUG_DATAMEM_RW

      利用我提供的 dm_write 與 dm_read 時, 會順便印出寫入與讀出的位址和資料. 你可以
      參考這些 cycle-based timing.

  DEBUG_MEM_RW

      寫在 RAM2Kx32.v 裡, 當記憶體被寫入或讀取時會印出寫入與讀出的位址和資料.
      打開這個選項後, IMEM 與 DMEM 的存取都會印出, 訊息會比較多, 所以預設是關閉的.

  CYC_BASED_DEASSEMBLY

      這個選項是以 positive-edge clock trigger 的方式來擷取 instruction, 進行
      de-assembler, 預設是關閉的. 這個簡單的 de-assembler 有一些限制. 

      1. 關閉這個選項 (預設): 連續的指令如果一模一樣, 第二個之後的指令不會印出
         (因為我用 always @(ir))

      2. 打開這個選項: 只要 clock 動起來就會一直印出訊息, 同時 PC 跟 instruction
         有可能不同步
         (因為我用 always @(posedge clk))

      無論如何, 這個簡易的 de-assembler 只是幫助 debug, 如果你覺得不敷使用, 歡迎
      改進這功能.

### Test Stimulus 補充說明 

請特別注意, risc_t.v 這個 test stimulus 只是給各位參考用的.
這個例子裡用了兩個 memories, 一個當做 IMEM 預載了 binary
code, 另一個當 DMEM 預載了 data. 然後用了 instr_fetch 示範如何讀出
instruction; dm_write 與 dm_read 示範如何存取 data.

請注意這些都只是讓你熟悉如何使用 memory. 當你設計自己的 RISC processor
後，instr_fetch, dm_write 及 dm_read 就不再需要了，你的 processor 會
取代他們。請自行刪除。


### Unified I/D memory

- 分開的 I/D memories 應該比較好設計 pipelined processor. 如果你想用 unified
  I/D memory 的架構 (比如說你想放棄 pipeline 轉作 single-cycle 或 multi-cycle
  processor). 可以使用單一 memory instance, 並使用 01_gcd_plain_unified.dat
  這種合併的版本就可.

### Other things you may want to know

- 另外注意除了 01_gcd_plain 之外，其他的例子仍然將 binary code 與 data segment
  放外同一個 dat 檔裡. 請自行修改. 我在拆 01_gcd_plain 時並沒有改 data 擺放的
  位置 (仍然放在 1024, 1025 兩個位址). 這只是為了容易對照, 並非必要.
- 在 risc_t.v 裡有一個 delay 的參數, 是為了避開存取記憶體時的 timing violation.
  寫入讀取記憶體時會加入額外的 delay. 你也可以直接用

      ncverilog +nospecify +notimingchecks

  來避開.


### 評分時的重點參考

Demo 與 report 形式不拘.

現場展示 (建議用投影片輔助，事先練習)
-    設計概念
-    實作完成度/難易度說明
-    測試完整度
-    操作展示
書面報告
-    設計概念
-    架構細節及方塊圖
-    實作完成度/難易度說明
-    測試完整度
-    困難與解決方法
-    心得討論
