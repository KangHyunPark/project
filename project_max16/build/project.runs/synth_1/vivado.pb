
q
Command: %s
53*	vivadotcl2@
,synth_design -top top -part xc7a200tsbg484-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a200t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a200t2default:defaultZ17-349h px? 
W
Loading part %s157*device2$
xc7a200tsbg484-12default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
235762default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1135.965 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
top2default:default2
 2default:default2[
EC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/top.v2default:default2
22default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2 
max_module322default:default2
 2default:default2d
NC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/max_module32.v2default:default2
22default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter bank bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2 
max_operator2default:default2
 2default:default2d
NC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/max_operator.v2default:default2
22default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
max_operator2default:default2
 2default:default2
12default:default2
12default:default2d
NC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/max_operator.v2default:default2
22default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
max_module322default:default2
 2default:default2
22default:default2
12default:default2d
NC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/max_module32.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

controller2default:default2
 2default:default2b
LC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/controller.v2default:default2
32default:default8@Z8-6157h px? 
k
%s
*synth2S
?	Parameter global_buf_addr_width bound to: 17 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter bank bound to: 32 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter log_bank bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter microaddr_width bound to: 5 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

controller2default:default2
 2default:default2
32default:default2
12default:default2b
LC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/controller.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2'
systolic_controller2default:default2
 2default:default2k
UC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/systolic_controller.v2default:default2
32default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter PE_ROW bound to: 16 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter global_buf_addr_width bound to: 17 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
systolic_controller2default:default2
 2default:default2
42default:default2
12default:default2k
UC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/systolic_controller.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
systolic2default:default2
 2default:default2`
JC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/systolic.v2default:default2
32default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter PE_ROW bound to: 16 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter PE_COL bound to: 16 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter INPUT_DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter WEIGHT_DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter OUTPUT_DATA_WIDTH bound to: 24 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2 
systolic_row2default:default2
 2default:default2d
NC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/systolic_row.v2default:default2
32default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter PE_NUM bound to: 16 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter INPUT_DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter WEIGHT_DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter OUTPUT_DATA_WIDTH bound to: 24 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
PE2default:default2
 2default:default2Z
DC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/PE.v2default:default2
32default:default8@Z8-6157h px? 
e
%s
*synth2M
9	Parameter INPUT_DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter WEIGHT_DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter OUTPUT_DATA_WIDTH bound to: 24 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PE2default:default2
 2default:default2
52default:default2
12default:default2Z
DC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/PE.v2default:default2
32default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
systolic_row2default:default2
 2default:default2
62default:default2
12default:default2d
NC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/systolic_row.v2default:default2
32default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
systolic2default:default2
 2default:default2
72default:default2
12default:default2`
JC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/systolic.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
systolic_input_buffer2default:default2
 2default:default2m
WC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/systolic_input_buffer.v2default:default2
22default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter length bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2"
shift_register2default:default2
 2default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter length bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
shift_register2default:default2
 2default:default2
82default:default2
12default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys22
shift_register__parameterized02default:default2
 2default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter length bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys22
shift_register__parameterized02default:default2
 2default:default2
82default:default2
12default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys22
shift_register__parameterized12default:default2
 2default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter length bound to: 3 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys22
shift_register__parameterized12default:default2
 2default:default2
82default:default2
12default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys22
shift_register__parameterized22default:default2
 2default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter length bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys22
shift_register__parameterized22default:default2
 2default:default2
82default:default2
12default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys22
shift_register__parameterized32default:default2
 2default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter length bound to: 5 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys22
shift_register__parameterized32default:default2
 2default:default2
82default:default2
12default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys22
shift_register__parameterized42default:default2
 2default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter length bound to: 6 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys22
shift_register__parameterized42default:default2
 2default:default2
82default:default2
12default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys22
shift_register__parameterized52default:default2
 2default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter length bound to: 7 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys22
shift_register__parameterized52default:default2
 2default:default2
82default:default2
12default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys22
shift_register__parameterized62default:default2
 2default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter length bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys22
shift_register__parameterized62default:default2
 2default:default2
82default:default2
12default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys22
shift_register__parameterized72default:default2
 2default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter length bound to: 9 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys22
shift_register__parameterized72default:default2
 2default:default2
82default:default2
12default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys22
shift_register__parameterized82default:default2
 2default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter length bound to: 10 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys22
shift_register__parameterized82default:default2
 2default:default2
82default:default2
12default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys22
shift_register__parameterized92default:default2
 2default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter length bound to: 11 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys22
shift_register__parameterized92default:default2
 2default:default2
82default:default2
12default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys23
shift_register__parameterized102default:default2
 2default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter length bound to: 12 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
shift_register__parameterized102default:default2
 2default:default2
82default:default2
12default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys23
shift_register__parameterized112default:default2
 2default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter length bound to: 13 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
shift_register__parameterized112default:default2
 2default:default2
82default:default2
12default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys23
shift_register__parameterized122default:default2
 2default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter length bound to: 14 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
shift_register__parameterized122default:default2
 2default:default2
82default:default2
12default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys23
shift_register__parameterized132default:default2
 2default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter length bound to: 15 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
shift_register__parameterized132default:default2
 2default:default2
82default:default2
12default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys23
shift_register__parameterized142default:default2
 2default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter length bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
shift_register__parameterized142default:default2
 2default:default2
82default:default2
12default:default2f
PC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/shift_register.v2default:default2
22default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
systolic_input_buffer2default:default2
 2default:default2
92default:default2
12default:default2m
WC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/systolic_input_buffer.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
systolic_output_buffer2default:default2
 2default:default2n
XC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/systolic_output_buffer.v2default:default2
22default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter length bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
systolic_output_buffer2default:default2
 2default:default2
102default:default2
12default:default2n
XC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/systolic_output_buffer.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
global_buffer2default:default2
 2default:default2e
OC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/global_buffer.v2default:default2
22default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter addr_width bound to: 17 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter data_width bound to: 128 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2

input_bram2default:default2
 2default:default2?
oC:/Users/catch/Desktop/project_max16/project.runs/synth_1/.Xil/Vivado-12588-KHlaptop/realtime/input_bram_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

input_bram2default:default2
 2default:default2
112default:default2
12default:default2?
oC:/Users/catch/Desktop/project_max16/project.runs/synth_1/.Xil/Vivado-12588-KHlaptop/realtime/input_bram_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
weight_bram2default:default2
 2default:default2?
pC:/Users/catch/Desktop/project_max16/project.runs/synth_1/.Xil/Vivado-12588-KHlaptop/realtime/weight_bram_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
weight_bram2default:default2
 2default:default2
122default:default2
12default:default2?
pC:/Users/catch/Desktop/project_max16/project.runs/synth_1/.Xil/Vivado-12588-KHlaptop/realtime/weight_bram_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
output_bram2default:default2
 2default:default2?
pC:/Users/catch/Desktop/project_max16/project.runs/synth_1/.Xil/Vivado-12588-KHlaptop/realtime/output_bram_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
output_bram2default:default2
 2default:default2
132default:default2
12default:default2?
pC:/Users/catch/Desktop/project_max16/project.runs/synth_1/.Xil/Vivado-12588-KHlaptop/realtime/output_bram_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
global_buffer2default:default2
 2default:default2
142default:default2
12default:default2e
OC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/global_buffer.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

delay_unit2default:default2
 2default:default2b
LC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/delay_unit.v2default:default2
32default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 17 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter delay bound to: 34 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

delay_unit2default:default2
 2default:default2
152default:default2
12default:default2b
LC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/delay_unit.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2.
delay_unit__parameterized02default:default2
 2default:default2b
LC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/delay_unit.v2default:default2
32default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter delay bound to: 34 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
delay_unit__parameterized02default:default2
 2default:default2
152default:default2
12default:default2b
LC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/delay_unit.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
NIT_bram2default:default2
 2default:default2?
mC:/Users/catch/Desktop/project_max16/project.runs/synth_1/.Xil/Vivado-12588-KHlaptop/realtime/NIT_bram_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
NIT_bram2default:default2
 2default:default2
162default:default2
12default:default2?
mC:/Users/catch/Desktop/project_max16/project.runs/synth_1/.Xil/Vivado-12588-KHlaptop/realtime/NIT_bram_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
PFT_bram2default:default2
 2default:default2`
JC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/PFT_bram.v2default:default2
32default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2$
PFT_partial_bram2default:default2
 2default:default2?
uC:/Users/catch/Desktop/project_max16/project.runs/synth_1/.Xil/Vivado-12588-KHlaptop/realtime/PFT_partial_bram_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
PFT_partial_bram2default:default2
 2default:default2
172default:default2
12default:default2?
uC:/Users/catch/Desktop/project_max16/project.runs/synth_1/.Xil/Vivado-12588-KHlaptop/realtime/PFT_partial_bram_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
encoder32x52default:default2
 2default:default2c
MC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/encoder32x5.v2default:default2
32default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2c
MC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/encoder32x5.v2default:default2
92default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
encoder32x52default:default2
 2default:default2
182default:default2
12default:default2c
MC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/encoder32x5.v2default:default2
32default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PFT_bram2default:default2
 2default:default2
192default:default2
12default:default2`
JC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/PFT_bram.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2.
delay_unit__parameterized12default:default2
 2default:default2b
LC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/delay_unit.v2default:default2
32default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 10 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter delay bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
delay_unit__parameterized12default:default2
 2default:default2
192default:default2
12default:default2b
LC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/delay_unit.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2.
delay_unit__parameterized22default:default2
 2default:default2b
LC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/delay_unit.v2default:default2
32default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter delay bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
delay_unit__parameterized22default:default2
 2default:default2
192default:default2
12default:default2b
LC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/delay_unit.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2%
address_generator2default:default2
 2default:default2i
SC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/address_generator.v2default:default2
32default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter input_width bound to: 330 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter bank bound to: 32 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter microaddr_width bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter NIT_addr_width bound to: 12 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter NIT_point_index bound to: 10 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter PE_COL bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2'
microaddr_generator2default:default2
 2default:default2k
UC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/microaddr_generator.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
microaddr_generator2default:default2
 2default:default2
202default:default2
12default:default2k
UC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/microaddr_generator.v2default:default2
32default:default8@Z8-6155h px? 
?
-case statement is not full and has no default155*oasys2i
SC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/address_generator.v2default:default2
602default:default8@Z8-155h px? 
?
synthesizing module '%s'%s4497*oasys2%
valid_generator322default:default2
 2default:default2i
SC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/valid_generator32.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
valid_generator322default:default2
 2default:default2
212default:default2
12default:default2i
SC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/valid_generator32.v2default:default2
32default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
address_generator2default:default2
 2default:default2
222default:default2
12default:default2i
SC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/address_generator.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2%
subtract_module322default:default2
 2default:default2i
SC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/subtract_module32.v2default:default2
22default:default8@Z8-6157h px? 
e
%s
*synth2M
9	Parameter INPUT_DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter PE_ROW bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2%
subtract_operator2default:default2
 2default:default2i
SC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/subtract_operator.v2default:default2
22default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
subtract_operator2default:default2
 2default:default2
232default:default2
12default:default2i
SC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/subtract_operator.v2default:default2
22default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
subtract_module322default:default2
 2default:default2
242default:default2
12default:default2i
SC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/subtract_module32.v2default:default2
22default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2default:default2
 2default:default2
252default:default2
12default:default2[
EC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/top.v2default:default2
22default:default8@Z8-6155h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1146.879 ; gain = 10.914
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1146.879 ; gain = 10.914
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1146.879 ; gain = 10.914
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.7632default:default2
1146.8792default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
pc:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/output_bram/output_bram/output_bram_in_context.xdc2default:default23
u_global_buffer/u_output_bram	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
pc:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/output_bram/output_bram/output_bram_in_context.xdc2default:default23
u_global_buffer/u_output_bram	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
pc:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/weight_bram/weight_bram/weight_bram_in_context.xdc2default:default23
u_global_buffer/u_weight_bram	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
pc:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/weight_bram/weight_bram/weight_bram_in_context.xdc2default:default23
u_global_buffer/u_weight_bram	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
mc:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/input_bram/input_bram/input_bram_in_context.xdc2default:default22
u_global_buffer/u_input_bram	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
mc:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/input_bram/input_bram/input_bram_in_context.xdc2default:default22
u_global_buffer/u_input_bram	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2}
gc:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/NIT_bram/NIT_bram/NIT_bram_in_context.xdc2default:default2
u_NIT	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2}
gc:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/NIT_bram/NIT_bram/NIT_bram_in_context.xdc2default:default2
u_NIT	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default2/
u_PFT/genblk1[0].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default2/
u_PFT/genblk1[0].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default2/
u_PFT/genblk1[1].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default2/
u_PFT/genblk1[1].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default2/
u_PFT/genblk1[2].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default2/
u_PFT/genblk1[2].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default2/
u_PFT/genblk1[3].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default2/
u_PFT/genblk1[3].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default2/
u_PFT/genblk1[4].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default2/
u_PFT/genblk1[4].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default2/
u_PFT/genblk1[5].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default2/
u_PFT/genblk1[5].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default2/
u_PFT/genblk1[6].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default2/
u_PFT/genblk1[6].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default2/
u_PFT/genblk1[7].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default2/
u_PFT/genblk1[7].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default2/
u_PFT/genblk1[8].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default2/
u_PFT/genblk1[8].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default2/
u_PFT/genblk1[9].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default2/
u_PFT/genblk1[9].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[10].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[10].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[11].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[11].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[12].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[12].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[13].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[13].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[14].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[14].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[15].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[15].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[16].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[16].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[17].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[17].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[18].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[18].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[19].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[19].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[20].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[20].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[21].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[21].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[22].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[22].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[23].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[23].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[24].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[24].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[25].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[25].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[26].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[26].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[27].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[27].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[28].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[28].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[29].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[29].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[30].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[30].PFT_bank	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[31].PFT_bank	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
c:/Users/catch/Desktop/project_max16/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram/PFT_partial_bram_in_context.xdc2default:default20
u_PFT/genblk1[31].PFT_bank	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2\
FC:/Users/catch/Desktop/project_max16/constraint/Nexys-Video_Master.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2\
FC:/Users/catch/Desktop/project_max16/constraint/Nexys-Video_Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2Z
FC:/Users/catch/Desktop/project_max16/constraint/Nexys-Video_Master.xdc2default:default2)
.Xil/top_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0092default:default2
1312.9452default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.1412default:default2
1312.9452default:default2
0.0002default:defaultZ17-268h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2
u_NIT2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2-
u_PFT/genblk1[0].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2.
u_PFT/genblk1[10].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2.
u_PFT/genblk1[11].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2.
u_PFT/genblk1[12].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2.
u_PFT/genblk1[13].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2.
u_PFT/genblk1[14].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2.
u_PFT/genblk1[15].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2.
u_PFT/genblk1[16].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2.
u_PFT/genblk1[17].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2.
u_PFT/genblk1[18].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2.
u_PFT/genblk1[19].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2-
u_PFT/genblk1[1].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2.
u_PFT/genblk1[20].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2.
u_PFT/genblk1[21].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2.
u_PFT/genblk1[22].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2.
u_PFT/genblk1[23].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2.
u_PFT/genblk1[24].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2.
u_PFT/genblk1[25].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2.
u_PFT/genblk1[26].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2.
u_PFT/genblk1[27].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2.
u_PFT/genblk1[28].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2.
u_PFT/genblk1[29].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2-
u_PFT/genblk1[2].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2.
u_PFT/genblk1[30].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2.
u_PFT/genblk1[31].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2-
u_PFT/genblk1[3].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2-
u_PFT/genblk1[4].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2-
u_PFT/genblk1[5].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2-
u_PFT/genblk1[6].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2-
u_PFT/genblk1[7].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2-
u_PFT/genblk1[8].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2-
u_PFT/genblk1[9].PFT_bank2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default20
u_global_buffer/u_input_bram2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default21
u_global_buffer/u_output_bram2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default21
u_global_buffer/u_weight_bram2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1325.828 ; gain = 189.863
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a200tsbg484-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1325.828 ; gain = 189.863
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1325.828 ; gain = 189.863
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2

controller2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2%
address_generator2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_              STATE_IDLE |                         00000001 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_         STATE_LOAD_DATA |                         00000010 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_    STATE_SYSTOLIC_START |                         00000100 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_          STATE_SYSTOLIC |                         00001000 |                              011
2default:defaulth p
x
? 
?
%s
*synth2s
_          STATE_LOAD_PFT |                         00010000 |                              100
2default:defaulth p
x
? 
?
%s
*synth2s
_ STATE_AGGREGATION_START |                         00100000 |                              101
2default:defaulth p
x
? 
?
%s
*synth2s
_       STATE_AGGREGATION |                         01000000 |                              110
2default:defaulth p
x
? 
?
%s
*synth2s
_              STATE_DONE |                         10000000 |                              111
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2

controller2default:defaultZ8-3354h px? 
?
!inferring latch for variable '%s'327*oasys2
dout_reg2default:default2c
MC:/Users/catch/Desktop/project_max16/project.srcs/sources_1/new/encoder32x5.v2default:default2
102default:default8@Z8-327h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_              STATE_IDLE |                             0001 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_          STATE_CENTROID |                             0010 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_          STATE_NEIGHBOR |                             0100 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_              STATE_WAIT |                             1000 |                              011
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2%
address_generator2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:28 ; elapsed = 00:00:31 . Memory (MB): peak = 1325.828 ; gain = 189.863
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   17 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   17 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   13 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   12 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    8 Bit       Adders := 16    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              128 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              120 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              112 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              104 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               96 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               88 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               80 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               72 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               64 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               56 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               48 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               40 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               24 Bit    Registers := 259   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               17 Bit    Registers := 45    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               13 Bit    Registers := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 531   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 306   
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input 4096 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input  160 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input  128 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input  128 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   24 Bit        Muxes := 16    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   17 Bit        Muxes := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input   17 Bit        Muxes := 9     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   15 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   13 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input   13 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   13 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   12 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input   12 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   12 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input   10 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    9 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 1031  
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 16    
2default:defaulth p
x
? 
X
%s
*synth2@
,	  33 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  33 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 25    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    1 Bit        Muxes := 25    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 6     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2m
YPart Resources:
DSPs: 740 (col length:100)
BRAMs: 730 (col length: RAMB18 100 RAMB36 50)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
n
%s
*synth2V
BDSP Report: Generating DSP input_addr0, operation Mode is: C+A*B.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: operator input_addr0 is absorbed into DSP input_addr0.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: operator input_addr1 is absorbed into DSP input_addr0.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: Generating DSP output_addr0, operation Mode is: C+A*B.
2default:defaulth p
x
? 
q
%s
*synth2Y
EDSP Report: operator output_addr0 is absorbed into DSP output_addr0.
2default:defaulth p
x
? 
q
%s
*synth2Y
EDSP Report: operator output_addr1 is absorbed into DSP output_addr0.
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:02:08 ; elapsed = 00:02:12 . Memory (MB): peak = 1387.359 ; gain = 251.395
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
^
%s*synth2F
2
DSP: Preliminary Mapping Report (see note below)
2default:defaulth px? 
?
%s*synth2?
?+--------------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name         | DSP Mapping | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px? 
?
%s*synth2?
?+--------------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|systolic_controller | C+A*B       | 12     | 9      | 17     | -      | 17     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|systolic_controller | C+A*B       | 12     | 9      | 17     | -      | 17     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?+--------------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:02:23 ; elapsed = 00:02:27 . Memory (MB): peak = 1387.359 ; gain = 251.395
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:03:46 ; elapsed = 00:03:52 . Memory (MB): peak = 1637.320 ; gain = 501.355
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:04:23 ; elapsed = 00:04:29 . Memory (MB): peak = 1996.590 ; gain = 860.625
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:04:30 ; elapsed = 00:04:36 . Memory (MB): peak = 1996.590 ; gain = 860.625
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:04:30 ; elapsed = 00:04:36 . Memory (MB): peak = 1996.590 ; gain = 860.625
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:04:38 ; elapsed = 00:04:45 . Memory (MB): peak = 1996.590 ; gain = 860.625
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:04:40 ; elapsed = 00:04:47 . Memory (MB): peak = 1996.590 ; gain = 860.625
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:04:41 ; elapsed = 00:04:48 . Memory (MB): peak = 1996.590 ; gain = 860.625
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:04:42 ; elapsed = 00:04:48 . Memory (MB): peak = 1996.590 ; gain = 860.625
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23

Static Shift Register Report:
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+-----------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name | RTL Name                                                        | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+-----------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_delay_unit_write/intermediate_reg[33][0]                      | 34     | 1     | NO           | NO                 | YES               | 0      | 2       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_delay_unit_addr/intermediate_reg[33][16]                      | 34     | 17    | NO           | NO                 | YES               | 0      | 34      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_input_buffer_partialsum/genblk1[3].row/mem_reg[31]   | 4      | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_input_buffer_partialsum/genblk1[4].row/mem_reg[39]   | 5      | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_input_buffer_partialsum/genblk1[5].row/mem_reg[47]   | 6      | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_input_buffer_partialsum/genblk1[6].row/mem_reg[55]   | 7      | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_input_buffer_partialsum/genblk1[7].row/mem_reg[63]   | 8      | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_input_buffer_partialsum/genblk1[8].row/mem_reg[71]   | 9      | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_input_buffer_partialsum/genblk1[9].row/mem_reg[79]   | 10     | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_input_buffer_partialsum/genblk1[10].row/mem_reg[87]  | 11     | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_input_buffer_partialsum/genblk1[11].row/mem_reg[95]  | 12     | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_input_buffer_partialsum/genblk1[12].row/mem_reg[103] | 13     | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_input_buffer_partialsum/genblk1[13].row/mem_reg[111] | 14     | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_input_buffer_partialsum/genblk1[14].row/mem_reg[119] | 15     | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_input_buffer_partialsum/genblk1[15].row/mem_reg[127] | 16     | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | systolic_input_buffer_input/genblk1[3].row/mem_reg[31]          | 4      | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | systolic_input_buffer_input/genblk1[4].row/mem_reg[39]          | 5      | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | systolic_input_buffer_input/genblk1[5].row/mem_reg[47]          | 6      | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | systolic_input_buffer_input/genblk1[6].row/mem_reg[55]          | 7      | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | systolic_input_buffer_input/genblk1[7].row/mem_reg[63]          | 8      | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | systolic_input_buffer_input/genblk1[8].row/mem_reg[71]          | 9      | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | systolic_input_buffer_input/genblk1[9].row/mem_reg[79]          | 10     | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | systolic_input_buffer_input/genblk1[10].row/mem_reg[87]         | 11     | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | systolic_input_buffer_input/genblk1[11].row/mem_reg[95]         | 12     | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | systolic_input_buffer_input/genblk1[12].row/mem_reg[103]        | 13     | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | systolic_input_buffer_input/genblk1[13].row/mem_reg[111]        | 14     | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | systolic_input_buffer_input/genblk1[14].row/mem_reg[119]        | 15     | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | systolic_input_buffer_input/genblk1[15].row/mem_reg[127]        | 16     | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_output_buffer/genblk1[15].row/mem_reg[127]           | 16     | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_output_buffer/genblk1[14].row/mem_reg[119]           | 15     | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_output_buffer/genblk1[13].row/mem_reg[111]           | 14     | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_output_buffer/genblk1[12].row/mem_reg[103]           | 13     | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_output_buffer/genblk1[11].row/mem_reg[95]            | 12     | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_output_buffer/genblk1[10].row/mem_reg[87]            | 11     | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_output_buffer/genblk1[9].row/mem_reg[79]             | 10     | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_output_buffer/genblk1[8].row/mem_reg[71]             | 9      | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_output_buffer/genblk1[7].row/mem_reg[63]             | 8      | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_output_buffer/genblk1[6].row/mem_reg[55]             | 7      | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_output_buffer/genblk1[5].row/mem_reg[47]             | 6      | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_output_buffer/genblk1[4].row/mem_reg[39]             | 5      | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | u_systolic_output_buffer/genblk1[3].row/mem_reg[31]             | 4      | 8     | YES          | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+-----------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
R
%s
*synth2:
&+------+-----------------+----------+
2default:defaulth p
x
? 
R
%s
*synth2:
&|      |BlackBox name    |Instances |
2default:defaulth p
x
? 
R
%s
*synth2:
&+------+-----------------+----------+
2default:defaulth p
x
? 
R
%s
*synth2:
&|1     |NIT_bram         |         1|
2default:defaulth p
x
? 
R
%s
*synth2:
&|2     |PFT_partial_bram |        32|
2default:defaulth p
x
? 
R
%s
*synth2:
&|3     |input_bram       |         1|
2default:defaulth p
x
? 
R
%s
*synth2:
&|4     |weight_bram      |         1|
2default:defaulth p
x
? 
R
%s
*synth2:
&|5     |output_bram      |         1|
2default:defaulth p
x
? 
R
%s
*synth2:
&+------+-----------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
N
%s*synth26
"+------+-----------------+------+
2default:defaulth px? 
N
%s*synth26
"|      |Cell             |Count |
2default:defaulth px? 
N
%s*synth26
"+------+-----------------+------+
2default:defaulth px? 
N
%s*synth26
"|1     |NIT_bram         |     1|
2default:defaulth px? 
N
%s*synth26
"|2     |PFT_partial_bram |    32|
2default:defaulth px? 
N
%s*synth26
"|34    |input_bram       |     1|
2default:defaulth px? 
N
%s*synth26
"|35    |output_bram      |     1|
2default:defaulth px? 
N
%s*synth26
"|36    |weight_bram      |     1|
2default:defaulth px? 
N
%s*synth26
"|37    |BUFG             |     2|
2default:defaulth px? 
N
%s*synth26
"|38    |CARRY4           |  5181|
2default:defaulth px? 
N
%s*synth26
"|39    |DSP48E1          |     2|
2default:defaulth px? 
N
%s*synth26
"|40    |LUT1             |   286|
2default:defaulth px? 
N
%s*synth26
"|41    |LUT2             | 12729|
2default:defaulth px? 
N
%s*synth26
"|42    |LUT3             |  3847|
2default:defaulth px? 
N
%s*synth26
"|43    |LUT4             |  9345|
2default:defaulth px? 
N
%s*synth26
"|44    |LUT5             |  4912|
2default:defaulth px? 
N
%s*synth26
"|45    |LUT6             | 14020|
2default:defaulth px? 
N
%s*synth26
"|46    |MUXF7            |   512|
2default:defaulth px? 
N
%s*synth26
"|47    |MUXF8            |   256|
2default:defaulth px? 
N
%s*synth26
"|48    |SRL16E           |   312|
2default:defaulth px? 
N
%s*synth26
"|49    |SRLC32E          |    36|
2default:defaulth px? 
N
%s*synth26
"|50    |FDCE             |  8834|
2default:defaulth px? 
N
%s*synth26
"|51    |FDPE             |     3|
2default:defaulth px? 
N
%s*synth26
"|52    |FDRE             |  2637|
2default:defaulth px? 
N
%s*synth26
"|53    |FDSE             |    16|
2default:defaulth px? 
N
%s*synth26
"|54    |LD               |    35|
2default:defaulth px? 
N
%s*synth26
"|55    |IBUF             |   578|
2default:defaulth px? 
N
%s*synth26
"|56    |OBUF             |     1|
2default:defaulth px? 
N
%s*synth26
"+------+-----------------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:04:42 ; elapsed = 00:04:48 . Memory (MB): peak = 1996.590 ; gain = 860.625
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:04:22 ; elapsed = 00:04:40 . Memory (MB): peak = 1996.590 ; gain = 681.676
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:04:42 ; elapsed = 00:04:49 . Memory (MB): peak = 1996.590 ; gain = 860.625
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:022default:default2
00:00:022default:default2
1996.5902default:default2
0.0002default:defaultZ17-268h px? 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
59862default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
12default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0232default:default2
1996.5902default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2[
G  A total of 35 instances were transformed.
  LD => LDCE: 35 instances
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
5fcb8bb42default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1072default:default2
372default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:05:062default:default2
00:05:152default:default2
1996.5902default:default2
860.6252default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2U
AC:/Users/catch/Desktop/project_max16/project.runs/synth_1/top.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:172default:default2
00:00:122default:default2
1996.5902default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2p
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat May  7 23:23:30 20222default:defaultZ17-206h px? 


End Record