М
Х
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
М
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2

BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
С
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.12.02v2.12.0-rc1-12-g0db597d0d758јИ
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
z
Adam/v/FC_1_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/v/FC_1_/bias
s
%Adam/v/FC_1_/bias/Read/ReadVariableOpReadVariableOpAdam/v/FC_1_/bias*
_output_shapes
:*
dtype0
z
Adam/m/FC_1_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/m/FC_1_/bias
s
%Adam/m/FC_1_/bias/Read/ReadVariableOpReadVariableOpAdam/m/FC_1_/bias*
_output_shapes
:*
dtype0

Adam/v/FC_1_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Р*$
shared_nameAdam/v/FC_1_/kernel
|
'Adam/v/FC_1_/kernel/Read/ReadVariableOpReadVariableOpAdam/v/FC_1_/kernel*
_output_shapes
:	Р*
dtype0

Adam/m/FC_1_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Р*$
shared_nameAdam/m/FC_1_/kernel
|
'Adam/m/FC_1_/kernel/Read/ReadVariableOpReadVariableOpAdam/m/FC_1_/kernel*
_output_shapes
:	Р*
dtype0

Adam/v/BN5_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*/
shared_name Adam/v/BN5_/custom_batch_gamma

2Adam/v/BN5_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpAdam/v/BN5_/custom_batch_gamma*
_output_shapes	
:Р*
dtype0

Adam/m/BN5_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*/
shared_name Adam/m/BN5_/custom_batch_gamma

2Adam/m/BN5_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpAdam/m/BN5_/custom_batch_gamma*
_output_shapes	
:Р*
dtype0

Adam/v/BN5_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*.
shared_nameAdam/v/BN5_/custom_batch_beta

1Adam/v/BN5_/custom_batch_beta/Read/ReadVariableOpReadVariableOpAdam/v/BN5_/custom_batch_beta*
_output_shapes	
:Р*
dtype0

Adam/m/BN5_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*.
shared_nameAdam/m/BN5_/custom_batch_beta

1Adam/m/BN5_/custom_batch_beta/Read/ReadVariableOpReadVariableOpAdam/m/BN5_/custom_batch_beta*
_output_shapes	
:Р*
dtype0
{
Adam/v/CNN5_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*"
shared_nameAdam/v/CNN5_/bias
t
%Adam/v/CNN5_/bias/Read/ReadVariableOpReadVariableOpAdam/v/CNN5_/bias*
_output_shapes	
:Р*
dtype0
{
Adam/m/CNN5_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*"
shared_nameAdam/m/CNN5_/bias
t
%Adam/m/CNN5_/bias/Read/ReadVariableOpReadVariableOpAdam/m/CNN5_/bias*
_output_shapes	
:Р*
dtype0

Adam/v/CNN5_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*$
shared_nameAdam/v/CNN5_/kernel

'Adam/v/CNN5_/kernel/Read/ReadVariableOpReadVariableOpAdam/v/CNN5_/kernel*$
_output_shapes
:Р*
dtype0

Adam/m/CNN5_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*$
shared_nameAdam/m/CNN5_/kernel

'Adam/m/CNN5_/kernel/Read/ReadVariableOpReadVariableOpAdam/m/CNN5_/kernel*$
_output_shapes
:Р*
dtype0

Adam/v/BN4_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/v/BN4_/custom_batch_gamma

2Adam/v/BN4_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpAdam/v/BN4_/custom_batch_gamma*
_output_shapes	
:*
dtype0

Adam/m/BN4_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/m/BN4_/custom_batch_gamma

2Adam/m/BN4_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpAdam/m/BN4_/custom_batch_gamma*
_output_shapes	
:*
dtype0

Adam/v/BN4_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameAdam/v/BN4_/custom_batch_beta

1Adam/v/BN4_/custom_batch_beta/Read/ReadVariableOpReadVariableOpAdam/v/BN4_/custom_batch_beta*
_output_shapes	
:*
dtype0

Adam/m/BN4_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameAdam/m/BN4_/custom_batch_beta

1Adam/m/BN4_/custom_batch_beta/Read/ReadVariableOpReadVariableOpAdam/m/BN4_/custom_batch_beta*
_output_shapes	
:*
dtype0
{
Adam/v/CNN4_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/v/CNN4_/bias
t
%Adam/v/CNN4_/bias/Read/ReadVariableOpReadVariableOpAdam/v/CNN4_/bias*
_output_shapes	
:*
dtype0
{
Adam/m/CNN4_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/m/CNN4_/bias
t
%Adam/m/CNN4_/bias/Read/ReadVariableOpReadVariableOpAdam/m/CNN4_/bias*
_output_shapes	
:*
dtype0

Adam/v/CNN4_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*$
shared_nameAdam/v/CNN4_/kernel

'Adam/v/CNN4_/kernel/Read/ReadVariableOpReadVariableOpAdam/v/CNN4_/kernel*#
_output_shapes
:`*
dtype0

Adam/m/CNN4_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*$
shared_nameAdam/m/CNN4_/kernel

'Adam/m/CNN4_/kernel/Read/ReadVariableOpReadVariableOpAdam/m/CNN4_/kernel*#
_output_shapes
:`*
dtype0

Adam/v/BN3_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*/
shared_name Adam/v/BN3_/custom_batch_gamma

2Adam/v/BN3_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpAdam/v/BN3_/custom_batch_gamma*
_output_shapes
:`*
dtype0

Adam/m/BN3_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*/
shared_name Adam/m/BN3_/custom_batch_gamma

2Adam/m/BN3_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpAdam/m/BN3_/custom_batch_gamma*
_output_shapes
:`*
dtype0

Adam/v/BN3_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*.
shared_nameAdam/v/BN3_/custom_batch_beta

1Adam/v/BN3_/custom_batch_beta/Read/ReadVariableOpReadVariableOpAdam/v/BN3_/custom_batch_beta*
_output_shapes
:`*
dtype0

Adam/m/BN3_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*.
shared_nameAdam/m/BN3_/custom_batch_beta

1Adam/m/BN3_/custom_batch_beta/Read/ReadVariableOpReadVariableOpAdam/m/BN3_/custom_batch_beta*
_output_shapes
:`*
dtype0
z
Adam/v/CNN3_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*"
shared_nameAdam/v/CNN3_/bias
s
%Adam/v/CNN3_/bias/Read/ReadVariableOpReadVariableOpAdam/v/CNN3_/bias*
_output_shapes
:`*
dtype0
z
Adam/m/CNN3_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*"
shared_nameAdam/m/CNN3_/bias
s
%Adam/m/CNN3_/bias/Read/ReadVariableOpReadVariableOpAdam/m/CNN3_/bias*
_output_shapes
:`*
dtype0

Adam/v/CNN3_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@`*$
shared_nameAdam/v/CNN3_/kernel

'Adam/v/CNN3_/kernel/Read/ReadVariableOpReadVariableOpAdam/v/CNN3_/kernel*"
_output_shapes
:@`*
dtype0

Adam/m/CNN3_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@`*$
shared_nameAdam/m/CNN3_/kernel

'Adam/m/CNN3_/kernel/Read/ReadVariableOpReadVariableOpAdam/m/CNN3_/kernel*"
_output_shapes
:@`*
dtype0

Adam/v/BN2_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/v/BN2_/custom_batch_gamma

2Adam/v/BN2_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpAdam/v/BN2_/custom_batch_gamma*
_output_shapes
:@*
dtype0

Adam/m/BN2_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/m/BN2_/custom_batch_gamma

2Adam/m/BN2_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpAdam/m/BN2_/custom_batch_gamma*
_output_shapes
:@*
dtype0

Adam/v/BN2_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nameAdam/v/BN2_/custom_batch_beta

1Adam/v/BN2_/custom_batch_beta/Read/ReadVariableOpReadVariableOpAdam/v/BN2_/custom_batch_beta*
_output_shapes
:@*
dtype0

Adam/m/BN2_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nameAdam/m/BN2_/custom_batch_beta

1Adam/m/BN2_/custom_batch_beta/Read/ReadVariableOpReadVariableOpAdam/m/BN2_/custom_batch_beta*
_output_shapes
:@*
dtype0
z
Adam/v/CNN2_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/v/CNN2_/bias
s
%Adam/v/CNN2_/bias/Read/ReadVariableOpReadVariableOpAdam/v/CNN2_/bias*
_output_shapes
:@*
dtype0
z
Adam/m/CNN2_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/m/CNN2_/bias
s
%Adam/m/CNN2_/bias/Read/ReadVariableOpReadVariableOpAdam/m/CNN2_/bias*
_output_shapes
:@*
dtype0

Adam/v/CNN2_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0@*$
shared_nameAdam/v/CNN2_/kernel

'Adam/v/CNN2_/kernel/Read/ReadVariableOpReadVariableOpAdam/v/CNN2_/kernel*"
_output_shapes
:0@*
dtype0

Adam/m/CNN2_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0@*$
shared_nameAdam/m/CNN2_/kernel

'Adam/m/CNN2_/kernel/Read/ReadVariableOpReadVariableOpAdam/m/CNN2_/kernel*"
_output_shapes
:0@*
dtype0

Adam/v/BN1_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*/
shared_name Adam/v/BN1_/custom_batch_gamma

2Adam/v/BN1_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpAdam/v/BN1_/custom_batch_gamma*
_output_shapes
:0*
dtype0

Adam/m/BN1_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*/
shared_name Adam/m/BN1_/custom_batch_gamma

2Adam/m/BN1_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpAdam/m/BN1_/custom_batch_gamma*
_output_shapes
:0*
dtype0

Adam/v/BN1_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*.
shared_nameAdam/v/BN1_/custom_batch_beta

1Adam/v/BN1_/custom_batch_beta/Read/ReadVariableOpReadVariableOpAdam/v/BN1_/custom_batch_beta*
_output_shapes
:0*
dtype0

Adam/m/BN1_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*.
shared_nameAdam/m/BN1_/custom_batch_beta

1Adam/m/BN1_/custom_batch_beta/Read/ReadVariableOpReadVariableOpAdam/m/BN1_/custom_batch_beta*
_output_shapes
:0*
dtype0
z
Adam/v/CNN1_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*"
shared_nameAdam/v/CNN1_/bias
s
%Adam/v/CNN1_/bias/Read/ReadVariableOpReadVariableOpAdam/v/CNN1_/bias*
_output_shapes
:0*
dtype0
z
Adam/m/CNN1_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*"
shared_nameAdam/m/CNN1_/bias
s
%Adam/m/CNN1_/bias/Read/ReadVariableOpReadVariableOpAdam/m/CNN1_/bias*
_output_shapes
:0*
dtype0

Adam/v/CNN1_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*$
shared_nameAdam/v/CNN1_/kernel

'Adam/v/CNN1_/kernel/Read/ReadVariableOpReadVariableOpAdam/v/CNN1_/kernel*"
_output_shapes
: 0*
dtype0

Adam/m/CNN1_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*$
shared_nameAdam/m/CNN1_/kernel

'Adam/m/CNN1_/kernel/Read/ReadVariableOpReadVariableOpAdam/m/CNN1_/kernel*"
_output_shapes
: 0*
dtype0

Adam/v/BN0_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/v/BN0_/custom_batch_gamma

2Adam/v/BN0_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpAdam/v/BN0_/custom_batch_gamma*
_output_shapes
: *
dtype0

Adam/m/BN0_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/m/BN0_/custom_batch_gamma

2Adam/m/BN0_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpAdam/m/BN0_/custom_batch_gamma*
_output_shapes
: *
dtype0

Adam/v/BN0_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/v/BN0_/custom_batch_beta

1Adam/v/BN0_/custom_batch_beta/Read/ReadVariableOpReadVariableOpAdam/v/BN0_/custom_batch_beta*
_output_shapes
: *
dtype0

Adam/m/BN0_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/m/BN0_/custom_batch_beta

1Adam/m/BN0_/custom_batch_beta/Read/ReadVariableOpReadVariableOpAdam/m/BN0_/custom_batch_beta*
_output_shapes
: *
dtype0
z
Adam/v/CNN0_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/v/CNN0_/bias
s
%Adam/v/CNN0_/bias/Read/ReadVariableOpReadVariableOpAdam/v/CNN0_/bias*
_output_shapes
: *
dtype0
z
Adam/m/CNN0_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/m/CNN0_/bias
s
%Adam/m/CNN0_/bias/Read/ReadVariableOpReadVariableOpAdam/m/CNN0_/bias*
_output_shapes
: *
dtype0

Adam/v/CNN0_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/v/CNN0_/kernel

'Adam/v/CNN0_/kernel/Read/ReadVariableOpReadVariableOpAdam/v/CNN0_/kernel*"
_output_shapes
: *
dtype0

Adam/m/CNN0_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/m/CNN0_/kernel

'Adam/m/CNN0_/kernel/Read/ReadVariableOpReadVariableOpAdam/m/CNN0_/kernel*"
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
l

FC_1_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
FC_1_/bias
e
FC_1_/bias/Read/ReadVariableOpReadVariableOp
FC_1_/bias*
_output_shapes
:*
dtype0
u
FC_1_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Р*
shared_nameFC_1_/kernel
n
 FC_1_/kernel/Read/ReadVariableOpReadVariableOpFC_1_/kernel*
_output_shapes
:	Р*
dtype0

!BN5_/custom_batch_moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*2
shared_name#!BN5_/custom_batch_moving_variance

5BN5_/custom_batch_moving_variance/Read/ReadVariableOpReadVariableOp!BN5_/custom_batch_moving_variance*
_output_shapes	
:Р*
dtype0

BN5_/custom_batch_moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*.
shared_nameBN5_/custom_batch_moving_mean

1BN5_/custom_batch_moving_mean/Read/ReadVariableOpReadVariableOpBN5_/custom_batch_moving_mean*
_output_shapes	
:Р*
dtype0

BN5_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*(
shared_nameBN5_/custom_batch_gamma

+BN5_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpBN5_/custom_batch_gamma*
_output_shapes	
:Р*
dtype0

BN5_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*'
shared_nameBN5_/custom_batch_beta
~
*BN5_/custom_batch_beta/Read/ReadVariableOpReadVariableOpBN5_/custom_batch_beta*
_output_shapes	
:Р*
dtype0
m

CNN5_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*
shared_name
CNN5_/bias
f
CNN5_/bias/Read/ReadVariableOpReadVariableOp
CNN5_/bias*
_output_shapes	
:Р*
dtype0
z
CNN5_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*
shared_nameCNN5_/kernel
s
 CNN5_/kernel/Read/ReadVariableOpReadVariableOpCNN5_/kernel*$
_output_shapes
:Р*
dtype0

!BN4_/custom_batch_moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!BN4_/custom_batch_moving_variance

5BN4_/custom_batch_moving_variance/Read/ReadVariableOpReadVariableOp!BN4_/custom_batch_moving_variance*
_output_shapes	
:*
dtype0

BN4_/custom_batch_moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameBN4_/custom_batch_moving_mean

1BN4_/custom_batch_moving_mean/Read/ReadVariableOpReadVariableOpBN4_/custom_batch_moving_mean*
_output_shapes	
:*
dtype0

BN4_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameBN4_/custom_batch_gamma

+BN4_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpBN4_/custom_batch_gamma*
_output_shapes	
:*
dtype0

BN4_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameBN4_/custom_batch_beta
~
*BN4_/custom_batch_beta/Read/ReadVariableOpReadVariableOpBN4_/custom_batch_beta*
_output_shapes	
:*
dtype0
m

CNN4_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
CNN4_/bias
f
CNN4_/bias/Read/ReadVariableOpReadVariableOp
CNN4_/bias*
_output_shapes	
:*
dtype0
y
CNN4_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*
shared_nameCNN4_/kernel
r
 CNN4_/kernel/Read/ReadVariableOpReadVariableOpCNN4_/kernel*#
_output_shapes
:`*
dtype0

!BN3_/custom_batch_moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*2
shared_name#!BN3_/custom_batch_moving_variance

5BN3_/custom_batch_moving_variance/Read/ReadVariableOpReadVariableOp!BN3_/custom_batch_moving_variance*
_output_shapes
:`*
dtype0

BN3_/custom_batch_moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*.
shared_nameBN3_/custom_batch_moving_mean

1BN3_/custom_batch_moving_mean/Read/ReadVariableOpReadVariableOpBN3_/custom_batch_moving_mean*
_output_shapes
:`*
dtype0

BN3_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*(
shared_nameBN3_/custom_batch_gamma

+BN3_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpBN3_/custom_batch_gamma*
_output_shapes
:`*
dtype0

BN3_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*'
shared_nameBN3_/custom_batch_beta
}
*BN3_/custom_batch_beta/Read/ReadVariableOpReadVariableOpBN3_/custom_batch_beta*
_output_shapes
:`*
dtype0
l

CNN3_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*
shared_name
CNN3_/bias
e
CNN3_/bias/Read/ReadVariableOpReadVariableOp
CNN3_/bias*
_output_shapes
:`*
dtype0
x
CNN3_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@`*
shared_nameCNN3_/kernel
q
 CNN3_/kernel/Read/ReadVariableOpReadVariableOpCNN3_/kernel*"
_output_shapes
:@`*
dtype0

!BN2_/custom_batch_moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!BN2_/custom_batch_moving_variance

5BN2_/custom_batch_moving_variance/Read/ReadVariableOpReadVariableOp!BN2_/custom_batch_moving_variance*
_output_shapes
:@*
dtype0

BN2_/custom_batch_moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nameBN2_/custom_batch_moving_mean

1BN2_/custom_batch_moving_mean/Read/ReadVariableOpReadVariableOpBN2_/custom_batch_moving_mean*
_output_shapes
:@*
dtype0

BN2_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameBN2_/custom_batch_gamma

+BN2_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpBN2_/custom_batch_gamma*
_output_shapes
:@*
dtype0

BN2_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameBN2_/custom_batch_beta
}
*BN2_/custom_batch_beta/Read/ReadVariableOpReadVariableOpBN2_/custom_batch_beta*
_output_shapes
:@*
dtype0
l

CNN2_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
CNN2_/bias
e
CNN2_/bias/Read/ReadVariableOpReadVariableOp
CNN2_/bias*
_output_shapes
:@*
dtype0
x
CNN2_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0@*
shared_nameCNN2_/kernel
q
 CNN2_/kernel/Read/ReadVariableOpReadVariableOpCNN2_/kernel*"
_output_shapes
:0@*
dtype0

!BN1_/custom_batch_moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*2
shared_name#!BN1_/custom_batch_moving_variance

5BN1_/custom_batch_moving_variance/Read/ReadVariableOpReadVariableOp!BN1_/custom_batch_moving_variance*
_output_shapes
:0*
dtype0

BN1_/custom_batch_moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*.
shared_nameBN1_/custom_batch_moving_mean

1BN1_/custom_batch_moving_mean/Read/ReadVariableOpReadVariableOpBN1_/custom_batch_moving_mean*
_output_shapes
:0*
dtype0

BN1_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*(
shared_nameBN1_/custom_batch_gamma

+BN1_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpBN1_/custom_batch_gamma*
_output_shapes
:0*
dtype0

BN1_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameBN1_/custom_batch_beta
}
*BN1_/custom_batch_beta/Read/ReadVariableOpReadVariableOpBN1_/custom_batch_beta*
_output_shapes
:0*
dtype0
l

CNN1_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_name
CNN1_/bias
e
CNN1_/bias/Read/ReadVariableOpReadVariableOp
CNN1_/bias*
_output_shapes
:0*
dtype0
x
CNN1_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*
shared_nameCNN1_/kernel
q
 CNN1_/kernel/Read/ReadVariableOpReadVariableOpCNN1_/kernel*"
_output_shapes
: 0*
dtype0

!BN0_/custom_batch_moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!BN0_/custom_batch_moving_variance

5BN0_/custom_batch_moving_variance/Read/ReadVariableOpReadVariableOp!BN0_/custom_batch_moving_variance*
_output_shapes
: *
dtype0

BN0_/custom_batch_moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameBN0_/custom_batch_moving_mean

1BN0_/custom_batch_moving_mean/Read/ReadVariableOpReadVariableOpBN0_/custom_batch_moving_mean*
_output_shapes
: *
dtype0

BN0_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameBN0_/custom_batch_gamma

+BN0_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpBN0_/custom_batch_gamma*
_output_shapes
: *
dtype0

BN0_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameBN0_/custom_batch_beta
}
*BN0_/custom_batch_beta/Read/ReadVariableOpReadVariableOpBN0_/custom_batch_beta*
_output_shapes
: *
dtype0
l

CNN0_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
CNN0_/bias
e
CNN0_/bias/Read/ReadVariableOpReadVariableOp
CNN0_/bias*
_output_shapes
: *
dtype0
x
CNN0_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameCNN0_/kernel
q
 CNN0_/kernel/Read/ReadVariableOpReadVariableOpCNN0_/kernel*"
_output_shapes
: *
dtype0

serving_default_input_1Placeholder*,
_output_shapes
:џџџџџџџџџ*
dtype0*!
shape:џџџџџџџџџ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1CNN0_/kernel
CNN0_/biasCNN1_/kernel
CNN1_/biasCNN2_/kernel
CNN2_/biasCNN3_/kernel
CNN3_/biasCNN4_/kernel
CNN4_/biasCNN5_/kernel
CNN5_/biasFC_1_/kernel
FC_1_/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_84408

NoOpNoOp
љѓ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Гѓ
valueЈѓBЄѓ Bѓ
Л
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
layer-12
layer_with_weights-6
layer-13
layer-14
layer_with_weights-7
layer-15
layer-16
layer_with_weights-8
layer-17
layer-18
layer_with_weights-9
layer-19
layer-20
layer_with_weights-10
layer-21
layer-22
layer_with_weights-11
layer-23
layer-24
layer-25
layer-26
layer_with_weights-12
layer-27
layer-28
layer-29
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%_default_save_signature
&	optimizer
'
signatures*
* 
Ш
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias
 0_jit_compiled_convolution_op*

1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses* 
К
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses
=custom_batch_beta
=beta
>custom_batch_gamma
	>gamma
?custom_batch_moving_mean
?moving_mean
 @custom_batch_moving_variance
@moving_variance*

A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses* 
Ш
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

Mkernel
Nbias
 O_jit_compiled_convolution_op*

P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses* 
К
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses
\custom_batch_beta
\beta
]custom_batch_gamma
	]gamma
^custom_batch_moving_mean
^moving_mean
 _custom_batch_moving_variance
_moving_variance*

`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses* 
Ш
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

lkernel
mbias
 n_jit_compiled_convolution_op*

o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses* 
К
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses
{custom_batch_beta
{beta
|custom_batch_gamma
	|gamma
}custom_batch_moving_mean
}moving_mean
 ~custom_batch_moving_variance
~moving_variance*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
б
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
Ш
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
custom_batch_beta
	beta
custom_batch_gamma

gamma
custom_batch_moving_mean
moving_mean
!custom_batch_moving_variance
moving_variance*

	variables
trainable_variables
 regularization_losses
Ё	keras_api
Ђ__call__
+Ѓ&call_and_return_all_conditional_losses* 
б
Є	variables
Ѕtrainable_variables
Іregularization_losses
Ї	keras_api
Ј__call__
+Љ&call_and_return_all_conditional_losses
Њkernel
	Ћbias
!Ќ_jit_compiled_convolution_op*

­	variables
Ўtrainable_variables
Џregularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses* 
Ш
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses
Йcustom_batch_beta
	Йbeta
Кcustom_batch_gamma

Кgamma
Лcustom_batch_moving_mean
Лmoving_mean
!Мcustom_batch_moving_variance
Мmoving_variance*

Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses* 
б
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses
Щkernel
	Ъbias
!Ы_jit_compiled_convolution_op*

Ь	variables
Эtrainable_variables
Юregularization_losses
Я	keras_api
а__call__
+б&call_and_return_all_conditional_losses* 
Ш
в	variables
гtrainable_variables
дregularization_losses
е	keras_api
ж__call__
+з&call_and_return_all_conditional_losses
иcustom_batch_beta
	иbeta
йcustom_batch_gamma

йgamma
кcustom_batch_moving_mean
кmoving_mean
!лcustom_batch_moving_variance
лmoving_variance*

м	variables
нtrainable_variables
оregularization_losses
п	keras_api
р__call__
+с&call_and_return_all_conditional_losses* 

т	variables
уtrainable_variables
фregularization_losses
х	keras_api
ц__call__
+ч&call_and_return_all_conditional_losses* 

ш	variables
щtrainable_variables
ъregularization_losses
ы	keras_api
ь__call__
+э&call_and_return_all_conditional_losses* 
Ў
ю	variables
яtrainable_variables
№regularization_losses
ё	keras_api
ђ__call__
+ѓ&call_and_return_all_conditional_losses
єkernel
	ѕbias*

і	variables
їtrainable_variables
јregularization_losses
љ	keras_api
њ__call__
+ћ&call_and_return_all_conditional_losses* 

ќ	variables
§trainable_variables
ўregularization_losses
џ	keras_api
__call__
+&call_and_return_all_conditional_losses* 
О
.0
/1
=2
>3
?4
@5
M6
N7
\8
]9
^10
_11
l12
m13
{14
|15
}16
~17
18
19
20
21
22
23
Њ24
Ћ25
Й26
К27
Л28
М29
Щ30
Ъ31
и32
й33
к34
л35
є36
ѕ37*
и
.0
/1
=2
>3
M4
N5
\6
]7
l8
m9
{10
|11
12
13
14
15
Њ16
Ћ17
Й18
К19
Щ20
Ъ21
и22
й23
є24
ѕ25*
* 
Е
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
%_default_save_signature
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
* 


_variables
_iterations
_learning_rate
_index_dict

_momentums
_velocities
_update_step_xla*

serving_default* 

.0
/1*

.0
/1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*

trace_0* 

trace_0* 
\V
VARIABLE_VALUECNN0_/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
CNN0_/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
 metrics
 Ёlayer_regularization_losses
Ђlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses* 

Ѓtrace_0* 

Єtrace_0* 
 
=0
>1
?2
@3*

=0
>1*
* 

Ѕnon_trainable_variables
Іlayers
Їmetrics
 Јlayer_regularization_losses
Љlayer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses*

Њtrace_0
Ћtrace_1* 

Ќtrace_0
­trace_1* 
qk
VARIABLE_VALUEBN0_/custom_batch_betaAlayer_with_weights-1/custom_batch_beta/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEBN0_/custom_batch_gammaBlayer_with_weights-1/custom_batch_gamma/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEBN0_/custom_batch_moving_meanHlayer_with_weights-1/custom_batch_moving_mean/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!BN0_/custom_batch_moving_varianceLlayer_with_weights-1/custom_batch_moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

Ўnon_trainable_variables
Џlayers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses* 

Гtrace_0* 

Дtrace_0* 

M0
N1*

M0
N1*
* 

Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*

Кtrace_0* 

Лtrace_0* 
\V
VARIABLE_VALUECNN1_/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
CNN1_/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses* 

Сtrace_0* 

Тtrace_0* 
 
\0
]1
^2
_3*

\0
]1*
* 

Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*

Шtrace_0
Щtrace_1* 

Ъtrace_0
Ыtrace_1* 
qk
VARIABLE_VALUEBN1_/custom_batch_betaAlayer_with_weights-3/custom_batch_beta/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEBN1_/custom_batch_gammaBlayer_with_weights-3/custom_batch_gamma/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEBN1_/custom_batch_moving_meanHlayer_with_weights-3/custom_batch_moving_mean/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!BN1_/custom_batch_moving_varianceLlayer_with_weights-3/custom_batch_moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses* 

бtrace_0* 

вtrace_0* 

l0
m1*

l0
m1*
* 

гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses*

иtrace_0* 

йtrace_0* 
\V
VARIABLE_VALUECNN2_/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
CNN2_/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses* 

пtrace_0* 

рtrace_0* 
 
{0
|1
}2
~3*

{0
|1*
* 

сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses*

цtrace_0
чtrace_1* 

шtrace_0
щtrace_1* 
qk
VARIABLE_VALUEBN2_/custom_batch_betaAlayer_with_weights-5/custom_batch_beta/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEBN2_/custom_batch_gammaBlayer_with_weights-5/custom_batch_gamma/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEBN2_/custom_batch_moving_meanHlayer_with_weights-5/custom_batch_moving_mean/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!BN2_/custom_batch_moving_varianceLlayer_with_weights-5/custom_batch_moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

яtrace_0* 

№trace_0* 

0
1*

0
1*
* 

ёnon_trainable_variables
ђlayers
ѓmetrics
 єlayer_regularization_losses
ѕlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

іtrace_0* 

їtrace_0* 
\V
VARIABLE_VALUECNN3_/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
CNN3_/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

јnon_trainable_variables
љlayers
њmetrics
 ћlayer_regularization_losses
ќlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

§trace_0* 

ўtrace_0* 
$
0
1
2
3*

0
1*
* 

џnon_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
qk
VARIABLE_VALUEBN3_/custom_batch_betaAlayer_with_weights-7/custom_batch_beta/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEBN3_/custom_batch_gammaBlayer_with_weights-7/custom_batch_gamma/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEBN3_/custom_batch_moving_meanHlayer_with_weights-7/custom_batch_moving_mean/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!BN3_/custom_batch_moving_varianceLlayer_with_weights-7/custom_batch_moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
 regularization_losses
Ђ__call__
+Ѓ&call_and_return_all_conditional_losses
'Ѓ"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

Њ0
Ћ1*

Њ0
Ћ1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Є	variables
Ѕtrainable_variables
Іregularization_losses
Ј__call__
+Љ&call_and_return_all_conditional_losses
'Љ"call_and_return_conditional_losses*

trace_0* 

trace_0* 
\V
VARIABLE_VALUECNN4_/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
CNN4_/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
­	variables
Ўtrainable_variables
Џregularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
$
Й0
К1
Л2
М3*

Й0
К1*
* 

non_trainable_variables
layers
metrics
  layer_regularization_losses
Ёlayer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses*

Ђtrace_0
Ѓtrace_1* 

Єtrace_0
Ѕtrace_1* 
qk
VARIABLE_VALUEBN4_/custom_batch_betaAlayer_with_weights-9/custom_batch_beta/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEBN4_/custom_batch_gammaBlayer_with_weights-9/custom_batch_gamma/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEBN4_/custom_batch_moving_meanHlayer_with_weights-9/custom_batch_moving_mean/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!BN4_/custom_batch_moving_varianceLlayer_with_weights-9/custom_batch_moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

Іnon_trainable_variables
Їlayers
Јmetrics
 Љlayer_regularization_losses
Њlayer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses* 

Ћtrace_0* 

Ќtrace_0* 

Щ0
Ъ1*

Щ0
Ъ1*
* 

­non_trainable_variables
Ўlayers
Џmetrics
 Аlayer_regularization_losses
Бlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses*

Вtrace_0* 

Гtrace_0* 
]W
VARIABLE_VALUECNN5_/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUE
CNN5_/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Дnon_trainable_variables
Еlayers
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
Ь	variables
Эtrainable_variables
Юregularization_losses
а__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses* 

Йtrace_0* 

Кtrace_0* 
$
и0
й1
к2
л3*

и0
й1*
* 

Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
в	variables
гtrainable_variables
дregularization_losses
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses*

Рtrace_0
Сtrace_1* 

Тtrace_0
Уtrace_1* 
rl
VARIABLE_VALUEBN5_/custom_batch_betaBlayer_with_weights-11/custom_batch_beta/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEBN5_/custom_batch_gammaClayer_with_weights-11/custom_batch_gamma/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEBN5_/custom_batch_moving_meanIlayer_with_weights-11/custom_batch_moving_mean/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!BN5_/custom_batch_moving_varianceMlayer_with_weights-11/custom_batch_moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
м	variables
нtrainable_variables
оregularization_losses
р__call__
+с&call_and_return_all_conditional_losses
'с"call_and_return_conditional_losses* 

Щtrace_0* 

Ъtrace_0* 
* 
* 
* 

Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
т	variables
уtrainable_variables
фregularization_losses
ц__call__
+ч&call_and_return_all_conditional_losses
'ч"call_and_return_conditional_losses* 

аtrace_0* 

бtrace_0* 
* 
* 
* 

вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
ш	variables
щtrainable_variables
ъregularization_losses
ь__call__
+э&call_and_return_all_conditional_losses
'э"call_and_return_conditional_losses* 

зtrace_0* 

иtrace_0* 

є0
ѕ1*

є0
ѕ1*
* 

йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
ю	variables
яtrainable_variables
№regularization_losses
ђ__call__
+ѓ&call_and_return_all_conditional_losses
'ѓ"call_and_return_conditional_losses*

оtrace_0* 

пtrace_0* 
]W
VARIABLE_VALUEFC_1_/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUE
FC_1_/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
і	variables
їtrainable_variables
јregularization_losses
њ__call__
+ћ&call_and_return_all_conditional_losses
'ћ"call_and_return_conditional_losses* 

хtrace_0* 

цtrace_0* 
* 
* 
* 

чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
ќ	variables
§trainable_variables
ўregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

ьtrace_0* 

эtrace_0* 
`
?0
@1
^2
_3
}4
~5
6
7
Л8
М9
к10
л11*
ъ
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29*

ю0
я1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
з
0
№1
ё2
ђ3
ѓ4
є5
ѕ6
і7
ї8
ј9
љ10
њ11
ћ12
ќ13
§14
ў15
џ16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
 49
Ё50
Ђ51
Ѓ52*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
ф
№0
ђ1
є2
і3
ј4
њ5
ќ6
ў7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
 24
Ђ25*
ф
ё0
ѓ1
ѕ2
ї3
љ4
ћ5
§6
џ7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
Ё24
Ѓ25*
Ъ
Єtrace_0
Ѕtrace_1
Іtrace_2
Їtrace_3
Јtrace_4
Љtrace_5
Њtrace_6
Ћtrace_7
Ќtrace_8
­trace_9
Ўtrace_10
Џtrace_11
Аtrace_12
Бtrace_13* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

?0
@1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

^0
_1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

}0
~1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Л0
М1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

к0
л1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
В	variables
Г	keras_api

Дtotal

Еcount*
M
Ж	variables
З	keras_api

Иtotal

Йcount
К
_fn_kwargs*
^X
VARIABLE_VALUEAdam/m/CNN0_/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/CNN0_/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/m/CNN0_/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/v/CNN0_/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/m/BN0_/custom_batch_beta1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/v/BN0_/custom_batch_beta1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/BN0_/custom_batch_gamma1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/BN0_/custom_batch_gamma1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/CNN1_/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/CNN1_/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/CNN1_/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/CNN1_/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/BN1_/custom_batch_beta2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/BN1_/custom_batch_beta2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/BN1_/custom_batch_gamma2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/BN1_/custom_batch_gamma2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/CNN2_/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/CNN2_/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/CNN2_/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/CNN2_/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/BN2_/custom_batch_beta2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/BN2_/custom_batch_beta2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/BN2_/custom_batch_gamma2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/BN2_/custom_batch_gamma2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/CNN3_/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/CNN3_/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/CNN3_/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/CNN3_/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/BN3_/custom_batch_beta2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/BN3_/custom_batch_beta2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/BN3_/custom_batch_gamma2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/BN3_/custom_batch_gamma2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/CNN4_/kernel2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/CNN4_/kernel2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/CNN4_/bias2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/CNN4_/bias2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/BN4_/custom_batch_beta2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/BN4_/custom_batch_beta2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/BN4_/custom_batch_gamma2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/BN4_/custom_batch_gamma2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/CNN5_/kernel2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/CNN5_/kernel2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/CNN5_/bias2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/CNN5_/bias2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/BN5_/custom_batch_beta2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/BN5_/custom_batch_beta2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/BN5_/custom_batch_gamma2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/BN5_/custom_batch_gamma2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/FC_1_/kernel2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/FC_1_/kernel2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/FC_1_/bias2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/FC_1_/bias2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Д0
Е1*

В	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

И0
Й1*

Ж	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
У
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameCNN0_/kernel
CNN0_/biasBN0_/custom_batch_betaBN0_/custom_batch_gammaBN0_/custom_batch_moving_mean!BN0_/custom_batch_moving_varianceCNN1_/kernel
CNN1_/biasBN1_/custom_batch_betaBN1_/custom_batch_gammaBN1_/custom_batch_moving_mean!BN1_/custom_batch_moving_varianceCNN2_/kernel
CNN2_/biasBN2_/custom_batch_betaBN2_/custom_batch_gammaBN2_/custom_batch_moving_mean!BN2_/custom_batch_moving_varianceCNN3_/kernel
CNN3_/biasBN3_/custom_batch_betaBN3_/custom_batch_gammaBN3_/custom_batch_moving_mean!BN3_/custom_batch_moving_varianceCNN4_/kernel
CNN4_/biasBN4_/custom_batch_betaBN4_/custom_batch_gammaBN4_/custom_batch_moving_mean!BN4_/custom_batch_moving_varianceCNN5_/kernel
CNN5_/biasBN5_/custom_batch_betaBN5_/custom_batch_gammaBN5_/custom_batch_moving_mean!BN5_/custom_batch_moving_varianceFC_1_/kernel
FC_1_/bias	iterationlearning_rateAdam/m/CNN0_/kernelAdam/v/CNN0_/kernelAdam/m/CNN0_/biasAdam/v/CNN0_/biasAdam/m/BN0_/custom_batch_betaAdam/v/BN0_/custom_batch_betaAdam/m/BN0_/custom_batch_gammaAdam/v/BN0_/custom_batch_gammaAdam/m/CNN1_/kernelAdam/v/CNN1_/kernelAdam/m/CNN1_/biasAdam/v/CNN1_/biasAdam/m/BN1_/custom_batch_betaAdam/v/BN1_/custom_batch_betaAdam/m/BN1_/custom_batch_gammaAdam/v/BN1_/custom_batch_gammaAdam/m/CNN2_/kernelAdam/v/CNN2_/kernelAdam/m/CNN2_/biasAdam/v/CNN2_/biasAdam/m/BN2_/custom_batch_betaAdam/v/BN2_/custom_batch_betaAdam/m/BN2_/custom_batch_gammaAdam/v/BN2_/custom_batch_gammaAdam/m/CNN3_/kernelAdam/v/CNN3_/kernelAdam/m/CNN3_/biasAdam/v/CNN3_/biasAdam/m/BN3_/custom_batch_betaAdam/v/BN3_/custom_batch_betaAdam/m/BN3_/custom_batch_gammaAdam/v/BN3_/custom_batch_gammaAdam/m/CNN4_/kernelAdam/v/CNN4_/kernelAdam/m/CNN4_/biasAdam/v/CNN4_/biasAdam/m/BN4_/custom_batch_betaAdam/v/BN4_/custom_batch_betaAdam/m/BN4_/custom_batch_gammaAdam/v/BN4_/custom_batch_gammaAdam/m/CNN5_/kernelAdam/v/CNN5_/kernelAdam/m/CNN5_/biasAdam/v/CNN5_/biasAdam/m/BN5_/custom_batch_betaAdam/v/BN5_/custom_batch_betaAdam/m/BN5_/custom_batch_gammaAdam/v/BN5_/custom_batch_gammaAdam/m/FC_1_/kernelAdam/v/FC_1_/kernelAdam/m/FC_1_/biasAdam/v/FC_1_/biastotal_1count_1totalcountConst*m
Tinf
d2b*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *'
f"R 
__inference__traced_save_85757
О
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameCNN0_/kernel
CNN0_/biasBN0_/custom_batch_betaBN0_/custom_batch_gammaBN0_/custom_batch_moving_mean!BN0_/custom_batch_moving_varianceCNN1_/kernel
CNN1_/biasBN1_/custom_batch_betaBN1_/custom_batch_gammaBN1_/custom_batch_moving_mean!BN1_/custom_batch_moving_varianceCNN2_/kernel
CNN2_/biasBN2_/custom_batch_betaBN2_/custom_batch_gammaBN2_/custom_batch_moving_mean!BN2_/custom_batch_moving_varianceCNN3_/kernel
CNN3_/biasBN3_/custom_batch_betaBN3_/custom_batch_gammaBN3_/custom_batch_moving_mean!BN3_/custom_batch_moving_varianceCNN4_/kernel
CNN4_/biasBN4_/custom_batch_betaBN4_/custom_batch_gammaBN4_/custom_batch_moving_mean!BN4_/custom_batch_moving_varianceCNN5_/kernel
CNN5_/biasBN5_/custom_batch_betaBN5_/custom_batch_gammaBN5_/custom_batch_moving_mean!BN5_/custom_batch_moving_varianceFC_1_/kernel
FC_1_/bias	iterationlearning_rateAdam/m/CNN0_/kernelAdam/v/CNN0_/kernelAdam/m/CNN0_/biasAdam/v/CNN0_/biasAdam/m/BN0_/custom_batch_betaAdam/v/BN0_/custom_batch_betaAdam/m/BN0_/custom_batch_gammaAdam/v/BN0_/custom_batch_gammaAdam/m/CNN1_/kernelAdam/v/CNN1_/kernelAdam/m/CNN1_/biasAdam/v/CNN1_/biasAdam/m/BN1_/custom_batch_betaAdam/v/BN1_/custom_batch_betaAdam/m/BN1_/custom_batch_gammaAdam/v/BN1_/custom_batch_gammaAdam/m/CNN2_/kernelAdam/v/CNN2_/kernelAdam/m/CNN2_/biasAdam/v/CNN2_/biasAdam/m/BN2_/custom_batch_betaAdam/v/BN2_/custom_batch_betaAdam/m/BN2_/custom_batch_gammaAdam/v/BN2_/custom_batch_gammaAdam/m/CNN3_/kernelAdam/v/CNN3_/kernelAdam/m/CNN3_/biasAdam/v/CNN3_/biasAdam/m/BN3_/custom_batch_betaAdam/v/BN3_/custom_batch_betaAdam/m/BN3_/custom_batch_gammaAdam/v/BN3_/custom_batch_gammaAdam/m/CNN4_/kernelAdam/v/CNN4_/kernelAdam/m/CNN4_/biasAdam/v/CNN4_/biasAdam/m/BN4_/custom_batch_betaAdam/v/BN4_/custom_batch_betaAdam/m/BN4_/custom_batch_gammaAdam/v/BN4_/custom_batch_gammaAdam/m/CNN5_/kernelAdam/v/CNN5_/kernelAdam/m/CNN5_/biasAdam/v/CNN5_/biasAdam/m/BN5_/custom_batch_betaAdam/v/BN5_/custom_batch_betaAdam/m/BN5_/custom_batch_gammaAdam/v/BN5_/custom_batch_gammaAdam/m/FC_1_/kernelAdam/v/FC_1_/kernelAdam/m/FC_1_/biasAdam/v/FC_1_/biastotal_1count_1totalcount*l
Tine
c2a*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__traced_restore_86055Юа
Њ
@
$__inference_BN1__layer_call_fn_84811

inputs
identityВ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN1__layer_call_and_return_conditional_losses_83651e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџ0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ0:T P
,
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
О_
ѓ
@__inference_model_layer_call_and_return_conditional_losses_83990

inputs!
cnn0__83932: 
cnn0__83934: !
cnn1__83940: 0
cnn1__83942:0!
cnn2__83948:0@
cnn2__83950:@!
cnn3__83956:@`
cnn3__83958:`"
cnn4__83964:`
cnn4__83966:	#
cnn5__83972:Р
cnn5__83974:	Р
fc_1__83982:	Р
fc_1__83984:
identityЂCNN0_/StatefulPartitionedCallЂCNN1_/StatefulPartitionedCallЂCNN2_/StatefulPartitionedCallЂCNN3_/StatefulPartitionedCallЂCNN4_/StatefulPartitionedCallЂCNN5_/StatefulPartitionedCallЂFC_1_/StatefulPartitionedCallщ
CNN0_/StatefulPartitionedCallStatefulPartitionedCallinputscnn0__83932cnn0__83934*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN0__layer_call_and_return_conditional_losses_83605х
MAX_POOL_0_/PartitionedCallPartitionedCall&CNN0_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_0__layer_call_and_return_conditional_losses_83490е
BN0_/PartitionedCallPartitionedCall$MAX_POOL_0_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN0__layer_call_and_return_conditional_losses_83616и
CNN_REL0_/PartitionedCallPartitionedCallBN0_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL0__layer_call_and_return_conditional_losses_83623
CNN1_/StatefulPartitionedCallStatefulPartitionedCall"CNN_REL0_/PartitionedCall:output:0cnn1__83940cnn1__83942*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN1__layer_call_and_return_conditional_losses_83640х
MAX_POOL_1_/PartitionedCallPartitionedCall&CNN1_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_1__layer_call_and_return_conditional_losses_83505е
BN1_/PartitionedCallPartitionedCall$MAX_POOL_1_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN1__layer_call_and_return_conditional_losses_83651и
CNN_REL1_/PartitionedCallPartitionedCallBN1_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL1__layer_call_and_return_conditional_losses_83658
CNN2_/StatefulPartitionedCallStatefulPartitionedCall"CNN_REL1_/PartitionedCall:output:0cnn2__83948cnn2__83950*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN2__layer_call_and_return_conditional_losses_83675ф
MAX_POOL_2_/PartitionedCallPartitionedCall&CNN2_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_2__layer_call_and_return_conditional_losses_83520д
BN2_/PartitionedCallPartitionedCall$MAX_POOL_2_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN2__layer_call_and_return_conditional_losses_83686з
CNN_REL2_/PartitionedCallPartitionedCallBN2_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL2__layer_call_and_return_conditional_losses_83693
CNN3_/StatefulPartitionedCallStatefulPartitionedCall"CNN_REL2_/PartitionedCall:output:0cnn3__83956cnn3__83958*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN3__layer_call_and_return_conditional_losses_83710ф
MAX_POOL_3_/PartitionedCallPartitionedCall&CNN3_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_3__layer_call_and_return_conditional_losses_83535д
BN3_/PartitionedCallPartitionedCall$MAX_POOL_3_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN3__layer_call_and_return_conditional_losses_83721з
CNN_REL3_/PartitionedCallPartitionedCallBN3_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL3__layer_call_and_return_conditional_losses_83728
CNN4_/StatefulPartitionedCallStatefulPartitionedCall"CNN_REL3_/PartitionedCall:output:0cnn4__83964cnn4__83966*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN4__layer_call_and_return_conditional_losses_83745х
MAX_POOL_4_/PartitionedCallPartitionedCall&CNN4_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_4__layer_call_and_return_conditional_losses_83550е
BN4_/PartitionedCallPartitionedCall$MAX_POOL_4_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN4__layer_call_and_return_conditional_losses_83756и
CNN_REL4_/PartitionedCallPartitionedCallBN4_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL4__layer_call_and_return_conditional_losses_83763
CNN5_/StatefulPartitionedCallStatefulPartitionedCall"CNN_REL4_/PartitionedCall:output:0cnn5__83972cnn5__83974*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ Р*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN5__layer_call_and_return_conditional_losses_83780х
MAX_POOL_5_/PartitionedCallPartitionedCall&CNN5_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ Р* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_5__layer_call_and_return_conditional_losses_83565е
BN5_/PartitionedCallPartitionedCall$MAX_POOL_5_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ Р* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN5__layer_call_and_return_conditional_losses_83791и
CNN_REL5_/PartitionedCallPartitionedCallBN5_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ Р* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL5__layer_call_and_return_conditional_losses_83798е
AVG1_/PartitionedCallPartitionedCall"CNN_REL5_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџР* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_AVG1__layer_call_and_return_conditional_losses_83580Э
FLT1_/PartitionedCallPartitionedCallAVG1_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџР* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_FLT1__layer_call_and_return_conditional_losses_83807ќ
FC_1_/StatefulPartitionedCallStatefulPartitionedCallFLT1_/PartitionedCall:output:0fc_1__83982fc_1__83984*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_FC_1__layer_call_and_return_conditional_losses_83819и
softmax/PartitionedCallPartitionedCall&FC_1_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_softmax_layer_call_and_return_conditional_losses_83830в
flatten/PartitionedCallPartitionedCall softmax/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_83838o
IdentityIdentity flatten/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџІ
NoOpNoOp^CNN0_/StatefulPartitionedCall^CNN1_/StatefulPartitionedCall^CNN2_/StatefulPartitionedCall^CNN3_/StatefulPartitionedCall^CNN4_/StatefulPartitionedCall^CNN5_/StatefulPartitionedCall^FC_1_/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:џџџџџџџџџ: : : : : : : : : : : : : : 2>
CNN0_/StatefulPartitionedCallCNN0_/StatefulPartitionedCall2>
CNN1_/StatefulPartitionedCallCNN1_/StatefulPartitionedCall2>
CNN2_/StatefulPartitionedCallCNN2_/StatefulPartitionedCall2>
CNN3_/StatefulPartitionedCallCNN3_/StatefulPartitionedCall2>
CNN4_/StatefulPartitionedCallCNN4_/StatefulPartitionedCall2>
CNN5_/StatefulPartitionedCallCNN5_/StatefulPartitionedCall2>
FC_1_/StatefulPartitionedCallFC_1_/StatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

C
'__inference_flatten_layer_call_fn_85152

inputs
identityА
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_83838`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
у
ї
%__inference_model_layer_call_fn_84441

inputs
unknown: 
	unknown_0: 
	unknown_1: 0
	unknown_2:0
	unknown_3:0@
	unknown_4:@
	unknown_5:@`
	unknown_6:` 
	unknown_7:`
	unknown_8:	!
	unknown_9:Р

unknown_10:	Р

unknown_11:	Р

unknown_12:
identityЂStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_83990o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:џџџџџџџџџ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
І
@
$__inference_BN3__layer_call_fn_84941

inputs
identityБ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN3__layer_call_and_return_conditional_losses_83721d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@`:S O
+
_output_shapes
:џџџџџџџџџ@`
 
_user_specified_nameinputs
№
A
%__inference_AVG1__layer_call_fn_85099

inputs
identityФ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_AVG1__layer_call_and_return_conditional_losses_83580v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ю
\
@__inference_AVG1__layer_call_and_return_conditional_losses_83580

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџЏ
AvgPoolAvgPoolExpandDims:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
 *
paddingVALID*
strides
 
SqueezeSqueezeAvgPool:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ќ
G
+__inference_MAX_POOL_3__layer_call_fn_84928

inputs
identityЪ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_3__layer_call_and_return_conditional_losses_83535v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
и
`
D__inference_CNN_REL3__layer_call_and_return_conditional_losses_84964

inputs
identityJ
ReluReluinputs*
T0*+
_output_shapes
:џџџџџџџџџ@`^
IdentityIdentityRelu:activations:0*
T0*+
_output_shapes
:џџџџџџџџџ@`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@`:S O
+
_output_shapes
:џџџџџџџџџ@`
 
_user_specified_nameinputs
І
@
$__inference_BN2__layer_call_fn_84881

inputs
identityБ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN2__layer_call_and_return_conditional_losses_83877d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@@:S O
+
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
б

%__inference_CNN3__layer_call_fn_84908

inputs
unknown:@`
	unknown_0:`
identityЂStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN3__layer_call_and_return_conditional_losses_83710s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ@``
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
ў
[
?__inference_BN4__layer_call_and_return_conditional_losses_85015

inputs
identityS
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ :T P
,
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Д
E
)__inference_CNN_REL1__layer_call_fn_84829

inputs
identityЗ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL1__layer_call_and_return_conditional_losses_83658e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџ0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ0:T P
,
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
Ы
b
F__inference_MAX_POOL_2__layer_call_and_return_conditional_losses_83520

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџІ
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides

SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
м
`
D__inference_CNN_REL5__layer_call_and_return_conditional_losses_85094

inputs
identityK
ReluReluinputs*
T0*,
_output_shapes
:џџџџџџџџџ Р_
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:џџџџџџџџџ Р"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ Р:T P
,
_output_shapes
:џџџџџџџџџ Р
 
_user_specified_nameinputs
В
^
B__inference_flatten_layer_call_and_return_conditional_losses_83838

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:џџџџџџџџџX
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Р

%__inference_FC_1__layer_call_fn_85127

inputs
unknown:	Р
	unknown_0:
identityЂStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_FC_1__layer_call_and_return_conditional_losses_83819o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџР: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџР
 
_user_specified_nameinputs
м
`
D__inference_CNN_REL5__layer_call_and_return_conditional_losses_83798

inputs
identityK
ReluReluinputs*
T0*,
_output_shapes
:џџџџџџџџџ Р_
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:џџџџџџџџџ Р"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ Р:T P
,
_output_shapes
:џџџџџџџџџ Р
 
_user_specified_nameinputs
М
\
@__inference_FLT1__layer_call_and_return_conditional_losses_83807

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџРY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџР"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџР:T P
,
_output_shapes
:џџџџџџџџџР
 
_user_specified_nameinputs
А
E
)__inference_CNN_REL3__layer_call_fn_84959

inputs
identityЖ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL3__layer_call_and_return_conditional_losses_83728d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@`:S O
+
_output_shapes
:џџџџџџџџџ@`
 
_user_specified_nameinputs
ы

@__inference_CNN3__layer_call_and_return_conditional_losses_83710

inputsA
+conv1d_expanddims_1_readvariableop_resource:@`-
biasadd_readvariableop_resource:`
identityЂBiasAdd/ReadVariableOpЂ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@@
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@`*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@`Ќ
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@`*
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@`*
squeeze_dims

§џџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ@`c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
ў
[
?__inference_BN5__layer_call_and_return_conditional_losses_85080

inputs
identityS
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџ Р"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ Р:T P
,
_output_shapes
:џџџџџџџџџ Р
 
_user_specified_nameinputs
ы

@__inference_CNN3__layer_call_and_return_conditional_losses_84923

inputsA
+conv1d_expanddims_1_readvariableop_resource:@`-
biasadd_readvariableop_resource:`
identityЂBiasAdd/ReadVariableOpЂ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@@
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@`*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@`Ќ
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@`*
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@`*
squeeze_dims

§џџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ@`c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
и
`
D__inference_CNN_REL3__layer_call_and_return_conditional_losses_83728

inputs
identityJ
ReluReluinputs*
T0*+
_output_shapes
:џџџџџџџџџ@`^
IdentityIdentityRelu:activations:0*
T0*+
_output_shapes
:џџџџџџџџџ@`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@`:S O
+
_output_shapes
:џџџџџџџџџ@`
 
_user_specified_nameinputs
Ц
S
"__inference__update_step_xla_49833
gradient
variable:`*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*$
_input_shapes
:`: *
	_noinline(:($
"
_user_specified_name
variable:M I
#
_output_shapes
:`
"
_user_specified_name
gradient
Ћ
J
"__inference__update_step_xla_49808
gradient
variable:0*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:0: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:0
"
_user_specified_name
gradient
Ћ
J
"__inference__update_step_xla_49798
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
: 
"
_user_specified_name
gradient
Д
E
)__inference_CNN_REL5__layer_call_fn_85089

inputs
identityЗ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ Р* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL5__layer_call_and_return_conditional_losses_83798e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџ Р"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ Р:T P
,
_output_shapes
:џџџџџџџџџ Р
 
_user_specified_nameinputs
Є
A
%__inference_FLT1__layer_call_fn_85112

inputs
identityЏ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџР* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_FLT1__layer_call_and_return_conditional_losses_83807a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџР"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџР:T P
,
_output_shapes
:џџџџџџџџџР
 
_user_specified_nameinputs
м
`
D__inference_CNN_REL4__layer_call_and_return_conditional_losses_85029

inputs
identityK
ReluReluinputs*
T0*,
_output_shapes
:џџџџџџџџџ _
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ :T P
,
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ћ
[
?__inference_BN3__layer_call_and_return_conditional_losses_83721

inputs
identityR
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ@`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@`:S O
+
_output_shapes
:џџџџџџџџџ@`
 
_user_specified_nameinputs
Ы
b
F__inference_MAX_POOL_0__layer_call_and_return_conditional_losses_84741

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџІ
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides

SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ђ

@__inference_CNN0__layer_call_and_return_conditional_losses_83605

inputsA
+conv1d_expanddims_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: ­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ *
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ *
squeeze_dims

§џџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ 
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ы
b
F__inference_MAX_POOL_3__layer_call_and_return_conditional_losses_84936

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџІ
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides

SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ц
ј
%__inference_model_layer_call_fn_84115
input_1
unknown: 
	unknown_0: 
	unknown_1: 0
	unknown_2:0
	unknown_3:0@
	unknown_4:@
	unknown_5:@`
	unknown_6:` 
	unknown_7:`
	unknown_8:	!
	unknown_9:Р

unknown_10:	Р

unknown_11:	Р

unknown_12:
identityЂStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_84084o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:џџџџџџџџџ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1
ќ
G
+__inference_MAX_POOL_2__layer_call_fn_84863

inputs
identityЪ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_2__layer_call_and_return_conditional_losses_83520v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Њ
@
$__inference_BN5__layer_call_fn_85076

inputs
identityВ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ Р* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN5__layer_call_and_return_conditional_losses_83913e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџ Р"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ Р:T P
,
_output_shapes
:џџџџџџџџџ Р
 
_user_specified_nameinputs
ћ
[
?__inference_BN2__layer_call_and_return_conditional_losses_83686

inputs
identityR
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@@:S O
+
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
є

@__inference_CNN4__layer_call_and_return_conditional_losses_84988

inputsB
+conv1d_expanddims_1_readvariableop_resource:`.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@`
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:`*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ё
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:`­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ@*
squeeze_dims

§џџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ@d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ@`
 
_user_specified_nameinputs
Ы
^
B__inference_softmax_layer_call_and_return_conditional_losses_85147

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:џџџџџџџџџY
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ю
\
@__inference_AVG1__layer_call_and_return_conditional_losses_85107

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџЏ
AvgPoolAvgPoolExpandDims:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
 *
paddingVALID*
strides
 
SqueezeSqueezeAvgPool:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
С_
є
@__inference_model_layer_call_and_return_conditional_losses_83841
input_1!
cnn0__83606: 
cnn0__83608: !
cnn1__83641: 0
cnn1__83643:0!
cnn2__83676:0@
cnn2__83678:@!
cnn3__83711:@`
cnn3__83713:`"
cnn4__83746:`
cnn4__83748:	#
cnn5__83781:Р
cnn5__83783:	Р
fc_1__83820:	Р
fc_1__83822:
identityЂCNN0_/StatefulPartitionedCallЂCNN1_/StatefulPartitionedCallЂCNN2_/StatefulPartitionedCallЂCNN3_/StatefulPartitionedCallЂCNN4_/StatefulPartitionedCallЂCNN5_/StatefulPartitionedCallЂFC_1_/StatefulPartitionedCallъ
CNN0_/StatefulPartitionedCallStatefulPartitionedCallinput_1cnn0__83606cnn0__83608*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN0__layer_call_and_return_conditional_losses_83605х
MAX_POOL_0_/PartitionedCallPartitionedCall&CNN0_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_0__layer_call_and_return_conditional_losses_83490е
BN0_/PartitionedCallPartitionedCall$MAX_POOL_0_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN0__layer_call_and_return_conditional_losses_83616и
CNN_REL0_/PartitionedCallPartitionedCallBN0_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL0__layer_call_and_return_conditional_losses_83623
CNN1_/StatefulPartitionedCallStatefulPartitionedCall"CNN_REL0_/PartitionedCall:output:0cnn1__83641cnn1__83643*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN1__layer_call_and_return_conditional_losses_83640х
MAX_POOL_1_/PartitionedCallPartitionedCall&CNN1_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_1__layer_call_and_return_conditional_losses_83505е
BN1_/PartitionedCallPartitionedCall$MAX_POOL_1_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN1__layer_call_and_return_conditional_losses_83651и
CNN_REL1_/PartitionedCallPartitionedCallBN1_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL1__layer_call_and_return_conditional_losses_83658
CNN2_/StatefulPartitionedCallStatefulPartitionedCall"CNN_REL1_/PartitionedCall:output:0cnn2__83676cnn2__83678*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN2__layer_call_and_return_conditional_losses_83675ф
MAX_POOL_2_/PartitionedCallPartitionedCall&CNN2_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_2__layer_call_and_return_conditional_losses_83520д
BN2_/PartitionedCallPartitionedCall$MAX_POOL_2_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN2__layer_call_and_return_conditional_losses_83686з
CNN_REL2_/PartitionedCallPartitionedCallBN2_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL2__layer_call_and_return_conditional_losses_83693
CNN3_/StatefulPartitionedCallStatefulPartitionedCall"CNN_REL2_/PartitionedCall:output:0cnn3__83711cnn3__83713*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN3__layer_call_and_return_conditional_losses_83710ф
MAX_POOL_3_/PartitionedCallPartitionedCall&CNN3_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_3__layer_call_and_return_conditional_losses_83535д
BN3_/PartitionedCallPartitionedCall$MAX_POOL_3_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN3__layer_call_and_return_conditional_losses_83721з
CNN_REL3_/PartitionedCallPartitionedCallBN3_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL3__layer_call_and_return_conditional_losses_83728
CNN4_/StatefulPartitionedCallStatefulPartitionedCall"CNN_REL3_/PartitionedCall:output:0cnn4__83746cnn4__83748*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN4__layer_call_and_return_conditional_losses_83745х
MAX_POOL_4_/PartitionedCallPartitionedCall&CNN4_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_4__layer_call_and_return_conditional_losses_83550е
BN4_/PartitionedCallPartitionedCall$MAX_POOL_4_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN4__layer_call_and_return_conditional_losses_83756и
CNN_REL4_/PartitionedCallPartitionedCallBN4_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL4__layer_call_and_return_conditional_losses_83763
CNN5_/StatefulPartitionedCallStatefulPartitionedCall"CNN_REL4_/PartitionedCall:output:0cnn5__83781cnn5__83783*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ Р*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN5__layer_call_and_return_conditional_losses_83780х
MAX_POOL_5_/PartitionedCallPartitionedCall&CNN5_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ Р* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_5__layer_call_and_return_conditional_losses_83565е
BN5_/PartitionedCallPartitionedCall$MAX_POOL_5_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ Р* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN5__layer_call_and_return_conditional_losses_83791и
CNN_REL5_/PartitionedCallPartitionedCallBN5_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ Р* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL5__layer_call_and_return_conditional_losses_83798е
AVG1_/PartitionedCallPartitionedCall"CNN_REL5_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџР* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_AVG1__layer_call_and_return_conditional_losses_83580Э
FLT1_/PartitionedCallPartitionedCallAVG1_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџР* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_FLT1__layer_call_and_return_conditional_losses_83807ќ
FC_1_/StatefulPartitionedCallStatefulPartitionedCallFLT1_/PartitionedCall:output:0fc_1__83820fc_1__83822*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_FC_1__layer_call_and_return_conditional_losses_83819и
softmax/PartitionedCallPartitionedCall&FC_1_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_softmax_layer_call_and_return_conditional_losses_83830в
flatten/PartitionedCallPartitionedCall softmax/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_83838o
IdentityIdentity flatten/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџІ
NoOpNoOp^CNN0_/StatefulPartitionedCall^CNN1_/StatefulPartitionedCall^CNN2_/StatefulPartitionedCall^CNN3_/StatefulPartitionedCall^CNN4_/StatefulPartitionedCall^CNN5_/StatefulPartitionedCall^FC_1_/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:џџџџџџџџџ: : : : : : : : : : : : : : 2>
CNN0_/StatefulPartitionedCallCNN0_/StatefulPartitionedCall2>
CNN1_/StatefulPartitionedCallCNN1_/StatefulPartitionedCall2>
CNN2_/StatefulPartitionedCallCNN2_/StatefulPartitionedCall2>
CNN3_/StatefulPartitionedCallCNN3_/StatefulPartitionedCall2>
CNN4_/StatefulPartitionedCallCNN4_/StatefulPartitionedCall2>
CNN5_/StatefulPartitionedCallCNN5_/StatefulPartitionedCall2>
FC_1_/StatefulPartitionedCallFC_1_/StatefulPartitionedCall:U Q
,
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1
е

%__inference_CNN4__layer_call_fn_84973

inputs
unknown:`
	unknown_0:	
identityЂStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN4__layer_call_and_return_conditional_losses_83745t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@`: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ@`
 
_user_specified_nameinputs
Њ
@
$__inference_BN4__layer_call_fn_85006

inputs
identityВ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN4__layer_call_and_return_conditional_losses_83756e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ :T P
,
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ќ
G
+__inference_MAX_POOL_1__layer_call_fn_84798

inputs
identityЪ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_1__layer_call_and_return_conditional_losses_83505v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
у
ї
%__inference_model_layer_call_fn_84474

inputs
unknown: 
	unknown_0: 
	unknown_1: 0
	unknown_2:0
	unknown_3:0@
	unknown_4:@
	unknown_5:@`
	unknown_6:` 
	unknown_7:`
	unknown_8:	!
	unknown_9:Р

unknown_10:	Р

unknown_11:	Р

unknown_12:
identityЂStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_84084o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:џџџџџџџџџ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
е

%__inference_CNN2__layer_call_fn_84843

inputs
unknown:0@
	unknown_0:@
identityЂStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN2__layer_call_and_return_conditional_losses_83675t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ0: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
ў
[
?__inference_BN1__layer_call_and_return_conditional_losses_83865

inputs
identityS
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџ0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ0:T P
,
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
Ы
b
F__inference_MAX_POOL_1__layer_call_and_return_conditional_losses_83505

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџІ
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides

SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы
b
F__inference_MAX_POOL_5__layer_call_and_return_conditional_losses_85066

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџІ
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides

SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
У
R
"__inference__update_step_xla_49813
gradient
variable:0@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*#
_input_shapes
:0@: *
	_noinline(:($
"
_user_specified_name
variable:L H
"
_output_shapes
:0@
"
_user_specified_name
gradient
У
R
"__inference__update_step_xla_49823
gradient
variable:@`*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*#
_input_shapes
:@`: *
	_noinline(:($
"
_user_specified_name
variable:L H
"
_output_shapes
:@`
"
_user_specified_name
gradient
ў
[
?__inference_BN0__layer_call_and_return_conditional_losses_83616

inputs
identityS
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ :T P
,
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ў
[
?__inference_BN1__layer_call_and_return_conditional_losses_83651

inputs
identityS
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџ0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ0:T P
,
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
Ы
b
F__inference_MAX_POOL_4__layer_call_and_return_conditional_losses_83550

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџІ
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides

SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
А
E
)__inference_CNN_REL2__layer_call_fn_84894

inputs
identityЖ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL2__layer_call_and_return_conditional_losses_83693d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@@:S O
+
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
Њ
@
$__inference_BN0__layer_call_fn_84746

inputs
identityВ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN0__layer_call_and_return_conditional_losses_83616e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ :T P
,
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Њ
@
$__inference_BN1__layer_call_fn_84816

inputs
identityВ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN1__layer_call_and_return_conditional_losses_83865e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџ0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ0:T P
,
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
ї
Ш
 __inference__wrapped_model_83481
input_1M
7model_cnn0__conv1d_expanddims_1_readvariableop_resource: 9
+model_cnn0__biasadd_readvariableop_resource: M
7model_cnn1__conv1d_expanddims_1_readvariableop_resource: 09
+model_cnn1__biasadd_readvariableop_resource:0M
7model_cnn2__conv1d_expanddims_1_readvariableop_resource:0@9
+model_cnn2__biasadd_readvariableop_resource:@M
7model_cnn3__conv1d_expanddims_1_readvariableop_resource:@`9
+model_cnn3__biasadd_readvariableop_resource:`N
7model_cnn4__conv1d_expanddims_1_readvariableop_resource:`:
+model_cnn4__biasadd_readvariableop_resource:	O
7model_cnn5__conv1d_expanddims_1_readvariableop_resource:Р:
+model_cnn5__biasadd_readvariableop_resource:	Р=
*model_fc_1__matmul_readvariableop_resource:	Р9
+model_fc_1__biasadd_readvariableop_resource:
identityЂ"model/CNN0_/BiasAdd/ReadVariableOpЂ.model/CNN0_/Conv1D/ExpandDims_1/ReadVariableOpЂ"model/CNN1_/BiasAdd/ReadVariableOpЂ.model/CNN1_/Conv1D/ExpandDims_1/ReadVariableOpЂ"model/CNN2_/BiasAdd/ReadVariableOpЂ.model/CNN2_/Conv1D/ExpandDims_1/ReadVariableOpЂ"model/CNN3_/BiasAdd/ReadVariableOpЂ.model/CNN3_/Conv1D/ExpandDims_1/ReadVariableOpЂ"model/CNN4_/BiasAdd/ReadVariableOpЂ.model/CNN4_/Conv1D/ExpandDims_1/ReadVariableOpЂ"model/CNN5_/BiasAdd/ReadVariableOpЂ.model/CNN5_/Conv1D/ExpandDims_1/ReadVariableOpЂ"model/FC_1_/BiasAdd/ReadVariableOpЂ!model/FC_1_/MatMul/ReadVariableOpl
!model/CNN0_/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
model/CNN0_/Conv1D/ExpandDims
ExpandDimsinput_1*model/CNN0_/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџЊ
.model/CNN0_/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp7model_cnn0__conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0e
#model/CNN0_/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ф
model/CNN0_/Conv1D/ExpandDims_1
ExpandDims6model/CNN0_/Conv1D/ExpandDims_1/ReadVariableOp:value:0,model/CNN0_/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: б
model/CNN0_/Conv1DConv2D&model/CNN0_/Conv1D/ExpandDims:output:0(model/CNN0_/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ *
paddingSAME*
strides

model/CNN0_/Conv1D/SqueezeSqueezemodel/CNN0_/Conv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ *
squeeze_dims

§џџџџџџџџ
"model/CNN0_/BiasAdd/ReadVariableOpReadVariableOp+model_cnn0__biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
model/CNN0_/BiasAddBiasAdd#model/CNN0_/Conv1D/Squeeze:output:0*model/CNN0_/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ b
 model/MAX_POOL_0_/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
model/MAX_POOL_0_/ExpandDims
ExpandDimsmodel/CNN0_/BiasAdd:output:0)model/MAX_POOL_0_/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ Й
model/MAX_POOL_0_/MaxPoolMaxPool%model/MAX_POOL_0_/ExpandDims:output:0*0
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides

model/MAX_POOL_0_/SqueezeSqueeze"model/MAX_POOL_0_/MaxPool:output:0*
T0*,
_output_shapes
:џџџџџџџџџ *
squeeze_dims
w
model/CNN_REL0_/ReluRelu"model/MAX_POOL_0_/Squeeze:output:0*
T0*,
_output_shapes
:џџџџџџџџџ l
!model/CNN1_/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџЖ
model/CNN1_/Conv1D/ExpandDims
ExpandDims"model/CNN_REL0_/Relu:activations:0*model/CNN1_/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ Њ
.model/CNN1_/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp7model_cnn1__conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: 0*
dtype0e
#model/CNN1_/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ф
model/CNN1_/Conv1D/ExpandDims_1
ExpandDims6model/CNN1_/Conv1D/ExpandDims_1/ReadVariableOp:value:0,model/CNN1_/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 0б
model/CNN1_/Conv1DConv2D&model/CNN1_/Conv1D/ExpandDims:output:0(model/CNN1_/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ0*
paddingSAME*
strides

model/CNN1_/Conv1D/SqueezeSqueezemodel/CNN1_/Conv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ0*
squeeze_dims

§џџџџџџџџ
"model/CNN1_/BiasAdd/ReadVariableOpReadVariableOp+model_cnn1__biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0І
model/CNN1_/BiasAddBiasAdd#model/CNN1_/Conv1D/Squeeze:output:0*model/CNN1_/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ0b
 model/MAX_POOL_1_/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
model/MAX_POOL_1_/ExpandDims
ExpandDimsmodel/CNN1_/BiasAdd:output:0)model/MAX_POOL_1_/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ0Й
model/MAX_POOL_1_/MaxPoolMaxPool%model/MAX_POOL_1_/ExpandDims:output:0*0
_output_shapes
:џџџџџџџџџ0*
ksize
*
paddingVALID*
strides

model/MAX_POOL_1_/SqueezeSqueeze"model/MAX_POOL_1_/MaxPool:output:0*
T0*,
_output_shapes
:џџџџџџџџџ0*
squeeze_dims
w
model/CNN_REL1_/ReluRelu"model/MAX_POOL_1_/Squeeze:output:0*
T0*,
_output_shapes
:џџџџџџџџџ0l
!model/CNN2_/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџЖ
model/CNN2_/Conv1D/ExpandDims
ExpandDims"model/CNN_REL1_/Relu:activations:0*model/CNN2_/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ0Њ
.model/CNN2_/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp7model_cnn2__conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:0@*
dtype0e
#model/CNN2_/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ф
model/CNN2_/Conv1D/ExpandDims_1
ExpandDims6model/CNN2_/Conv1D/ExpandDims_1/ReadVariableOp:value:0,model/CNN2_/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:0@б
model/CNN2_/Conv1DConv2D&model/CNN2_/Conv1D/ExpandDims:output:0(model/CNN2_/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

model/CNN2_/Conv1D/SqueezeSqueezemodel/CNN2_/Conv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ@*
squeeze_dims

§џџџџџџџџ
"model/CNN2_/BiasAdd/ReadVariableOpReadVariableOp+model_cnn2__biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0І
model/CNN2_/BiasAddBiasAdd#model/CNN2_/Conv1D/Squeeze:output:0*model/CNN2_/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ@b
 model/MAX_POOL_2_/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
model/MAX_POOL_2_/ExpandDims
ExpandDimsmodel/CNN2_/BiasAdd:output:0)model/MAX_POOL_2_/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@И
model/MAX_POOL_2_/MaxPoolMaxPool%model/MAX_POOL_2_/ExpandDims:output:0*/
_output_shapes
:џџџџџџџџџ@@*
ksize
*
paddingVALID*
strides

model/MAX_POOL_2_/SqueezeSqueeze"model/MAX_POOL_2_/MaxPool:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@@*
squeeze_dims
v
model/CNN_REL2_/ReluRelu"model/MAX_POOL_2_/Squeeze:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@@l
!model/CNN3_/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџЕ
model/CNN3_/Conv1D/ExpandDims
ExpandDims"model/CNN_REL2_/Relu:activations:0*model/CNN3_/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@@Њ
.model/CNN3_/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp7model_cnn3__conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@`*
dtype0e
#model/CNN3_/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ф
model/CNN3_/Conv1D/ExpandDims_1
ExpandDims6model/CNN3_/Conv1D/ExpandDims_1/ReadVariableOp:value:0,model/CNN3_/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@`а
model/CNN3_/Conv1DConv2D&model/CNN3_/Conv1D/ExpandDims:output:0(model/CNN3_/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@`*
paddingSAME*
strides

model/CNN3_/Conv1D/SqueezeSqueezemodel/CNN3_/Conv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@`*
squeeze_dims

§џџџџџџџџ
"model/CNN3_/BiasAdd/ReadVariableOpReadVariableOp+model_cnn3__biasadd_readvariableop_resource*
_output_shapes
:`*
dtype0Ѕ
model/CNN3_/BiasAddBiasAdd#model/CNN3_/Conv1D/Squeeze:output:0*model/CNN3_/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ@`b
 model/MAX_POOL_3_/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :­
model/MAX_POOL_3_/ExpandDims
ExpandDimsmodel/CNN3_/BiasAdd:output:0)model/MAX_POOL_3_/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@`И
model/MAX_POOL_3_/MaxPoolMaxPool%model/MAX_POOL_3_/ExpandDims:output:0*/
_output_shapes
:џџџџџџџџџ@`*
ksize
*
paddingVALID*
strides

model/MAX_POOL_3_/SqueezeSqueeze"model/MAX_POOL_3_/MaxPool:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@`*
squeeze_dims
v
model/CNN_REL3_/ReluRelu"model/MAX_POOL_3_/Squeeze:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@`l
!model/CNN4_/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџЕ
model/CNN4_/Conv1D/ExpandDims
ExpandDims"model/CNN_REL3_/Relu:activations:0*model/CNN4_/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@`Ћ
.model/CNN4_/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp7model_cnn4__conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:`*
dtype0e
#model/CNN4_/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Х
model/CNN4_/Conv1D/ExpandDims_1
ExpandDims6model/CNN4_/Conv1D/ExpandDims_1/ReadVariableOp:value:0,model/CNN4_/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:`б
model/CNN4_/Conv1DConv2D&model/CNN4_/Conv1D/ExpandDims:output:0(model/CNN4_/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

model/CNN4_/Conv1D/SqueezeSqueezemodel/CNN4_/Conv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ@*
squeeze_dims

§џџџџџџџџ
"model/CNN4_/BiasAdd/ReadVariableOpReadVariableOp+model_cnn4__biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0І
model/CNN4_/BiasAddBiasAdd#model/CNN4_/Conv1D/Squeeze:output:0*model/CNN4_/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ@b
 model/MAX_POOL_4_/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
model/MAX_POOL_4_/ExpandDims
ExpandDimsmodel/CNN4_/BiasAdd:output:0)model/MAX_POOL_4_/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@Й
model/MAX_POOL_4_/MaxPoolMaxPool%model/MAX_POOL_4_/ExpandDims:output:0*0
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides

model/MAX_POOL_4_/SqueezeSqueeze"model/MAX_POOL_4_/MaxPool:output:0*
T0*,
_output_shapes
:џџџџџџџџџ *
squeeze_dims
w
model/CNN_REL4_/ReluRelu"model/MAX_POOL_4_/Squeeze:output:0*
T0*,
_output_shapes
:џџџџџџџџџ l
!model/CNN5_/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџЖ
model/CNN5_/Conv1D/ExpandDims
ExpandDims"model/CNN_REL4_/Relu:activations:0*model/CNN5_/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ Ќ
.model/CNN5_/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp7model_cnn5__conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:Р*
dtype0e
#model/CNN5_/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ц
model/CNN5_/Conv1D/ExpandDims_1
ExpandDims6model/CNN5_/Conv1D/ExpandDims_1/ReadVariableOp:value:0,model/CNN5_/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:Рб
model/CNN5_/Conv1DConv2D&model/CNN5_/Conv1D/ExpandDims:output:0(model/CNN5_/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ Р*
paddingSAME*
strides

model/CNN5_/Conv1D/SqueezeSqueezemodel/CNN5_/Conv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ Р*
squeeze_dims

§џџџџџџџџ
"model/CNN5_/BiasAdd/ReadVariableOpReadVariableOp+model_cnn5__biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0І
model/CNN5_/BiasAddBiasAdd#model/CNN5_/Conv1D/Squeeze:output:0*model/CNN5_/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ Рb
 model/MAX_POOL_5_/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
model/MAX_POOL_5_/ExpandDims
ExpandDimsmodel/CNN5_/BiasAdd:output:0)model/MAX_POOL_5_/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ РЙ
model/MAX_POOL_5_/MaxPoolMaxPool%model/MAX_POOL_5_/ExpandDims:output:0*0
_output_shapes
:џџџџџџџџџ Р*
ksize
*
paddingVALID*
strides

model/MAX_POOL_5_/SqueezeSqueeze"model/MAX_POOL_5_/MaxPool:output:0*
T0*,
_output_shapes
:џџџџџџџџџ Р*
squeeze_dims
w
model/CNN_REL5_/ReluRelu"model/MAX_POOL_5_/Squeeze:output:0*
T0*,
_output_shapes
:џџџџџџџџџ Р\
model/AVG1_/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Ј
model/AVG1_/ExpandDims
ExpandDims"model/CNN_REL5_/Relu:activations:0#model/AVG1_/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ РЖ
model/AVG1_/AvgPoolAvgPoolmodel/AVG1_/ExpandDims:output:0*
T0*0
_output_shapes
:џџџџџџџџџР*
ksize
 *
paddingVALID*
strides
 
model/AVG1_/SqueezeSqueezemodel/AVG1_/AvgPool:output:0*
T0*,
_output_shapes
:џџџџџџџџџР*
squeeze_dims
b
model/FLT1_/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   
model/FLT1_/ReshapeReshapemodel/AVG1_/Squeeze:output:0model/FLT1_/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџР
!model/FC_1_/MatMul/ReadVariableOpReadVariableOp*model_fc_1__matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0
model/FC_1_/MatMulMatMulmodel/FLT1_/Reshape:output:0)model/FC_1_/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
"model/FC_1_/BiasAdd/ReadVariableOpReadVariableOp+model_fc_1__biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
model/FC_1_/BiasAddBiasAddmodel/FC_1_/MatMul:product:0*model/FC_1_/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџp
model/softmax/SoftmaxSoftmaxmodel/FC_1_/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
model/flatten/ReshapeReshapemodel/softmax/Softmax:softmax:0model/flatten/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџm
IdentityIdentitymodel/flatten/Reshape:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp#^model/CNN0_/BiasAdd/ReadVariableOp/^model/CNN0_/Conv1D/ExpandDims_1/ReadVariableOp#^model/CNN1_/BiasAdd/ReadVariableOp/^model/CNN1_/Conv1D/ExpandDims_1/ReadVariableOp#^model/CNN2_/BiasAdd/ReadVariableOp/^model/CNN2_/Conv1D/ExpandDims_1/ReadVariableOp#^model/CNN3_/BiasAdd/ReadVariableOp/^model/CNN3_/Conv1D/ExpandDims_1/ReadVariableOp#^model/CNN4_/BiasAdd/ReadVariableOp/^model/CNN4_/Conv1D/ExpandDims_1/ReadVariableOp#^model/CNN5_/BiasAdd/ReadVariableOp/^model/CNN5_/Conv1D/ExpandDims_1/ReadVariableOp#^model/FC_1_/BiasAdd/ReadVariableOp"^model/FC_1_/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:џџџџџџџџџ: : : : : : : : : : : : : : 2H
"model/CNN0_/BiasAdd/ReadVariableOp"model/CNN0_/BiasAdd/ReadVariableOp2`
.model/CNN0_/Conv1D/ExpandDims_1/ReadVariableOp.model/CNN0_/Conv1D/ExpandDims_1/ReadVariableOp2H
"model/CNN1_/BiasAdd/ReadVariableOp"model/CNN1_/BiasAdd/ReadVariableOp2`
.model/CNN1_/Conv1D/ExpandDims_1/ReadVariableOp.model/CNN1_/Conv1D/ExpandDims_1/ReadVariableOp2H
"model/CNN2_/BiasAdd/ReadVariableOp"model/CNN2_/BiasAdd/ReadVariableOp2`
.model/CNN2_/Conv1D/ExpandDims_1/ReadVariableOp.model/CNN2_/Conv1D/ExpandDims_1/ReadVariableOp2H
"model/CNN3_/BiasAdd/ReadVariableOp"model/CNN3_/BiasAdd/ReadVariableOp2`
.model/CNN3_/Conv1D/ExpandDims_1/ReadVariableOp.model/CNN3_/Conv1D/ExpandDims_1/ReadVariableOp2H
"model/CNN4_/BiasAdd/ReadVariableOp"model/CNN4_/BiasAdd/ReadVariableOp2`
.model/CNN4_/Conv1D/ExpandDims_1/ReadVariableOp.model/CNN4_/Conv1D/ExpandDims_1/ReadVariableOp2H
"model/CNN5_/BiasAdd/ReadVariableOp"model/CNN5_/BiasAdd/ReadVariableOp2`
.model/CNN5_/Conv1D/ExpandDims_1/ReadVariableOp.model/CNN5_/Conv1D/ExpandDims_1/ReadVariableOp2H
"model/FC_1_/BiasAdd/ReadVariableOp"model/FC_1_/BiasAdd/ReadVariableOp2F
!model/FC_1_/MatMul/ReadVariableOp!model/FC_1_/MatMul/ReadVariableOp:U Q
,
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1
ХЊ
Y
__inference__traced_save_85757
file_prefix9
#read_disablecopyonread_cnn0__kernel: 1
#read_1_disablecopyonread_cnn0__bias: =
/read_2_disablecopyonread_bn0__custom_batch_beta: >
0read_3_disablecopyonread_bn0__custom_batch_gamma: D
6read_4_disablecopyonread_bn0__custom_batch_moving_mean: H
:read_5_disablecopyonread_bn0__custom_batch_moving_variance: ;
%read_6_disablecopyonread_cnn1__kernel: 01
#read_7_disablecopyonread_cnn1__bias:0=
/read_8_disablecopyonread_bn1__custom_batch_beta:0>
0read_9_disablecopyonread_bn1__custom_batch_gamma:0E
7read_10_disablecopyonread_bn1__custom_batch_moving_mean:0I
;read_11_disablecopyonread_bn1__custom_batch_moving_variance:0<
&read_12_disablecopyonread_cnn2__kernel:0@2
$read_13_disablecopyonread_cnn2__bias:@>
0read_14_disablecopyonread_bn2__custom_batch_beta:@?
1read_15_disablecopyonread_bn2__custom_batch_gamma:@E
7read_16_disablecopyonread_bn2__custom_batch_moving_mean:@I
;read_17_disablecopyonread_bn2__custom_batch_moving_variance:@<
&read_18_disablecopyonread_cnn3__kernel:@`2
$read_19_disablecopyonread_cnn3__bias:`>
0read_20_disablecopyonread_bn3__custom_batch_beta:`?
1read_21_disablecopyonread_bn3__custom_batch_gamma:`E
7read_22_disablecopyonread_bn3__custom_batch_moving_mean:`I
;read_23_disablecopyonread_bn3__custom_batch_moving_variance:`=
&read_24_disablecopyonread_cnn4__kernel:`3
$read_25_disablecopyonread_cnn4__bias:	?
0read_26_disablecopyonread_bn4__custom_batch_beta:	@
1read_27_disablecopyonread_bn4__custom_batch_gamma:	F
7read_28_disablecopyonread_bn4__custom_batch_moving_mean:	J
;read_29_disablecopyonread_bn4__custom_batch_moving_variance:	>
&read_30_disablecopyonread_cnn5__kernel:Р3
$read_31_disablecopyonread_cnn5__bias:	Р?
0read_32_disablecopyonread_bn5__custom_batch_beta:	Р@
1read_33_disablecopyonread_bn5__custom_batch_gamma:	РF
7read_34_disablecopyonread_bn5__custom_batch_moving_mean:	РJ
;read_35_disablecopyonread_bn5__custom_batch_moving_variance:	Р9
&read_36_disablecopyonread_fc_1__kernel:	Р2
$read_37_disablecopyonread_fc_1__bias:-
#read_38_disablecopyonread_iteration:	 1
'read_39_disablecopyonread_learning_rate: C
-read_40_disablecopyonread_adam_m_cnn0__kernel: C
-read_41_disablecopyonread_adam_v_cnn0__kernel: 9
+read_42_disablecopyonread_adam_m_cnn0__bias: 9
+read_43_disablecopyonread_adam_v_cnn0__bias: E
7read_44_disablecopyonread_adam_m_bn0__custom_batch_beta: E
7read_45_disablecopyonread_adam_v_bn0__custom_batch_beta: F
8read_46_disablecopyonread_adam_m_bn0__custom_batch_gamma: F
8read_47_disablecopyonread_adam_v_bn0__custom_batch_gamma: C
-read_48_disablecopyonread_adam_m_cnn1__kernel: 0C
-read_49_disablecopyonread_adam_v_cnn1__kernel: 09
+read_50_disablecopyonread_adam_m_cnn1__bias:09
+read_51_disablecopyonread_adam_v_cnn1__bias:0E
7read_52_disablecopyonread_adam_m_bn1__custom_batch_beta:0E
7read_53_disablecopyonread_adam_v_bn1__custom_batch_beta:0F
8read_54_disablecopyonread_adam_m_bn1__custom_batch_gamma:0F
8read_55_disablecopyonread_adam_v_bn1__custom_batch_gamma:0C
-read_56_disablecopyonread_adam_m_cnn2__kernel:0@C
-read_57_disablecopyonread_adam_v_cnn2__kernel:0@9
+read_58_disablecopyonread_adam_m_cnn2__bias:@9
+read_59_disablecopyonread_adam_v_cnn2__bias:@E
7read_60_disablecopyonread_adam_m_bn2__custom_batch_beta:@E
7read_61_disablecopyonread_adam_v_bn2__custom_batch_beta:@F
8read_62_disablecopyonread_adam_m_bn2__custom_batch_gamma:@F
8read_63_disablecopyonread_adam_v_bn2__custom_batch_gamma:@C
-read_64_disablecopyonread_adam_m_cnn3__kernel:@`C
-read_65_disablecopyonread_adam_v_cnn3__kernel:@`9
+read_66_disablecopyonread_adam_m_cnn3__bias:`9
+read_67_disablecopyonread_adam_v_cnn3__bias:`E
7read_68_disablecopyonread_adam_m_bn3__custom_batch_beta:`E
7read_69_disablecopyonread_adam_v_bn3__custom_batch_beta:`F
8read_70_disablecopyonread_adam_m_bn3__custom_batch_gamma:`F
8read_71_disablecopyonread_adam_v_bn3__custom_batch_gamma:`D
-read_72_disablecopyonread_adam_m_cnn4__kernel:`D
-read_73_disablecopyonread_adam_v_cnn4__kernel:`:
+read_74_disablecopyonread_adam_m_cnn4__bias:	:
+read_75_disablecopyonread_adam_v_cnn4__bias:	F
7read_76_disablecopyonread_adam_m_bn4__custom_batch_beta:	F
7read_77_disablecopyonread_adam_v_bn4__custom_batch_beta:	G
8read_78_disablecopyonread_adam_m_bn4__custom_batch_gamma:	G
8read_79_disablecopyonread_adam_v_bn4__custom_batch_gamma:	E
-read_80_disablecopyonread_adam_m_cnn5__kernel:РE
-read_81_disablecopyonread_adam_v_cnn5__kernel:Р:
+read_82_disablecopyonread_adam_m_cnn5__bias:	Р:
+read_83_disablecopyonread_adam_v_cnn5__bias:	РF
7read_84_disablecopyonread_adam_m_bn5__custom_batch_beta:	РF
7read_85_disablecopyonread_adam_v_bn5__custom_batch_beta:	РG
8read_86_disablecopyonread_adam_m_bn5__custom_batch_gamma:	РG
8read_87_disablecopyonread_adam_v_bn5__custom_batch_gamma:	Р@
-read_88_disablecopyonread_adam_m_fc_1__kernel:	Р@
-read_89_disablecopyonread_adam_v_fc_1__kernel:	Р9
+read_90_disablecopyonread_adam_m_fc_1__bias:9
+read_91_disablecopyonread_adam_v_fc_1__bias:+
!read_92_disablecopyonread_total_1: +
!read_93_disablecopyonread_count_1: )
read_94_disablecopyonread_total: )
read_95_disablecopyonread_count: 
savev2_const
identity_193ЂMergeV2CheckpointsЂRead/DisableCopyOnReadЂRead/ReadVariableOpЂRead_1/DisableCopyOnReadЂRead_1/ReadVariableOpЂRead_10/DisableCopyOnReadЂRead_10/ReadVariableOpЂRead_11/DisableCopyOnReadЂRead_11/ReadVariableOpЂRead_12/DisableCopyOnReadЂRead_12/ReadVariableOpЂRead_13/DisableCopyOnReadЂRead_13/ReadVariableOpЂRead_14/DisableCopyOnReadЂRead_14/ReadVariableOpЂRead_15/DisableCopyOnReadЂRead_15/ReadVariableOpЂRead_16/DisableCopyOnReadЂRead_16/ReadVariableOpЂRead_17/DisableCopyOnReadЂRead_17/ReadVariableOpЂRead_18/DisableCopyOnReadЂRead_18/ReadVariableOpЂRead_19/DisableCopyOnReadЂRead_19/ReadVariableOpЂRead_2/DisableCopyOnReadЂRead_2/ReadVariableOpЂRead_20/DisableCopyOnReadЂRead_20/ReadVariableOpЂRead_21/DisableCopyOnReadЂRead_21/ReadVariableOpЂRead_22/DisableCopyOnReadЂRead_22/ReadVariableOpЂRead_23/DisableCopyOnReadЂRead_23/ReadVariableOpЂRead_24/DisableCopyOnReadЂRead_24/ReadVariableOpЂRead_25/DisableCopyOnReadЂRead_25/ReadVariableOpЂRead_26/DisableCopyOnReadЂRead_26/ReadVariableOpЂRead_27/DisableCopyOnReadЂRead_27/ReadVariableOpЂRead_28/DisableCopyOnReadЂRead_28/ReadVariableOpЂRead_29/DisableCopyOnReadЂRead_29/ReadVariableOpЂRead_3/DisableCopyOnReadЂRead_3/ReadVariableOpЂRead_30/DisableCopyOnReadЂRead_30/ReadVariableOpЂRead_31/DisableCopyOnReadЂRead_31/ReadVariableOpЂRead_32/DisableCopyOnReadЂRead_32/ReadVariableOpЂRead_33/DisableCopyOnReadЂRead_33/ReadVariableOpЂRead_34/DisableCopyOnReadЂRead_34/ReadVariableOpЂRead_35/DisableCopyOnReadЂRead_35/ReadVariableOpЂRead_36/DisableCopyOnReadЂRead_36/ReadVariableOpЂRead_37/DisableCopyOnReadЂRead_37/ReadVariableOpЂRead_38/DisableCopyOnReadЂRead_38/ReadVariableOpЂRead_39/DisableCopyOnReadЂRead_39/ReadVariableOpЂRead_4/DisableCopyOnReadЂRead_4/ReadVariableOpЂRead_40/DisableCopyOnReadЂRead_40/ReadVariableOpЂRead_41/DisableCopyOnReadЂRead_41/ReadVariableOpЂRead_42/DisableCopyOnReadЂRead_42/ReadVariableOpЂRead_43/DisableCopyOnReadЂRead_43/ReadVariableOpЂRead_44/DisableCopyOnReadЂRead_44/ReadVariableOpЂRead_45/DisableCopyOnReadЂRead_45/ReadVariableOpЂRead_46/DisableCopyOnReadЂRead_46/ReadVariableOpЂRead_47/DisableCopyOnReadЂRead_47/ReadVariableOpЂRead_48/DisableCopyOnReadЂRead_48/ReadVariableOpЂRead_49/DisableCopyOnReadЂRead_49/ReadVariableOpЂRead_5/DisableCopyOnReadЂRead_5/ReadVariableOpЂRead_50/DisableCopyOnReadЂRead_50/ReadVariableOpЂRead_51/DisableCopyOnReadЂRead_51/ReadVariableOpЂRead_52/DisableCopyOnReadЂRead_52/ReadVariableOpЂRead_53/DisableCopyOnReadЂRead_53/ReadVariableOpЂRead_54/DisableCopyOnReadЂRead_54/ReadVariableOpЂRead_55/DisableCopyOnReadЂRead_55/ReadVariableOpЂRead_56/DisableCopyOnReadЂRead_56/ReadVariableOpЂRead_57/DisableCopyOnReadЂRead_57/ReadVariableOpЂRead_58/DisableCopyOnReadЂRead_58/ReadVariableOpЂRead_59/DisableCopyOnReadЂRead_59/ReadVariableOpЂRead_6/DisableCopyOnReadЂRead_6/ReadVariableOpЂRead_60/DisableCopyOnReadЂRead_60/ReadVariableOpЂRead_61/DisableCopyOnReadЂRead_61/ReadVariableOpЂRead_62/DisableCopyOnReadЂRead_62/ReadVariableOpЂRead_63/DisableCopyOnReadЂRead_63/ReadVariableOpЂRead_64/DisableCopyOnReadЂRead_64/ReadVariableOpЂRead_65/DisableCopyOnReadЂRead_65/ReadVariableOpЂRead_66/DisableCopyOnReadЂRead_66/ReadVariableOpЂRead_67/DisableCopyOnReadЂRead_67/ReadVariableOpЂRead_68/DisableCopyOnReadЂRead_68/ReadVariableOpЂRead_69/DisableCopyOnReadЂRead_69/ReadVariableOpЂRead_7/DisableCopyOnReadЂRead_7/ReadVariableOpЂRead_70/DisableCopyOnReadЂRead_70/ReadVariableOpЂRead_71/DisableCopyOnReadЂRead_71/ReadVariableOpЂRead_72/DisableCopyOnReadЂRead_72/ReadVariableOpЂRead_73/DisableCopyOnReadЂRead_73/ReadVariableOpЂRead_74/DisableCopyOnReadЂRead_74/ReadVariableOpЂRead_75/DisableCopyOnReadЂRead_75/ReadVariableOpЂRead_76/DisableCopyOnReadЂRead_76/ReadVariableOpЂRead_77/DisableCopyOnReadЂRead_77/ReadVariableOpЂRead_78/DisableCopyOnReadЂRead_78/ReadVariableOpЂRead_79/DisableCopyOnReadЂRead_79/ReadVariableOpЂRead_8/DisableCopyOnReadЂRead_8/ReadVariableOpЂRead_80/DisableCopyOnReadЂRead_80/ReadVariableOpЂRead_81/DisableCopyOnReadЂRead_81/ReadVariableOpЂRead_82/DisableCopyOnReadЂRead_82/ReadVariableOpЂRead_83/DisableCopyOnReadЂRead_83/ReadVariableOpЂRead_84/DisableCopyOnReadЂRead_84/ReadVariableOpЂRead_85/DisableCopyOnReadЂRead_85/ReadVariableOpЂRead_86/DisableCopyOnReadЂRead_86/ReadVariableOpЂRead_87/DisableCopyOnReadЂRead_87/ReadVariableOpЂRead_88/DisableCopyOnReadЂRead_88/ReadVariableOpЂRead_89/DisableCopyOnReadЂRead_89/ReadVariableOpЂRead_9/DisableCopyOnReadЂRead_9/ReadVariableOpЂRead_90/DisableCopyOnReadЂRead_90/ReadVariableOpЂRead_91/DisableCopyOnReadЂRead_91/ReadVariableOpЂRead_92/DisableCopyOnReadЂRead_92/ReadVariableOpЂRead_93/DisableCopyOnReadЂRead_93/ReadVariableOpЂRead_94/DisableCopyOnReadЂRead_94/ReadVariableOpЂRead_95/DisableCopyOnReadЂRead_95/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: u
Read/DisableCopyOnReadDisableCopyOnRead#read_disablecopyonread_cnn0__kernel"/device:CPU:0*
_output_shapes
 Ѓ
Read/ReadVariableOpReadVariableOp#read_disablecopyonread_cnn0__kernel^Read/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
: *
dtype0m
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
: e

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*"
_output_shapes
: w
Read_1/DisableCopyOnReadDisableCopyOnRead#read_1_disablecopyonread_cnn0__bias"/device:CPU:0*
_output_shapes
 
Read_1/ReadVariableOpReadVariableOp#read_1_disablecopyonread_cnn0__bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_2/DisableCopyOnReadDisableCopyOnRead/read_2_disablecopyonread_bn0__custom_batch_beta"/device:CPU:0*
_output_shapes
 Ћ
Read_2/ReadVariableOpReadVariableOp/read_2_disablecopyonread_bn0__custom_batch_beta^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_3/DisableCopyOnReadDisableCopyOnRead0read_3_disablecopyonread_bn0__custom_batch_gamma"/device:CPU:0*
_output_shapes
 Ќ
Read_3/ReadVariableOpReadVariableOp0read_3_disablecopyonread_bn0__custom_batch_gamma^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_4/DisableCopyOnReadDisableCopyOnRead6read_4_disablecopyonread_bn0__custom_batch_moving_mean"/device:CPU:0*
_output_shapes
 В
Read_4/ReadVariableOpReadVariableOp6read_4_disablecopyonread_bn0__custom_batch_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_5/DisableCopyOnReadDisableCopyOnRead:read_5_disablecopyonread_bn0__custom_batch_moving_variance"/device:CPU:0*
_output_shapes
 Ж
Read_5/ReadVariableOpReadVariableOp:read_5_disablecopyonread_bn0__custom_batch_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: y
Read_6/DisableCopyOnReadDisableCopyOnRead%read_6_disablecopyonread_cnn1__kernel"/device:CPU:0*
_output_shapes
 Љ
Read_6/ReadVariableOpReadVariableOp%read_6_disablecopyonread_cnn1__kernel^Read_6/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
: 0*
dtype0r
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
: 0i
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*"
_output_shapes
: 0w
Read_7/DisableCopyOnReadDisableCopyOnRead#read_7_disablecopyonread_cnn1__bias"/device:CPU:0*
_output_shapes
 
Read_7/ReadVariableOpReadVariableOp#read_7_disablecopyonread_cnn1__bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:0*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:0a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:0
Read_8/DisableCopyOnReadDisableCopyOnRead/read_8_disablecopyonread_bn1__custom_batch_beta"/device:CPU:0*
_output_shapes
 Ћ
Read_8/ReadVariableOpReadVariableOp/read_8_disablecopyonread_bn1__custom_batch_beta^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:0*
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:0a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:0
Read_9/DisableCopyOnReadDisableCopyOnRead0read_9_disablecopyonread_bn1__custom_batch_gamma"/device:CPU:0*
_output_shapes
 Ќ
Read_9/ReadVariableOpReadVariableOp0read_9_disablecopyonread_bn1__custom_batch_gamma^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:0*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:0a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:0
Read_10/DisableCopyOnReadDisableCopyOnRead7read_10_disablecopyonread_bn1__custom_batch_moving_mean"/device:CPU:0*
_output_shapes
 Е
Read_10/ReadVariableOpReadVariableOp7read_10_disablecopyonread_bn1__custom_batch_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:0*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:0a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:0
Read_11/DisableCopyOnReadDisableCopyOnRead;read_11_disablecopyonread_bn1__custom_batch_moving_variance"/device:CPU:0*
_output_shapes
 Й
Read_11/ReadVariableOpReadVariableOp;read_11_disablecopyonread_bn1__custom_batch_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:0*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:0a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:0{
Read_12/DisableCopyOnReadDisableCopyOnRead&read_12_disablecopyonread_cnn2__kernel"/device:CPU:0*
_output_shapes
 Ќ
Read_12/ReadVariableOpReadVariableOp&read_12_disablecopyonread_cnn2__kernel^Read_12/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:0@*
dtype0s
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:0@i
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*"
_output_shapes
:0@y
Read_13/DisableCopyOnReadDisableCopyOnRead$read_13_disablecopyonread_cnn2__bias"/device:CPU:0*
_output_shapes
 Ђ
Read_13/ReadVariableOpReadVariableOp$read_13_disablecopyonread_cnn2__bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_14/DisableCopyOnReadDisableCopyOnRead0read_14_disablecopyonread_bn2__custom_batch_beta"/device:CPU:0*
_output_shapes
 Ў
Read_14/ReadVariableOpReadVariableOp0read_14_disablecopyonread_bn2__custom_batch_beta^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_15/DisableCopyOnReadDisableCopyOnRead1read_15_disablecopyonread_bn2__custom_batch_gamma"/device:CPU:0*
_output_shapes
 Џ
Read_15/ReadVariableOpReadVariableOp1read_15_disablecopyonread_bn2__custom_batch_gamma^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_16/DisableCopyOnReadDisableCopyOnRead7read_16_disablecopyonread_bn2__custom_batch_moving_mean"/device:CPU:0*
_output_shapes
 Е
Read_16/ReadVariableOpReadVariableOp7read_16_disablecopyonread_bn2__custom_batch_moving_mean^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_17/DisableCopyOnReadDisableCopyOnRead;read_17_disablecopyonread_bn2__custom_batch_moving_variance"/device:CPU:0*
_output_shapes
 Й
Read_17/ReadVariableOpReadVariableOp;read_17_disablecopyonread_bn2__custom_batch_moving_variance^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:@{
Read_18/DisableCopyOnReadDisableCopyOnRead&read_18_disablecopyonread_cnn3__kernel"/device:CPU:0*
_output_shapes
 Ќ
Read_18/ReadVariableOpReadVariableOp&read_18_disablecopyonread_cnn3__kernel^Read_18/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@`*
dtype0s
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@`i
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*"
_output_shapes
:@`y
Read_19/DisableCopyOnReadDisableCopyOnRead$read_19_disablecopyonread_cnn3__bias"/device:CPU:0*
_output_shapes
 Ђ
Read_19/ReadVariableOpReadVariableOp$read_19_disablecopyonread_cnn3__bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:`*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:`a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:`
Read_20/DisableCopyOnReadDisableCopyOnRead0read_20_disablecopyonread_bn3__custom_batch_beta"/device:CPU:0*
_output_shapes
 Ў
Read_20/ReadVariableOpReadVariableOp0read_20_disablecopyonread_bn3__custom_batch_beta^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:`*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:`a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:`
Read_21/DisableCopyOnReadDisableCopyOnRead1read_21_disablecopyonread_bn3__custom_batch_gamma"/device:CPU:0*
_output_shapes
 Џ
Read_21/ReadVariableOpReadVariableOp1read_21_disablecopyonread_bn3__custom_batch_gamma^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:`*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:`a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:`
Read_22/DisableCopyOnReadDisableCopyOnRead7read_22_disablecopyonread_bn3__custom_batch_moving_mean"/device:CPU:0*
_output_shapes
 Е
Read_22/ReadVariableOpReadVariableOp7read_22_disablecopyonread_bn3__custom_batch_moving_mean^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:`*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:`a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:`
Read_23/DisableCopyOnReadDisableCopyOnRead;read_23_disablecopyonread_bn3__custom_batch_moving_variance"/device:CPU:0*
_output_shapes
 Й
Read_23/ReadVariableOpReadVariableOp;read_23_disablecopyonread_bn3__custom_batch_moving_variance^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:`*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:`a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:`{
Read_24/DisableCopyOnReadDisableCopyOnRead&read_24_disablecopyonread_cnn4__kernel"/device:CPU:0*
_output_shapes
 ­
Read_24/ReadVariableOpReadVariableOp&read_24_disablecopyonread_cnn4__kernel^Read_24/DisableCopyOnRead"/device:CPU:0*#
_output_shapes
:`*
dtype0t
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*#
_output_shapes
:`j
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*#
_output_shapes
:`y
Read_25/DisableCopyOnReadDisableCopyOnRead$read_25_disablecopyonread_cnn4__bias"/device:CPU:0*
_output_shapes
 Ѓ
Read_25/ReadVariableOpReadVariableOp$read_25_disablecopyonread_cnn4__bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_26/DisableCopyOnReadDisableCopyOnRead0read_26_disablecopyonread_bn4__custom_batch_beta"/device:CPU:0*
_output_shapes
 Џ
Read_26/ReadVariableOpReadVariableOp0read_26_disablecopyonread_bn4__custom_batch_beta^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_27/DisableCopyOnReadDisableCopyOnRead1read_27_disablecopyonread_bn4__custom_batch_gamma"/device:CPU:0*
_output_shapes
 А
Read_27/ReadVariableOpReadVariableOp1read_27_disablecopyonread_bn4__custom_batch_gamma^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_28/DisableCopyOnReadDisableCopyOnRead7read_28_disablecopyonread_bn4__custom_batch_moving_mean"/device:CPU:0*
_output_shapes
 Ж
Read_28/ReadVariableOpReadVariableOp7read_28_disablecopyonread_bn4__custom_batch_moving_mean^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_29/DisableCopyOnReadDisableCopyOnRead;read_29_disablecopyonread_bn4__custom_batch_moving_variance"/device:CPU:0*
_output_shapes
 К
Read_29/ReadVariableOpReadVariableOp;read_29_disablecopyonread_bn4__custom_batch_moving_variance^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes	
:{
Read_30/DisableCopyOnReadDisableCopyOnRead&read_30_disablecopyonread_cnn5__kernel"/device:CPU:0*
_output_shapes
 Ў
Read_30/ReadVariableOpReadVariableOp&read_30_disablecopyonread_cnn5__kernel^Read_30/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:Р*
dtype0u
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:Рk
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*$
_output_shapes
:Рy
Read_31/DisableCopyOnReadDisableCopyOnRead$read_31_disablecopyonread_cnn5__bias"/device:CPU:0*
_output_shapes
 Ѓ
Read_31/ReadVariableOpReadVariableOp$read_31_disablecopyonread_cnn5__bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0l
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рb
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes	
:Р
Read_32/DisableCopyOnReadDisableCopyOnRead0read_32_disablecopyonread_bn5__custom_batch_beta"/device:CPU:0*
_output_shapes
 Џ
Read_32/ReadVariableOpReadVariableOp0read_32_disablecopyonread_bn5__custom_batch_beta^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0l
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рb
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes	
:Р
Read_33/DisableCopyOnReadDisableCopyOnRead1read_33_disablecopyonread_bn5__custom_batch_gamma"/device:CPU:0*
_output_shapes
 А
Read_33/ReadVariableOpReadVariableOp1read_33_disablecopyonread_bn5__custom_batch_gamma^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0l
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рb
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes	
:Р
Read_34/DisableCopyOnReadDisableCopyOnRead7read_34_disablecopyonread_bn5__custom_batch_moving_mean"/device:CPU:0*
_output_shapes
 Ж
Read_34/ReadVariableOpReadVariableOp7read_34_disablecopyonread_bn5__custom_batch_moving_mean^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0l
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рb
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes	
:Р
Read_35/DisableCopyOnReadDisableCopyOnRead;read_35_disablecopyonread_bn5__custom_batch_moving_variance"/device:CPU:0*
_output_shapes
 К
Read_35/ReadVariableOpReadVariableOp;read_35_disablecopyonread_bn5__custom_batch_moving_variance^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0l
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рb
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes	
:Р{
Read_36/DisableCopyOnReadDisableCopyOnRead&read_36_disablecopyonread_fc_1__kernel"/device:CPU:0*
_output_shapes
 Љ
Read_36/ReadVariableOpReadVariableOp&read_36_disablecopyonread_fc_1__kernel^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Р*
dtype0p
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Рf
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:	Рy
Read_37/DisableCopyOnReadDisableCopyOnRead$read_37_disablecopyonread_fc_1__bias"/device:CPU:0*
_output_shapes
 Ђ
Read_37/ReadVariableOpReadVariableOp$read_37_disablecopyonread_fc_1__bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_38/DisableCopyOnReadDisableCopyOnRead#read_38_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 
Read_38/ReadVariableOpReadVariableOp#read_38_disablecopyonread_iteration^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_39/DisableCopyOnReadDisableCopyOnRead'read_39_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 Ё
Read_39/ReadVariableOpReadVariableOp'read_39_disablecopyonread_learning_rate^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_40/DisableCopyOnReadDisableCopyOnRead-read_40_disablecopyonread_adam_m_cnn0__kernel"/device:CPU:0*
_output_shapes
 Г
Read_40/ReadVariableOpReadVariableOp-read_40_disablecopyonread_adam_m_cnn0__kernel^Read_40/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
: *
dtype0s
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
: i
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*"
_output_shapes
: 
Read_41/DisableCopyOnReadDisableCopyOnRead-read_41_disablecopyonread_adam_v_cnn0__kernel"/device:CPU:0*
_output_shapes
 Г
Read_41/ReadVariableOpReadVariableOp-read_41_disablecopyonread_adam_v_cnn0__kernel^Read_41/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
: *
dtype0s
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
: i
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*"
_output_shapes
: 
Read_42/DisableCopyOnReadDisableCopyOnRead+read_42_disablecopyonread_adam_m_cnn0__bias"/device:CPU:0*
_output_shapes
 Љ
Read_42/ReadVariableOpReadVariableOp+read_42_disablecopyonread_adam_m_cnn0__bias^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_43/DisableCopyOnReadDisableCopyOnRead+read_43_disablecopyonread_adam_v_cnn0__bias"/device:CPU:0*
_output_shapes
 Љ
Read_43/ReadVariableOpReadVariableOp+read_43_disablecopyonread_adam_v_cnn0__bias^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_44/DisableCopyOnReadDisableCopyOnRead7read_44_disablecopyonread_adam_m_bn0__custom_batch_beta"/device:CPU:0*
_output_shapes
 Е
Read_44/ReadVariableOpReadVariableOp7read_44_disablecopyonread_adam_m_bn0__custom_batch_beta^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_45/DisableCopyOnReadDisableCopyOnRead7read_45_disablecopyonread_adam_v_bn0__custom_batch_beta"/device:CPU:0*
_output_shapes
 Е
Read_45/ReadVariableOpReadVariableOp7read_45_disablecopyonread_adam_v_bn0__custom_batch_beta^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_46/DisableCopyOnReadDisableCopyOnRead8read_46_disablecopyonread_adam_m_bn0__custom_batch_gamma"/device:CPU:0*
_output_shapes
 Ж
Read_46/ReadVariableOpReadVariableOp8read_46_disablecopyonread_adam_m_bn0__custom_batch_gamma^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_47/DisableCopyOnReadDisableCopyOnRead8read_47_disablecopyonread_adam_v_bn0__custom_batch_gamma"/device:CPU:0*
_output_shapes
 Ж
Read_47/ReadVariableOpReadVariableOp8read_47_disablecopyonread_adam_v_bn0__custom_batch_gamma^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_48/DisableCopyOnReadDisableCopyOnRead-read_48_disablecopyonread_adam_m_cnn1__kernel"/device:CPU:0*
_output_shapes
 Г
Read_48/ReadVariableOpReadVariableOp-read_48_disablecopyonread_adam_m_cnn1__kernel^Read_48/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
: 0*
dtype0s
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
: 0i
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*"
_output_shapes
: 0
Read_49/DisableCopyOnReadDisableCopyOnRead-read_49_disablecopyonread_adam_v_cnn1__kernel"/device:CPU:0*
_output_shapes
 Г
Read_49/ReadVariableOpReadVariableOp-read_49_disablecopyonread_adam_v_cnn1__kernel^Read_49/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
: 0*
dtype0s
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
: 0i
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*"
_output_shapes
: 0
Read_50/DisableCopyOnReadDisableCopyOnRead+read_50_disablecopyonread_adam_m_cnn1__bias"/device:CPU:0*
_output_shapes
 Љ
Read_50/ReadVariableOpReadVariableOp+read_50_disablecopyonread_adam_m_cnn1__bias^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:0*
dtype0l
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:0c
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
:0
Read_51/DisableCopyOnReadDisableCopyOnRead+read_51_disablecopyonread_adam_v_cnn1__bias"/device:CPU:0*
_output_shapes
 Љ
Read_51/ReadVariableOpReadVariableOp+read_51_disablecopyonread_adam_v_cnn1__bias^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:0*
dtype0l
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:0c
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
:0
Read_52/DisableCopyOnReadDisableCopyOnRead7read_52_disablecopyonread_adam_m_bn1__custom_batch_beta"/device:CPU:0*
_output_shapes
 Е
Read_52/ReadVariableOpReadVariableOp7read_52_disablecopyonread_adam_m_bn1__custom_batch_beta^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:0*
dtype0l
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:0c
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
:0
Read_53/DisableCopyOnReadDisableCopyOnRead7read_53_disablecopyonread_adam_v_bn1__custom_batch_beta"/device:CPU:0*
_output_shapes
 Е
Read_53/ReadVariableOpReadVariableOp7read_53_disablecopyonread_adam_v_bn1__custom_batch_beta^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:0*
dtype0l
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:0c
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
:0
Read_54/DisableCopyOnReadDisableCopyOnRead8read_54_disablecopyonread_adam_m_bn1__custom_batch_gamma"/device:CPU:0*
_output_shapes
 Ж
Read_54/ReadVariableOpReadVariableOp8read_54_disablecopyonread_adam_m_bn1__custom_batch_gamma^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:0*
dtype0l
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:0c
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes
:0
Read_55/DisableCopyOnReadDisableCopyOnRead8read_55_disablecopyonread_adam_v_bn1__custom_batch_gamma"/device:CPU:0*
_output_shapes
 Ж
Read_55/ReadVariableOpReadVariableOp8read_55_disablecopyonread_adam_v_bn1__custom_batch_gamma^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:0*
dtype0l
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:0c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
:0
Read_56/DisableCopyOnReadDisableCopyOnRead-read_56_disablecopyonread_adam_m_cnn2__kernel"/device:CPU:0*
_output_shapes
 Г
Read_56/ReadVariableOpReadVariableOp-read_56_disablecopyonread_adam_m_cnn2__kernel^Read_56/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:0@*
dtype0t
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:0@k
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*"
_output_shapes
:0@
Read_57/DisableCopyOnReadDisableCopyOnRead-read_57_disablecopyonread_adam_v_cnn2__kernel"/device:CPU:0*
_output_shapes
 Г
Read_57/ReadVariableOpReadVariableOp-read_57_disablecopyonread_adam_v_cnn2__kernel^Read_57/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:0@*
dtype0t
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:0@k
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*"
_output_shapes
:0@
Read_58/DisableCopyOnReadDisableCopyOnRead+read_58_disablecopyonread_adam_m_cnn2__bias"/device:CPU:0*
_output_shapes
 Љ
Read_58/ReadVariableOpReadVariableOp+read_58_disablecopyonread_adam_m_cnn2__bias^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_59/DisableCopyOnReadDisableCopyOnRead+read_59_disablecopyonread_adam_v_cnn2__bias"/device:CPU:0*
_output_shapes
 Љ
Read_59/ReadVariableOpReadVariableOp+read_59_disablecopyonread_adam_v_cnn2__bias^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_60/DisableCopyOnReadDisableCopyOnRead7read_60_disablecopyonread_adam_m_bn2__custom_batch_beta"/device:CPU:0*
_output_shapes
 Е
Read_60/ReadVariableOpReadVariableOp7read_60_disablecopyonread_adam_m_bn2__custom_batch_beta^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_61/DisableCopyOnReadDisableCopyOnRead7read_61_disablecopyonread_adam_v_bn2__custom_batch_beta"/device:CPU:0*
_output_shapes
 Е
Read_61/ReadVariableOpReadVariableOp7read_61_disablecopyonread_adam_v_bn2__custom_batch_beta^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_62/DisableCopyOnReadDisableCopyOnRead8read_62_disablecopyonread_adam_m_bn2__custom_batch_gamma"/device:CPU:0*
_output_shapes
 Ж
Read_62/ReadVariableOpReadVariableOp8read_62_disablecopyonread_adam_m_bn2__custom_batch_gamma^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_63/DisableCopyOnReadDisableCopyOnRead8read_63_disablecopyonread_adam_v_bn2__custom_batch_gamma"/device:CPU:0*
_output_shapes
 Ж
Read_63/ReadVariableOpReadVariableOp8read_63_disablecopyonread_adam_v_bn2__custom_batch_gamma^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_64/DisableCopyOnReadDisableCopyOnRead-read_64_disablecopyonread_adam_m_cnn3__kernel"/device:CPU:0*
_output_shapes
 Г
Read_64/ReadVariableOpReadVariableOp-read_64_disablecopyonread_adam_m_cnn3__kernel^Read_64/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@`*
dtype0t
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@`k
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*"
_output_shapes
:@`
Read_65/DisableCopyOnReadDisableCopyOnRead-read_65_disablecopyonread_adam_v_cnn3__kernel"/device:CPU:0*
_output_shapes
 Г
Read_65/ReadVariableOpReadVariableOp-read_65_disablecopyonread_adam_v_cnn3__kernel^Read_65/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@`*
dtype0t
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@`k
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*"
_output_shapes
:@`
Read_66/DisableCopyOnReadDisableCopyOnRead+read_66_disablecopyonread_adam_m_cnn3__bias"/device:CPU:0*
_output_shapes
 Љ
Read_66/ReadVariableOpReadVariableOp+read_66_disablecopyonread_adam_m_cnn3__bias^Read_66/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:`*
dtype0l
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:`c
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*
_output_shapes
:`
Read_67/DisableCopyOnReadDisableCopyOnRead+read_67_disablecopyonread_adam_v_cnn3__bias"/device:CPU:0*
_output_shapes
 Љ
Read_67/ReadVariableOpReadVariableOp+read_67_disablecopyonread_adam_v_cnn3__bias^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:`*
dtype0l
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:`c
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes
:`
Read_68/DisableCopyOnReadDisableCopyOnRead7read_68_disablecopyonread_adam_m_bn3__custom_batch_beta"/device:CPU:0*
_output_shapes
 Е
Read_68/ReadVariableOpReadVariableOp7read_68_disablecopyonread_adam_m_bn3__custom_batch_beta^Read_68/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:`*
dtype0l
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:`c
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes
:`
Read_69/DisableCopyOnReadDisableCopyOnRead7read_69_disablecopyonread_adam_v_bn3__custom_batch_beta"/device:CPU:0*
_output_shapes
 Е
Read_69/ReadVariableOpReadVariableOp7read_69_disablecopyonread_adam_v_bn3__custom_batch_beta^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:`*
dtype0l
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:`c
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes
:`
Read_70/DisableCopyOnReadDisableCopyOnRead8read_70_disablecopyonread_adam_m_bn3__custom_batch_gamma"/device:CPU:0*
_output_shapes
 Ж
Read_70/ReadVariableOpReadVariableOp8read_70_disablecopyonread_adam_m_bn3__custom_batch_gamma^Read_70/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:`*
dtype0l
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:`c
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*
_output_shapes
:`
Read_71/DisableCopyOnReadDisableCopyOnRead8read_71_disablecopyonread_adam_v_bn3__custom_batch_gamma"/device:CPU:0*
_output_shapes
 Ж
Read_71/ReadVariableOpReadVariableOp8read_71_disablecopyonread_adam_v_bn3__custom_batch_gamma^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:`*
dtype0l
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:`c
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes
:`
Read_72/DisableCopyOnReadDisableCopyOnRead-read_72_disablecopyonread_adam_m_cnn4__kernel"/device:CPU:0*
_output_shapes
 Д
Read_72/ReadVariableOpReadVariableOp-read_72_disablecopyonread_adam_m_cnn4__kernel^Read_72/DisableCopyOnRead"/device:CPU:0*#
_output_shapes
:`*
dtype0u
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*#
_output_shapes
:`l
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*#
_output_shapes
:`
Read_73/DisableCopyOnReadDisableCopyOnRead-read_73_disablecopyonread_adam_v_cnn4__kernel"/device:CPU:0*
_output_shapes
 Д
Read_73/ReadVariableOpReadVariableOp-read_73_disablecopyonread_adam_v_cnn4__kernel^Read_73/DisableCopyOnRead"/device:CPU:0*#
_output_shapes
:`*
dtype0u
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*#
_output_shapes
:`l
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*#
_output_shapes
:`
Read_74/DisableCopyOnReadDisableCopyOnRead+read_74_disablecopyonread_adam_m_cnn4__bias"/device:CPU:0*
_output_shapes
 Њ
Read_74/ReadVariableOpReadVariableOp+read_74_disablecopyonread_adam_m_cnn4__bias^Read_74/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0m
Identity_148IdentityRead_74/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:d
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_75/DisableCopyOnReadDisableCopyOnRead+read_75_disablecopyonread_adam_v_cnn4__bias"/device:CPU:0*
_output_shapes
 Њ
Read_75/ReadVariableOpReadVariableOp+read_75_disablecopyonread_adam_v_cnn4__bias^Read_75/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0m
Identity_150IdentityRead_75/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:d
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_76/DisableCopyOnReadDisableCopyOnRead7read_76_disablecopyonread_adam_m_bn4__custom_batch_beta"/device:CPU:0*
_output_shapes
 Ж
Read_76/ReadVariableOpReadVariableOp7read_76_disablecopyonread_adam_m_bn4__custom_batch_beta^Read_76/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0m
Identity_152IdentityRead_76/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:d
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_77/DisableCopyOnReadDisableCopyOnRead7read_77_disablecopyonread_adam_v_bn4__custom_batch_beta"/device:CPU:0*
_output_shapes
 Ж
Read_77/ReadVariableOpReadVariableOp7read_77_disablecopyonread_adam_v_bn4__custom_batch_beta^Read_77/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0m
Identity_154IdentityRead_77/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:d
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_78/DisableCopyOnReadDisableCopyOnRead8read_78_disablecopyonread_adam_m_bn4__custom_batch_gamma"/device:CPU:0*
_output_shapes
 З
Read_78/ReadVariableOpReadVariableOp8read_78_disablecopyonread_adam_m_bn4__custom_batch_gamma^Read_78/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0m
Identity_156IdentityRead_78/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:d
Identity_157IdentityIdentity_156:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_79/DisableCopyOnReadDisableCopyOnRead8read_79_disablecopyonread_adam_v_bn4__custom_batch_gamma"/device:CPU:0*
_output_shapes
 З
Read_79/ReadVariableOpReadVariableOp8read_79_disablecopyonread_adam_v_bn4__custom_batch_gamma^Read_79/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0m
Identity_158IdentityRead_79/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:d
Identity_159IdentityIdentity_158:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_80/DisableCopyOnReadDisableCopyOnRead-read_80_disablecopyonread_adam_m_cnn5__kernel"/device:CPU:0*
_output_shapes
 Е
Read_80/ReadVariableOpReadVariableOp-read_80_disablecopyonread_adam_m_cnn5__kernel^Read_80/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:Р*
dtype0v
Identity_160IdentityRead_80/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:Рm
Identity_161IdentityIdentity_160:output:0"/device:CPU:0*
T0*$
_output_shapes
:Р
Read_81/DisableCopyOnReadDisableCopyOnRead-read_81_disablecopyonread_adam_v_cnn5__kernel"/device:CPU:0*
_output_shapes
 Е
Read_81/ReadVariableOpReadVariableOp-read_81_disablecopyonread_adam_v_cnn5__kernel^Read_81/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:Р*
dtype0v
Identity_162IdentityRead_81/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:Рm
Identity_163IdentityIdentity_162:output:0"/device:CPU:0*
T0*$
_output_shapes
:Р
Read_82/DisableCopyOnReadDisableCopyOnRead+read_82_disablecopyonread_adam_m_cnn5__bias"/device:CPU:0*
_output_shapes
 Њ
Read_82/ReadVariableOpReadVariableOp+read_82_disablecopyonread_adam_m_cnn5__bias^Read_82/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0m
Identity_164IdentityRead_82/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рd
Identity_165IdentityIdentity_164:output:0"/device:CPU:0*
T0*
_output_shapes	
:Р
Read_83/DisableCopyOnReadDisableCopyOnRead+read_83_disablecopyonread_adam_v_cnn5__bias"/device:CPU:0*
_output_shapes
 Њ
Read_83/ReadVariableOpReadVariableOp+read_83_disablecopyonread_adam_v_cnn5__bias^Read_83/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0m
Identity_166IdentityRead_83/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рd
Identity_167IdentityIdentity_166:output:0"/device:CPU:0*
T0*
_output_shapes	
:Р
Read_84/DisableCopyOnReadDisableCopyOnRead7read_84_disablecopyonread_adam_m_bn5__custom_batch_beta"/device:CPU:0*
_output_shapes
 Ж
Read_84/ReadVariableOpReadVariableOp7read_84_disablecopyonread_adam_m_bn5__custom_batch_beta^Read_84/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0m
Identity_168IdentityRead_84/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рd
Identity_169IdentityIdentity_168:output:0"/device:CPU:0*
T0*
_output_shapes	
:Р
Read_85/DisableCopyOnReadDisableCopyOnRead7read_85_disablecopyonread_adam_v_bn5__custom_batch_beta"/device:CPU:0*
_output_shapes
 Ж
Read_85/ReadVariableOpReadVariableOp7read_85_disablecopyonread_adam_v_bn5__custom_batch_beta^Read_85/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0m
Identity_170IdentityRead_85/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рd
Identity_171IdentityIdentity_170:output:0"/device:CPU:0*
T0*
_output_shapes	
:Р
Read_86/DisableCopyOnReadDisableCopyOnRead8read_86_disablecopyonread_adam_m_bn5__custom_batch_gamma"/device:CPU:0*
_output_shapes
 З
Read_86/ReadVariableOpReadVariableOp8read_86_disablecopyonread_adam_m_bn5__custom_batch_gamma^Read_86/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0m
Identity_172IdentityRead_86/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рd
Identity_173IdentityIdentity_172:output:0"/device:CPU:0*
T0*
_output_shapes	
:Р
Read_87/DisableCopyOnReadDisableCopyOnRead8read_87_disablecopyonread_adam_v_bn5__custom_batch_gamma"/device:CPU:0*
_output_shapes
 З
Read_87/ReadVariableOpReadVariableOp8read_87_disablecopyonread_adam_v_bn5__custom_batch_gamma^Read_87/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0m
Identity_174IdentityRead_87/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рd
Identity_175IdentityIdentity_174:output:0"/device:CPU:0*
T0*
_output_shapes	
:Р
Read_88/DisableCopyOnReadDisableCopyOnRead-read_88_disablecopyonread_adam_m_fc_1__kernel"/device:CPU:0*
_output_shapes
 А
Read_88/ReadVariableOpReadVariableOp-read_88_disablecopyonread_adam_m_fc_1__kernel^Read_88/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Р*
dtype0q
Identity_176IdentityRead_88/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Рh
Identity_177IdentityIdentity_176:output:0"/device:CPU:0*
T0*
_output_shapes
:	Р
Read_89/DisableCopyOnReadDisableCopyOnRead-read_89_disablecopyonread_adam_v_fc_1__kernel"/device:CPU:0*
_output_shapes
 А
Read_89/ReadVariableOpReadVariableOp-read_89_disablecopyonread_adam_v_fc_1__kernel^Read_89/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Р*
dtype0q
Identity_178IdentityRead_89/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Рh
Identity_179IdentityIdentity_178:output:0"/device:CPU:0*
T0*
_output_shapes
:	Р
Read_90/DisableCopyOnReadDisableCopyOnRead+read_90_disablecopyonread_adam_m_fc_1__bias"/device:CPU:0*
_output_shapes
 Љ
Read_90/ReadVariableOpReadVariableOp+read_90_disablecopyonread_adam_m_fc_1__bias^Read_90/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_180IdentityRead_90/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_181IdentityIdentity_180:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_91/DisableCopyOnReadDisableCopyOnRead+read_91_disablecopyonread_adam_v_fc_1__bias"/device:CPU:0*
_output_shapes
 Љ
Read_91/ReadVariableOpReadVariableOp+read_91_disablecopyonread_adam_v_fc_1__bias^Read_91/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_182IdentityRead_91/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_183IdentityIdentity_182:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_92/DisableCopyOnReadDisableCopyOnRead!read_92_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 
Read_92/ReadVariableOpReadVariableOp!read_92_disablecopyonread_total_1^Read_92/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_184IdentityRead_92/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_185IdentityIdentity_184:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_93/DisableCopyOnReadDisableCopyOnRead!read_93_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 
Read_93/ReadVariableOpReadVariableOp!read_93_disablecopyonread_count_1^Read_93/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_186IdentityRead_93/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_187IdentityIdentity_186:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_94/DisableCopyOnReadDisableCopyOnReadread_94_disablecopyonread_total"/device:CPU:0*
_output_shapes
 
Read_94/ReadVariableOpReadVariableOpread_94_disablecopyonread_total^Read_94/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_188IdentityRead_94/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_189IdentityIdentity_188:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_95/DisableCopyOnReadDisableCopyOnReadread_95_disablecopyonread_count"/device:CPU:0*
_output_shapes
 
Read_95/ReadVariableOpReadVariableOpread_95_disablecopyonread_count^Read_95/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_190IdentityRead_95/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_191IdentityIdentity_190:output:0"/device:CPU:0*
T0*
_output_shapes
: ,
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:a*
dtype0*Н+
valueГ+BА+aB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-1/custom_batch_beta/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-1/custom_batch_gamma/.ATTRIBUTES/VARIABLE_VALUEBHlayer_with_weights-1/custom_batch_moving_mean/.ATTRIBUTES/VARIABLE_VALUEBLlayer_with_weights-1/custom_batch_moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-3/custom_batch_beta/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-3/custom_batch_gamma/.ATTRIBUTES/VARIABLE_VALUEBHlayer_with_weights-3/custom_batch_moving_mean/.ATTRIBUTES/VARIABLE_VALUEBLlayer_with_weights-3/custom_batch_moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-5/custom_batch_beta/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-5/custom_batch_gamma/.ATTRIBUTES/VARIABLE_VALUEBHlayer_with_weights-5/custom_batch_moving_mean/.ATTRIBUTES/VARIABLE_VALUEBLlayer_with_weights-5/custom_batch_moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-7/custom_batch_beta/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-7/custom_batch_gamma/.ATTRIBUTES/VARIABLE_VALUEBHlayer_with_weights-7/custom_batch_moving_mean/.ATTRIBUTES/VARIABLE_VALUEBLlayer_with_weights-7/custom_batch_moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-9/custom_batch_beta/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-9/custom_batch_gamma/.ATTRIBUTES/VARIABLE_VALUEBHlayer_with_weights-9/custom_batch_moving_mean/.ATTRIBUTES/VARIABLE_VALUEBLlayer_with_weights-9/custom_batch_moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-11/custom_batch_beta/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-11/custom_batch_gamma/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-11/custom_batch_moving_mean/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-11/custom_batch_moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHВ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:a*
dtype0*з
valueЭBЪaB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ё
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0Identity_161:output:0Identity_163:output:0Identity_165:output:0Identity_167:output:0Identity_169:output:0Identity_171:output:0Identity_173:output:0Identity_175:output:0Identity_177:output:0Identity_179:output:0Identity_181:output:0Identity_183:output:0Identity_185:output:0Identity_187:output:0Identity_189:output:0Identity_191:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *o
dtypese
c2a	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Г
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_192Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_193IdentityIdentity_192:output:0^NoOp*
T0*
_output_shapes
: Ѓ(
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_78/DisableCopyOnRead^Read_78/ReadVariableOp^Read_79/DisableCopyOnRead^Read_79/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_80/DisableCopyOnRead^Read_80/ReadVariableOp^Read_81/DisableCopyOnRead^Read_81/ReadVariableOp^Read_82/DisableCopyOnRead^Read_82/ReadVariableOp^Read_83/DisableCopyOnRead^Read_83/ReadVariableOp^Read_84/DisableCopyOnRead^Read_84/ReadVariableOp^Read_85/DisableCopyOnRead^Read_85/ReadVariableOp^Read_86/DisableCopyOnRead^Read_86/ReadVariableOp^Read_87/DisableCopyOnRead^Read_87/ReadVariableOp^Read_88/DisableCopyOnRead^Read_88/ReadVariableOp^Read_89/DisableCopyOnRead^Read_89/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp^Read_90/DisableCopyOnRead^Read_90/ReadVariableOp^Read_91/DisableCopyOnRead^Read_91/ReadVariableOp^Read_92/DisableCopyOnRead^Read_92/ReadVariableOp^Read_93/DisableCopyOnRead^Read_93/ReadVariableOp^Read_94/DisableCopyOnRead^Read_94/ReadVariableOp^Read_95/DisableCopyOnRead^Read_95/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "%
identity_193Identity_193:output:0*й
_input_shapesЧ
Ф: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp26
Read_74/DisableCopyOnReadRead_74/DisableCopyOnRead20
Read_74/ReadVariableOpRead_74/ReadVariableOp26
Read_75/DisableCopyOnReadRead_75/DisableCopyOnRead20
Read_75/ReadVariableOpRead_75/ReadVariableOp26
Read_76/DisableCopyOnReadRead_76/DisableCopyOnRead20
Read_76/ReadVariableOpRead_76/ReadVariableOp26
Read_77/DisableCopyOnReadRead_77/DisableCopyOnRead20
Read_77/ReadVariableOpRead_77/ReadVariableOp26
Read_78/DisableCopyOnReadRead_78/DisableCopyOnRead20
Read_78/ReadVariableOpRead_78/ReadVariableOp26
Read_79/DisableCopyOnReadRead_79/DisableCopyOnRead20
Read_79/ReadVariableOpRead_79/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp26
Read_80/DisableCopyOnReadRead_80/DisableCopyOnRead20
Read_80/ReadVariableOpRead_80/ReadVariableOp26
Read_81/DisableCopyOnReadRead_81/DisableCopyOnRead20
Read_81/ReadVariableOpRead_81/ReadVariableOp26
Read_82/DisableCopyOnReadRead_82/DisableCopyOnRead20
Read_82/ReadVariableOpRead_82/ReadVariableOp26
Read_83/DisableCopyOnReadRead_83/DisableCopyOnRead20
Read_83/ReadVariableOpRead_83/ReadVariableOp26
Read_84/DisableCopyOnReadRead_84/DisableCopyOnRead20
Read_84/ReadVariableOpRead_84/ReadVariableOp26
Read_85/DisableCopyOnReadRead_85/DisableCopyOnRead20
Read_85/ReadVariableOpRead_85/ReadVariableOp26
Read_86/DisableCopyOnReadRead_86/DisableCopyOnRead20
Read_86/ReadVariableOpRead_86/ReadVariableOp26
Read_87/DisableCopyOnReadRead_87/DisableCopyOnRead20
Read_87/ReadVariableOpRead_87/ReadVariableOp26
Read_88/DisableCopyOnReadRead_88/DisableCopyOnRead20
Read_88/ReadVariableOpRead_88/ReadVariableOp26
Read_89/DisableCopyOnReadRead_89/DisableCopyOnRead20
Read_89/ReadVariableOpRead_89/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp26
Read_90/DisableCopyOnReadRead_90/DisableCopyOnRead20
Read_90/ReadVariableOpRead_90/ReadVariableOp26
Read_91/DisableCopyOnReadRead_91/DisableCopyOnRead20
Read_91/ReadVariableOpRead_91/ReadVariableOp26
Read_92/DisableCopyOnReadRead_92/DisableCopyOnRead20
Read_92/ReadVariableOpRead_92/ReadVariableOp26
Read_93/DisableCopyOnReadRead_93/DisableCopyOnRead20
Read_93/ReadVariableOpRead_93/ReadVariableOp26
Read_94/DisableCopyOnReadRead_94/DisableCopyOnRead20
Read_94/ReadVariableOpRead_94/ReadVariableOp26
Read_95/DisableCopyOnReadRead_95/DisableCopyOnRead20
Read_95/ReadVariableOpRead_95/ReadVariableOp:a

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ў
[
?__inference_BN1__layer_call_and_return_conditional_losses_84820

inputs
identityS
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџ0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ0:T P
,
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
и
`
D__inference_CNN_REL2__layer_call_and_return_conditional_losses_83693

inputs
identityJ
ReluReluinputs*
T0*+
_output_shapes
:џџџџџџџџџ@@^
IdentityIdentityRelu:activations:0*
T0*+
_output_shapes
:џџџџџџџџџ@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@@:S O
+
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
У
R
"__inference__update_step_xla_49793
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*#
_input_shapes
: : *
	_noinline(:($
"
_user_specified_name
variable:L H
"
_output_shapes
: 
"
_user_specified_name
gradient
м
`
D__inference_CNN_REL1__layer_call_and_return_conditional_losses_83658

inputs
identityK
ReluReluinputs*
T0*,
_output_shapes
:џџџџџџџџџ0_
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:џџџџџџџџџ0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ0:T P
,
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
Ћ
J
"__inference__update_step_xla_49828
gradient
variable:`*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:`: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:`
"
_user_specified_name
gradient

=
!__inference__traced_restore_86055
file_prefix3
assignvariableop_cnn0__kernel: +
assignvariableop_1_cnn0__bias: 7
)assignvariableop_2_bn0__custom_batch_beta: 8
*assignvariableop_3_bn0__custom_batch_gamma: >
0assignvariableop_4_bn0__custom_batch_moving_mean: B
4assignvariableop_5_bn0__custom_batch_moving_variance: 5
assignvariableop_6_cnn1__kernel: 0+
assignvariableop_7_cnn1__bias:07
)assignvariableop_8_bn1__custom_batch_beta:08
*assignvariableop_9_bn1__custom_batch_gamma:0?
1assignvariableop_10_bn1__custom_batch_moving_mean:0C
5assignvariableop_11_bn1__custom_batch_moving_variance:06
 assignvariableop_12_cnn2__kernel:0@,
assignvariableop_13_cnn2__bias:@8
*assignvariableop_14_bn2__custom_batch_beta:@9
+assignvariableop_15_bn2__custom_batch_gamma:@?
1assignvariableop_16_bn2__custom_batch_moving_mean:@C
5assignvariableop_17_bn2__custom_batch_moving_variance:@6
 assignvariableop_18_cnn3__kernel:@`,
assignvariableop_19_cnn3__bias:`8
*assignvariableop_20_bn3__custom_batch_beta:`9
+assignvariableop_21_bn3__custom_batch_gamma:`?
1assignvariableop_22_bn3__custom_batch_moving_mean:`C
5assignvariableop_23_bn3__custom_batch_moving_variance:`7
 assignvariableop_24_cnn4__kernel:`-
assignvariableop_25_cnn4__bias:	9
*assignvariableop_26_bn4__custom_batch_beta:	:
+assignvariableop_27_bn4__custom_batch_gamma:	@
1assignvariableop_28_bn4__custom_batch_moving_mean:	D
5assignvariableop_29_bn4__custom_batch_moving_variance:	8
 assignvariableop_30_cnn5__kernel:Р-
assignvariableop_31_cnn5__bias:	Р9
*assignvariableop_32_bn5__custom_batch_beta:	Р:
+assignvariableop_33_bn5__custom_batch_gamma:	Р@
1assignvariableop_34_bn5__custom_batch_moving_mean:	РD
5assignvariableop_35_bn5__custom_batch_moving_variance:	Р3
 assignvariableop_36_fc_1__kernel:	Р,
assignvariableop_37_fc_1__bias:'
assignvariableop_38_iteration:	 +
!assignvariableop_39_learning_rate: =
'assignvariableop_40_adam_m_cnn0__kernel: =
'assignvariableop_41_adam_v_cnn0__kernel: 3
%assignvariableop_42_adam_m_cnn0__bias: 3
%assignvariableop_43_adam_v_cnn0__bias: ?
1assignvariableop_44_adam_m_bn0__custom_batch_beta: ?
1assignvariableop_45_adam_v_bn0__custom_batch_beta: @
2assignvariableop_46_adam_m_bn0__custom_batch_gamma: @
2assignvariableop_47_adam_v_bn0__custom_batch_gamma: =
'assignvariableop_48_adam_m_cnn1__kernel: 0=
'assignvariableop_49_adam_v_cnn1__kernel: 03
%assignvariableop_50_adam_m_cnn1__bias:03
%assignvariableop_51_adam_v_cnn1__bias:0?
1assignvariableop_52_adam_m_bn1__custom_batch_beta:0?
1assignvariableop_53_adam_v_bn1__custom_batch_beta:0@
2assignvariableop_54_adam_m_bn1__custom_batch_gamma:0@
2assignvariableop_55_adam_v_bn1__custom_batch_gamma:0=
'assignvariableop_56_adam_m_cnn2__kernel:0@=
'assignvariableop_57_adam_v_cnn2__kernel:0@3
%assignvariableop_58_adam_m_cnn2__bias:@3
%assignvariableop_59_adam_v_cnn2__bias:@?
1assignvariableop_60_adam_m_bn2__custom_batch_beta:@?
1assignvariableop_61_adam_v_bn2__custom_batch_beta:@@
2assignvariableop_62_adam_m_bn2__custom_batch_gamma:@@
2assignvariableop_63_adam_v_bn2__custom_batch_gamma:@=
'assignvariableop_64_adam_m_cnn3__kernel:@`=
'assignvariableop_65_adam_v_cnn3__kernel:@`3
%assignvariableop_66_adam_m_cnn3__bias:`3
%assignvariableop_67_adam_v_cnn3__bias:`?
1assignvariableop_68_adam_m_bn3__custom_batch_beta:`?
1assignvariableop_69_adam_v_bn3__custom_batch_beta:`@
2assignvariableop_70_adam_m_bn3__custom_batch_gamma:`@
2assignvariableop_71_adam_v_bn3__custom_batch_gamma:`>
'assignvariableop_72_adam_m_cnn4__kernel:`>
'assignvariableop_73_adam_v_cnn4__kernel:`4
%assignvariableop_74_adam_m_cnn4__bias:	4
%assignvariableop_75_adam_v_cnn4__bias:	@
1assignvariableop_76_adam_m_bn4__custom_batch_beta:	@
1assignvariableop_77_adam_v_bn4__custom_batch_beta:	A
2assignvariableop_78_adam_m_bn4__custom_batch_gamma:	A
2assignvariableop_79_adam_v_bn4__custom_batch_gamma:	?
'assignvariableop_80_adam_m_cnn5__kernel:Р?
'assignvariableop_81_adam_v_cnn5__kernel:Р4
%assignvariableop_82_adam_m_cnn5__bias:	Р4
%assignvariableop_83_adam_v_cnn5__bias:	Р@
1assignvariableop_84_adam_m_bn5__custom_batch_beta:	Р@
1assignvariableop_85_adam_v_bn5__custom_batch_beta:	РA
2assignvariableop_86_adam_m_bn5__custom_batch_gamma:	РA
2assignvariableop_87_adam_v_bn5__custom_batch_gamma:	Р:
'assignvariableop_88_adam_m_fc_1__kernel:	Р:
'assignvariableop_89_adam_v_fc_1__kernel:	Р3
%assignvariableop_90_adam_m_fc_1__bias:3
%assignvariableop_91_adam_v_fc_1__bias:%
assignvariableop_92_total_1: %
assignvariableop_93_count_1: #
assignvariableop_94_total: #
assignvariableop_95_count: 
identity_97ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_46ЂAssignVariableOp_47ЂAssignVariableOp_48ЂAssignVariableOp_49ЂAssignVariableOp_5ЂAssignVariableOp_50ЂAssignVariableOp_51ЂAssignVariableOp_52ЂAssignVariableOp_53ЂAssignVariableOp_54ЂAssignVariableOp_55ЂAssignVariableOp_56ЂAssignVariableOp_57ЂAssignVariableOp_58ЂAssignVariableOp_59ЂAssignVariableOp_6ЂAssignVariableOp_60ЂAssignVariableOp_61ЂAssignVariableOp_62ЂAssignVariableOp_63ЂAssignVariableOp_64ЂAssignVariableOp_65ЂAssignVariableOp_66ЂAssignVariableOp_67ЂAssignVariableOp_68ЂAssignVariableOp_69ЂAssignVariableOp_7ЂAssignVariableOp_70ЂAssignVariableOp_71ЂAssignVariableOp_72ЂAssignVariableOp_73ЂAssignVariableOp_74ЂAssignVariableOp_75ЂAssignVariableOp_76ЂAssignVariableOp_77ЂAssignVariableOp_78ЂAssignVariableOp_79ЂAssignVariableOp_8ЂAssignVariableOp_80ЂAssignVariableOp_81ЂAssignVariableOp_82ЂAssignVariableOp_83ЂAssignVariableOp_84ЂAssignVariableOp_85ЂAssignVariableOp_86ЂAssignVariableOp_87ЂAssignVariableOp_88ЂAssignVariableOp_89ЂAssignVariableOp_9ЂAssignVariableOp_90ЂAssignVariableOp_91ЂAssignVariableOp_92ЂAssignVariableOp_93ЂAssignVariableOp_94ЂAssignVariableOp_95,
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:a*
dtype0*Н+
valueГ+BА+aB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-1/custom_batch_beta/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-1/custom_batch_gamma/.ATTRIBUTES/VARIABLE_VALUEBHlayer_with_weights-1/custom_batch_moving_mean/.ATTRIBUTES/VARIABLE_VALUEBLlayer_with_weights-1/custom_batch_moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-3/custom_batch_beta/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-3/custom_batch_gamma/.ATTRIBUTES/VARIABLE_VALUEBHlayer_with_weights-3/custom_batch_moving_mean/.ATTRIBUTES/VARIABLE_VALUEBLlayer_with_weights-3/custom_batch_moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-5/custom_batch_beta/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-5/custom_batch_gamma/.ATTRIBUTES/VARIABLE_VALUEBHlayer_with_weights-5/custom_batch_moving_mean/.ATTRIBUTES/VARIABLE_VALUEBLlayer_with_weights-5/custom_batch_moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-7/custom_batch_beta/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-7/custom_batch_gamma/.ATTRIBUTES/VARIABLE_VALUEBHlayer_with_weights-7/custom_batch_moving_mean/.ATTRIBUTES/VARIABLE_VALUEBLlayer_with_weights-7/custom_batch_moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-9/custom_batch_beta/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-9/custom_batch_gamma/.ATTRIBUTES/VARIABLE_VALUEBHlayer_with_weights-9/custom_batch_moving_mean/.ATTRIBUTES/VARIABLE_VALUEBLlayer_with_weights-9/custom_batch_moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-11/custom_batch_beta/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-11/custom_batch_gamma/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-11/custom_batch_moving_mean/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-11/custom_batch_moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЕ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:a*
dtype0*з
valueЭBЪaB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*o
dtypese
c2a	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:А
AssignVariableOpAssignVariableOpassignvariableop_cnn0__kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_1AssignVariableOpassignvariableop_1_cnn0__biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_2AssignVariableOp)assignvariableop_2_bn0__custom_batch_betaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_3AssignVariableOp*assignvariableop_3_bn0__custom_batch_gammaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_4AssignVariableOp0assignvariableop_4_bn0__custom_batch_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_5AssignVariableOp4assignvariableop_5_bn0__custom_batch_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ж
AssignVariableOp_6AssignVariableOpassignvariableop_6_cnn1__kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_7AssignVariableOpassignvariableop_7_cnn1__biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_8AssignVariableOp)assignvariableop_8_bn1__custom_batch_betaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_9AssignVariableOp*assignvariableop_9_bn1__custom_batch_gammaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_10AssignVariableOp1assignvariableop_10_bn1__custom_batch_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_11AssignVariableOp5assignvariableop_11_bn1__custom_batch_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_12AssignVariableOp assignvariableop_12_cnn2__kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_13AssignVariableOpassignvariableop_13_cnn2__biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_14AssignVariableOp*assignvariableop_14_bn2__custom_batch_betaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_15AssignVariableOp+assignvariableop_15_bn2__custom_batch_gammaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_16AssignVariableOp1assignvariableop_16_bn2__custom_batch_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_17AssignVariableOp5assignvariableop_17_bn2__custom_batch_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_18AssignVariableOp assignvariableop_18_cnn3__kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_19AssignVariableOpassignvariableop_19_cnn3__biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_20AssignVariableOp*assignvariableop_20_bn3__custom_batch_betaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_21AssignVariableOp+assignvariableop_21_bn3__custom_batch_gammaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_22AssignVariableOp1assignvariableop_22_bn3__custom_batch_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_23AssignVariableOp5assignvariableop_23_bn3__custom_batch_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_24AssignVariableOp assignvariableop_24_cnn4__kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_25AssignVariableOpassignvariableop_25_cnn4__biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_26AssignVariableOp*assignvariableop_26_bn4__custom_batch_betaIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_27AssignVariableOp+assignvariableop_27_bn4__custom_batch_gammaIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_28AssignVariableOp1assignvariableop_28_bn4__custom_batch_moving_meanIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_29AssignVariableOp5assignvariableop_29_bn4__custom_batch_moving_varianceIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_30AssignVariableOp assignvariableop_30_cnn5__kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_31AssignVariableOpassignvariableop_31_cnn5__biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_32AssignVariableOp*assignvariableop_32_bn5__custom_batch_betaIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_33AssignVariableOp+assignvariableop_33_bn5__custom_batch_gammaIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_34AssignVariableOp1assignvariableop_34_bn5__custom_batch_moving_meanIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_35AssignVariableOp5assignvariableop_35_bn5__custom_batch_moving_varianceIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_36AssignVariableOp assignvariableop_36_fc_1__kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_37AssignVariableOpassignvariableop_37_fc_1__biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0	*
_output_shapes
:Ж
AssignVariableOp_38AssignVariableOpassignvariableop_38_iterationIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_39AssignVariableOp!assignvariableop_39_learning_rateIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_40AssignVariableOp'assignvariableop_40_adam_m_cnn0__kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_41AssignVariableOp'assignvariableop_41_adam_v_cnn0__kernelIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_42AssignVariableOp%assignvariableop_42_adam_m_cnn0__biasIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_43AssignVariableOp%assignvariableop_43_adam_v_cnn0__biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_44AssignVariableOp1assignvariableop_44_adam_m_bn0__custom_batch_betaIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_45AssignVariableOp1assignvariableop_45_adam_v_bn0__custom_batch_betaIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_46AssignVariableOp2assignvariableop_46_adam_m_bn0__custom_batch_gammaIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_47AssignVariableOp2assignvariableop_47_adam_v_bn0__custom_batch_gammaIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_m_cnn1__kernelIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_49AssignVariableOp'assignvariableop_49_adam_v_cnn1__kernelIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_50AssignVariableOp%assignvariableop_50_adam_m_cnn1__biasIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_51AssignVariableOp%assignvariableop_51_adam_v_cnn1__biasIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_52AssignVariableOp1assignvariableop_52_adam_m_bn1__custom_batch_betaIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_53AssignVariableOp1assignvariableop_53_adam_v_bn1__custom_batch_betaIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_54AssignVariableOp2assignvariableop_54_adam_m_bn1__custom_batch_gammaIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_55AssignVariableOp2assignvariableop_55_adam_v_bn1__custom_batch_gammaIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_56AssignVariableOp'assignvariableop_56_adam_m_cnn2__kernelIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_57AssignVariableOp'assignvariableop_57_adam_v_cnn2__kernelIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_58AssignVariableOp%assignvariableop_58_adam_m_cnn2__biasIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_59AssignVariableOp%assignvariableop_59_adam_v_cnn2__biasIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_60AssignVariableOp1assignvariableop_60_adam_m_bn2__custom_batch_betaIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_61AssignVariableOp1assignvariableop_61_adam_v_bn2__custom_batch_betaIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_62AssignVariableOp2assignvariableop_62_adam_m_bn2__custom_batch_gammaIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_63AssignVariableOp2assignvariableop_63_adam_v_bn2__custom_batch_gammaIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_64AssignVariableOp'assignvariableop_64_adam_m_cnn3__kernelIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_65AssignVariableOp'assignvariableop_65_adam_v_cnn3__kernelIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_66AssignVariableOp%assignvariableop_66_adam_m_cnn3__biasIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_67AssignVariableOp%assignvariableop_67_adam_v_cnn3__biasIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_68AssignVariableOp1assignvariableop_68_adam_m_bn3__custom_batch_betaIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_69AssignVariableOp1assignvariableop_69_adam_v_bn3__custom_batch_betaIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_70AssignVariableOp2assignvariableop_70_adam_m_bn3__custom_batch_gammaIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_71AssignVariableOp2assignvariableop_71_adam_v_bn3__custom_batch_gammaIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_72AssignVariableOp'assignvariableop_72_adam_m_cnn4__kernelIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_73AssignVariableOp'assignvariableop_73_adam_v_cnn4__kernelIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_74AssignVariableOp%assignvariableop_74_adam_m_cnn4__biasIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_75AssignVariableOp%assignvariableop_75_adam_v_cnn4__biasIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_76AssignVariableOp1assignvariableop_76_adam_m_bn4__custom_batch_betaIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_77AssignVariableOp1assignvariableop_77_adam_v_bn4__custom_batch_betaIdentity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_78AssignVariableOp2assignvariableop_78_adam_m_bn4__custom_batch_gammaIdentity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_79AssignVariableOp2assignvariableop_79_adam_v_bn4__custom_batch_gammaIdentity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_80AssignVariableOp'assignvariableop_80_adam_m_cnn5__kernelIdentity_80:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_81AssignVariableOp'assignvariableop_81_adam_v_cnn5__kernelIdentity_81:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_82AssignVariableOp%assignvariableop_82_adam_m_cnn5__biasIdentity_82:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_83AssignVariableOp%assignvariableop_83_adam_v_cnn5__biasIdentity_83:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_84AssignVariableOp1assignvariableop_84_adam_m_bn5__custom_batch_betaIdentity_84:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_85AssignVariableOp1assignvariableop_85_adam_v_bn5__custom_batch_betaIdentity_85:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_86AssignVariableOp2assignvariableop_86_adam_m_bn5__custom_batch_gammaIdentity_86:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_87AssignVariableOp2assignvariableop_87_adam_v_bn5__custom_batch_gammaIdentity_87:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_88AssignVariableOp'assignvariableop_88_adam_m_fc_1__kernelIdentity_88:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_89AssignVariableOp'assignvariableop_89_adam_v_fc_1__kernelIdentity_89:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_90AssignVariableOp%assignvariableop_90_adam_m_fc_1__biasIdentity_90:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_91AssignVariableOp%assignvariableop_91_adam_v_fc_1__biasIdentity_91:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_92AssignVariableOpassignvariableop_92_total_1Identity_92:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_93AssignVariableOpassignvariableop_93_count_1Identity_93:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_94AssignVariableOpassignvariableop_94_totalIdentity_94:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_95AssignVariableOpassignvariableop_95_countIdentity_95:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 
Identity_96Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_97IdentityIdentity_96:output:0^NoOp_1*
T0*
_output_shapes
: ќ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95*"
_acd_function_control_output(*
_output_shapes
 "#
identity_97Identity_97:output:0*з
_input_shapesХ
Т: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ы
b
F__inference_MAX_POOL_1__layer_call_and_return_conditional_losses_84806

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџІ
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides

SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
О_
ѓ
@__inference_model_layer_call_and_return_conditional_losses_84084

inputs!
cnn0__84026: 
cnn0__84028: !
cnn1__84034: 0
cnn1__84036:0!
cnn2__84042:0@
cnn2__84044:@!
cnn3__84050:@`
cnn3__84052:`"
cnn4__84058:`
cnn4__84060:	#
cnn5__84066:Р
cnn5__84068:	Р
fc_1__84076:	Р
fc_1__84078:
identityЂCNN0_/StatefulPartitionedCallЂCNN1_/StatefulPartitionedCallЂCNN2_/StatefulPartitionedCallЂCNN3_/StatefulPartitionedCallЂCNN4_/StatefulPartitionedCallЂCNN5_/StatefulPartitionedCallЂFC_1_/StatefulPartitionedCallщ
CNN0_/StatefulPartitionedCallStatefulPartitionedCallinputscnn0__84026cnn0__84028*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN0__layer_call_and_return_conditional_losses_83605х
MAX_POOL_0_/PartitionedCallPartitionedCall&CNN0_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_0__layer_call_and_return_conditional_losses_83490е
BN0_/PartitionedCallPartitionedCall$MAX_POOL_0_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN0__layer_call_and_return_conditional_losses_83853и
CNN_REL0_/PartitionedCallPartitionedCallBN0_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL0__layer_call_and_return_conditional_losses_83623
CNN1_/StatefulPartitionedCallStatefulPartitionedCall"CNN_REL0_/PartitionedCall:output:0cnn1__84034cnn1__84036*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN1__layer_call_and_return_conditional_losses_83640х
MAX_POOL_1_/PartitionedCallPartitionedCall&CNN1_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_1__layer_call_and_return_conditional_losses_83505е
BN1_/PartitionedCallPartitionedCall$MAX_POOL_1_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN1__layer_call_and_return_conditional_losses_83865и
CNN_REL1_/PartitionedCallPartitionedCallBN1_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL1__layer_call_and_return_conditional_losses_83658
CNN2_/StatefulPartitionedCallStatefulPartitionedCall"CNN_REL1_/PartitionedCall:output:0cnn2__84042cnn2__84044*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN2__layer_call_and_return_conditional_losses_83675ф
MAX_POOL_2_/PartitionedCallPartitionedCall&CNN2_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_2__layer_call_and_return_conditional_losses_83520д
BN2_/PartitionedCallPartitionedCall$MAX_POOL_2_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN2__layer_call_and_return_conditional_losses_83877з
CNN_REL2_/PartitionedCallPartitionedCallBN2_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL2__layer_call_and_return_conditional_losses_83693
CNN3_/StatefulPartitionedCallStatefulPartitionedCall"CNN_REL2_/PartitionedCall:output:0cnn3__84050cnn3__84052*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN3__layer_call_and_return_conditional_losses_83710ф
MAX_POOL_3_/PartitionedCallPartitionedCall&CNN3_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_3__layer_call_and_return_conditional_losses_83535д
BN3_/PartitionedCallPartitionedCall$MAX_POOL_3_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN3__layer_call_and_return_conditional_losses_83889з
CNN_REL3_/PartitionedCallPartitionedCallBN3_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL3__layer_call_and_return_conditional_losses_83728
CNN4_/StatefulPartitionedCallStatefulPartitionedCall"CNN_REL3_/PartitionedCall:output:0cnn4__84058cnn4__84060*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN4__layer_call_and_return_conditional_losses_83745х
MAX_POOL_4_/PartitionedCallPartitionedCall&CNN4_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_4__layer_call_and_return_conditional_losses_83550е
BN4_/PartitionedCallPartitionedCall$MAX_POOL_4_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN4__layer_call_and_return_conditional_losses_83901и
CNN_REL4_/PartitionedCallPartitionedCallBN4_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL4__layer_call_and_return_conditional_losses_83763
CNN5_/StatefulPartitionedCallStatefulPartitionedCall"CNN_REL4_/PartitionedCall:output:0cnn5__84066cnn5__84068*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ Р*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN5__layer_call_and_return_conditional_losses_83780х
MAX_POOL_5_/PartitionedCallPartitionedCall&CNN5_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ Р* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_5__layer_call_and_return_conditional_losses_83565е
BN5_/PartitionedCallPartitionedCall$MAX_POOL_5_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ Р* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN5__layer_call_and_return_conditional_losses_83913и
CNN_REL5_/PartitionedCallPartitionedCallBN5_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ Р* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL5__layer_call_and_return_conditional_losses_83798е
AVG1_/PartitionedCallPartitionedCall"CNN_REL5_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџР* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_AVG1__layer_call_and_return_conditional_losses_83580Э
FLT1_/PartitionedCallPartitionedCallAVG1_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџР* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_FLT1__layer_call_and_return_conditional_losses_83807ќ
FC_1_/StatefulPartitionedCallStatefulPartitionedCallFLT1_/PartitionedCall:output:0fc_1__84076fc_1__84078*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_FC_1__layer_call_and_return_conditional_losses_83819и
softmax/PartitionedCallPartitionedCall&FC_1_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_softmax_layer_call_and_return_conditional_losses_83830в
flatten/PartitionedCallPartitionedCall softmax/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_83838o
IdentityIdentity flatten/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџІ
NoOpNoOp^CNN0_/StatefulPartitionedCall^CNN1_/StatefulPartitionedCall^CNN2_/StatefulPartitionedCall^CNN3_/StatefulPartitionedCall^CNN4_/StatefulPartitionedCall^CNN5_/StatefulPartitionedCall^FC_1_/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:џџџџџџџџџ: : : : : : : : : : : : : : 2>
CNN0_/StatefulPartitionedCallCNN0_/StatefulPartitionedCall2>
CNN1_/StatefulPartitionedCallCNN1_/StatefulPartitionedCall2>
CNN2_/StatefulPartitionedCallCNN2_/StatefulPartitionedCall2>
CNN3_/StatefulPartitionedCallCNN3_/StatefulPartitionedCall2>
CNN4_/StatefulPartitionedCallCNN4_/StatefulPartitionedCall2>
CNN5_/StatefulPartitionedCallCNN5_/StatefulPartitionedCall2>
FC_1_/StatefulPartitionedCallFC_1_/StatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ы
b
F__inference_MAX_POOL_2__layer_call_and_return_conditional_losses_84871

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџІ
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides

SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ћ
[
?__inference_BN3__layer_call_and_return_conditional_losses_84950

inputs
identityR
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ@`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@`:S O
+
_output_shapes
:џџџџџџџџџ@`
 
_user_specified_nameinputs
ў
[
?__inference_BN5__layer_call_and_return_conditional_losses_83913

inputs
identityS
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџ Р"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ Р:T P
,
_output_shapes
:џџџџџџџџџ Р
 
_user_specified_nameinputs
ў
[
?__inference_BN1__layer_call_and_return_conditional_losses_84824

inputs
identityS
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџ0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ0:T P
,
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
Ћ
J
"__inference__update_step_xla_49818
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
ђ

@__inference_CNN1__layer_call_and_return_conditional_losses_84793

inputsA
+conv1d_expanddims_1_readvariableop_resource: 0-
biasadd_readvariableop_resource:0
identityЂBiasAdd/ReadVariableOpЂ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ 
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: 0*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 0­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ0*
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ0*
squeeze_dims

§џџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ0d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ0
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
е

%__inference_CNN0__layer_call_fn_84713

inputs
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN0__layer_call_and_return_conditional_losses_83605t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ў
K
"__inference__update_step_xla_49838
gradient
variable:	*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:: *
	_noinline(:($
"
_user_specified_name
variable:E A

_output_shapes	
:
"
_user_specified_name
gradient
Ы
b
F__inference_MAX_POOL_0__layer_call_and_return_conditional_losses_83490

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџІ
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides

SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

П
@__inference_model_layer_call_and_return_conditional_losses_84704

inputsG
1cnn0__conv1d_expanddims_1_readvariableop_resource: 3
%cnn0__biasadd_readvariableop_resource: G
1cnn1__conv1d_expanddims_1_readvariableop_resource: 03
%cnn1__biasadd_readvariableop_resource:0G
1cnn2__conv1d_expanddims_1_readvariableop_resource:0@3
%cnn2__biasadd_readvariableop_resource:@G
1cnn3__conv1d_expanddims_1_readvariableop_resource:@`3
%cnn3__biasadd_readvariableop_resource:`H
1cnn4__conv1d_expanddims_1_readvariableop_resource:`4
%cnn4__biasadd_readvariableop_resource:	I
1cnn5__conv1d_expanddims_1_readvariableop_resource:Р4
%cnn5__biasadd_readvariableop_resource:	Р7
$fc_1__matmul_readvariableop_resource:	Р3
%fc_1__biasadd_readvariableop_resource:
identityЂCNN0_/BiasAdd/ReadVariableOpЂ(CNN0_/Conv1D/ExpandDims_1/ReadVariableOpЂCNN1_/BiasAdd/ReadVariableOpЂ(CNN1_/Conv1D/ExpandDims_1/ReadVariableOpЂCNN2_/BiasAdd/ReadVariableOpЂ(CNN2_/Conv1D/ExpandDims_1/ReadVariableOpЂCNN3_/BiasAdd/ReadVariableOpЂ(CNN3_/Conv1D/ExpandDims_1/ReadVariableOpЂCNN4_/BiasAdd/ReadVariableOpЂ(CNN4_/Conv1D/ExpandDims_1/ReadVariableOpЂCNN5_/BiasAdd/ReadVariableOpЂ(CNN5_/Conv1D/ExpandDims_1/ReadVariableOpЂFC_1_/BiasAdd/ReadVariableOpЂFC_1_/MatMul/ReadVariableOpf
CNN0_/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
CNN0_/Conv1D/ExpandDims
ExpandDimsinputs$CNN0_/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ
(CNN0_/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp1cnn0__conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0_
CNN0_/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : В
CNN0_/Conv1D/ExpandDims_1
ExpandDims0CNN0_/Conv1D/ExpandDims_1/ReadVariableOp:value:0&CNN0_/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: П
CNN0_/Conv1DConv2D CNN0_/Conv1D/ExpandDims:output:0"CNN0_/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ *
paddingSAME*
strides

CNN0_/Conv1D/SqueezeSqueezeCNN0_/Conv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ *
squeeze_dims

§џџџџџџџџ~
CNN0_/BiasAdd/ReadVariableOpReadVariableOp%cnn0__biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
CNN0_/BiasAddBiasAddCNN0_/Conv1D/Squeeze:output:0$CNN0_/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ \
MAX_POOL_0_/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
MAX_POOL_0_/ExpandDims
ExpandDimsCNN0_/BiasAdd:output:0#MAX_POOL_0_/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ ­
MAX_POOL_0_/MaxPoolMaxPoolMAX_POOL_0_/ExpandDims:output:0*0
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides

MAX_POOL_0_/SqueezeSqueezeMAX_POOL_0_/MaxPool:output:0*
T0*,
_output_shapes
:џџџџџџџџџ *
squeeze_dims
k
CNN_REL0_/ReluReluMAX_POOL_0_/Squeeze:output:0*
T0*,
_output_shapes
:џџџџџџџџџ f
CNN1_/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџЄ
CNN1_/Conv1D/ExpandDims
ExpandDimsCNN_REL0_/Relu:activations:0$CNN1_/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ 
(CNN1_/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp1cnn1__conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: 0*
dtype0_
CNN1_/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : В
CNN1_/Conv1D/ExpandDims_1
ExpandDims0CNN1_/Conv1D/ExpandDims_1/ReadVariableOp:value:0&CNN1_/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 0П
CNN1_/Conv1DConv2D CNN1_/Conv1D/ExpandDims:output:0"CNN1_/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ0*
paddingSAME*
strides

CNN1_/Conv1D/SqueezeSqueezeCNN1_/Conv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ0*
squeeze_dims

§џџџџџџџџ~
CNN1_/BiasAdd/ReadVariableOpReadVariableOp%cnn1__biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0
CNN1_/BiasAddBiasAddCNN1_/Conv1D/Squeeze:output:0$CNN1_/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ0\
MAX_POOL_1_/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
MAX_POOL_1_/ExpandDims
ExpandDimsCNN1_/BiasAdd:output:0#MAX_POOL_1_/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ0­
MAX_POOL_1_/MaxPoolMaxPoolMAX_POOL_1_/ExpandDims:output:0*0
_output_shapes
:џџџџџџџџџ0*
ksize
*
paddingVALID*
strides

MAX_POOL_1_/SqueezeSqueezeMAX_POOL_1_/MaxPool:output:0*
T0*,
_output_shapes
:џџџџџџџџџ0*
squeeze_dims
k
CNN_REL1_/ReluReluMAX_POOL_1_/Squeeze:output:0*
T0*,
_output_shapes
:џџџџџџџџџ0f
CNN2_/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџЄ
CNN2_/Conv1D/ExpandDims
ExpandDimsCNN_REL1_/Relu:activations:0$CNN2_/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ0
(CNN2_/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp1cnn2__conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:0@*
dtype0_
CNN2_/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : В
CNN2_/Conv1D/ExpandDims_1
ExpandDims0CNN2_/Conv1D/ExpandDims_1/ReadVariableOp:value:0&CNN2_/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:0@П
CNN2_/Conv1DConv2D CNN2_/Conv1D/ExpandDims:output:0"CNN2_/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

CNN2_/Conv1D/SqueezeSqueezeCNN2_/Conv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ@*
squeeze_dims

§џџџџџџџџ~
CNN2_/BiasAdd/ReadVariableOpReadVariableOp%cnn2__biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
CNN2_/BiasAddBiasAddCNN2_/Conv1D/Squeeze:output:0$CNN2_/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ@\
MAX_POOL_2_/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
MAX_POOL_2_/ExpandDims
ExpandDimsCNN2_/BiasAdd:output:0#MAX_POOL_2_/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@Ќ
MAX_POOL_2_/MaxPoolMaxPoolMAX_POOL_2_/ExpandDims:output:0*/
_output_shapes
:џџџџџџџџџ@@*
ksize
*
paddingVALID*
strides

MAX_POOL_2_/SqueezeSqueezeMAX_POOL_2_/MaxPool:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@@*
squeeze_dims
j
CNN_REL2_/ReluReluMAX_POOL_2_/Squeeze:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@@f
CNN3_/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџЃ
CNN3_/Conv1D/ExpandDims
ExpandDimsCNN_REL2_/Relu:activations:0$CNN3_/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@@
(CNN3_/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp1cnn3__conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@`*
dtype0_
CNN3_/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : В
CNN3_/Conv1D/ExpandDims_1
ExpandDims0CNN3_/Conv1D/ExpandDims_1/ReadVariableOp:value:0&CNN3_/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@`О
CNN3_/Conv1DConv2D CNN3_/Conv1D/ExpandDims:output:0"CNN3_/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@`*
paddingSAME*
strides

CNN3_/Conv1D/SqueezeSqueezeCNN3_/Conv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@`*
squeeze_dims

§џџџџџџџџ~
CNN3_/BiasAdd/ReadVariableOpReadVariableOp%cnn3__biasadd_readvariableop_resource*
_output_shapes
:`*
dtype0
CNN3_/BiasAddBiasAddCNN3_/Conv1D/Squeeze:output:0$CNN3_/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ@`\
MAX_POOL_3_/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
MAX_POOL_3_/ExpandDims
ExpandDimsCNN3_/BiasAdd:output:0#MAX_POOL_3_/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@`Ќ
MAX_POOL_3_/MaxPoolMaxPoolMAX_POOL_3_/ExpandDims:output:0*/
_output_shapes
:џџџџџџџџџ@`*
ksize
*
paddingVALID*
strides

MAX_POOL_3_/SqueezeSqueezeMAX_POOL_3_/MaxPool:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@`*
squeeze_dims
j
CNN_REL3_/ReluReluMAX_POOL_3_/Squeeze:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@`f
CNN4_/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџЃ
CNN4_/Conv1D/ExpandDims
ExpandDimsCNN_REL3_/Relu:activations:0$CNN4_/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@`
(CNN4_/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp1cnn4__conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:`*
dtype0_
CNN4_/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Г
CNN4_/Conv1D/ExpandDims_1
ExpandDims0CNN4_/Conv1D/ExpandDims_1/ReadVariableOp:value:0&CNN4_/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:`П
CNN4_/Conv1DConv2D CNN4_/Conv1D/ExpandDims:output:0"CNN4_/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

CNN4_/Conv1D/SqueezeSqueezeCNN4_/Conv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ@*
squeeze_dims

§џџџџџџџџ
CNN4_/BiasAdd/ReadVariableOpReadVariableOp%cnn4__biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
CNN4_/BiasAddBiasAddCNN4_/Conv1D/Squeeze:output:0$CNN4_/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ@\
MAX_POOL_4_/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
MAX_POOL_4_/ExpandDims
ExpandDimsCNN4_/BiasAdd:output:0#MAX_POOL_4_/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@­
MAX_POOL_4_/MaxPoolMaxPoolMAX_POOL_4_/ExpandDims:output:0*0
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides

MAX_POOL_4_/SqueezeSqueezeMAX_POOL_4_/MaxPool:output:0*
T0*,
_output_shapes
:џџџџџџџџџ *
squeeze_dims
k
CNN_REL4_/ReluReluMAX_POOL_4_/Squeeze:output:0*
T0*,
_output_shapes
:џџџџџџџџџ f
CNN5_/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџЄ
CNN5_/Conv1D/ExpandDims
ExpandDimsCNN_REL4_/Relu:activations:0$CNN5_/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ  
(CNN5_/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp1cnn5__conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:Р*
dtype0_
CNN5_/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Д
CNN5_/Conv1D/ExpandDims_1
ExpandDims0CNN5_/Conv1D/ExpandDims_1/ReadVariableOp:value:0&CNN5_/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:РП
CNN5_/Conv1DConv2D CNN5_/Conv1D/ExpandDims:output:0"CNN5_/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ Р*
paddingSAME*
strides

CNN5_/Conv1D/SqueezeSqueezeCNN5_/Conv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ Р*
squeeze_dims

§џџџџџџџџ
CNN5_/BiasAdd/ReadVariableOpReadVariableOp%cnn5__biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0
CNN5_/BiasAddBiasAddCNN5_/Conv1D/Squeeze:output:0$CNN5_/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ Р\
MAX_POOL_5_/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
MAX_POOL_5_/ExpandDims
ExpandDimsCNN5_/BiasAdd:output:0#MAX_POOL_5_/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ Р­
MAX_POOL_5_/MaxPoolMaxPoolMAX_POOL_5_/ExpandDims:output:0*0
_output_shapes
:џџџџџџџџџ Р*
ksize
*
paddingVALID*
strides

MAX_POOL_5_/SqueezeSqueezeMAX_POOL_5_/MaxPool:output:0*
T0*,
_output_shapes
:џџџџџџџџџ Р*
squeeze_dims
k
CNN_REL5_/ReluReluMAX_POOL_5_/Squeeze:output:0*
T0*,
_output_shapes
:џџџџџџџџџ РV
AVG1_/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
AVG1_/ExpandDims
ExpandDimsCNN_REL5_/Relu:activations:0AVG1_/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ РЊ
AVG1_/AvgPoolAvgPoolAVG1_/ExpandDims:output:0*
T0*0
_output_shapes
:џџџџџџџџџР*
ksize
 *
paddingVALID*
strides
 ~
AVG1_/SqueezeSqueezeAVG1_/AvgPool:output:0*
T0*,
_output_shapes
:џџџџџџџџџР*
squeeze_dims
\
FLT1_/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   y
FLT1_/ReshapeReshapeAVG1_/Squeeze:output:0FLT1_/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџР
FC_1_/MatMul/ReadVariableOpReadVariableOp$fc_1__matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0
FC_1_/MatMulMatMulFLT1_/Reshape:output:0#FC_1_/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ~
FC_1_/BiasAdd/ReadVariableOpReadVariableOp%fc_1__biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
FC_1_/BiasAddBiasAddFC_1_/MatMul:product:0$FC_1_/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
softmax/SoftmaxSoftmaxFC_1_/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
flatten/ReshapeReshapesoftmax/Softmax:softmax:0flatten/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџg
IdentityIdentityflatten/Reshape:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџП
NoOpNoOp^CNN0_/BiasAdd/ReadVariableOp)^CNN0_/Conv1D/ExpandDims_1/ReadVariableOp^CNN1_/BiasAdd/ReadVariableOp)^CNN1_/Conv1D/ExpandDims_1/ReadVariableOp^CNN2_/BiasAdd/ReadVariableOp)^CNN2_/Conv1D/ExpandDims_1/ReadVariableOp^CNN3_/BiasAdd/ReadVariableOp)^CNN3_/Conv1D/ExpandDims_1/ReadVariableOp^CNN4_/BiasAdd/ReadVariableOp)^CNN4_/Conv1D/ExpandDims_1/ReadVariableOp^CNN5_/BiasAdd/ReadVariableOp)^CNN5_/Conv1D/ExpandDims_1/ReadVariableOp^FC_1_/BiasAdd/ReadVariableOp^FC_1_/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:џџџџџџџџџ: : : : : : : : : : : : : : 2<
CNN0_/BiasAdd/ReadVariableOpCNN0_/BiasAdd/ReadVariableOp2T
(CNN0_/Conv1D/ExpandDims_1/ReadVariableOp(CNN0_/Conv1D/ExpandDims_1/ReadVariableOp2<
CNN1_/BiasAdd/ReadVariableOpCNN1_/BiasAdd/ReadVariableOp2T
(CNN1_/Conv1D/ExpandDims_1/ReadVariableOp(CNN1_/Conv1D/ExpandDims_1/ReadVariableOp2<
CNN2_/BiasAdd/ReadVariableOpCNN2_/BiasAdd/ReadVariableOp2T
(CNN2_/Conv1D/ExpandDims_1/ReadVariableOp(CNN2_/Conv1D/ExpandDims_1/ReadVariableOp2<
CNN3_/BiasAdd/ReadVariableOpCNN3_/BiasAdd/ReadVariableOp2T
(CNN3_/Conv1D/ExpandDims_1/ReadVariableOp(CNN3_/Conv1D/ExpandDims_1/ReadVariableOp2<
CNN4_/BiasAdd/ReadVariableOpCNN4_/BiasAdd/ReadVariableOp2T
(CNN4_/Conv1D/ExpandDims_1/ReadVariableOp(CNN4_/Conv1D/ExpandDims_1/ReadVariableOp2<
CNN5_/BiasAdd/ReadVariableOpCNN5_/BiasAdd/ReadVariableOp2T
(CNN5_/Conv1D/ExpandDims_1/ReadVariableOp(CNN5_/Conv1D/ExpandDims_1/ReadVariableOp2<
FC_1_/BiasAdd/ReadVariableOpFC_1_/BiasAdd/ReadVariableOp2:
FC_1_/MatMul/ReadVariableOpFC_1_/MatMul/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ў
[
?__inference_BN5__layer_call_and_return_conditional_losses_85084

inputs
identityS
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџ Р"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ Р:T P
,
_output_shapes
:џџџџџџџџџ Р
 
_user_specified_nameinputs
Ы
b
F__inference_MAX_POOL_4__layer_call_and_return_conditional_losses_85001

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџІ
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides

SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ц
ј
%__inference_model_layer_call_fn_84021
input_1
unknown: 
	unknown_0: 
	unknown_1: 0
	unknown_2:0
	unknown_3:0@
	unknown_4:@
	unknown_5:@`
	unknown_6:` 
	unknown_7:`
	unknown_8:	!
	unknown_9:Р

unknown_10:	Р

unknown_11:	Р

unknown_12:
identityЂStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_83990o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:џџџџџџџџџ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1
ћ
[
?__inference_BN2__layer_call_and_return_conditional_losses_84889

inputs
identityR
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@@:S O
+
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
Њ
@
$__inference_BN5__layer_call_fn_85071

inputs
identityВ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ Р* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN5__layer_call_and_return_conditional_losses_83791e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџ Р"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ Р:T P
,
_output_shapes
:џџџџџџџџџ Р
 
_user_specified_nameinputs
Њ
@
$__inference_BN0__layer_call_fn_84751

inputs
identityВ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN0__layer_call_and_return_conditional_losses_83853e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ :T P
,
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ў
[
?__inference_BN0__layer_call_and_return_conditional_losses_84759

inputs
identityS
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ :T P
,
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ћ
[
?__inference_BN3__layer_call_and_return_conditional_losses_83889

inputs
identityR
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ@`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@`:S O
+
_output_shapes
:џџџџџџџџџ@`
 
_user_specified_nameinputs
Њ
@
$__inference_BN4__layer_call_fn_85011

inputs
identityВ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN4__layer_call_and_return_conditional_losses_83901e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ :T P
,
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ы
b
F__inference_MAX_POOL_3__layer_call_and_return_conditional_losses_83535

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџІ
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides

SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
е

%__inference_CNN1__layer_call_fn_84778

inputs
unknown: 0
	unknown_0:0
identityЂStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN1__layer_call_and_return_conditional_losses_83640t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
м
`
D__inference_CNN_REL4__layer_call_and_return_conditional_losses_83763

inputs
identityK
ReluReluinputs*
T0*,
_output_shapes
:џџџџџџџџџ _
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ :T P
,
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
њ

@__inference_CNN5__layer_call_and_return_conditional_losses_85053

inputsC
+conv1d_expanddims_1_readvariableop_resource:Р.
biasadd_readvariableop_resource:	Р
identityЂBiasAdd/ReadVariableOpЂ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ 
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:Р*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ђ
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:Р­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ Р*
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ Р*
squeeze_dims

§џџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ Рd
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ Р
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ћ
[
?__inference_BN2__layer_call_and_return_conditional_losses_84885

inputs
identityR
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@@:S O
+
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
ў
[
?__inference_BN5__layer_call_and_return_conditional_losses_83791

inputs
identityS
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџ Р"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ Р:T P
,
_output_shapes
:џџџџџџџџџ Р
 
_user_specified_nameinputs
ў
[
?__inference_BN4__layer_call_and_return_conditional_losses_83756

inputs
identityS
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ :T P
,
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
В
^
B__inference_flatten_layer_call_and_return_conditional_losses_85158

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:џџџџџџџџџX
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
І
@
$__inference_BN2__layer_call_fn_84876

inputs
identityБ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN2__layer_call_and_return_conditional_losses_83686d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@@:S O
+
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
Д
E
)__inference_CNN_REL0__layer_call_fn_84764

inputs
identityЗ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL0__layer_call_and_return_conditional_losses_83623e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ :T P
,
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
С_
є
@__inference_model_layer_call_and_return_conditional_losses_83926
input_1!
cnn0__83844: 
cnn0__83846: !
cnn1__83856: 0
cnn1__83858:0!
cnn2__83868:0@
cnn2__83870:@!
cnn3__83880:@`
cnn3__83882:`"
cnn4__83892:`
cnn4__83894:	#
cnn5__83904:Р
cnn5__83906:	Р
fc_1__83918:	Р
fc_1__83920:
identityЂCNN0_/StatefulPartitionedCallЂCNN1_/StatefulPartitionedCallЂCNN2_/StatefulPartitionedCallЂCNN3_/StatefulPartitionedCallЂCNN4_/StatefulPartitionedCallЂCNN5_/StatefulPartitionedCallЂFC_1_/StatefulPartitionedCallъ
CNN0_/StatefulPartitionedCallStatefulPartitionedCallinput_1cnn0__83844cnn0__83846*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN0__layer_call_and_return_conditional_losses_83605х
MAX_POOL_0_/PartitionedCallPartitionedCall&CNN0_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_0__layer_call_and_return_conditional_losses_83490е
BN0_/PartitionedCallPartitionedCall$MAX_POOL_0_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN0__layer_call_and_return_conditional_losses_83853и
CNN_REL0_/PartitionedCallPartitionedCallBN0_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL0__layer_call_and_return_conditional_losses_83623
CNN1_/StatefulPartitionedCallStatefulPartitionedCall"CNN_REL0_/PartitionedCall:output:0cnn1__83856cnn1__83858*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN1__layer_call_and_return_conditional_losses_83640х
MAX_POOL_1_/PartitionedCallPartitionedCall&CNN1_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_1__layer_call_and_return_conditional_losses_83505е
BN1_/PartitionedCallPartitionedCall$MAX_POOL_1_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN1__layer_call_and_return_conditional_losses_83865и
CNN_REL1_/PartitionedCallPartitionedCallBN1_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL1__layer_call_and_return_conditional_losses_83658
CNN2_/StatefulPartitionedCallStatefulPartitionedCall"CNN_REL1_/PartitionedCall:output:0cnn2__83868cnn2__83870*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN2__layer_call_and_return_conditional_losses_83675ф
MAX_POOL_2_/PartitionedCallPartitionedCall&CNN2_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_2__layer_call_and_return_conditional_losses_83520д
BN2_/PartitionedCallPartitionedCall$MAX_POOL_2_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN2__layer_call_and_return_conditional_losses_83877з
CNN_REL2_/PartitionedCallPartitionedCallBN2_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL2__layer_call_and_return_conditional_losses_83693
CNN3_/StatefulPartitionedCallStatefulPartitionedCall"CNN_REL2_/PartitionedCall:output:0cnn3__83880cnn3__83882*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN3__layer_call_and_return_conditional_losses_83710ф
MAX_POOL_3_/PartitionedCallPartitionedCall&CNN3_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_3__layer_call_and_return_conditional_losses_83535д
BN3_/PartitionedCallPartitionedCall$MAX_POOL_3_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN3__layer_call_and_return_conditional_losses_83889з
CNN_REL3_/PartitionedCallPartitionedCallBN3_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL3__layer_call_and_return_conditional_losses_83728
CNN4_/StatefulPartitionedCallStatefulPartitionedCall"CNN_REL3_/PartitionedCall:output:0cnn4__83892cnn4__83894*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN4__layer_call_and_return_conditional_losses_83745х
MAX_POOL_4_/PartitionedCallPartitionedCall&CNN4_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_4__layer_call_and_return_conditional_losses_83550е
BN4_/PartitionedCallPartitionedCall$MAX_POOL_4_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN4__layer_call_and_return_conditional_losses_83901и
CNN_REL4_/PartitionedCallPartitionedCallBN4_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL4__layer_call_and_return_conditional_losses_83763
CNN5_/StatefulPartitionedCallStatefulPartitionedCall"CNN_REL4_/PartitionedCall:output:0cnn5__83904cnn5__83906*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ Р*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN5__layer_call_and_return_conditional_losses_83780х
MAX_POOL_5_/PartitionedCallPartitionedCall&CNN5_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ Р* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_5__layer_call_and_return_conditional_losses_83565е
BN5_/PartitionedCallPartitionedCall$MAX_POOL_5_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ Р* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN5__layer_call_and_return_conditional_losses_83913и
CNN_REL5_/PartitionedCallPartitionedCallBN5_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ Р* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL5__layer_call_and_return_conditional_losses_83798е
AVG1_/PartitionedCallPartitionedCall"CNN_REL5_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџР* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_AVG1__layer_call_and_return_conditional_losses_83580Э
FLT1_/PartitionedCallPartitionedCallAVG1_/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџР* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_FLT1__layer_call_and_return_conditional_losses_83807ќ
FC_1_/StatefulPartitionedCallStatefulPartitionedCallFLT1_/PartitionedCall:output:0fc_1__83918fc_1__83920*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_FC_1__layer_call_and_return_conditional_losses_83819и
softmax/PartitionedCallPartitionedCall&FC_1_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_softmax_layer_call_and_return_conditional_losses_83830в
flatten/PartitionedCallPartitionedCall softmax/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_83838o
IdentityIdentity flatten/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџІ
NoOpNoOp^CNN0_/StatefulPartitionedCall^CNN1_/StatefulPartitionedCall^CNN2_/StatefulPartitionedCall^CNN3_/StatefulPartitionedCall^CNN4_/StatefulPartitionedCall^CNN5_/StatefulPartitionedCall^FC_1_/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:џџџџџџџџџ: : : : : : : : : : : : : : 2>
CNN0_/StatefulPartitionedCallCNN0_/StatefulPartitionedCall2>
CNN1_/StatefulPartitionedCallCNN1_/StatefulPartitionedCall2>
CNN2_/StatefulPartitionedCallCNN2_/StatefulPartitionedCall2>
CNN3_/StatefulPartitionedCallCNN3_/StatefulPartitionedCall2>
CNN4_/StatefulPartitionedCallCNN4_/StatefulPartitionedCall2>
CNN5_/StatefulPartitionedCallCNN5_/StatefulPartitionedCall2>
FC_1_/StatefulPartitionedCallFC_1_/StatefulPartitionedCall:U Q
,
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1
ќ
G
+__inference_MAX_POOL_4__layer_call_fn_84993

inputs
identityЪ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_4__layer_call_and_return_conditional_losses_83550v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ћ
J
"__inference__update_step_xla_49858
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
ў
[
?__inference_BN0__layer_call_and_return_conditional_losses_83853

inputs
identityS
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ :T P
,
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ч	
ђ
@__inference_FC_1__layer_call_and_return_conditional_losses_83819

inputs1
matmul_readvariableop_resource:	Р-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџР: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџР
 
_user_specified_nameinputs
ћ
[
?__inference_BN2__layer_call_and_return_conditional_losses_83877

inputs
identityR
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@@:S O
+
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
и
`
D__inference_CNN_REL2__layer_call_and_return_conditional_losses_84899

inputs
identityJ
ReluReluinputs*
T0*+
_output_shapes
:џџџџџџџџџ@@^
IdentityIdentityRelu:activations:0*
T0*+
_output_shapes
:џџџџџџџџџ@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@@:S O
+
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
ђ

@__inference_CNN1__layer_call_and_return_conditional_losses_83640

inputsA
+conv1d_expanddims_1_readvariableop_resource: 0-
biasadd_readvariableop_resource:0
identityЂBiasAdd/ReadVariableOpЂ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ 
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: 0*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 0­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ0*
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ0*
squeeze_dims

§џџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ0d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ0
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
К
O
"__inference__update_step_xla_49853
gradient
variable:	Р*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	Р: *
	_noinline(:($
"
_user_specified_name
variable:I E

_output_shapes
:	Р
"
_user_specified_name
gradient
м
`
D__inference_CNN_REL1__layer_call_and_return_conditional_losses_84834

inputs
identityK
ReluReluinputs*
T0*,
_output_shapes
:џџџџџџџџџ0_
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:џџџџџџџџџ0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ0:T P
,
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
ђ

@__inference_CNN2__layer_call_and_return_conditional_losses_83675

inputsA
+conv1d_expanddims_1_readvariableop_resource:0@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ0
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:0@*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:0@­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ@*
squeeze_dims

§џџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ@d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
ђ

@__inference_CNN0__layer_call_and_return_conditional_losses_84728

inputsA
+conv1d_expanddims_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: ­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ *
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ *
squeeze_dims

§џџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ 
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ў
[
?__inference_BN4__layer_call_and_return_conditional_losses_85019

inputs
identityS
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ :T P
,
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
є

@__inference_CNN4__layer_call_and_return_conditional_losses_83745

inputsB
+conv1d_expanddims_1_readvariableop_resource:`.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@`
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:`*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ё
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:`­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ@*
squeeze_dims

§џџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ@d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ@`
 
_user_specified_nameinputs
Д
E
)__inference_CNN_REL4__layer_call_fn_85024

inputs
identityЗ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_CNN_REL4__layer_call_and_return_conditional_losses_83763e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ :T P
,
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ў
[
?__inference_BN0__layer_call_and_return_conditional_losses_84755

inputs
identityS
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ :T P
,
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ы
b
F__inference_MAX_POOL_5__layer_call_and_return_conditional_losses_83565

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџІ
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides

SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ќ
G
+__inference_MAX_POOL_5__layer_call_fn_85058

inputs
identityЪ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_5__layer_call_and_return_conditional_losses_83565v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ф
і
#__inference_signature_wrapper_84408
input_1
unknown: 
	unknown_0: 
	unknown_1: 0
	unknown_2:0
	unknown_3:0@
	unknown_4:@
	unknown_5:@`
	unknown_6:` 
	unknown_7:`
	unknown_8:	!
	unknown_9:Р

unknown_10:	Р

unknown_11:	Р

unknown_12:
identityЂStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_83481o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:џџџџџџџџџ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1
Ч	
ђ
@__inference_FC_1__layer_call_and_return_conditional_losses_85137

inputs1
matmul_readvariableop_resource:	Р-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџР: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџР
 
_user_specified_nameinputs
м
`
D__inference_CNN_REL0__layer_call_and_return_conditional_losses_83623

inputs
identityK
ReluReluinputs*
T0*,
_output_shapes
:џџџџџџџџџ _
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ :T P
,
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ћ
[
?__inference_BN3__layer_call_and_return_conditional_losses_84954

inputs
identityR
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ@`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@`:S O
+
_output_shapes
:џџџџџџџџџ@`
 
_user_specified_nameinputs
Ы
^
B__inference_softmax_layer_call_and_return_conditional_losses_83830

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:џџџџџџџџџY
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
њ

@__inference_CNN5__layer_call_and_return_conditional_losses_83780

inputsC
+conv1d_expanddims_1_readvariableop_resource:Р.
biasadd_readvariableop_resource:	Р
identityЂBiasAdd/ReadVariableOpЂ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ 
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:Р*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ђ
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:Р­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ Р*
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ Р*
squeeze_dims

§џџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ Рd
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ Р
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs

П
@__inference_model_layer_call_and_return_conditional_losses_84589

inputsG
1cnn0__conv1d_expanddims_1_readvariableop_resource: 3
%cnn0__biasadd_readvariableop_resource: G
1cnn1__conv1d_expanddims_1_readvariableop_resource: 03
%cnn1__biasadd_readvariableop_resource:0G
1cnn2__conv1d_expanddims_1_readvariableop_resource:0@3
%cnn2__biasadd_readvariableop_resource:@G
1cnn3__conv1d_expanddims_1_readvariableop_resource:@`3
%cnn3__biasadd_readvariableop_resource:`H
1cnn4__conv1d_expanddims_1_readvariableop_resource:`4
%cnn4__biasadd_readvariableop_resource:	I
1cnn5__conv1d_expanddims_1_readvariableop_resource:Р4
%cnn5__biasadd_readvariableop_resource:	Р7
$fc_1__matmul_readvariableop_resource:	Р3
%fc_1__biasadd_readvariableop_resource:
identityЂCNN0_/BiasAdd/ReadVariableOpЂ(CNN0_/Conv1D/ExpandDims_1/ReadVariableOpЂCNN1_/BiasAdd/ReadVariableOpЂ(CNN1_/Conv1D/ExpandDims_1/ReadVariableOpЂCNN2_/BiasAdd/ReadVariableOpЂ(CNN2_/Conv1D/ExpandDims_1/ReadVariableOpЂCNN3_/BiasAdd/ReadVariableOpЂ(CNN3_/Conv1D/ExpandDims_1/ReadVariableOpЂCNN4_/BiasAdd/ReadVariableOpЂ(CNN4_/Conv1D/ExpandDims_1/ReadVariableOpЂCNN5_/BiasAdd/ReadVariableOpЂ(CNN5_/Conv1D/ExpandDims_1/ReadVariableOpЂFC_1_/BiasAdd/ReadVariableOpЂFC_1_/MatMul/ReadVariableOpf
CNN0_/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
CNN0_/Conv1D/ExpandDims
ExpandDimsinputs$CNN0_/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ
(CNN0_/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp1cnn0__conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0_
CNN0_/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : В
CNN0_/Conv1D/ExpandDims_1
ExpandDims0CNN0_/Conv1D/ExpandDims_1/ReadVariableOp:value:0&CNN0_/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: П
CNN0_/Conv1DConv2D CNN0_/Conv1D/ExpandDims:output:0"CNN0_/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ *
paddingSAME*
strides

CNN0_/Conv1D/SqueezeSqueezeCNN0_/Conv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ *
squeeze_dims

§џџџџџџџџ~
CNN0_/BiasAdd/ReadVariableOpReadVariableOp%cnn0__biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
CNN0_/BiasAddBiasAddCNN0_/Conv1D/Squeeze:output:0$CNN0_/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ \
MAX_POOL_0_/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
MAX_POOL_0_/ExpandDims
ExpandDimsCNN0_/BiasAdd:output:0#MAX_POOL_0_/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ ­
MAX_POOL_0_/MaxPoolMaxPoolMAX_POOL_0_/ExpandDims:output:0*0
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides

MAX_POOL_0_/SqueezeSqueezeMAX_POOL_0_/MaxPool:output:0*
T0*,
_output_shapes
:џџџџџџџџџ *
squeeze_dims
k
CNN_REL0_/ReluReluMAX_POOL_0_/Squeeze:output:0*
T0*,
_output_shapes
:џџџџџџџџџ f
CNN1_/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџЄ
CNN1_/Conv1D/ExpandDims
ExpandDimsCNN_REL0_/Relu:activations:0$CNN1_/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ 
(CNN1_/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp1cnn1__conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: 0*
dtype0_
CNN1_/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : В
CNN1_/Conv1D/ExpandDims_1
ExpandDims0CNN1_/Conv1D/ExpandDims_1/ReadVariableOp:value:0&CNN1_/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 0П
CNN1_/Conv1DConv2D CNN1_/Conv1D/ExpandDims:output:0"CNN1_/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ0*
paddingSAME*
strides

CNN1_/Conv1D/SqueezeSqueezeCNN1_/Conv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ0*
squeeze_dims

§џџџџџџџџ~
CNN1_/BiasAdd/ReadVariableOpReadVariableOp%cnn1__biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0
CNN1_/BiasAddBiasAddCNN1_/Conv1D/Squeeze:output:0$CNN1_/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ0\
MAX_POOL_1_/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
MAX_POOL_1_/ExpandDims
ExpandDimsCNN1_/BiasAdd:output:0#MAX_POOL_1_/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ0­
MAX_POOL_1_/MaxPoolMaxPoolMAX_POOL_1_/ExpandDims:output:0*0
_output_shapes
:џџџџџџџџџ0*
ksize
*
paddingVALID*
strides

MAX_POOL_1_/SqueezeSqueezeMAX_POOL_1_/MaxPool:output:0*
T0*,
_output_shapes
:џџџџџџџџџ0*
squeeze_dims
k
CNN_REL1_/ReluReluMAX_POOL_1_/Squeeze:output:0*
T0*,
_output_shapes
:џџџџџџџџџ0f
CNN2_/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџЄ
CNN2_/Conv1D/ExpandDims
ExpandDimsCNN_REL1_/Relu:activations:0$CNN2_/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ0
(CNN2_/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp1cnn2__conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:0@*
dtype0_
CNN2_/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : В
CNN2_/Conv1D/ExpandDims_1
ExpandDims0CNN2_/Conv1D/ExpandDims_1/ReadVariableOp:value:0&CNN2_/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:0@П
CNN2_/Conv1DConv2D CNN2_/Conv1D/ExpandDims:output:0"CNN2_/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

CNN2_/Conv1D/SqueezeSqueezeCNN2_/Conv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ@*
squeeze_dims

§џџџџџџџџ~
CNN2_/BiasAdd/ReadVariableOpReadVariableOp%cnn2__biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
CNN2_/BiasAddBiasAddCNN2_/Conv1D/Squeeze:output:0$CNN2_/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ@\
MAX_POOL_2_/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
MAX_POOL_2_/ExpandDims
ExpandDimsCNN2_/BiasAdd:output:0#MAX_POOL_2_/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@Ќ
MAX_POOL_2_/MaxPoolMaxPoolMAX_POOL_2_/ExpandDims:output:0*/
_output_shapes
:џџџџџџџџџ@@*
ksize
*
paddingVALID*
strides

MAX_POOL_2_/SqueezeSqueezeMAX_POOL_2_/MaxPool:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@@*
squeeze_dims
j
CNN_REL2_/ReluReluMAX_POOL_2_/Squeeze:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@@f
CNN3_/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџЃ
CNN3_/Conv1D/ExpandDims
ExpandDimsCNN_REL2_/Relu:activations:0$CNN3_/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@@
(CNN3_/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp1cnn3__conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@`*
dtype0_
CNN3_/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : В
CNN3_/Conv1D/ExpandDims_1
ExpandDims0CNN3_/Conv1D/ExpandDims_1/ReadVariableOp:value:0&CNN3_/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@`О
CNN3_/Conv1DConv2D CNN3_/Conv1D/ExpandDims:output:0"CNN3_/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@`*
paddingSAME*
strides

CNN3_/Conv1D/SqueezeSqueezeCNN3_/Conv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@`*
squeeze_dims

§џџџџџџџџ~
CNN3_/BiasAdd/ReadVariableOpReadVariableOp%cnn3__biasadd_readvariableop_resource*
_output_shapes
:`*
dtype0
CNN3_/BiasAddBiasAddCNN3_/Conv1D/Squeeze:output:0$CNN3_/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ@`\
MAX_POOL_3_/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
MAX_POOL_3_/ExpandDims
ExpandDimsCNN3_/BiasAdd:output:0#MAX_POOL_3_/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@`Ќ
MAX_POOL_3_/MaxPoolMaxPoolMAX_POOL_3_/ExpandDims:output:0*/
_output_shapes
:џџџџџџџџџ@`*
ksize
*
paddingVALID*
strides

MAX_POOL_3_/SqueezeSqueezeMAX_POOL_3_/MaxPool:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@`*
squeeze_dims
j
CNN_REL3_/ReluReluMAX_POOL_3_/Squeeze:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@`f
CNN4_/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџЃ
CNN4_/Conv1D/ExpandDims
ExpandDimsCNN_REL3_/Relu:activations:0$CNN4_/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@`
(CNN4_/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp1cnn4__conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:`*
dtype0_
CNN4_/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Г
CNN4_/Conv1D/ExpandDims_1
ExpandDims0CNN4_/Conv1D/ExpandDims_1/ReadVariableOp:value:0&CNN4_/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:`П
CNN4_/Conv1DConv2D CNN4_/Conv1D/ExpandDims:output:0"CNN4_/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

CNN4_/Conv1D/SqueezeSqueezeCNN4_/Conv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ@*
squeeze_dims

§џџџџџџџџ
CNN4_/BiasAdd/ReadVariableOpReadVariableOp%cnn4__biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
CNN4_/BiasAddBiasAddCNN4_/Conv1D/Squeeze:output:0$CNN4_/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ@\
MAX_POOL_4_/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
MAX_POOL_4_/ExpandDims
ExpandDimsCNN4_/BiasAdd:output:0#MAX_POOL_4_/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@­
MAX_POOL_4_/MaxPoolMaxPoolMAX_POOL_4_/ExpandDims:output:0*0
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides

MAX_POOL_4_/SqueezeSqueezeMAX_POOL_4_/MaxPool:output:0*
T0*,
_output_shapes
:џџџџџџџџџ *
squeeze_dims
k
CNN_REL4_/ReluReluMAX_POOL_4_/Squeeze:output:0*
T0*,
_output_shapes
:џџџџџџџџџ f
CNN5_/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџЄ
CNN5_/Conv1D/ExpandDims
ExpandDimsCNN_REL4_/Relu:activations:0$CNN5_/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ  
(CNN5_/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp1cnn5__conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:Р*
dtype0_
CNN5_/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Д
CNN5_/Conv1D/ExpandDims_1
ExpandDims0CNN5_/Conv1D/ExpandDims_1/ReadVariableOp:value:0&CNN5_/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:РП
CNN5_/Conv1DConv2D CNN5_/Conv1D/ExpandDims:output:0"CNN5_/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ Р*
paddingSAME*
strides

CNN5_/Conv1D/SqueezeSqueezeCNN5_/Conv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ Р*
squeeze_dims

§џџџџџџџџ
CNN5_/BiasAdd/ReadVariableOpReadVariableOp%cnn5__biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0
CNN5_/BiasAddBiasAddCNN5_/Conv1D/Squeeze:output:0$CNN5_/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ Р\
MAX_POOL_5_/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
MAX_POOL_5_/ExpandDims
ExpandDimsCNN5_/BiasAdd:output:0#MAX_POOL_5_/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ Р­
MAX_POOL_5_/MaxPoolMaxPoolMAX_POOL_5_/ExpandDims:output:0*0
_output_shapes
:џџџџџџџџџ Р*
ksize
*
paddingVALID*
strides

MAX_POOL_5_/SqueezeSqueezeMAX_POOL_5_/MaxPool:output:0*
T0*,
_output_shapes
:џџџџџџџџџ Р*
squeeze_dims
k
CNN_REL5_/ReluReluMAX_POOL_5_/Squeeze:output:0*
T0*,
_output_shapes
:џџџџџџџџџ РV
AVG1_/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
AVG1_/ExpandDims
ExpandDimsCNN_REL5_/Relu:activations:0AVG1_/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ РЊ
AVG1_/AvgPoolAvgPoolAVG1_/ExpandDims:output:0*
T0*0
_output_shapes
:џџџџџџџџџР*
ksize
 *
paddingVALID*
strides
 ~
AVG1_/SqueezeSqueezeAVG1_/AvgPool:output:0*
T0*,
_output_shapes
:џџџџџџџџџР*
squeeze_dims
\
FLT1_/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   y
FLT1_/ReshapeReshapeAVG1_/Squeeze:output:0FLT1_/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџР
FC_1_/MatMul/ReadVariableOpReadVariableOp$fc_1__matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0
FC_1_/MatMulMatMulFLT1_/Reshape:output:0#FC_1_/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ~
FC_1_/BiasAdd/ReadVariableOpReadVariableOp%fc_1__biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
FC_1_/BiasAddBiasAddFC_1_/MatMul:product:0$FC_1_/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
softmax/SoftmaxSoftmaxFC_1_/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
flatten/ReshapeReshapesoftmax/Softmax:softmax:0flatten/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџg
IdentityIdentityflatten/Reshape:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџП
NoOpNoOp^CNN0_/BiasAdd/ReadVariableOp)^CNN0_/Conv1D/ExpandDims_1/ReadVariableOp^CNN1_/BiasAdd/ReadVariableOp)^CNN1_/Conv1D/ExpandDims_1/ReadVariableOp^CNN2_/BiasAdd/ReadVariableOp)^CNN2_/Conv1D/ExpandDims_1/ReadVariableOp^CNN3_/BiasAdd/ReadVariableOp)^CNN3_/Conv1D/ExpandDims_1/ReadVariableOp^CNN4_/BiasAdd/ReadVariableOp)^CNN4_/Conv1D/ExpandDims_1/ReadVariableOp^CNN5_/BiasAdd/ReadVariableOp)^CNN5_/Conv1D/ExpandDims_1/ReadVariableOp^FC_1_/BiasAdd/ReadVariableOp^FC_1_/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:џџџџџџџџџ: : : : : : : : : : : : : : 2<
CNN0_/BiasAdd/ReadVariableOpCNN0_/BiasAdd/ReadVariableOp2T
(CNN0_/Conv1D/ExpandDims_1/ReadVariableOp(CNN0_/Conv1D/ExpandDims_1/ReadVariableOp2<
CNN1_/BiasAdd/ReadVariableOpCNN1_/BiasAdd/ReadVariableOp2T
(CNN1_/Conv1D/ExpandDims_1/ReadVariableOp(CNN1_/Conv1D/ExpandDims_1/ReadVariableOp2<
CNN2_/BiasAdd/ReadVariableOpCNN2_/BiasAdd/ReadVariableOp2T
(CNN2_/Conv1D/ExpandDims_1/ReadVariableOp(CNN2_/Conv1D/ExpandDims_1/ReadVariableOp2<
CNN3_/BiasAdd/ReadVariableOpCNN3_/BiasAdd/ReadVariableOp2T
(CNN3_/Conv1D/ExpandDims_1/ReadVariableOp(CNN3_/Conv1D/ExpandDims_1/ReadVariableOp2<
CNN4_/BiasAdd/ReadVariableOpCNN4_/BiasAdd/ReadVariableOp2T
(CNN4_/Conv1D/ExpandDims_1/ReadVariableOp(CNN4_/Conv1D/ExpandDims_1/ReadVariableOp2<
CNN5_/BiasAdd/ReadVariableOpCNN5_/BiasAdd/ReadVariableOp2T
(CNN5_/Conv1D/ExpandDims_1/ReadVariableOp(CNN5_/Conv1D/ExpandDims_1/ReadVariableOp2<
FC_1_/BiasAdd/ReadVariableOpFC_1_/BiasAdd/ReadVariableOp2:
FC_1_/MatMul/ReadVariableOpFC_1_/MatMul/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
М
\
@__inference_FLT1__layer_call_and_return_conditional_losses_85118

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџРY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџР"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџР:T P
,
_output_shapes
:џџџџџџџџџР
 
_user_specified_nameinputs
м
`
D__inference_CNN_REL0__layer_call_and_return_conditional_losses_84769

inputs
identityK
ReluReluinputs*
T0*,
_output_shapes
:џџџџџџџџџ _
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ :T P
,
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ў
K
"__inference__update_step_xla_49848
gradient
variable:	Р*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:Р: *
	_noinline(:($
"
_user_specified_name
variable:E A

_output_shapes	
:Р
"
_user_specified_name
gradient
У
R
"__inference__update_step_xla_49803
gradient
variable: 0*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*#
_input_shapes
: 0: *
	_noinline(:($
"
_user_specified_name
variable:L H
"
_output_shapes
: 0
"
_user_specified_name
gradient
ђ

@__inference_CNN2__layer_call_and_return_conditional_losses_84858

inputsA
+conv1d_expanddims_1_readvariableop_resource:0@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ0
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:0@*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:0@­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ@*
squeeze_dims

§џџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ@d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
І
@
$__inference_BN3__layer_call_fn_84946

inputs
identityБ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_BN3__layer_call_and_return_conditional_losses_83889d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@`:S O
+
_output_shapes
:џџџџџџџџџ@`
 
_user_specified_nameinputs
и

%__inference_CNN5__layer_call_fn_85038

inputs
unknown:Р
	unknown_0:	Р
identityЂStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ Р*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_CNN5__layer_call_and_return_conditional_losses_83780t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ Р`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Щ
T
"__inference__update_step_xla_49843
gradient 
variable:Р*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*%
_input_shapes
:Р: *
	_noinline(:($
"
_user_specified_name
variable:N J
$
_output_shapes
:Р
"
_user_specified_name
gradient
ќ
G
+__inference_MAX_POOL_0__layer_call_fn_84733

inputs
identityЪ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_MAX_POOL_0__layer_call_and_return_conditional_losses_83490v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ў
[
?__inference_BN4__layer_call_and_return_conditional_losses_83901

inputs
identityS
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ :T P
,
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs

C
'__inference_softmax_layer_call_fn_85142

inputs
identityА
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_softmax_layer_call_and_return_conditional_losses_83830`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs"ѓ
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Џ
serving_default
@
input_15
serving_default_input_1:0џџџџџџџџџ;
flatten0
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:Ж
в
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
layer-12
layer_with_weights-6
layer-13
layer-14
layer_with_weights-7
layer-15
layer-16
layer_with_weights-8
layer-17
layer-18
layer_with_weights-9
layer-19
layer-20
layer_with_weights-10
layer-21
layer-22
layer_with_weights-11
layer-23
layer-24
layer-25
layer-26
layer_with_weights-12
layer-27
layer-28
layer-29
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%_default_save_signature
&	optimizer
'
signatures"
_tf_keras_network
"
_tf_keras_input_layer
н
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias
 0_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses"
_tf_keras_layer
Я
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses
=custom_batch_beta
=beta
>custom_batch_gamma
	>gamma
?custom_batch_moving_mean
?moving_mean
 @custom_batch_moving_variance
@moving_variance"
_tf_keras_layer
Ѕ
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses"
_tf_keras_layer
н
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

Mkernel
Nbias
 O_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses"
_tf_keras_layer
Я
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses
\custom_batch_beta
\beta
]custom_batch_gamma
	]gamma
^custom_batch_moving_mean
^moving_mean
 _custom_batch_moving_variance
_moving_variance"
_tf_keras_layer
Ѕ
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses"
_tf_keras_layer
н
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

lkernel
mbias
 n_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses"
_tf_keras_layer
Я
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses
{custom_batch_beta
{beta
|custom_batch_gamma
	|gamma
}custom_batch_moving_mean
}moving_mean
 ~custom_batch_moving_variance
~moving_variance"
_tf_keras_layer
Њ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op"
_tf_keras_layer
Ћ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
н
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
custom_batch_beta
	beta
custom_batch_gamma

gamma
custom_batch_moving_mean
moving_mean
!custom_batch_moving_variance
moving_variance"
_tf_keras_layer
Ћ
	variables
trainable_variables
 regularization_losses
Ё	keras_api
Ђ__call__
+Ѓ&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
Є	variables
Ѕtrainable_variables
Іregularization_losses
Ї	keras_api
Ј__call__
+Љ&call_and_return_all_conditional_losses
Њkernel
	Ћbias
!Ќ_jit_compiled_convolution_op"
_tf_keras_layer
Ћ
­	variables
Ўtrainable_variables
Џregularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses"
_tf_keras_layer
н
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses
Йcustom_batch_beta
	Йbeta
Кcustom_batch_gamma

Кgamma
Лcustom_batch_moving_mean
Лmoving_mean
!Мcustom_batch_moving_variance
Мmoving_variance"
_tf_keras_layer
Ћ
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses
Щkernel
	Ъbias
!Ы_jit_compiled_convolution_op"
_tf_keras_layer
Ћ
Ь	variables
Эtrainable_variables
Юregularization_losses
Я	keras_api
а__call__
+б&call_and_return_all_conditional_losses"
_tf_keras_layer
н
в	variables
гtrainable_variables
дregularization_losses
е	keras_api
ж__call__
+з&call_and_return_all_conditional_losses
иcustom_batch_beta
	иbeta
йcustom_batch_gamma

йgamma
кcustom_batch_moving_mean
кmoving_mean
!лcustom_batch_moving_variance
лmoving_variance"
_tf_keras_layer
Ћ
м	variables
нtrainable_variables
оregularization_losses
п	keras_api
р__call__
+с&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
т	variables
уtrainable_variables
фregularization_losses
х	keras_api
ц__call__
+ч&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
ш	variables
щtrainable_variables
ъregularization_losses
ы	keras_api
ь__call__
+э&call_and_return_all_conditional_losses"
_tf_keras_layer
У
ю	variables
яtrainable_variables
№regularization_losses
ё	keras_api
ђ__call__
+ѓ&call_and_return_all_conditional_losses
єkernel
	ѕbias"
_tf_keras_layer
Ћ
і	variables
їtrainable_variables
јregularization_losses
љ	keras_api
њ__call__
+ћ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
ќ	variables
§trainable_variables
ўregularization_losses
џ	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
к
.0
/1
=2
>3
?4
@5
M6
N7
\8
]9
^10
_11
l12
m13
{14
|15
}16
~17
18
19
20
21
22
23
Њ24
Ћ25
Й26
К27
Л28
М29
Щ30
Ъ31
и32
й33
к34
л35
є36
ѕ37"
trackable_list_wrapper
є
.0
/1
=2
>3
M4
N5
\6
]7
l8
m9
{10
|11
12
13
14
15
Њ16
Ћ17
Й18
К19
Щ20
Ъ21
и22
й23
є24
ѕ25"
trackable_list_wrapper
 "
trackable_list_wrapper
Я
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
%_default_save_signature
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
Ч
trace_0
trace_1
trace_2
trace_32д
%__inference_model_layer_call_fn_84021
%__inference_model_layer_call_fn_84115
%__inference_model_layer_call_fn_84441
%__inference_model_layer_call_fn_84474Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1ztrace_2ztrace_3
Г
trace_0
trace_1
trace_2
trace_32Р
@__inference_model_layer_call_and_return_conditional_losses_83841
@__inference_model_layer_call_and_return_conditional_losses_83926
@__inference_model_layer_call_and_return_conditional_losses_84589
@__inference_model_layer_call_and_return_conditional_losses_84704Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1ztrace_2ztrace_3
ЫBШ
 __inference__wrapped_model_83481input_1"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ѓ

_variables
_iterations
_learning_rate
_index_dict

_momentums
_velocities
_update_step_xla"
experimentalOptimizer
-
serving_default"
signature_map
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
с
trace_02Т
%__inference_CNN0__layer_call_fn_84713
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
ќ
trace_02н
@__inference_CNN0__layer_call_and_return_conditional_losses_84728
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
":  2CNN0_/kernel
: 2
CNN0_/bias
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
 metrics
 Ёlayer_regularization_losses
Ђlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
ч
Ѓtrace_02Ш
+__inference_MAX_POOL_0__layer_call_fn_84733
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЃtrace_0

Єtrace_02у
F__inference_MAX_POOL_0__layer_call_and_return_conditional_losses_84741
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЄtrace_0
<
=0
>1
?2
@3"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Ѕnon_trainable_variables
Іlayers
Їmetrics
 Јlayer_regularization_losses
Љlayer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
Щ
Њtrace_0
Ћtrace_12
$__inference_BN0__layer_call_fn_84746
$__inference_BN0__layer_call_fn_84751П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 zЊtrace_0zЋtrace_1
џ
Ќtrace_0
­trace_12Ф
?__inference_BN0__layer_call_and_return_conditional_losses_84755
?__inference_BN0__layer_call_and_return_conditional_losses_84759П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 zЌtrace_0z­trace_1
$:" 2BN0_/custom_batch_beta
%:# 2BN0_/custom_batch_gamma
):' 2BN0_/custom_batch_moving_mean
-:+ 2!BN0_/custom_batch_moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Ўnon_trainable_variables
Џlayers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
х
Гtrace_02Ц
)__inference_CNN_REL0__layer_call_fn_84764
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zГtrace_0

Дtrace_02с
D__inference_CNN_REL0__layer_call_and_return_conditional_losses_84769
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zДtrace_0
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
с
Кtrace_02Т
%__inference_CNN1__layer_call_fn_84778
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zКtrace_0
ќ
Лtrace_02н
@__inference_CNN1__layer_call_and_return_conditional_losses_84793
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЛtrace_0
":  02CNN1_/kernel
:02
CNN1_/bias
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
ч
Сtrace_02Ш
+__inference_MAX_POOL_1__layer_call_fn_84798
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zСtrace_0

Тtrace_02у
F__inference_MAX_POOL_1__layer_call_and_return_conditional_losses_84806
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zТtrace_0
<
\0
]1
^2
_3"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
Щ
Шtrace_0
Щtrace_12
$__inference_BN1__layer_call_fn_84811
$__inference_BN1__layer_call_fn_84816П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 zШtrace_0zЩtrace_1
џ
Ъtrace_0
Ыtrace_12Ф
?__inference_BN1__layer_call_and_return_conditional_losses_84820
?__inference_BN1__layer_call_and_return_conditional_losses_84824П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 zЪtrace_0zЫtrace_1
$:"02BN1_/custom_batch_beta
%:#02BN1_/custom_batch_gamma
):'02BN1_/custom_batch_moving_mean
-:+02!BN1_/custom_batch_moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
х
бtrace_02Ц
)__inference_CNN_REL1__layer_call_fn_84829
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zбtrace_0

вtrace_02с
D__inference_CNN_REL1__layer_call_and_return_conditional_losses_84834
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zвtrace_0
.
l0
m1"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
с
иtrace_02Т
%__inference_CNN2__layer_call_fn_84843
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zиtrace_0
ќ
йtrace_02н
@__inference_CNN2__layer_call_and_return_conditional_losses_84858
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zйtrace_0
": 0@2CNN2_/kernel
:@2
CNN2_/bias
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
ч
пtrace_02Ш
+__inference_MAX_POOL_2__layer_call_fn_84863
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zпtrace_0

рtrace_02у
F__inference_MAX_POOL_2__layer_call_and_return_conditional_losses_84871
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zрtrace_0
<
{0
|1
}2
~3"
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
Щ
цtrace_0
чtrace_12
$__inference_BN2__layer_call_fn_84876
$__inference_BN2__layer_call_fn_84881П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 zцtrace_0zчtrace_1
џ
шtrace_0
щtrace_12Ф
?__inference_BN2__layer_call_and_return_conditional_losses_84885
?__inference_BN2__layer_call_and_return_conditional_losses_84889П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 zшtrace_0zщtrace_1
$:"@2BN2_/custom_batch_beta
%:#@2BN2_/custom_batch_gamma
):'@2BN2_/custom_batch_moving_mean
-:+@2!BN2_/custom_batch_moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
З
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
х
яtrace_02Ц
)__inference_CNN_REL2__layer_call_fn_84894
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zяtrace_0

№trace_02с
D__inference_CNN_REL2__layer_call_and_return_conditional_losses_84899
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z№trace_0
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
ёnon_trainable_variables
ђlayers
ѓmetrics
 єlayer_regularization_losses
ѕlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
с
іtrace_02Т
%__inference_CNN3__layer_call_fn_84908
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zіtrace_0
ќ
їtrace_02н
@__inference_CNN3__layer_call_and_return_conditional_losses_84923
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zїtrace_0
": @`2CNN3_/kernel
:`2
CNN3_/bias
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
јnon_trainable_variables
љlayers
њmetrics
 ћlayer_regularization_losses
ќlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ч
§trace_02Ш
+__inference_MAX_POOL_3__layer_call_fn_84928
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z§trace_0

ўtrace_02у
F__inference_MAX_POOL_3__layer_call_and_return_conditional_losses_84936
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zўtrace_0
@
0
1
2
3"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
џnon_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Щ
trace_0
trace_12
$__inference_BN3__layer_call_fn_84941
$__inference_BN3__layer_call_fn_84946П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 ztrace_0ztrace_1
џ
trace_0
trace_12Ф
?__inference_BN3__layer_call_and_return_conditional_losses_84950
?__inference_BN3__layer_call_and_return_conditional_losses_84954П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 ztrace_0ztrace_1
$:"`2BN3_/custom_batch_beta
%:#`2BN3_/custom_batch_gamma
):'`2BN3_/custom_batch_moving_mean
-:+`2!BN3_/custom_batch_moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
 regularization_losses
Ђ__call__
+Ѓ&call_and_return_all_conditional_losses
'Ѓ"call_and_return_conditional_losses"
_generic_user_object
х
trace_02Ц
)__inference_CNN_REL3__layer_call_fn_84959
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02с
D__inference_CNN_REL3__layer_call_and_return_conditional_losses_84964
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
0
Њ0
Ћ1"
trackable_list_wrapper
0
Њ0
Ћ1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Є	variables
Ѕtrainable_variables
Іregularization_losses
Ј__call__
+Љ&call_and_return_all_conditional_losses
'Љ"call_and_return_conditional_losses"
_generic_user_object
с
trace_02Т
%__inference_CNN4__layer_call_fn_84973
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
ќ
trace_02н
@__inference_CNN4__layer_call_and_return_conditional_losses_84988
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
#:!`2CNN4_/kernel
:2
CNN4_/bias
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
­	variables
Ўtrainable_variables
Џregularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
ч
trace_02Ш
+__inference_MAX_POOL_4__layer_call_fn_84993
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02у
F__inference_MAX_POOL_4__layer_call_and_return_conditional_losses_85001
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
@
Й0
К1
Л2
М3"
trackable_list_wrapper
0
Й0
К1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
  layer_regularization_losses
Ёlayer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
Щ
Ђtrace_0
Ѓtrace_12
$__inference_BN4__layer_call_fn_85006
$__inference_BN4__layer_call_fn_85011П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 zЂtrace_0zЃtrace_1
џ
Єtrace_0
Ѕtrace_12Ф
?__inference_BN4__layer_call_and_return_conditional_losses_85015
?__inference_BN4__layer_call_and_return_conditional_losses_85019П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 zЄtrace_0zЅtrace_1
%:#2BN4_/custom_batch_beta
&:$2BN4_/custom_batch_gamma
*:(2BN4_/custom_batch_moving_mean
.:,2!BN4_/custom_batch_moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Іnon_trainable_variables
Їlayers
Јmetrics
 Љlayer_regularization_losses
Њlayer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
х
Ћtrace_02Ц
)__inference_CNN_REL4__layer_call_fn_85024
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЋtrace_0

Ќtrace_02с
D__inference_CNN_REL4__layer_call_and_return_conditional_losses_85029
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЌtrace_0
0
Щ0
Ъ1"
trackable_list_wrapper
0
Щ0
Ъ1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
­non_trainable_variables
Ўlayers
Џmetrics
 Аlayer_regularization_losses
Бlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
с
Вtrace_02Т
%__inference_CNN5__layer_call_fn_85038
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zВtrace_0
ќ
Гtrace_02н
@__inference_CNN5__layer_call_and_return_conditional_losses_85053
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zГtrace_0
$:"Р2CNN5_/kernel
:Р2
CNN5_/bias
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Дnon_trainable_variables
Еlayers
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
Ь	variables
Эtrainable_variables
Юregularization_losses
а__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses"
_generic_user_object
ч
Йtrace_02Ш
+__inference_MAX_POOL_5__layer_call_fn_85058
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЙtrace_0

Кtrace_02у
F__inference_MAX_POOL_5__layer_call_and_return_conditional_losses_85066
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zКtrace_0
@
и0
й1
к2
л3"
trackable_list_wrapper
0
и0
й1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
в	variables
гtrainable_variables
дregularization_losses
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
_generic_user_object
Щ
Рtrace_0
Сtrace_12
$__inference_BN5__layer_call_fn_85071
$__inference_BN5__layer_call_fn_85076П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 zРtrace_0zСtrace_1
џ
Тtrace_0
Уtrace_12Ф
?__inference_BN5__layer_call_and_return_conditional_losses_85080
?__inference_BN5__layer_call_and_return_conditional_losses_85084П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 zТtrace_0zУtrace_1
%:#Р2BN5_/custom_batch_beta
&:$Р2BN5_/custom_batch_gamma
*:(Р2BN5_/custom_batch_moving_mean
.:,Р2!BN5_/custom_batch_moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
м	variables
нtrainable_variables
оregularization_losses
р__call__
+с&call_and_return_all_conditional_losses
'с"call_and_return_conditional_losses"
_generic_user_object
х
Щtrace_02Ц
)__inference_CNN_REL5__layer_call_fn_85089
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЩtrace_0

Ъtrace_02с
D__inference_CNN_REL5__layer_call_and_return_conditional_losses_85094
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЪtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
т	variables
уtrainable_variables
фregularization_losses
ц__call__
+ч&call_and_return_all_conditional_losses
'ч"call_and_return_conditional_losses"
_generic_user_object
с
аtrace_02Т
%__inference_AVG1__layer_call_fn_85099
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zаtrace_0
ќ
бtrace_02н
@__inference_AVG1__layer_call_and_return_conditional_losses_85107
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zбtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
ш	variables
щtrainable_variables
ъregularization_losses
ь__call__
+э&call_and_return_all_conditional_losses
'э"call_and_return_conditional_losses"
_generic_user_object
с
зtrace_02Т
%__inference_FLT1__layer_call_fn_85112
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zзtrace_0
ќ
иtrace_02н
@__inference_FLT1__layer_call_and_return_conditional_losses_85118
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zиtrace_0
0
є0
ѕ1"
trackable_list_wrapper
0
є0
ѕ1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
ю	variables
яtrainable_variables
№regularization_losses
ђ__call__
+ѓ&call_and_return_all_conditional_losses
'ѓ"call_and_return_conditional_losses"
_generic_user_object
с
оtrace_02Т
%__inference_FC_1__layer_call_fn_85127
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zоtrace_0
ќ
пtrace_02н
@__inference_FC_1__layer_call_and_return_conditional_losses_85137
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zпtrace_0
:	Р2FC_1_/kernel
:2
FC_1_/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
і	variables
їtrainable_variables
јregularization_losses
њ__call__
+ћ&call_and_return_all_conditional_losses
'ћ"call_and_return_conditional_losses"
_generic_user_object
№
хtrace_02б
'__inference_softmax_layer_call_fn_85142Ѕ
В
FullArgSpec
args
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zхtrace_0

цtrace_02ь
B__inference_softmax_layer_call_and_return_conditional_losses_85147Ѕ
В
FullArgSpec
args
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zцtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
ќ	variables
§trainable_variables
ўregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
у
ьtrace_02Ф
'__inference_flatten_layer_call_fn_85152
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zьtrace_0
ў
эtrace_02п
B__inference_flatten_layer_call_and_return_conditional_losses_85158
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zэtrace_0
|
?0
@1
^2
_3
}4
~5
6
7
Л8
М9
к10
л11"
trackable_list_wrapper

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29"
trackable_list_wrapper
0
ю0
я1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
эBъ
%__inference_model_layer_call_fn_84021input_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
%__inference_model_layer_call_fn_84115input_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
%__inference_model_layer_call_fn_84441inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
%__inference_model_layer_call_fn_84474inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
@__inference_model_layer_call_and_return_conditional_losses_83841input_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
@__inference_model_layer_call_and_return_conditional_losses_83926input_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
@__inference_model_layer_call_and_return_conditional_losses_84589inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
@__inference_model_layer_call_and_return_conditional_losses_84704inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѓ
0
№1
ё2
ђ3
ѓ4
є5
ѕ6
і7
ї8
ј9
љ10
њ11
ћ12
ќ13
§14
ў15
џ16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
 49
Ё50
Ђ51
Ѓ52"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper

№0
ђ1
є2
і3
ј4
њ5
ќ6
ў7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
 24
Ђ25"
trackable_list_wrapper

ё0
ѓ1
ѕ2
ї3
љ4
ћ5
§6
џ7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
Ё24
Ѓ25"
trackable_list_wrapper
Н
Єtrace_0
Ѕtrace_1
Іtrace_2
Їtrace_3
Јtrace_4
Љtrace_5
Њtrace_6
Ћtrace_7
Ќtrace_8
­trace_9
Ўtrace_10
Џtrace_11
Аtrace_12
Бtrace_132Њ
"__inference__update_step_xla_49793
"__inference__update_step_xla_49798
"__inference__update_step_xla_49803
"__inference__update_step_xla_49808
"__inference__update_step_xla_49813
"__inference__update_step_xla_49818
"__inference__update_step_xla_49823
"__inference__update_step_xla_49828
"__inference__update_step_xla_49833
"__inference__update_step_xla_49838
"__inference__update_step_xla_49843
"__inference__update_step_xla_49848
"__inference__update_step_xla_49853
"__inference__update_step_xla_49858Џ
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0zЄtrace_0zЅtrace_1zІtrace_2zЇtrace_3zЈtrace_4zЉtrace_5zЊtrace_6zЋtrace_7zЌtrace_8z­trace_9zЎtrace_10zЏtrace_11zАtrace_12zБtrace_13
ЪBЧ
#__inference_signature_wrapper_84408input_1"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЯBЬ
%__inference_CNN0__layer_call_fn_84713inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ъBч
@__inference_CNN0__layer_call_and_return_conditional_losses_84728inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
еBв
+__inference_MAX_POOL_0__layer_call_fn_84733inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№Bэ
F__inference_MAX_POOL_0__layer_call_and_return_conditional_losses_84741inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ѕBђ
$__inference_BN0__layer_call_fn_84746inputs"П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
ѕBђ
$__inference_BN0__layer_call_fn_84751inputs"П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
B
?__inference_BN0__layer_call_and_return_conditional_losses_84755inputs"П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
B
?__inference_BN0__layer_call_and_return_conditional_losses_84759inputs"П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
гBа
)__inference_CNN_REL0__layer_call_fn_84764inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
D__inference_CNN_REL0__layer_call_and_return_conditional_losses_84769inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЯBЬ
%__inference_CNN1__layer_call_fn_84778inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ъBч
@__inference_CNN1__layer_call_and_return_conditional_losses_84793inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
еBв
+__inference_MAX_POOL_1__layer_call_fn_84798inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№Bэ
F__inference_MAX_POOL_1__layer_call_and_return_conditional_losses_84806inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ѕBђ
$__inference_BN1__layer_call_fn_84811inputs"П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
ѕBђ
$__inference_BN1__layer_call_fn_84816inputs"П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
B
?__inference_BN1__layer_call_and_return_conditional_losses_84820inputs"П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
B
?__inference_BN1__layer_call_and_return_conditional_losses_84824inputs"П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
гBа
)__inference_CNN_REL1__layer_call_fn_84829inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
D__inference_CNN_REL1__layer_call_and_return_conditional_losses_84834inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЯBЬ
%__inference_CNN2__layer_call_fn_84843inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ъBч
@__inference_CNN2__layer_call_and_return_conditional_losses_84858inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
еBв
+__inference_MAX_POOL_2__layer_call_fn_84863inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№Bэ
F__inference_MAX_POOL_2__layer_call_and_return_conditional_losses_84871inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
}0
~1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ѕBђ
$__inference_BN2__layer_call_fn_84876inputs"П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
ѕBђ
$__inference_BN2__layer_call_fn_84881inputs"П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
B
?__inference_BN2__layer_call_and_return_conditional_losses_84885inputs"П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
B
?__inference_BN2__layer_call_and_return_conditional_losses_84889inputs"П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
гBа
)__inference_CNN_REL2__layer_call_fn_84894inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
D__inference_CNN_REL2__layer_call_and_return_conditional_losses_84899inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЯBЬ
%__inference_CNN3__layer_call_fn_84908inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ъBч
@__inference_CNN3__layer_call_and_return_conditional_losses_84923inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
еBв
+__inference_MAX_POOL_3__layer_call_fn_84928inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№Bэ
F__inference_MAX_POOL_3__layer_call_and_return_conditional_losses_84936inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ѕBђ
$__inference_BN3__layer_call_fn_84941inputs"П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
ѕBђ
$__inference_BN3__layer_call_fn_84946inputs"П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
B
?__inference_BN3__layer_call_and_return_conditional_losses_84950inputs"П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
B
?__inference_BN3__layer_call_and_return_conditional_losses_84954inputs"П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
гBа
)__inference_CNN_REL3__layer_call_fn_84959inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
D__inference_CNN_REL3__layer_call_and_return_conditional_losses_84964inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЯBЬ
%__inference_CNN4__layer_call_fn_84973inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ъBч
@__inference_CNN4__layer_call_and_return_conditional_losses_84988inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
еBв
+__inference_MAX_POOL_4__layer_call_fn_84993inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№Bэ
F__inference_MAX_POOL_4__layer_call_and_return_conditional_losses_85001inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
0
Л0
М1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ѕBђ
$__inference_BN4__layer_call_fn_85006inputs"П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
ѕBђ
$__inference_BN4__layer_call_fn_85011inputs"П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
B
?__inference_BN4__layer_call_and_return_conditional_losses_85015inputs"П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
B
?__inference_BN4__layer_call_and_return_conditional_losses_85019inputs"П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
гBа
)__inference_CNN_REL4__layer_call_fn_85024inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
D__inference_CNN_REL4__layer_call_and_return_conditional_losses_85029inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЯBЬ
%__inference_CNN5__layer_call_fn_85038inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ъBч
@__inference_CNN5__layer_call_and_return_conditional_losses_85053inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
еBв
+__inference_MAX_POOL_5__layer_call_fn_85058inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№Bэ
F__inference_MAX_POOL_5__layer_call_and_return_conditional_losses_85066inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
0
к0
л1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ѕBђ
$__inference_BN5__layer_call_fn_85071inputs"П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
ѕBђ
$__inference_BN5__layer_call_fn_85076inputs"П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
B
?__inference_BN5__layer_call_and_return_conditional_losses_85080inputs"П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
B
?__inference_BN5__layer_call_and_return_conditional_losses_85084inputs"П
ИВД
FullArgSpec
args

jinputs
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
гBа
)__inference_CNN_REL5__layer_call_fn_85089inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
D__inference_CNN_REL5__layer_call_and_return_conditional_losses_85094inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЯBЬ
%__inference_AVG1__layer_call_fn_85099inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ъBч
@__inference_AVG1__layer_call_and_return_conditional_losses_85107inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЯBЬ
%__inference_FLT1__layer_call_fn_85112inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ъBч
@__inference_FLT1__layer_call_and_return_conditional_losses_85118inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЯBЬ
%__inference_FC_1__layer_call_fn_85127inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ъBч
@__inference_FC_1__layer_call_and_return_conditional_losses_85137inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
оBл
'__inference_softmax_layer_call_fn_85142inputs"Ѕ
В
FullArgSpec
args
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љBі
B__inference_softmax_layer_call_and_return_conditional_losses_85147inputs"Ѕ
В
FullArgSpec
args
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
бBЮ
'__inference_flatten_layer_call_fn_85152inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
B__inference_flatten_layer_call_and_return_conditional_losses_85158inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
R
В	variables
Г	keras_api

Дtotal

Еcount"
_tf_keras_metric
c
Ж	variables
З	keras_api

Иtotal

Йcount
К
_fn_kwargs"
_tf_keras_metric
':% 2Adam/m/CNN0_/kernel
':% 2Adam/v/CNN0_/kernel
: 2Adam/m/CNN0_/bias
: 2Adam/v/CNN0_/bias
):' 2Adam/m/BN0_/custom_batch_beta
):' 2Adam/v/BN0_/custom_batch_beta
*:( 2Adam/m/BN0_/custom_batch_gamma
*:( 2Adam/v/BN0_/custom_batch_gamma
':% 02Adam/m/CNN1_/kernel
':% 02Adam/v/CNN1_/kernel
:02Adam/m/CNN1_/bias
:02Adam/v/CNN1_/bias
):'02Adam/m/BN1_/custom_batch_beta
):'02Adam/v/BN1_/custom_batch_beta
*:(02Adam/m/BN1_/custom_batch_gamma
*:(02Adam/v/BN1_/custom_batch_gamma
':%0@2Adam/m/CNN2_/kernel
':%0@2Adam/v/CNN2_/kernel
:@2Adam/m/CNN2_/bias
:@2Adam/v/CNN2_/bias
):'@2Adam/m/BN2_/custom_batch_beta
):'@2Adam/v/BN2_/custom_batch_beta
*:(@2Adam/m/BN2_/custom_batch_gamma
*:(@2Adam/v/BN2_/custom_batch_gamma
':%@`2Adam/m/CNN3_/kernel
':%@`2Adam/v/CNN3_/kernel
:`2Adam/m/CNN3_/bias
:`2Adam/v/CNN3_/bias
):'`2Adam/m/BN3_/custom_batch_beta
):'`2Adam/v/BN3_/custom_batch_beta
*:(`2Adam/m/BN3_/custom_batch_gamma
*:(`2Adam/v/BN3_/custom_batch_gamma
(:&`2Adam/m/CNN4_/kernel
(:&`2Adam/v/CNN4_/kernel
:2Adam/m/CNN4_/bias
:2Adam/v/CNN4_/bias
*:(2Adam/m/BN4_/custom_batch_beta
*:(2Adam/v/BN4_/custom_batch_beta
+:)2Adam/m/BN4_/custom_batch_gamma
+:)2Adam/v/BN4_/custom_batch_gamma
):'Р2Adam/m/CNN5_/kernel
):'Р2Adam/v/CNN5_/kernel
:Р2Adam/m/CNN5_/bias
:Р2Adam/v/CNN5_/bias
*:(Р2Adam/m/BN5_/custom_batch_beta
*:(Р2Adam/v/BN5_/custom_batch_beta
+:)Р2Adam/m/BN5_/custom_batch_gamma
+:)Р2Adam/v/BN5_/custom_batch_gamma
$:"	Р2Adam/m/FC_1_/kernel
$:"	Р2Adam/v/FC_1_/kernel
:2Adam/m/FC_1_/bias
:2Adam/v/FC_1_/bias
эBъ
"__inference__update_step_xla_49793gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_49798gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_49803gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_49808gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_49813gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_49818gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_49823gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_49828gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_49833gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_49838gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_49843gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_49848gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_49853gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_49858gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
0
Д0
Е1"
trackable_list_wrapper
.
В	variables"
_generic_user_object
:  (2total
:  (2count
0
И0
Й1"
trackable_list_wrapper
.
Ж	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperа
@__inference_AVG1__layer_call_and_return_conditional_losses_85107EЂB
;Ђ8
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "BЂ?
85
tensor_0'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Њ
%__inference_AVG1__layer_call_fn_85099EЂB
;Ђ8
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "74
unknown'џџџџџџџџџџџџџџџџџџџџџџџџџџџМ
?__inference_BN0__layer_call_and_return_conditional_losses_84755yDЂA
*Ђ'
%"
inputsџџџџџџџџџ 
Њ

trainingp"1Ђ.
'$
tensor_0џџџџџџџџџ 
 М
?__inference_BN0__layer_call_and_return_conditional_losses_84759yDЂA
*Ђ'
%"
inputsџџџџџџџџџ 
Њ

trainingp "1Ђ.
'$
tensor_0џџџџџџџџџ 
 
$__inference_BN0__layer_call_fn_84746nDЂA
*Ђ'
%"
inputsџџџџџџџџџ 
Њ

trainingp"&#
unknownџџџџџџџџџ 
$__inference_BN0__layer_call_fn_84751nDЂA
*Ђ'
%"
inputsџџџџџџџџџ 
Њ

trainingp "&#
unknownџџџџџџџџџ М
?__inference_BN1__layer_call_and_return_conditional_losses_84820yDЂA
*Ђ'
%"
inputsџџџџџџџџџ0
Њ

trainingp"1Ђ.
'$
tensor_0џџџџџџџџџ0
 М
?__inference_BN1__layer_call_and_return_conditional_losses_84824yDЂA
*Ђ'
%"
inputsџџџџџџџџџ0
Њ

trainingp "1Ђ.
'$
tensor_0џџџџџџџџџ0
 
$__inference_BN1__layer_call_fn_84811nDЂA
*Ђ'
%"
inputsџџџџџџџџџ0
Њ

trainingp"&#
unknownџџџџџџџџџ0
$__inference_BN1__layer_call_fn_84816nDЂA
*Ђ'
%"
inputsџџџџџџџџџ0
Њ

trainingp "&#
unknownџџџџџџџџџ0К
?__inference_BN2__layer_call_and_return_conditional_losses_84885wCЂ@
)Ђ&
$!
inputsџџџџџџџџџ@@
Њ

trainingp"0Ђ-
&#
tensor_0џџџџџџџџџ@@
 К
?__inference_BN2__layer_call_and_return_conditional_losses_84889wCЂ@
)Ђ&
$!
inputsџџџџџџџџџ@@
Њ

trainingp "0Ђ-
&#
tensor_0џџџџџџџџџ@@
 
$__inference_BN2__layer_call_fn_84876lCЂ@
)Ђ&
$!
inputsџџџџџџџџџ@@
Њ

trainingp"%"
unknownџџџџџџџџџ@@
$__inference_BN2__layer_call_fn_84881lCЂ@
)Ђ&
$!
inputsџџџџџџџџџ@@
Њ

trainingp "%"
unknownџџџџџџџџџ@@К
?__inference_BN3__layer_call_and_return_conditional_losses_84950wCЂ@
)Ђ&
$!
inputsџџџџџџџџџ@`
Њ

trainingp"0Ђ-
&#
tensor_0џџџџџџџџџ@`
 К
?__inference_BN3__layer_call_and_return_conditional_losses_84954wCЂ@
)Ђ&
$!
inputsџџџџџџџџџ@`
Њ

trainingp "0Ђ-
&#
tensor_0џџџџџџџџџ@`
 
$__inference_BN3__layer_call_fn_84941lCЂ@
)Ђ&
$!
inputsџџџџџџџџџ@`
Њ

trainingp"%"
unknownџџџџџџџџџ@`
$__inference_BN3__layer_call_fn_84946lCЂ@
)Ђ&
$!
inputsџџџџџџџџџ@`
Њ

trainingp "%"
unknownџџџџџџџџџ@`М
?__inference_BN4__layer_call_and_return_conditional_losses_85015yDЂA
*Ђ'
%"
inputsџџџџџџџџџ 
Њ

trainingp"1Ђ.
'$
tensor_0џџџџџџџџџ 
 М
?__inference_BN4__layer_call_and_return_conditional_losses_85019yDЂA
*Ђ'
%"
inputsџџџџџџџџџ 
Њ

trainingp "1Ђ.
'$
tensor_0џџџџџџџџџ 
 
$__inference_BN4__layer_call_fn_85006nDЂA
*Ђ'
%"
inputsџџџџџџџџџ 
Њ

trainingp"&#
unknownџџџџџџџџџ 
$__inference_BN4__layer_call_fn_85011nDЂA
*Ђ'
%"
inputsџџџџџџџџџ 
Њ

trainingp "&#
unknownџџџџџџџџџ М
?__inference_BN5__layer_call_and_return_conditional_losses_85080yDЂA
*Ђ'
%"
inputsџџџџџџџџџ Р
Њ

trainingp"1Ђ.
'$
tensor_0џџџџџџџџџ Р
 М
?__inference_BN5__layer_call_and_return_conditional_losses_85084yDЂA
*Ђ'
%"
inputsџџџџџџџџџ Р
Њ

trainingp "1Ђ.
'$
tensor_0џџџџџџџџџ Р
 
$__inference_BN5__layer_call_fn_85071nDЂA
*Ђ'
%"
inputsџџџџџџџџџ Р
Њ

trainingp"&#
unknownџџџџџџџџџ Р
$__inference_BN5__layer_call_fn_85076nDЂA
*Ђ'
%"
inputsџџџџџџџџџ Р
Њ

trainingp "&#
unknownџџџџџџџџџ РБ
@__inference_CNN0__layer_call_and_return_conditional_losses_84728m./4Ђ1
*Ђ'
%"
inputsџџџџџџџџџ
Њ "1Ђ.
'$
tensor_0џџџџџџџџџ 
 
%__inference_CNN0__layer_call_fn_84713b./4Ђ1
*Ђ'
%"
inputsџџџџџџџџџ
Њ "&#
unknownџџџџџџџџџ Б
@__inference_CNN1__layer_call_and_return_conditional_losses_84793mMN4Ђ1
*Ђ'
%"
inputsџџџџџџџџџ 
Њ "1Ђ.
'$
tensor_0џџџџџџџџџ0
 
%__inference_CNN1__layer_call_fn_84778bMN4Ђ1
*Ђ'
%"
inputsџџџџџџџџџ 
Њ "&#
unknownџџџџџџџџџ0Б
@__inference_CNN2__layer_call_and_return_conditional_losses_84858mlm4Ђ1
*Ђ'
%"
inputsџџџџџџџџџ0
Њ "1Ђ.
'$
tensor_0џџџџџџџџџ@
 
%__inference_CNN2__layer_call_fn_84843blm4Ђ1
*Ђ'
%"
inputsџџџџџџџџџ0
Њ "&#
unknownџџџџџџџџџ@Б
@__inference_CNN3__layer_call_and_return_conditional_losses_84923m3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ@@
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ@`
 
%__inference_CNN3__layer_call_fn_84908b3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ@@
Њ "%"
unknownџџџџџџџџџ@`В
@__inference_CNN4__layer_call_and_return_conditional_losses_84988nЊЋ3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ@`
Њ "1Ђ.
'$
tensor_0џџџџџџџџџ@
 
%__inference_CNN4__layer_call_fn_84973cЊЋ3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ@`
Њ "&#
unknownџџџџџџџџџ@Г
@__inference_CNN5__layer_call_and_return_conditional_losses_85053oЩЪ4Ђ1
*Ђ'
%"
inputsџџџџџџџџџ 
Њ "1Ђ.
'$
tensor_0џџџџџџџџџ Р
 
%__inference_CNN5__layer_call_fn_85038dЩЪ4Ђ1
*Ђ'
%"
inputsџџџџџџџџџ 
Њ "&#
unknownџџџџџџџџџ РБ
D__inference_CNN_REL0__layer_call_and_return_conditional_losses_84769i4Ђ1
*Ђ'
%"
inputsџџџџџџџџџ 
Њ "1Ђ.
'$
tensor_0џџџџџџџџџ 
 
)__inference_CNN_REL0__layer_call_fn_84764^4Ђ1
*Ђ'
%"
inputsџџџџџџџџџ 
Њ "&#
unknownџџџџџџџџџ Б
D__inference_CNN_REL1__layer_call_and_return_conditional_losses_84834i4Ђ1
*Ђ'
%"
inputsџџџџџџџџџ0
Њ "1Ђ.
'$
tensor_0џџџџџџџџџ0
 
)__inference_CNN_REL1__layer_call_fn_84829^4Ђ1
*Ђ'
%"
inputsџџџџџџџџџ0
Њ "&#
unknownџџџџџџџџџ0Џ
D__inference_CNN_REL2__layer_call_and_return_conditional_losses_84899g3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ@@
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ@@
 
)__inference_CNN_REL2__layer_call_fn_84894\3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ@@
Њ "%"
unknownџџџџџџџџџ@@Џ
D__inference_CNN_REL3__layer_call_and_return_conditional_losses_84964g3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ@`
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ@`
 
)__inference_CNN_REL3__layer_call_fn_84959\3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ@`
Њ "%"
unknownџџџџџџџџџ@`Б
D__inference_CNN_REL4__layer_call_and_return_conditional_losses_85029i4Ђ1
*Ђ'
%"
inputsџџџџџџџџџ 
Њ "1Ђ.
'$
tensor_0џџџџџџџџџ 
 
)__inference_CNN_REL4__layer_call_fn_85024^4Ђ1
*Ђ'
%"
inputsџџџџџџџџџ 
Њ "&#
unknownџџџџџџџџџ Б
D__inference_CNN_REL5__layer_call_and_return_conditional_losses_85094i4Ђ1
*Ђ'
%"
inputsџџџџџџџџџ Р
Њ "1Ђ.
'$
tensor_0џџџџџџџџџ Р
 
)__inference_CNN_REL5__layer_call_fn_85089^4Ђ1
*Ђ'
%"
inputsџџџџџџџџџ Р
Њ "&#
unknownџџџџџџџџџ РЊ
@__inference_FC_1__layer_call_and_return_conditional_losses_85137fєѕ0Ђ-
&Ђ#
!
inputsџџџџџџџџџР
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
%__inference_FC_1__layer_call_fn_85127[єѕ0Ђ-
&Ђ#
!
inputsџџџџџџџџџР
Њ "!
unknownџџџџџџџџџЉ
@__inference_FLT1__layer_call_and_return_conditional_losses_85118e4Ђ1
*Ђ'
%"
inputsџџџџџџџџџР
Њ "-Ђ*
# 
tensor_0џџџџџџџџџР
 
%__inference_FLT1__layer_call_fn_85112Z4Ђ1
*Ђ'
%"
inputsџџџџџџџџџР
Њ ""
unknownџџџџџџџџџРж
F__inference_MAX_POOL_0__layer_call_and_return_conditional_losses_84741EЂB
;Ђ8
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "BЂ?
85
tensor_0'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 А
+__inference_MAX_POOL_0__layer_call_fn_84733EЂB
;Ђ8
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "74
unknown'џџџџџџџџџџџџџџџџџџџџџџџџџџџж
F__inference_MAX_POOL_1__layer_call_and_return_conditional_losses_84806EЂB
;Ђ8
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "BЂ?
85
tensor_0'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 А
+__inference_MAX_POOL_1__layer_call_fn_84798EЂB
;Ђ8
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "74
unknown'џџџџџџџџџџџџџџџџџџџџџџџџџџџж
F__inference_MAX_POOL_2__layer_call_and_return_conditional_losses_84871EЂB
;Ђ8
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "BЂ?
85
tensor_0'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 А
+__inference_MAX_POOL_2__layer_call_fn_84863EЂB
;Ђ8
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "74
unknown'џџџџџџџџџџџџџџџџџџџџџџџџџџџж
F__inference_MAX_POOL_3__layer_call_and_return_conditional_losses_84936EЂB
;Ђ8
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "BЂ?
85
tensor_0'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 А
+__inference_MAX_POOL_3__layer_call_fn_84928EЂB
;Ђ8
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "74
unknown'џџџџџџџџџџџџџџџџџџџџџџџџџџџж
F__inference_MAX_POOL_4__layer_call_and_return_conditional_losses_85001EЂB
;Ђ8
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "BЂ?
85
tensor_0'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 А
+__inference_MAX_POOL_4__layer_call_fn_84993EЂB
;Ђ8
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "74
unknown'џџџџџџџџџџџџџџџџџџџџџџџџџџџж
F__inference_MAX_POOL_5__layer_call_and_return_conditional_losses_85066EЂB
;Ђ8
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "BЂ?
85
tensor_0'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 А
+__inference_MAX_POOL_5__layer_call_fn_85058EЂB
;Ђ8
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "74
unknown'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
"__inference__update_step_xla_49793vpЂm
fЂc

gradient 
85	!Ђ
њ 

p
` VariableSpec 
`рЖЌЇЇШ?
Њ "
 
"__inference__update_step_xla_49798f`Ђ]
VЂS

gradient 
0-	Ђ
њ 

p
` VariableSpec 
`рЗКЇЇШ?
Њ "
 
"__inference__update_step_xla_49803vpЂm
fЂc

gradient 0
85	!Ђ
њ 0

p
` VariableSpec 
`рйщЁШ?
Њ "
 
"__inference__update_step_xla_49808f`Ђ]
VЂS

gradient0
0-	Ђ
њ0

p
` VariableSpec 
`рсщЁШ?
Њ "
 
"__inference__update_step_xla_49813vpЂm
fЂc

gradient0@
85	!Ђ
њ0@

p
` VariableSpec 
`ршЁШ?
Њ "
 
"__inference__update_step_xla_49818f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
`рВЁШ?
Њ "
 
"__inference__update_step_xla_49823vpЂm
fЂc

gradient@`
85	!Ђ
њ@`

p
` VariableSpec 
`щЁШ?
Њ "
 
"__inference__update_step_xla_49828f`Ђ]
VЂS

gradient`
0-	Ђ
њ`

p
` VariableSpec 
`рИЁШ?
Њ "
 
"__inference__update_step_xla_49833xrЂo
hЂe

gradient`
96	"Ђ
њ`

p
` VariableSpec 
`рЛЁШ?
Њ "
 
"__inference__update_step_xla_49838hbЂ_
XЂU

gradient
1.	Ђ
њ

p
` VariableSpec 
`рїНЁШ?
Њ "
  
"__inference__update_step_xla_49843ztЂq
jЂg

gradientР
:7	#Ђ 
њР

p
` VariableSpec 
`РилЁШ?
Њ "
 
"__inference__update_step_xla_49848hbЂ_
XЂU

gradientР
1.	Ђ
њР

p
` VariableSpec 
`рХЁШ?
Њ "
 
"__inference__update_step_xla_49853pjЂg
`Ђ]

gradient	Р
52	Ђ
њ	Р

p
` VariableSpec 
`РСЁШ?
Њ "
 
"__inference__update_step_xla_49858f`Ђ]
VЂS

gradient
0-	Ђ
њ

p
` VariableSpec 
`ршЬЁШ?
Њ "
 Ї
 __inference__wrapped_model_83481./MNlmЊЋЩЪєѕ5Ђ2
+Ђ(
&#
input_1џџџџџџџџџ
Њ "1Њ.
,
flatten!
flattenџџџџџџџџџЅ
B__inference_flatten_layer_call_and_return_conditional_losses_85158_/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
'__inference_flatten_layer_call_fn_85152T/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "!
unknownџџџџџџџџџЪ
@__inference_model_layer_call_and_return_conditional_losses_83841./MNlmЊЋЩЪєѕ=Ђ:
3Ђ0
&#
input_1џџџџџџџџџ
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Ъ
@__inference_model_layer_call_and_return_conditional_losses_83926./MNlmЊЋЩЪєѕ=Ђ:
3Ђ0
&#
input_1џџџџџџџџџ
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Щ
@__inference_model_layer_call_and_return_conditional_losses_84589./MNlmЊЋЩЪєѕ<Ђ9
2Ђ/
%"
inputsџџџџџџџџџ
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Щ
@__inference_model_layer_call_and_return_conditional_losses_84704./MNlmЊЋЩЪєѕ<Ђ9
2Ђ/
%"
inputsџџџџџџџџџ
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Ѓ
%__inference_model_layer_call_fn_84021z./MNlmЊЋЩЪєѕ=Ђ:
3Ђ0
&#
input_1џџџџџџџџџ
p

 
Њ "!
unknownџџџџџџџџџЃ
%__inference_model_layer_call_fn_84115z./MNlmЊЋЩЪєѕ=Ђ:
3Ђ0
&#
input_1џџџџџџџџџ
p 

 
Њ "!
unknownџџџџџџџџџЂ
%__inference_model_layer_call_fn_84441y./MNlmЊЋЩЪєѕ<Ђ9
2Ђ/
%"
inputsџџџџџџџџџ
p

 
Њ "!
unknownџџџџџџџџџЂ
%__inference_model_layer_call_fn_84474y./MNlmЊЋЩЪєѕ<Ђ9
2Ђ/
%"
inputsџџџџџџџџџ
p 

 
Њ "!
unknownџџџџџџџџџЕ
#__inference_signature_wrapper_84408./MNlmЊЋЩЪєѕ@Ђ=
Ђ 
6Њ3
1
input_1&#
input_1џџџџџџџџџ"1Њ.
,
flatten!
flattenџџџџџџџџџЉ
B__inference_softmax_layer_call_and_return_conditional_losses_85147c3Ђ0
)Ђ&
 
inputsџџџџџџџџџ

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
'__inference_softmax_layer_call_fn_85142X3Ђ0
)Ђ&
 
inputsџџџџџџџџџ

 
Њ "!
unknownџџџџџџџџџ