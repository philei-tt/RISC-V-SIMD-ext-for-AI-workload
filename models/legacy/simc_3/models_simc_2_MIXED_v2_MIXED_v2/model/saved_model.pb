Њ"
Ѕє
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
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
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
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
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
-
Sqrt
x"T
y"T"
Ttype:

2
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58К
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
x
Adam/v/FC1_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/v/FC1_/bias
q
$Adam/v/FC1_/bias/Read/ReadVariableOpReadVariableOpAdam/v/FC1_/bias*
_output_shapes
:*
dtype0
x
Adam/m/FC1_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/m/FC1_/bias
q
$Adam/m/FC1_/bias/Read/ReadVariableOpReadVariableOpAdam/m/FC1_/bias*
_output_shapes
:*
dtype0

Adam/v/FC1_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Р*#
shared_nameAdam/v/FC1_/kernel
z
&Adam/v/FC1_/kernel/Read/ReadVariableOpReadVariableOpAdam/v/FC1_/kernel*
_output_shapes
:	Р*
dtype0

Adam/m/FC1_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Р*#
shared_nameAdam/m/FC1_/kernel
z
&Adam/m/FC1_/kernel/Read/ReadVariableOpReadVariableOpAdam/m/FC1_/kernel*
_output_shapes
:	Р*
dtype0

Adam/v/BN6_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*/
shared_name Adam/v/BN6_/custom_batch_gamma

2Adam/v/BN6_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpAdam/v/BN6_/custom_batch_gamma*
_output_shapes	
:Р*
dtype0

Adam/m/BN6_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*/
shared_name Adam/m/BN6_/custom_batch_gamma

2Adam/m/BN6_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpAdam/m/BN6_/custom_batch_gamma*
_output_shapes	
:Р*
dtype0

Adam/v/BN6_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*.
shared_nameAdam/v/BN6_/custom_batch_beta

1Adam/v/BN6_/custom_batch_beta/Read/ReadVariableOpReadVariableOpAdam/v/BN6_/custom_batch_beta*
_output_shapes	
:Р*
dtype0

Adam/m/BN6_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*.
shared_nameAdam/m/BN6_/custom_batch_beta

1Adam/m/BN6_/custom_batch_beta/Read/ReadVariableOpReadVariableOpAdam/m/BN6_/custom_batch_beta*
_output_shapes	
:Р*
dtype0
{
Adam/v/CNN6_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*"
shared_nameAdam/v/CNN6_/bias
t
%Adam/v/CNN6_/bias/Read/ReadVariableOpReadVariableOpAdam/v/CNN6_/bias*
_output_shapes	
:Р*
dtype0
{
Adam/m/CNN6_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*"
shared_nameAdam/m/CNN6_/bias
t
%Adam/m/CNN6_/bias/Read/ReadVariableOpReadVariableOpAdam/m/CNN6_/bias*
_output_shapes	
:Р*
dtype0

Adam/v/CNN6_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*$
shared_nameAdam/v/CNN6_/kernel

'Adam/v/CNN6_/kernel/Read/ReadVariableOpReadVariableOpAdam/v/CNN6_/kernel*(
_output_shapes
:Р*
dtype0

Adam/m/CNN6_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*$
shared_nameAdam/m/CNN6_/kernel

'Adam/m/CNN6_/kernel/Read/ReadVariableOpReadVariableOpAdam/m/CNN6_/kernel*(
_output_shapes
:Р*
dtype0

Adam/v/BN5_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/v/BN5_/custom_batch_gamma

2Adam/v/BN5_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpAdam/v/BN5_/custom_batch_gamma*
_output_shapes	
:*
dtype0

Adam/m/BN5_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/m/BN5_/custom_batch_gamma

2Adam/m/BN5_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpAdam/m/BN5_/custom_batch_gamma*
_output_shapes	
:*
dtype0

Adam/v/BN5_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameAdam/v/BN5_/custom_batch_beta

1Adam/v/BN5_/custom_batch_beta/Read/ReadVariableOpReadVariableOpAdam/v/BN5_/custom_batch_beta*
_output_shapes	
:*
dtype0

Adam/m/BN5_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameAdam/m/BN5_/custom_batch_beta

1Adam/m/BN5_/custom_batch_beta/Read/ReadVariableOpReadVariableOpAdam/m/BN5_/custom_batch_beta*
_output_shapes	
:*
dtype0
{
Adam/v/CNN5_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/v/CNN5_/bias
t
%Adam/v/CNN5_/bias/Read/ReadVariableOpReadVariableOpAdam/v/CNN5_/bias*
_output_shapes	
:*
dtype0
{
Adam/m/CNN5_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/m/CNN5_/bias
t
%Adam/m/CNN5_/bias/Read/ReadVariableOpReadVariableOpAdam/m/CNN5_/bias*
_output_shapes	
:*
dtype0

Adam/v/CNN5_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*$
shared_nameAdam/v/CNN5_/kernel

'Adam/v/CNN5_/kernel/Read/ReadVariableOpReadVariableOpAdam/v/CNN5_/kernel*'
_output_shapes
:`*
dtype0

Adam/m/CNN5_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*$
shared_nameAdam/m/CNN5_/kernel

'Adam/m/CNN5_/kernel/Read/ReadVariableOpReadVariableOpAdam/m/CNN5_/kernel*'
_output_shapes
:`*
dtype0

Adam/v/BN4_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*/
shared_name Adam/v/BN4_/custom_batch_gamma

2Adam/v/BN4_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpAdam/v/BN4_/custom_batch_gamma*
_output_shapes
:`*
dtype0

Adam/m/BN4_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*/
shared_name Adam/m/BN4_/custom_batch_gamma

2Adam/m/BN4_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpAdam/m/BN4_/custom_batch_gamma*
_output_shapes
:`*
dtype0

Adam/v/BN4_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*.
shared_nameAdam/v/BN4_/custom_batch_beta

1Adam/v/BN4_/custom_batch_beta/Read/ReadVariableOpReadVariableOpAdam/v/BN4_/custom_batch_beta*
_output_shapes
:`*
dtype0

Adam/m/BN4_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*.
shared_nameAdam/m/BN4_/custom_batch_beta

1Adam/m/BN4_/custom_batch_beta/Read/ReadVariableOpReadVariableOpAdam/m/BN4_/custom_batch_beta*
_output_shapes
:`*
dtype0
z
Adam/v/CNN4_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*"
shared_nameAdam/v/CNN4_/bias
s
%Adam/v/CNN4_/bias/Read/ReadVariableOpReadVariableOpAdam/v/CNN4_/bias*
_output_shapes
:`*
dtype0
z
Adam/m/CNN4_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*"
shared_nameAdam/m/CNN4_/bias
s
%Adam/m/CNN4_/bias/Read/ReadVariableOpReadVariableOpAdam/m/CNN4_/bias*
_output_shapes
:`*
dtype0

Adam/v/CNN4_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@`*$
shared_nameAdam/v/CNN4_/kernel

'Adam/v/CNN4_/kernel/Read/ReadVariableOpReadVariableOpAdam/v/CNN4_/kernel*&
_output_shapes
:@`*
dtype0

Adam/m/CNN4_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@`*$
shared_nameAdam/m/CNN4_/kernel

'Adam/m/CNN4_/kernel/Read/ReadVariableOpReadVariableOpAdam/m/CNN4_/kernel*&
_output_shapes
:@`*
dtype0

Adam/v/BN3_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/v/BN3_/custom_batch_gamma

2Adam/v/BN3_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpAdam/v/BN3_/custom_batch_gamma*
_output_shapes
:@*
dtype0

Adam/m/BN3_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/m/BN3_/custom_batch_gamma

2Adam/m/BN3_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpAdam/m/BN3_/custom_batch_gamma*
_output_shapes
:@*
dtype0

Adam/v/BN3_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nameAdam/v/BN3_/custom_batch_beta

1Adam/v/BN3_/custom_batch_beta/Read/ReadVariableOpReadVariableOpAdam/v/BN3_/custom_batch_beta*
_output_shapes
:@*
dtype0

Adam/m/BN3_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nameAdam/m/BN3_/custom_batch_beta

1Adam/m/BN3_/custom_batch_beta/Read/ReadVariableOpReadVariableOpAdam/m/BN3_/custom_batch_beta*
_output_shapes
:@*
dtype0
z
Adam/v/CNN3_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/v/CNN3_/bias
s
%Adam/v/CNN3_/bias/Read/ReadVariableOpReadVariableOpAdam/v/CNN3_/bias*
_output_shapes
:@*
dtype0
z
Adam/m/CNN3_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/m/CNN3_/bias
s
%Adam/m/CNN3_/bias/Read/ReadVariableOpReadVariableOpAdam/m/CNN3_/bias*
_output_shapes
:@*
dtype0

Adam/v/CNN3_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0@*$
shared_nameAdam/v/CNN3_/kernel

'Adam/v/CNN3_/kernel/Read/ReadVariableOpReadVariableOpAdam/v/CNN3_/kernel*&
_output_shapes
:0@*
dtype0

Adam/m/CNN3_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0@*$
shared_nameAdam/m/CNN3_/kernel

'Adam/m/CNN3_/kernel/Read/ReadVariableOpReadVariableOpAdam/m/CNN3_/kernel*&
_output_shapes
:0@*
dtype0

Adam/v/BN2_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*/
shared_name Adam/v/BN2_/custom_batch_gamma

2Adam/v/BN2_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpAdam/v/BN2_/custom_batch_gamma*
_output_shapes
:0*
dtype0

Adam/m/BN2_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*/
shared_name Adam/m/BN2_/custom_batch_gamma

2Adam/m/BN2_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpAdam/m/BN2_/custom_batch_gamma*
_output_shapes
:0*
dtype0

Adam/v/BN2_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*.
shared_nameAdam/v/BN2_/custom_batch_beta

1Adam/v/BN2_/custom_batch_beta/Read/ReadVariableOpReadVariableOpAdam/v/BN2_/custom_batch_beta*
_output_shapes
:0*
dtype0

Adam/m/BN2_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*.
shared_nameAdam/m/BN2_/custom_batch_beta

1Adam/m/BN2_/custom_batch_beta/Read/ReadVariableOpReadVariableOpAdam/m/BN2_/custom_batch_beta*
_output_shapes
:0*
dtype0
z
Adam/v/CNN2_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*"
shared_nameAdam/v/CNN2_/bias
s
%Adam/v/CNN2_/bias/Read/ReadVariableOpReadVariableOpAdam/v/CNN2_/bias*
_output_shapes
:0*
dtype0
z
Adam/m/CNN2_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*"
shared_nameAdam/m/CNN2_/bias
s
%Adam/m/CNN2_/bias/Read/ReadVariableOpReadVariableOpAdam/m/CNN2_/bias*
_output_shapes
:0*
dtype0

Adam/v/CNN2_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*$
shared_nameAdam/v/CNN2_/kernel

'Adam/v/CNN2_/kernel/Read/ReadVariableOpReadVariableOpAdam/v/CNN2_/kernel*&
_output_shapes
: 0*
dtype0

Adam/m/CNN2_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*$
shared_nameAdam/m/CNN2_/kernel

'Adam/m/CNN2_/kernel/Read/ReadVariableOpReadVariableOpAdam/m/CNN2_/kernel*&
_output_shapes
: 0*
dtype0

Adam/v/BN1_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/v/BN1_/custom_batch_gamma

2Adam/v/BN1_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpAdam/v/BN1_/custom_batch_gamma*
_output_shapes
: *
dtype0

Adam/m/BN1_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/m/BN1_/custom_batch_gamma

2Adam/m/BN1_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpAdam/m/BN1_/custom_batch_gamma*
_output_shapes
: *
dtype0

Adam/v/BN1_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/v/BN1_/custom_batch_beta

1Adam/v/BN1_/custom_batch_beta/Read/ReadVariableOpReadVariableOpAdam/v/BN1_/custom_batch_beta*
_output_shapes
: *
dtype0

Adam/m/BN1_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/m/BN1_/custom_batch_beta

1Adam/m/BN1_/custom_batch_beta/Read/ReadVariableOpReadVariableOpAdam/m/BN1_/custom_batch_beta*
_output_shapes
: *
dtype0
z
Adam/v/CNN1_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/v/CNN1_/bias
s
%Adam/v/CNN1_/bias/Read/ReadVariableOpReadVariableOpAdam/v/CNN1_/bias*
_output_shapes
: *
dtype0
z
Adam/m/CNN1_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/m/CNN1_/bias
s
%Adam/m/CNN1_/bias/Read/ReadVariableOpReadVariableOpAdam/m/CNN1_/bias*
_output_shapes
: *
dtype0

Adam/v/CNN1_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/v/CNN1_/kernel

'Adam/v/CNN1_/kernel/Read/ReadVariableOpReadVariableOpAdam/v/CNN1_/kernel*&
_output_shapes
: *
dtype0

Adam/m/CNN1_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/m/CNN1_/kernel

'Adam/m/CNN1_/kernel/Read/ReadVariableOpReadVariableOpAdam/m/CNN1_/kernel*&
_output_shapes
: *
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
j
	FC1_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	FC1_/bias
c
FC1_/bias/Read/ReadVariableOpReadVariableOp	FC1_/bias*
_output_shapes
:*
dtype0
s
FC1_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Р*
shared_nameFC1_/kernel
l
FC1_/kernel/Read/ReadVariableOpReadVariableOpFC1_/kernel*
_output_shapes
:	Р*
dtype0

!BN6_/custom_batch_moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*2
shared_name#!BN6_/custom_batch_moving_variance

5BN6_/custom_batch_moving_variance/Read/ReadVariableOpReadVariableOp!BN6_/custom_batch_moving_variance*
_output_shapes	
:Р*
dtype0

BN6_/custom_batch_moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*.
shared_nameBN6_/custom_batch_moving_mean

1BN6_/custom_batch_moving_mean/Read/ReadVariableOpReadVariableOpBN6_/custom_batch_moving_mean*
_output_shapes	
:Р*
dtype0

BN6_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*(
shared_nameBN6_/custom_batch_gamma

+BN6_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpBN6_/custom_batch_gamma*
_output_shapes	
:Р*
dtype0

BN6_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*'
shared_nameBN6_/custom_batch_beta
~
*BN6_/custom_batch_beta/Read/ReadVariableOpReadVariableOpBN6_/custom_batch_beta*
_output_shapes	
:Р*
dtype0
m

CNN6_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*
shared_name
CNN6_/bias
f
CNN6_/bias/Read/ReadVariableOpReadVariableOp
CNN6_/bias*
_output_shapes	
:Р*
dtype0
~
CNN6_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*
shared_nameCNN6_/kernel
w
 CNN6_/kernel/Read/ReadVariableOpReadVariableOpCNN6_/kernel*(
_output_shapes
:Р*
dtype0

!BN5_/custom_batch_moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!BN5_/custom_batch_moving_variance

5BN5_/custom_batch_moving_variance/Read/ReadVariableOpReadVariableOp!BN5_/custom_batch_moving_variance*
_output_shapes	
:*
dtype0

BN5_/custom_batch_moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameBN5_/custom_batch_moving_mean

1BN5_/custom_batch_moving_mean/Read/ReadVariableOpReadVariableOpBN5_/custom_batch_moving_mean*
_output_shapes	
:*
dtype0

BN5_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameBN5_/custom_batch_gamma

+BN5_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpBN5_/custom_batch_gamma*
_output_shapes	
:*
dtype0

BN5_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameBN5_/custom_batch_beta
~
*BN5_/custom_batch_beta/Read/ReadVariableOpReadVariableOpBN5_/custom_batch_beta*
_output_shapes	
:*
dtype0
m

CNN5_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
CNN5_/bias
f
CNN5_/bias/Read/ReadVariableOpReadVariableOp
CNN5_/bias*
_output_shapes	
:*
dtype0
}
CNN5_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*
shared_nameCNN5_/kernel
v
 CNN5_/kernel/Read/ReadVariableOpReadVariableOpCNN5_/kernel*'
_output_shapes
:`*
dtype0

!BN4_/custom_batch_moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*2
shared_name#!BN4_/custom_batch_moving_variance

5BN4_/custom_batch_moving_variance/Read/ReadVariableOpReadVariableOp!BN4_/custom_batch_moving_variance*
_output_shapes
:`*
dtype0

BN4_/custom_batch_moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*.
shared_nameBN4_/custom_batch_moving_mean

1BN4_/custom_batch_moving_mean/Read/ReadVariableOpReadVariableOpBN4_/custom_batch_moving_mean*
_output_shapes
:`*
dtype0

BN4_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*(
shared_nameBN4_/custom_batch_gamma

+BN4_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpBN4_/custom_batch_gamma*
_output_shapes
:`*
dtype0

BN4_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*'
shared_nameBN4_/custom_batch_beta
}
*BN4_/custom_batch_beta/Read/ReadVariableOpReadVariableOpBN4_/custom_batch_beta*
_output_shapes
:`*
dtype0
l

CNN4_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*
shared_name
CNN4_/bias
e
CNN4_/bias/Read/ReadVariableOpReadVariableOp
CNN4_/bias*
_output_shapes
:`*
dtype0
|
CNN4_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@`*
shared_nameCNN4_/kernel
u
 CNN4_/kernel/Read/ReadVariableOpReadVariableOpCNN4_/kernel*&
_output_shapes
:@`*
dtype0

!BN3_/custom_batch_moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!BN3_/custom_batch_moving_variance

5BN3_/custom_batch_moving_variance/Read/ReadVariableOpReadVariableOp!BN3_/custom_batch_moving_variance*
_output_shapes
:@*
dtype0

BN3_/custom_batch_moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nameBN3_/custom_batch_moving_mean

1BN3_/custom_batch_moving_mean/Read/ReadVariableOpReadVariableOpBN3_/custom_batch_moving_mean*
_output_shapes
:@*
dtype0

BN3_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameBN3_/custom_batch_gamma

+BN3_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpBN3_/custom_batch_gamma*
_output_shapes
:@*
dtype0

BN3_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameBN3_/custom_batch_beta
}
*BN3_/custom_batch_beta/Read/ReadVariableOpReadVariableOpBN3_/custom_batch_beta*
_output_shapes
:@*
dtype0
l

CNN3_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
CNN3_/bias
e
CNN3_/bias/Read/ReadVariableOpReadVariableOp
CNN3_/bias*
_output_shapes
:@*
dtype0
|
CNN3_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0@*
shared_nameCNN3_/kernel
u
 CNN3_/kernel/Read/ReadVariableOpReadVariableOpCNN3_/kernel*&
_output_shapes
:0@*
dtype0

!BN2_/custom_batch_moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*2
shared_name#!BN2_/custom_batch_moving_variance

5BN2_/custom_batch_moving_variance/Read/ReadVariableOpReadVariableOp!BN2_/custom_batch_moving_variance*
_output_shapes
:0*
dtype0

BN2_/custom_batch_moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*.
shared_nameBN2_/custom_batch_moving_mean

1BN2_/custom_batch_moving_mean/Read/ReadVariableOpReadVariableOpBN2_/custom_batch_moving_mean*
_output_shapes
:0*
dtype0

BN2_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*(
shared_nameBN2_/custom_batch_gamma

+BN2_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpBN2_/custom_batch_gamma*
_output_shapes
:0*
dtype0

BN2_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameBN2_/custom_batch_beta
}
*BN2_/custom_batch_beta/Read/ReadVariableOpReadVariableOpBN2_/custom_batch_beta*
_output_shapes
:0*
dtype0
l

CNN2_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_name
CNN2_/bias
e
CNN2_/bias/Read/ReadVariableOpReadVariableOp
CNN2_/bias*
_output_shapes
:0*
dtype0
|
CNN2_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*
shared_nameCNN2_/kernel
u
 CNN2_/kernel/Read/ReadVariableOpReadVariableOpCNN2_/kernel*&
_output_shapes
: 0*
dtype0

!BN1_/custom_batch_moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!BN1_/custom_batch_moving_variance

5BN1_/custom_batch_moving_variance/Read/ReadVariableOpReadVariableOp!BN1_/custom_batch_moving_variance*
_output_shapes
: *
dtype0

BN1_/custom_batch_moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameBN1_/custom_batch_moving_mean

1BN1_/custom_batch_moving_mean/Read/ReadVariableOpReadVariableOpBN1_/custom_batch_moving_mean*
_output_shapes
: *
dtype0

BN1_/custom_batch_gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameBN1_/custom_batch_gamma

+BN1_/custom_batch_gamma/Read/ReadVariableOpReadVariableOpBN1_/custom_batch_gamma*
_output_shapes
: *
dtype0

BN1_/custom_batch_betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameBN1_/custom_batch_beta
}
*BN1_/custom_batch_beta/Read/ReadVariableOpReadVariableOpBN1_/custom_batch_beta*
_output_shapes
: *
dtype0
l

CNN1_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
CNN1_/bias
e
CNN1_/bias/Read/ReadVariableOpReadVariableOp
CNN1_/bias*
_output_shapes
: *
dtype0
|
CNN1_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameCNN1_/kernel
u
 CNN1_/kernel/Read/ReadVariableOpReadVariableOpCNN1_/kernel*&
_output_shapes
: *
dtype0

serving_default_input_1Placeholder*0
_output_shapes
:џџџџџџџџџ*
dtype0*%
shape:џџџџџџџџџ
ч	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1CNN1_/kernel
CNN1_/biasBN1_/custom_batch_moving_mean!BN1_/custom_batch_moving_varianceBN1_/custom_batch_gammaBN1_/custom_batch_betaCNN2_/kernel
CNN2_/biasBN2_/custom_batch_moving_mean!BN2_/custom_batch_moving_varianceBN2_/custom_batch_gammaBN2_/custom_batch_betaCNN3_/kernel
CNN3_/biasBN3_/custom_batch_moving_mean!BN3_/custom_batch_moving_varianceBN3_/custom_batch_gammaBN3_/custom_batch_betaCNN4_/kernel
CNN4_/biasBN4_/custom_batch_moving_mean!BN4_/custom_batch_moving_varianceBN4_/custom_batch_gammaBN4_/custom_batch_betaCNN5_/kernel
CNN5_/biasBN5_/custom_batch_moving_mean!BN5_/custom_batch_moving_varianceBN5_/custom_batch_gammaBN5_/custom_batch_betaCNN6_/kernel
CNN6_/biasBN6_/custom_batch_moving_mean!BN6_/custom_batch_moving_varianceBN6_/custom_batch_gammaBN6_/custom_batch_betaFC1_/kernel	FC1_/bias*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_161984

NoOpNoOp
Нё
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ї№
valueь№Bш№ Bр№
­
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer-11
layer-12
layer_with_weights-6
layer-13
layer_with_weights-7
layer-14
layer-15
layer-16
layer_with_weights-8
layer-17
layer_with_weights-9
layer-18
layer-19
layer-20
layer_with_weights-10
layer-21
layer_with_weights-11
layer-22
layer-23
layer-24
layer-25
layer_with_weights-12
layer-26
layer-27
layer-28
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses
$_default_save_signature
%	optimizer
&
signatures*
* 
Ш
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias
 /_jit_compiled_convolution_op*
К
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses
6custom_batch_beta
6beta
7custom_batch_gamma
	7gamma
8custom_batch_moving_mean
8moving_mean
 9custom_batch_moving_variance
9moving_variance*

:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses* 

@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses* 
Ш
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias
 N_jit_compiled_convolution_op*
К
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses
Ucustom_batch_beta
Ubeta
Vcustom_batch_gamma
	Vgamma
Wcustom_batch_moving_mean
Wmoving_mean
 Xcustom_batch_moving_variance
Xmoving_variance*

Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses* 

_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses* 
Ш
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses

kkernel
lbias
 m_jit_compiled_convolution_op*
К
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses
tcustom_batch_beta
tbeta
ucustom_batch_gamma
	ugamma
vcustom_batch_moving_mean
vmoving_mean
 wcustom_batch_moving_variance
wmoving_variance*

x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses* 

~	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
б
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op*
Ш
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
custom_batch_beta
	beta
custom_batch_gamma

gamma
custom_batch_moving_mean
moving_mean
!custom_batch_moving_variance
moving_variance*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 

	variables
trainable_variables
regularization_losses
 	keras_api
Ё__call__
+Ђ&call_and_return_all_conditional_losses* 
б
Ѓ	variables
Єtrainable_variables
Ѕregularization_losses
І	keras_api
Ї__call__
+Ј&call_and_return_all_conditional_losses
Љkernel
	Њbias
!Ћ_jit_compiled_convolution_op*
Ш
Ќ	variables
­trainable_variables
Ўregularization_losses
Џ	keras_api
А__call__
+Б&call_and_return_all_conditional_losses
Вcustom_batch_beta
	Вbeta
Гcustom_batch_gamma

Гgamma
Дcustom_batch_moving_mean
Дmoving_mean
!Еcustom_batch_moving_variance
Еmoving_variance*

Ж	variables
Зtrainable_variables
Иregularization_losses
Й	keras_api
К__call__
+Л&call_and_return_all_conditional_losses* 

М	variables
Нtrainable_variables
Оregularization_losses
П	keras_api
Р__call__
+С&call_and_return_all_conditional_losses* 
б
Т	variables
Уtrainable_variables
Фregularization_losses
Х	keras_api
Ц__call__
+Ч&call_and_return_all_conditional_losses
Шkernel
	Щbias
!Ъ_jit_compiled_convolution_op*
Ш
Ы	variables
Ьtrainable_variables
Эregularization_losses
Ю	keras_api
Я__call__
+а&call_and_return_all_conditional_losses
бcustom_batch_beta
	бbeta
вcustom_batch_gamma

вgamma
гcustom_batch_moving_mean
гmoving_mean
!дcustom_batch_moving_variance
дmoving_variance*

е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses* 

л	variables
мtrainable_variables
нregularization_losses
о	keras_api
п__call__
+р&call_and_return_all_conditional_losses* 

с	variables
тtrainable_variables
уregularization_losses
ф	keras_api
х__call__
+ц&call_and_return_all_conditional_losses* 
Ў
ч	variables
шtrainable_variables
щregularization_losses
ъ	keras_api
ы__call__
+ь&call_and_return_all_conditional_losses
эkernel
	юbias*

я	variables
№trainable_variables
ёregularization_losses
ђ	keras_api
ѓ__call__
+є&call_and_return_all_conditional_losses* 

ѕ	variables
іtrainable_variables
їregularization_losses
ј	keras_api
љ__call__
+њ&call_and_return_all_conditional_losses* 
О
-0
.1
62
73
84
95
L6
M7
U8
V9
W10
X11
k12
l13
t14
u15
v16
w17
18
19
20
21
22
23
Љ24
Њ25
В26
Г27
Д28
Е29
Ш30
Щ31
б32
в33
г34
д35
э36
ю37*
и
-0
.1
62
73
L4
M5
U6
V7
k8
l9
t10
u11
12
13
14
15
Љ16
Њ17
В18
Г19
Ш20
Щ21
б22
в23
э24
ю25*
* 
Е
ћnon_trainable_variables
ќlayers
§metrics
 ўlayer_regularization_losses
џlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
$_default_save_signature
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
* 


_variables
_iterations
_learning_rate
_index_dict

_momentums
_velocities
_update_step_xla*

serving_default* 

-0
.1*

-0
.1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

trace_0* 

trace_0* 
\V
VARIABLE_VALUECNN1_/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
CNN1_/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
60
71
82
93*

60
71*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
qk
VARIABLE_VALUEBN1_/custom_batch_betaAlayer_with_weights-1/custom_batch_beta/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEBN1_/custom_batch_gammaBlayer_with_weights-1/custom_batch_gamma/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEBN1_/custom_batch_moving_meanHlayer_with_weights-1/custom_batch_moving_mean/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!BN1_/custom_batch_moving_varianceLlayer_with_weights-1/custom_batch_moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

 non_trainable_variables
Ёlayers
Ђmetrics
 Ѓlayer_regularization_losses
Єlayer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses* 

Ѕtrace_0* 

Іtrace_0* 
* 
* 
* 

Їnon_trainable_variables
Јlayers
Љmetrics
 Њlayer_regularization_losses
Ћlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses* 

Ќtrace_0* 

­trace_0* 

L0
M1*

L0
M1*
* 

Ўnon_trainable_variables
Џlayers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses*

Гtrace_0* 

Дtrace_0* 
\V
VARIABLE_VALUECNN2_/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
CNN2_/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
U0
V1
W2
X3*

U0
V1*
* 

Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

Кtrace_0
Лtrace_1* 

Мtrace_0
Нtrace_1* 
qk
VARIABLE_VALUEBN2_/custom_batch_betaAlayer_with_weights-3/custom_batch_beta/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEBN2_/custom_batch_gammaBlayer_with_weights-3/custom_batch_gamma/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEBN2_/custom_batch_moving_meanHlayer_with_weights-3/custom_batch_moving_mean/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!BN2_/custom_batch_moving_varianceLlayer_with_weights-3/custom_batch_moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses* 

Уtrace_0* 

Фtrace_0* 
* 
* 
* 

Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses* 

Ъtrace_0* 

Ыtrace_0* 

k0
l1*

k0
l1*
* 

Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses*

бtrace_0* 

вtrace_0* 
\V
VARIABLE_VALUECNN3_/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
CNN3_/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
t0
u1
v2
w3*

t0
u1*
* 

гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses*

иtrace_0
йtrace_1* 

кtrace_0
лtrace_1* 
qk
VARIABLE_VALUEBN3_/custom_batch_betaAlayer_with_weights-5/custom_batch_beta/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEBN3_/custom_batch_gammaBlayer_with_weights-5/custom_batch_gamma/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEBN3_/custom_batch_moving_meanHlayer_with_weights-5/custom_batch_moving_mean/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!BN3_/custom_batch_moving_varianceLlayer_with_weights-5/custom_batch_moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
рlayer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses* 

сtrace_0* 

тtrace_0* 
* 
* 
* 

уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
~	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

шtrace_0* 

щtrace_0* 

0
1*

0
1*
* 

ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

яtrace_0* 

№trace_0* 
\V
VARIABLE_VALUECNN4_/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
CNN4_/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
0
1
2
3*

0
1*
* 

ёnon_trainable_variables
ђlayers
ѓmetrics
 єlayer_regularization_losses
ѕlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

іtrace_0
їtrace_1* 

јtrace_0
љtrace_1* 
qk
VARIABLE_VALUEBN4_/custom_batch_betaAlayer_with_weights-7/custom_batch_beta/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEBN4_/custom_batch_gammaBlayer_with_weights-7/custom_batch_gamma/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEBN4_/custom_batch_moving_meanHlayer_with_weights-7/custom_batch_moving_mean/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!BN4_/custom_batch_moving_varianceLlayer_with_weights-7/custom_batch_moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

њnon_trainable_variables
ћlayers
ќmetrics
 §layer_regularization_losses
ўlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

џtrace_0* 

trace_0* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
Ё__call__
+Ђ&call_and_return_all_conditional_losses
'Ђ"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

Љ0
Њ1*

Љ0
Њ1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ѓ	variables
Єtrainable_variables
Ѕregularization_losses
Ї__call__
+Ј&call_and_return_all_conditional_losses
'Ј"call_and_return_conditional_losses*

trace_0* 

trace_0* 
\V
VARIABLE_VALUECNN5_/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
CNN5_/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
В0
Г1
Д2
Е3*

В0
Г1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ќ	variables
­trainable_variables
Ўregularization_losses
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
qk
VARIABLE_VALUEBN5_/custom_batch_betaAlayer_with_weights-9/custom_batch_beta/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEBN5_/custom_batch_gammaBlayer_with_weights-9/custom_batch_gamma/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEBN5_/custom_batch_moving_meanHlayer_with_weights-9/custom_batch_moving_mean/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!BN5_/custom_batch_moving_varianceLlayer_with_weights-9/custom_batch_moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ж	variables
Зtrainable_variables
Иregularization_losses
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
* 
* 
* 

non_trainable_variables
 layers
Ёmetrics
 Ђlayer_regularization_losses
Ѓlayer_metrics
М	variables
Нtrainable_variables
Оregularization_losses
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses* 

Єtrace_0* 

Ѕtrace_0* 

Ш0
Щ1*

Ш0
Щ1*
* 

Іnon_trainable_variables
Їlayers
Јmetrics
 Љlayer_regularization_losses
Њlayer_metrics
Т	variables
Уtrainable_variables
Фregularization_losses
Ц__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses*

Ћtrace_0* 

Ќtrace_0* 
]W
VARIABLE_VALUECNN6_/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUE
CNN6_/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
б0
в1
г2
д3*

б0
в1*
* 

­non_trainable_variables
Ўlayers
Џmetrics
 Аlayer_regularization_losses
Бlayer_metrics
Ы	variables
Ьtrainable_variables
Эregularization_losses
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses*

Вtrace_0
Гtrace_1* 

Дtrace_0
Еtrace_1* 
rl
VARIABLE_VALUEBN6_/custom_batch_betaBlayer_with_weights-11/custom_batch_beta/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEBN6_/custom_batch_gammaClayer_with_weights-11/custom_batch_gamma/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEBN6_/custom_batch_moving_meanIlayer_with_weights-11/custom_batch_moving_mean/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!BN6_/custom_batch_moving_varianceMlayer_with_weights-11/custom_batch_moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses* 

Лtrace_0* 

Мtrace_0* 
* 
* 
* 

Нnon_trainable_variables
Оlayers
Пmetrics
 Рlayer_regularization_losses
Сlayer_metrics
л	variables
мtrainable_variables
нregularization_losses
п__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses* 

Тtrace_0* 

Уtrace_0* 
* 
* 
* 

Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
с	variables
тtrainable_variables
уregularization_losses
х__call__
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses* 

Щtrace_0* 

Ъtrace_0* 

э0
ю1*

э0
ю1*
* 

Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
ч	variables
шtrainable_variables
щregularization_losses
ы__call__
+ь&call_and_return_all_conditional_losses
'ь"call_and_return_conditional_losses*

аtrace_0* 

бtrace_0* 
\V
VARIABLE_VALUEFC1_/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE	FC1_/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
я	variables
№trainable_variables
ёregularization_losses
ѓ__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses* 

зtrace_0* 

иtrace_0* 
* 
* 
* 

йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
ѕ	variables
іtrainable_variables
їregularization_losses
љ__call__
+њ&call_and_return_all_conditional_losses
'њ"call_and_return_conditional_losses* 

оtrace_0* 

пtrace_0* 
`
80
91
W2
X3
v4
w5
6
7
Д8
Е9
г10
д11*
т
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
28*

р0
с1*
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
0
т1
у2
ф3
х4
ц5
ч6
ш7
щ8
ъ9
ы10
ь11
э12
ю13
я14
№15
ё16
ђ17
ѓ18
є19
ѕ20
і21
ї22
ј23
љ24
њ25
ћ26
ќ27
§28
ў29
џ30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
ф
т0
ф1
ц2
ш3
ъ4
ь5
ю6
№7
ђ8
є9
і10
ј11
њ12
ќ13
ў14
15
16
17
18
19
20
21
22
23
24
25*
ф
у0
х1
ч2
щ3
ы4
э5
я6
ё7
ѓ8
ѕ9
ї10
љ11
ћ12
§13
џ14
15
16
17
18
19
20
21
22
23
24
25*
ў
trace_0
trace_1
trace_2
trace_3
trace_4
trace_5
trace_6
trace_7
trace_8
trace_9
 trace_10
Ёtrace_11
Ђtrace_12
Ѓtrace_13
Єtrace_14
Ѕtrace_15
Іtrace_16
Їtrace_17
Јtrace_18
Љtrace_19
Њtrace_20
Ћtrace_21
Ќtrace_22
­trace_23
Ўtrace_24
Џtrace_25* 
* 
* 
* 
* 
* 
* 
* 
* 

80
91*
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
W0
X1*
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
v0
w1*
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
0
1*
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
Д0
Е1*
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
г0
д1*
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
А	variables
Б	keras_api

Вtotal

Гcount*
M
Д	variables
Е	keras_api

Жtotal

Зcount
И
_fn_kwargs*
^X
VARIABLE_VALUEAdam/m/CNN1_/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/CNN1_/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/m/CNN1_/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/v/CNN1_/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/m/BN1_/custom_batch_beta1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/v/BN1_/custom_batch_beta1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/BN1_/custom_batch_gamma1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/BN1_/custom_batch_gamma1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/CNN2_/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/CNN2_/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/CNN2_/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/CNN2_/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/BN2_/custom_batch_beta2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/BN2_/custom_batch_beta2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/BN2_/custom_batch_gamma2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/BN2_/custom_batch_gamma2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/CNN3_/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/CNN3_/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/CNN3_/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/CNN3_/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/BN3_/custom_batch_beta2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/BN3_/custom_batch_beta2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/BN3_/custom_batch_gamma2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/BN3_/custom_batch_gamma2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/CNN4_/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/CNN4_/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/CNN4_/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/CNN4_/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/BN4_/custom_batch_beta2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/BN4_/custom_batch_beta2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/BN4_/custom_batch_gamma2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/BN4_/custom_batch_gamma2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/CNN5_/kernel2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/CNN5_/kernel2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/CNN5_/bias2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/CNN5_/bias2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/BN5_/custom_batch_beta2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/BN5_/custom_batch_beta2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/BN5_/custom_batch_gamma2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/BN5_/custom_batch_gamma2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/CNN6_/kernel2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/CNN6_/kernel2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/CNN6_/bias2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/CNN6_/bias2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/BN6_/custom_batch_beta2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/BN6_/custom_batch_beta2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/BN6_/custom_batch_gamma2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/BN6_/custom_batch_gamma2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/FC1_/kernel2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/FC1_/kernel2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/m/FC1_/bias2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/v/FC1_/bias2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUE*
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
В0
Г1*

А	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Ж0
З1*

Д	variables*
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
О#
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename CNN1_/kernel/Read/ReadVariableOpCNN1_/bias/Read/ReadVariableOp*BN1_/custom_batch_beta/Read/ReadVariableOp+BN1_/custom_batch_gamma/Read/ReadVariableOp1BN1_/custom_batch_moving_mean/Read/ReadVariableOp5BN1_/custom_batch_moving_variance/Read/ReadVariableOp CNN2_/kernel/Read/ReadVariableOpCNN2_/bias/Read/ReadVariableOp*BN2_/custom_batch_beta/Read/ReadVariableOp+BN2_/custom_batch_gamma/Read/ReadVariableOp1BN2_/custom_batch_moving_mean/Read/ReadVariableOp5BN2_/custom_batch_moving_variance/Read/ReadVariableOp CNN3_/kernel/Read/ReadVariableOpCNN3_/bias/Read/ReadVariableOp*BN3_/custom_batch_beta/Read/ReadVariableOp+BN3_/custom_batch_gamma/Read/ReadVariableOp1BN3_/custom_batch_moving_mean/Read/ReadVariableOp5BN3_/custom_batch_moving_variance/Read/ReadVariableOp CNN4_/kernel/Read/ReadVariableOpCNN4_/bias/Read/ReadVariableOp*BN4_/custom_batch_beta/Read/ReadVariableOp+BN4_/custom_batch_gamma/Read/ReadVariableOp1BN4_/custom_batch_moving_mean/Read/ReadVariableOp5BN4_/custom_batch_moving_variance/Read/ReadVariableOp CNN5_/kernel/Read/ReadVariableOpCNN5_/bias/Read/ReadVariableOp*BN5_/custom_batch_beta/Read/ReadVariableOp+BN5_/custom_batch_gamma/Read/ReadVariableOp1BN5_/custom_batch_moving_mean/Read/ReadVariableOp5BN5_/custom_batch_moving_variance/Read/ReadVariableOp CNN6_/kernel/Read/ReadVariableOpCNN6_/bias/Read/ReadVariableOp*BN6_/custom_batch_beta/Read/ReadVariableOp+BN6_/custom_batch_gamma/Read/ReadVariableOp1BN6_/custom_batch_moving_mean/Read/ReadVariableOp5BN6_/custom_batch_moving_variance/Read/ReadVariableOpFC1_/kernel/Read/ReadVariableOpFC1_/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp'Adam/m/CNN1_/kernel/Read/ReadVariableOp'Adam/v/CNN1_/kernel/Read/ReadVariableOp%Adam/m/CNN1_/bias/Read/ReadVariableOp%Adam/v/CNN1_/bias/Read/ReadVariableOp1Adam/m/BN1_/custom_batch_beta/Read/ReadVariableOp1Adam/v/BN1_/custom_batch_beta/Read/ReadVariableOp2Adam/m/BN1_/custom_batch_gamma/Read/ReadVariableOp2Adam/v/BN1_/custom_batch_gamma/Read/ReadVariableOp'Adam/m/CNN2_/kernel/Read/ReadVariableOp'Adam/v/CNN2_/kernel/Read/ReadVariableOp%Adam/m/CNN2_/bias/Read/ReadVariableOp%Adam/v/CNN2_/bias/Read/ReadVariableOp1Adam/m/BN2_/custom_batch_beta/Read/ReadVariableOp1Adam/v/BN2_/custom_batch_beta/Read/ReadVariableOp2Adam/m/BN2_/custom_batch_gamma/Read/ReadVariableOp2Adam/v/BN2_/custom_batch_gamma/Read/ReadVariableOp'Adam/m/CNN3_/kernel/Read/ReadVariableOp'Adam/v/CNN3_/kernel/Read/ReadVariableOp%Adam/m/CNN3_/bias/Read/ReadVariableOp%Adam/v/CNN3_/bias/Read/ReadVariableOp1Adam/m/BN3_/custom_batch_beta/Read/ReadVariableOp1Adam/v/BN3_/custom_batch_beta/Read/ReadVariableOp2Adam/m/BN3_/custom_batch_gamma/Read/ReadVariableOp2Adam/v/BN3_/custom_batch_gamma/Read/ReadVariableOp'Adam/m/CNN4_/kernel/Read/ReadVariableOp'Adam/v/CNN4_/kernel/Read/ReadVariableOp%Adam/m/CNN4_/bias/Read/ReadVariableOp%Adam/v/CNN4_/bias/Read/ReadVariableOp1Adam/m/BN4_/custom_batch_beta/Read/ReadVariableOp1Adam/v/BN4_/custom_batch_beta/Read/ReadVariableOp2Adam/m/BN4_/custom_batch_gamma/Read/ReadVariableOp2Adam/v/BN4_/custom_batch_gamma/Read/ReadVariableOp'Adam/m/CNN5_/kernel/Read/ReadVariableOp'Adam/v/CNN5_/kernel/Read/ReadVariableOp%Adam/m/CNN5_/bias/Read/ReadVariableOp%Adam/v/CNN5_/bias/Read/ReadVariableOp1Adam/m/BN5_/custom_batch_beta/Read/ReadVariableOp1Adam/v/BN5_/custom_batch_beta/Read/ReadVariableOp2Adam/m/BN5_/custom_batch_gamma/Read/ReadVariableOp2Adam/v/BN5_/custom_batch_gamma/Read/ReadVariableOp'Adam/m/CNN6_/kernel/Read/ReadVariableOp'Adam/v/CNN6_/kernel/Read/ReadVariableOp%Adam/m/CNN6_/bias/Read/ReadVariableOp%Adam/v/CNN6_/bias/Read/ReadVariableOp1Adam/m/BN6_/custom_batch_beta/Read/ReadVariableOp1Adam/v/BN6_/custom_batch_beta/Read/ReadVariableOp2Adam/m/BN6_/custom_batch_gamma/Read/ReadVariableOp2Adam/v/BN6_/custom_batch_gamma/Read/ReadVariableOp&Adam/m/FC1_/kernel/Read/ReadVariableOp&Adam/v/FC1_/kernel/Read/ReadVariableOp$Adam/m/FC1_/bias/Read/ReadVariableOp$Adam/v/FC1_/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*m
Tinf
d2b	*
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
GPU2*0J 8 *(
f#R!
__inference__traced_save_163802
Й
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameCNN1_/kernel
CNN1_/biasBN1_/custom_batch_betaBN1_/custom_batch_gammaBN1_/custom_batch_moving_mean!BN1_/custom_batch_moving_varianceCNN2_/kernel
CNN2_/biasBN2_/custom_batch_betaBN2_/custom_batch_gammaBN2_/custom_batch_moving_mean!BN2_/custom_batch_moving_varianceCNN3_/kernel
CNN3_/biasBN3_/custom_batch_betaBN3_/custom_batch_gammaBN3_/custom_batch_moving_mean!BN3_/custom_batch_moving_varianceCNN4_/kernel
CNN4_/biasBN4_/custom_batch_betaBN4_/custom_batch_gammaBN4_/custom_batch_moving_mean!BN4_/custom_batch_moving_varianceCNN5_/kernel
CNN5_/biasBN5_/custom_batch_betaBN5_/custom_batch_gammaBN5_/custom_batch_moving_mean!BN5_/custom_batch_moving_varianceCNN6_/kernel
CNN6_/biasBN6_/custom_batch_betaBN6_/custom_batch_gammaBN6_/custom_batch_moving_mean!BN6_/custom_batch_moving_varianceFC1_/kernel	FC1_/bias	iterationlearning_rateAdam/m/CNN1_/kernelAdam/v/CNN1_/kernelAdam/m/CNN1_/biasAdam/v/CNN1_/biasAdam/m/BN1_/custom_batch_betaAdam/v/BN1_/custom_batch_betaAdam/m/BN1_/custom_batch_gammaAdam/v/BN1_/custom_batch_gammaAdam/m/CNN2_/kernelAdam/v/CNN2_/kernelAdam/m/CNN2_/biasAdam/v/CNN2_/biasAdam/m/BN2_/custom_batch_betaAdam/v/BN2_/custom_batch_betaAdam/m/BN2_/custom_batch_gammaAdam/v/BN2_/custom_batch_gammaAdam/m/CNN3_/kernelAdam/v/CNN3_/kernelAdam/m/CNN3_/biasAdam/v/CNN3_/biasAdam/m/BN3_/custom_batch_betaAdam/v/BN3_/custom_batch_betaAdam/m/BN3_/custom_batch_gammaAdam/v/BN3_/custom_batch_gammaAdam/m/CNN4_/kernelAdam/v/CNN4_/kernelAdam/m/CNN4_/biasAdam/v/CNN4_/biasAdam/m/BN4_/custom_batch_betaAdam/v/BN4_/custom_batch_betaAdam/m/BN4_/custom_batch_gammaAdam/v/BN4_/custom_batch_gammaAdam/m/CNN5_/kernelAdam/v/CNN5_/kernelAdam/m/CNN5_/biasAdam/v/CNN5_/biasAdam/m/BN5_/custom_batch_betaAdam/v/BN5_/custom_batch_betaAdam/m/BN5_/custom_batch_gammaAdam/v/BN5_/custom_batch_gammaAdam/m/CNN6_/kernelAdam/v/CNN6_/kernelAdam/m/CNN6_/biasAdam/v/CNN6_/biasAdam/m/BN6_/custom_batch_betaAdam/v/BN6_/custom_batch_betaAdam/m/BN6_/custom_batch_gammaAdam/v/BN6_/custom_batch_gammaAdam/m/FC1_/kernelAdam/v/FC1_/kernelAdam/m/FC1_/biasAdam/v/FC1_/biastotal_1count_1totalcount*l
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
GPU2*0J 8 *+
f&R$
"__inference__traced_restore_164100э

л
@__inference_BN6__layer_call_and_return_conditional_losses_160675

inputs*
sub_readvariableop_resource:	Р&
readvariableop_resource:	Р(
readvariableop_1_resource:	Р,
add_1_readvariableop_resource:	Р
identityЂReadVariableOpЂReadVariableOp_1Ђadd_1/ReadVariableOpЂsub/ReadVariableOpk
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:Р*
dtype0i
subSubinputssub/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ Рc
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:Р*
dtype0J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75Z
addAddV2ReadVariableOp:value:0add/y:output:0*
T0*
_output_shapes	
:Р;
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:Р`
truedivRealDivsub:z:0Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ Рg
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:Р*
dtype0l
mulMulReadVariableOp_1:value:0truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ Рo
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:Р*
dtype0p
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ Рa
IdentityIdentity	add_1:z:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ Р
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^add_1/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ Р: : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ Р
 
_user_specified_nameinputs
ы
_
C__inference_re_lu_3_layer_call_and_return_conditional_losses_163184

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:џџџџџџџџџ`c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ`:X T
0
_output_shapes
:џџџџџџџџџ`
 
_user_specified_nameinputs
Р

%__inference_FC1__layer_call_fn_163460

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
@__inference_FC1__layer_call_and_return_conditional_losses_160711o
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

л
@__inference_BN5__layer_call_and_return_conditional_losses_163258

inputs*
sub_readvariableop_resource:	&
readvariableop_resource:	(
readvariableop_1_resource:	,
add_1_readvariableop_resource:	
identityЂReadVariableOpЂReadVariableOp_1Ђadd_1/ReadVariableOpЂsub/ReadVariableOpk
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype0i
subSubinputssub/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75Z
addAddV2ReadVariableOp:value:0add/y:output:0*
T0*
_output_shapes	
:;
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:`
truedivRealDivsub:z:0Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ@g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0l
mulMulReadVariableOp_1:value:0truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ@o
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:*
dtype0p
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@a
IdentityIdentity	add_1:z:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^add_1/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ@: : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_160329

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ч	
ђ
@__inference_FC1__layer_call_and_return_conditional_losses_163470

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
Ќ
K
#__inference__update_step_xla_162702
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
щ
]
A__inference_re_lu_layer_call_and_return_conditional_losses_162815

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:џџџџџџџџџ c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ :X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Й*
Я
@__inference_BN6__layer_call_and_return_conditional_losses_160901

inputs&
readvariableop_resource:	Р(
readvariableop_2_resource:	Р(
readvariableop_4_resource:	Р,
add_3_readvariableop_resource:	Р
identityЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_2ЂAssignVariableOp_3ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3ЂReadVariableOp_4Ђadd_3/ReadVariableOps
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:Р*
	keep_dims(m
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:Р
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*0
_output_shapes
:џџџџџџџџџ Рw
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          Ї
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:Р*
	keep_dims(p
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:Р*
squeeze_dims
 v
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:Р*
squeeze_dims
 c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:Р*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?X
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes	
:РL
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=^
mul_1Mulmoments/Squeeze:output:0mul_1/y:output:0*
T0*
_output_shapes	
:РF
addAddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes	
:РИ
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(x
ReadVariableOp_1ReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes	
:Р*
dtype0И
AssignVariableOp_1AssignVariableOpreadvariableop_resourceReadVariableOp_1:value:0^AssignVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(g
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes	
:Р*
dtype0L
mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?^
mul_2MulReadVariableOp_2:value:0mul_2/y:output:0*
T0*
_output_shapes	
:РL
mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=`
mul_3Mulmoments/Squeeze_1:output:0mul_3/y:output:0*
T0*
_output_shapes	
:РJ
add_1AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes	
:РР
AssignVariableOp_2AssignVariableOpreadvariableop_2_resource	add_1:z:0^ReadVariableOp_2*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(|
ReadVariableOp_3ReadVariableOpreadvariableop_2_resource^AssignVariableOp_2*
_output_shapes	
:Р*
dtype0М
AssignVariableOp_3AssignVariableOpreadvariableop_2_resourceReadVariableOp_3:value:0^AssignVariableOp_2^ReadVariableOp_3*
_output_shapes
 *
dtype0*
validate_shape(g
subSubinputsmoments/Squeeze:output:0*
T0*0
_output_shapes
:џџџџџџџџџ РL
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75b
add_2AddV2moments/Squeeze_1:output:0add_2/y:output:0*
T0*
_output_shapes	
:Р=
SqrtSqrt	add_2:z:0*
T0*
_output_shapes	
:Р`
truedivRealDivsub:z:0Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ Рg
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource*
_output_shapes	
:Р*
dtype0n
mul_4MulReadVariableOp_4:value:0truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ Рo
add_3/ReadVariableOpReadVariableOpadd_3_readvariableop_resource*
_output_shapes	
:Р*
dtype0r
add_3AddV2	mul_4:z:0add_3/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ Рa
IdentityIdentity	add_3:z:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ Р
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^add_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ Р: : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42,
add_3/ReadVariableOpadd_3/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ Р
 
_user_specified_nameinputs
Ђ*
Ы
@__inference_BN2__layer_call_and_return_conditional_losses_162928

inputs%
readvariableop_resource:0'
readvariableop_2_resource:0'
readvariableop_4_resource:0+
add_3_readvariableop_resource:0
identityЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_2ЂAssignVariableOp_3ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3ЂReadVariableOp_4Ђadd_3/ReadVariableOps
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:0*
	keep_dims(l
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:0
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*0
_output_shapes
:џџџџџџџџџ0w
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          І
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:0*
	keep_dims(o
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:0*
squeeze_dims
 u
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:0*
squeeze_dims
 b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?W
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes
:0L
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=]
mul_1Mulmoments/Squeeze:output:0mul_1/y:output:0*
T0*
_output_shapes
:0E
addAddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:0И
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(w
ReadVariableOp_1ReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes
:0*
dtype0И
AssignVariableOp_1AssignVariableOpreadvariableop_resourceReadVariableOp_1:value:0^AssignVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(f
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
:0*
dtype0L
mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?]
mul_2MulReadVariableOp_2:value:0mul_2/y:output:0*
T0*
_output_shapes
:0L
mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=_
mul_3Mulmoments/Squeeze_1:output:0mul_3/y:output:0*
T0*
_output_shapes
:0I
add_1AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:0Р
AssignVariableOp_2AssignVariableOpreadvariableop_2_resource	add_1:z:0^ReadVariableOp_2*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape({
ReadVariableOp_3ReadVariableOpreadvariableop_2_resource^AssignVariableOp_2*
_output_shapes
:0*
dtype0М
AssignVariableOp_3AssignVariableOpreadvariableop_2_resourceReadVariableOp_3:value:0^AssignVariableOp_2^ReadVariableOp_3*
_output_shapes
 *
dtype0*
validate_shape(g
subSubinputsmoments/Squeeze:output:0*
T0*0
_output_shapes
:џџџџџџџџџ0L
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75a
add_2AddV2moments/Squeeze_1:output:0add_2/y:output:0*
T0*
_output_shapes
:0<
SqrtSqrt	add_2:z:0*
T0*
_output_shapes
:0`
truedivRealDivsub:z:0Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ0f
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource*
_output_shapes
:0*
dtype0n
mul_4MulReadVariableOp_4:value:0truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ0n
add_3/ReadVariableOpReadVariableOpadd_3_readvariableop_resource*
_output_shapes
:0*
dtype0r
add_3AddV2	mul_4:z:0add_3/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0a
IdentityIdentity	add_3:z:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ0
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^add_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ0: : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42,
add_3/ReadVariableOpadd_3/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs

D
(__inference_softmax_layer_call_fn_163475

inputs
identityБ
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
GPU2*0J 8 *L
fGRE
C__inference_softmax_layer_call_and_return_conditional_losses_160722`
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
Ђ*
Ы
@__inference_BN3__layer_call_and_return_conditional_losses_163051

inputs%
readvariableop_resource:@'
readvariableop_2_resource:@'
readvariableop_4_resource:@+
add_3_readvariableop_resource:@
identityЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_2ЂAssignVariableOp_3ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3ЂReadVariableOp_4Ђadd_3/ReadVariableOps
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(l
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:@
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@w
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          І
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(o
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 u
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?W
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes
:@L
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=]
mul_1Mulmoments/Squeeze:output:0mul_1/y:output:0*
T0*
_output_shapes
:@E
addAddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:@И
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(w
ReadVariableOp_1ReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes
:@*
dtype0И
AssignVariableOp_1AssignVariableOpreadvariableop_resourceReadVariableOp_1:value:0^AssignVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(f
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
:@*
dtype0L
mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?]
mul_2MulReadVariableOp_2:value:0mul_2/y:output:0*
T0*
_output_shapes
:@L
mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=_
mul_3Mulmoments/Squeeze_1:output:0mul_3/y:output:0*
T0*
_output_shapes
:@I
add_1AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:@Р
AssignVariableOp_2AssignVariableOpreadvariableop_2_resource	add_1:z:0^ReadVariableOp_2*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape({
ReadVariableOp_3ReadVariableOpreadvariableop_2_resource^AssignVariableOp_2*
_output_shapes
:@*
dtype0М
AssignVariableOp_3AssignVariableOpreadvariableop_2_resourceReadVariableOp_3:value:0^AssignVariableOp_2^ReadVariableOp_3*
_output_shapes
 *
dtype0*
validate_shape(g
subSubinputsmoments/Squeeze:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@L
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75a
add_2AddV2moments/Squeeze_1:output:0add_2/y:output:0*
T0*
_output_shapes
:@<
SqrtSqrt	add_2:z:0*
T0*
_output_shapes
:@`
truedivRealDivsub:z:0Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ@f
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource*
_output_shapes
:@*
dtype0n
mul_4MulReadVariableOp_4:value:0truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ@n
add_3/ReadVariableOpReadVariableOpadd_3_readvariableop_resource*
_output_shapes
:@*
dtype0r
add_3AddV2	mul_4:z:0add_3/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@a
IdentityIdentity	add_3:z:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^add_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ@: : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42,
add_3/ReadVariableOpadd_3/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

з
@__inference_BN3__layer_call_and_return_conditional_losses_160516

inputs)
sub_readvariableop_resource:@%
readvariableop_resource:@'
readvariableop_1_resource:@+
add_1_readvariableop_resource:@
identityЂReadVariableOpЂReadVariableOp_1Ђadd_1/ReadVariableOpЂsub/ReadVariableOpj
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype0i
subSubinputssub/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75Y
addAddV2ReadVariableOp:value:0add/y:output:0*
T0*
_output_shapes
:@:
SqrtSqrtadd:z:0*
T0*
_output_shapes
:@`
truedivRealDivsub:z:0Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ@f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0l
mulMulReadVariableOp_1:value:0truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ@n
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:@*
dtype0p
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@a
IdentityIdentity	add_1:z:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^add_1/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ@: : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_160341

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_163194

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ќ
K
#__inference__update_step_xla_162627
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Б
Ф
%__inference_BN5__layer_call_fn_163226

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN5__layer_call_and_return_conditional_losses_160622x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Й*
Я
@__inference_BN5__layer_call_and_return_conditional_losses_163297

inputs&
readvariableop_resource:	(
readvariableop_2_resource:	(
readvariableop_4_resource:	,
add_3_readvariableop_resource:	
identityЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_2ЂAssignVariableOp_3ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3ЂReadVariableOp_4Ђadd_3/ReadVariableOps
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(m
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@w
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          Ї
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(p
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 v
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?X
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes	
:L
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=^
mul_1Mulmoments/Squeeze:output:0mul_1/y:output:0*
T0*
_output_shapes	
:F
addAddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes	
:И
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(x
ReadVariableOp_1ReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes	
:*
dtype0И
AssignVariableOp_1AssignVariableOpreadvariableop_resourceReadVariableOp_1:value:0^AssignVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(g
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes	
:*
dtype0L
mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?^
mul_2MulReadVariableOp_2:value:0mul_2/y:output:0*
T0*
_output_shapes	
:L
mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=`
mul_3Mulmoments/Squeeze_1:output:0mul_3/y:output:0*
T0*
_output_shapes	
:J
add_1AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes	
:Р
AssignVariableOp_2AssignVariableOpreadvariableop_2_resource	add_1:z:0^ReadVariableOp_2*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(|
ReadVariableOp_3ReadVariableOpreadvariableop_2_resource^AssignVariableOp_2*
_output_shapes	
:*
dtype0М
AssignVariableOp_3AssignVariableOpreadvariableop_2_resourceReadVariableOp_3:value:0^AssignVariableOp_2^ReadVariableOp_3*
_output_shapes
 *
dtype0*
validate_shape(g
subSubinputsmoments/Squeeze:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@L
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75b
add_2AddV2moments/Squeeze_1:output:0add_2/y:output:0*
T0*
_output_shapes	
:=
SqrtSqrt	add_2:z:0*
T0*
_output_shapes	
:`
truedivRealDivsub:z:0Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ@g
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource*
_output_shapes	
:*
dtype0n
mul_4MulReadVariableOp_4:value:0truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ@o
add_3/ReadVariableOpReadVariableOpadd_3_readvariableop_resource*
_output_shapes	
:*
dtype0r
add_3AddV2	mul_4:z:0add_3/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@a
IdentityIdentity	add_3:z:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^add_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ@: : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42,
add_3/ReadVariableOpadd_3/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Џ
L
#__inference__update_step_xla_162687
gradient
variable:	Р*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:Р: *
	_noinline(:E A

_output_shapes	
:Р
"
_user_specified_name
gradient:($
"
_user_specified_name
variable

e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_160305

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ћ
Р
%__inference_BN4__layer_call_fn_163116

inputs
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN4__layer_call_and_return_conditional_losses_161065x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ``
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ`: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ`
 
_user_specified_nameinputs
Љ

њ
A__inference_CNN2__layer_call_and_return_conditional_losses_162844

inputs8
conv2d_readvariableop_resource: 0-
biasadd_readvariableop_resource:0
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ0w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_163071

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
№б
ь
A__inference_model_layer_call_and_return_conditional_losses_162572

inputs>
$cnn1__conv2d_readvariableop_resource: 3
%cnn1__biasadd_readvariableop_resource: *
bn1__readvariableop_resource: ,
bn1__readvariableop_2_resource: ,
bn1__readvariableop_4_resource: 0
"bn1__add_3_readvariableop_resource: >
$cnn2__conv2d_readvariableop_resource: 03
%cnn2__biasadd_readvariableop_resource:0*
bn2__readvariableop_resource:0,
bn2__readvariableop_2_resource:0,
bn2__readvariableop_4_resource:00
"bn2__add_3_readvariableop_resource:0>
$cnn3__conv2d_readvariableop_resource:0@3
%cnn3__biasadd_readvariableop_resource:@*
bn3__readvariableop_resource:@,
bn3__readvariableop_2_resource:@,
bn3__readvariableop_4_resource:@0
"bn3__add_3_readvariableop_resource:@>
$cnn4__conv2d_readvariableop_resource:@`3
%cnn4__biasadd_readvariableop_resource:`*
bn4__readvariableop_resource:`,
bn4__readvariableop_2_resource:`,
bn4__readvariableop_4_resource:`0
"bn4__add_3_readvariableop_resource:`?
$cnn5__conv2d_readvariableop_resource:`4
%cnn5__biasadd_readvariableop_resource:	+
bn5__readvariableop_resource:	-
bn5__readvariableop_2_resource:	-
bn5__readvariableop_4_resource:	1
"bn5__add_3_readvariableop_resource:	@
$cnn6__conv2d_readvariableop_resource:Р4
%cnn6__biasadd_readvariableop_resource:	Р+
bn6__readvariableop_resource:	Р-
bn6__readvariableop_2_resource:	Р-
bn6__readvariableop_4_resource:	Р1
"bn6__add_3_readvariableop_resource:	Р6
#fc1__matmul_readvariableop_resource:	Р2
$fc1__biasadd_readvariableop_resource:
identityЂBN1_/AssignVariableOpЂBN1_/AssignVariableOp_1ЂBN1_/AssignVariableOp_2ЂBN1_/AssignVariableOp_3ЂBN1_/ReadVariableOpЂBN1_/ReadVariableOp_1ЂBN1_/ReadVariableOp_2ЂBN1_/ReadVariableOp_3ЂBN1_/ReadVariableOp_4ЂBN1_/add_3/ReadVariableOpЂBN2_/AssignVariableOpЂBN2_/AssignVariableOp_1ЂBN2_/AssignVariableOp_2ЂBN2_/AssignVariableOp_3ЂBN2_/ReadVariableOpЂBN2_/ReadVariableOp_1ЂBN2_/ReadVariableOp_2ЂBN2_/ReadVariableOp_3ЂBN2_/ReadVariableOp_4ЂBN2_/add_3/ReadVariableOpЂBN3_/AssignVariableOpЂBN3_/AssignVariableOp_1ЂBN3_/AssignVariableOp_2ЂBN3_/AssignVariableOp_3ЂBN3_/ReadVariableOpЂBN3_/ReadVariableOp_1ЂBN3_/ReadVariableOp_2ЂBN3_/ReadVariableOp_3ЂBN3_/ReadVariableOp_4ЂBN3_/add_3/ReadVariableOpЂBN4_/AssignVariableOpЂBN4_/AssignVariableOp_1ЂBN4_/AssignVariableOp_2ЂBN4_/AssignVariableOp_3ЂBN4_/ReadVariableOpЂBN4_/ReadVariableOp_1ЂBN4_/ReadVariableOp_2ЂBN4_/ReadVariableOp_3ЂBN4_/ReadVariableOp_4ЂBN4_/add_3/ReadVariableOpЂBN5_/AssignVariableOpЂBN5_/AssignVariableOp_1ЂBN5_/AssignVariableOp_2ЂBN5_/AssignVariableOp_3ЂBN5_/ReadVariableOpЂBN5_/ReadVariableOp_1ЂBN5_/ReadVariableOp_2ЂBN5_/ReadVariableOp_3ЂBN5_/ReadVariableOp_4ЂBN5_/add_3/ReadVariableOpЂBN6_/AssignVariableOpЂBN6_/AssignVariableOp_1ЂBN6_/AssignVariableOp_2ЂBN6_/AssignVariableOp_3ЂBN6_/ReadVariableOpЂBN6_/ReadVariableOp_1ЂBN6_/ReadVariableOp_2ЂBN6_/ReadVariableOp_3ЂBN6_/ReadVariableOp_4ЂBN6_/add_3/ReadVariableOpЂCNN1_/BiasAdd/ReadVariableOpЂCNN1_/Conv2D/ReadVariableOpЂCNN2_/BiasAdd/ReadVariableOpЂCNN2_/Conv2D/ReadVariableOpЂCNN3_/BiasAdd/ReadVariableOpЂCNN3_/Conv2D/ReadVariableOpЂCNN4_/BiasAdd/ReadVariableOpЂCNN4_/Conv2D/ReadVariableOpЂCNN5_/BiasAdd/ReadVariableOpЂCNN5_/Conv2D/ReadVariableOpЂCNN6_/BiasAdd/ReadVariableOpЂCNN6_/Conv2D/ReadVariableOpЂFC1_/BiasAdd/ReadVariableOpЂFC1_/MatMul/ReadVariableOp
CNN1_/Conv2D/ReadVariableOpReadVariableOp$cnn1__conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0І
CNN1_/Conv2DConv2Dinputs#CNN1_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ *
paddingSAME*
strides
~
CNN1_/BiasAdd/ReadVariableOpReadVariableOp%cnn1__biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
CNN1_/BiasAddBiasAddCNN1_/Conv2D:output:0$CNN1_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ x
#BN1_/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          Ё
BN1_/moments/meanMeanCNN1_/BiasAdd:output:0,BN1_/moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
: *
	keep_dims(v
BN1_/moments/StopGradientStopGradientBN1_/moments/mean:output:0*
T0*&
_output_shapes
: Њ
BN1_/moments/SquaredDifferenceSquaredDifferenceCNN1_/BiasAdd:output:0"BN1_/moments/StopGradient:output:0*
T0*0
_output_shapes
:џџџџџџџџџ |
'BN1_/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          Е
BN1_/moments/varianceMean"BN1_/moments/SquaredDifference:z:00BN1_/moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
: *
	keep_dims(y
BN1_/moments/SqueezeSqueezeBN1_/moments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 
BN1_/moments/Squeeze_1SqueezeBN1_/moments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 l
BN1_/ReadVariableOpReadVariableOpbn1__readvariableop_resource*
_output_shapes
: *
dtype0O

BN1_/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?f
BN1_/mulMulBN1_/ReadVariableOp:value:0BN1_/mul/y:output:0*
T0*
_output_shapes
: Q
BN1_/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=l

BN1_/mul_1MulBN1_/moments/Squeeze:output:0BN1_/mul_1/y:output:0*
T0*
_output_shapes
: T
BN1_/addAddV2BN1_/mul:z:0BN1_/mul_1:z:0*
T0*
_output_shapes
: Ь
BN1_/AssignVariableOpAssignVariableOpbn1__readvariableop_resourceBN1_/add:z:0^BN1_/ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(
BN1_/ReadVariableOp_1ReadVariableOpbn1__readvariableop_resource^BN1_/AssignVariableOp*
_output_shapes
: *
dtype0б
BN1_/AssignVariableOp_1AssignVariableOpbn1__readvariableop_resourceBN1_/ReadVariableOp_1:value:0^BN1_/AssignVariableOp^BN1_/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(p
BN1_/ReadVariableOp_2ReadVariableOpbn1__readvariableop_2_resource*
_output_shapes
: *
dtype0Q
BN1_/mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?l

BN1_/mul_2MulBN1_/ReadVariableOp_2:value:0BN1_/mul_2/y:output:0*
T0*
_output_shapes
: Q
BN1_/mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=n

BN1_/mul_3MulBN1_/moments/Squeeze_1:output:0BN1_/mul_3/y:output:0*
T0*
_output_shapes
: X

BN1_/add_1AddV2BN1_/mul_2:z:0BN1_/mul_3:z:0*
T0*
_output_shapes
: д
BN1_/AssignVariableOp_2AssignVariableOpbn1__readvariableop_2_resourceBN1_/add_1:z:0^BN1_/ReadVariableOp_2*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(
BN1_/ReadVariableOp_3ReadVariableOpbn1__readvariableop_2_resource^BN1_/AssignVariableOp_2*
_output_shapes
: *
dtype0е
BN1_/AssignVariableOp_3AssignVariableOpbn1__readvariableop_2_resourceBN1_/ReadVariableOp_3:value:0^BN1_/AssignVariableOp_2^BN1_/ReadVariableOp_3*
_output_shapes
 *
dtype0*
validate_shape(
BN1_/subSubCNN1_/BiasAdd:output:0BN1_/moments/Squeeze:output:0*
T0*0
_output_shapes
:џџџџџџџџџ Q
BN1_/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75p

BN1_/add_2AddV2BN1_/moments/Squeeze_1:output:0BN1_/add_2/y:output:0*
T0*
_output_shapes
: F
	BN1_/SqrtSqrtBN1_/add_2:z:0*
T0*
_output_shapes
: o
BN1_/truedivRealDivBN1_/sub:z:0BN1_/Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ p
BN1_/ReadVariableOp_4ReadVariableOpbn1__readvariableop_4_resource*
_output_shapes
: *
dtype0}

BN1_/mul_4MulBN1_/ReadVariableOp_4:value:0BN1_/truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ x
BN1_/add_3/ReadVariableOpReadVariableOp"bn1__add_3_readvariableop_resource*
_output_shapes
: *
dtype0

BN1_/add_3AddV2BN1_/mul_4:z:0!BN1_/add_3/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ ]

re_lu/ReluReluBN1_/add_3:z:0*
T0*0
_output_shapes
:џџџџџџџџџ Ј
max_pooling2d/MaxPoolMaxPoolre_lu/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides

CNN2_/Conv2D/ReadVariableOpReadVariableOp$cnn2__conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype0О
CNN2_/Conv2DConv2Dmax_pooling2d/MaxPool:output:0#CNN2_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0*
paddingSAME*
strides
~
CNN2_/BiasAdd/ReadVariableOpReadVariableOp%cnn2__biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0
CNN2_/BiasAddBiasAddCNN2_/Conv2D:output:0$CNN2_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0x
#BN2_/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          Ё
BN2_/moments/meanMeanCNN2_/BiasAdd:output:0,BN2_/moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:0*
	keep_dims(v
BN2_/moments/StopGradientStopGradientBN2_/moments/mean:output:0*
T0*&
_output_shapes
:0Њ
BN2_/moments/SquaredDifferenceSquaredDifferenceCNN2_/BiasAdd:output:0"BN2_/moments/StopGradient:output:0*
T0*0
_output_shapes
:џџџџџџџџџ0|
'BN2_/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          Е
BN2_/moments/varianceMean"BN2_/moments/SquaredDifference:z:00BN2_/moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:0*
	keep_dims(y
BN2_/moments/SqueezeSqueezeBN2_/moments/mean:output:0*
T0*
_output_shapes
:0*
squeeze_dims
 
BN2_/moments/Squeeze_1SqueezeBN2_/moments/variance:output:0*
T0*
_output_shapes
:0*
squeeze_dims
 l
BN2_/ReadVariableOpReadVariableOpbn2__readvariableop_resource*
_output_shapes
:0*
dtype0O

BN2_/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?f
BN2_/mulMulBN2_/ReadVariableOp:value:0BN2_/mul/y:output:0*
T0*
_output_shapes
:0Q
BN2_/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=l

BN2_/mul_1MulBN2_/moments/Squeeze:output:0BN2_/mul_1/y:output:0*
T0*
_output_shapes
:0T
BN2_/addAddV2BN2_/mul:z:0BN2_/mul_1:z:0*
T0*
_output_shapes
:0Ь
BN2_/AssignVariableOpAssignVariableOpbn2__readvariableop_resourceBN2_/add:z:0^BN2_/ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(
BN2_/ReadVariableOp_1ReadVariableOpbn2__readvariableop_resource^BN2_/AssignVariableOp*
_output_shapes
:0*
dtype0б
BN2_/AssignVariableOp_1AssignVariableOpbn2__readvariableop_resourceBN2_/ReadVariableOp_1:value:0^BN2_/AssignVariableOp^BN2_/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(p
BN2_/ReadVariableOp_2ReadVariableOpbn2__readvariableop_2_resource*
_output_shapes
:0*
dtype0Q
BN2_/mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?l

BN2_/mul_2MulBN2_/ReadVariableOp_2:value:0BN2_/mul_2/y:output:0*
T0*
_output_shapes
:0Q
BN2_/mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=n

BN2_/mul_3MulBN2_/moments/Squeeze_1:output:0BN2_/mul_3/y:output:0*
T0*
_output_shapes
:0X

BN2_/add_1AddV2BN2_/mul_2:z:0BN2_/mul_3:z:0*
T0*
_output_shapes
:0д
BN2_/AssignVariableOp_2AssignVariableOpbn2__readvariableop_2_resourceBN2_/add_1:z:0^BN2_/ReadVariableOp_2*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(
BN2_/ReadVariableOp_3ReadVariableOpbn2__readvariableop_2_resource^BN2_/AssignVariableOp_2*
_output_shapes
:0*
dtype0е
BN2_/AssignVariableOp_3AssignVariableOpbn2__readvariableop_2_resourceBN2_/ReadVariableOp_3:value:0^BN2_/AssignVariableOp_2^BN2_/ReadVariableOp_3*
_output_shapes
 *
dtype0*
validate_shape(
BN2_/subSubCNN2_/BiasAdd:output:0BN2_/moments/Squeeze:output:0*
T0*0
_output_shapes
:џџџџџџџџџ0Q
BN2_/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75p

BN2_/add_2AddV2BN2_/moments/Squeeze_1:output:0BN2_/add_2/y:output:0*
T0*
_output_shapes
:0F
	BN2_/SqrtSqrtBN2_/add_2:z:0*
T0*
_output_shapes
:0o
BN2_/truedivRealDivBN2_/sub:z:0BN2_/Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ0p
BN2_/ReadVariableOp_4ReadVariableOpbn2__readvariableop_4_resource*
_output_shapes
:0*
dtype0}

BN2_/mul_4MulBN2_/ReadVariableOp_4:value:0BN2_/truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ0x
BN2_/add_3/ReadVariableOpReadVariableOp"bn2__add_3_readvariableop_resource*
_output_shapes
:0*
dtype0

BN2_/add_3AddV2BN2_/mul_4:z:0!BN2_/add_3/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0_
re_lu_1/ReluReluBN2_/add_3:z:0*
T0*0
_output_shapes
:џџџџџџџџџ0Ќ
max_pooling2d_1/MaxPoolMaxPoolre_lu_1/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ0*
ksize
*
paddingVALID*
strides

CNN3_/Conv2D/ReadVariableOpReadVariableOp$cnn3__conv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0Р
CNN3_/Conv2DConv2D max_pooling2d_1/MaxPool:output:0#CNN3_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
~
CNN3_/BiasAdd/ReadVariableOpReadVariableOp%cnn3__biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
CNN3_/BiasAddBiasAddCNN3_/Conv2D:output:0$CNN3_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@x
#BN3_/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          Ё
BN3_/moments/meanMeanCNN3_/BiasAdd:output:0,BN3_/moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(v
BN3_/moments/StopGradientStopGradientBN3_/moments/mean:output:0*
T0*&
_output_shapes
:@Њ
BN3_/moments/SquaredDifferenceSquaredDifferenceCNN3_/BiasAdd:output:0"BN3_/moments/StopGradient:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@|
'BN3_/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          Е
BN3_/moments/varianceMean"BN3_/moments/SquaredDifference:z:00BN3_/moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(y
BN3_/moments/SqueezeSqueezeBN3_/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 
BN3_/moments/Squeeze_1SqueezeBN3_/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 l
BN3_/ReadVariableOpReadVariableOpbn3__readvariableop_resource*
_output_shapes
:@*
dtype0O

BN3_/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?f
BN3_/mulMulBN3_/ReadVariableOp:value:0BN3_/mul/y:output:0*
T0*
_output_shapes
:@Q
BN3_/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=l

BN3_/mul_1MulBN3_/moments/Squeeze:output:0BN3_/mul_1/y:output:0*
T0*
_output_shapes
:@T
BN3_/addAddV2BN3_/mul:z:0BN3_/mul_1:z:0*
T0*
_output_shapes
:@Ь
BN3_/AssignVariableOpAssignVariableOpbn3__readvariableop_resourceBN3_/add:z:0^BN3_/ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(
BN3_/ReadVariableOp_1ReadVariableOpbn3__readvariableop_resource^BN3_/AssignVariableOp*
_output_shapes
:@*
dtype0б
BN3_/AssignVariableOp_1AssignVariableOpbn3__readvariableop_resourceBN3_/ReadVariableOp_1:value:0^BN3_/AssignVariableOp^BN3_/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(p
BN3_/ReadVariableOp_2ReadVariableOpbn3__readvariableop_2_resource*
_output_shapes
:@*
dtype0Q
BN3_/mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?l

BN3_/mul_2MulBN3_/ReadVariableOp_2:value:0BN3_/mul_2/y:output:0*
T0*
_output_shapes
:@Q
BN3_/mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=n

BN3_/mul_3MulBN3_/moments/Squeeze_1:output:0BN3_/mul_3/y:output:0*
T0*
_output_shapes
:@X

BN3_/add_1AddV2BN3_/mul_2:z:0BN3_/mul_3:z:0*
T0*
_output_shapes
:@д
BN3_/AssignVariableOp_2AssignVariableOpbn3__readvariableop_2_resourceBN3_/add_1:z:0^BN3_/ReadVariableOp_2*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(
BN3_/ReadVariableOp_3ReadVariableOpbn3__readvariableop_2_resource^BN3_/AssignVariableOp_2*
_output_shapes
:@*
dtype0е
BN3_/AssignVariableOp_3AssignVariableOpbn3__readvariableop_2_resourceBN3_/ReadVariableOp_3:value:0^BN3_/AssignVariableOp_2^BN3_/ReadVariableOp_3*
_output_shapes
 *
dtype0*
validate_shape(
BN3_/subSubCNN3_/BiasAdd:output:0BN3_/moments/Squeeze:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@Q
BN3_/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75p

BN3_/add_2AddV2BN3_/moments/Squeeze_1:output:0BN3_/add_2/y:output:0*
T0*
_output_shapes
:@F
	BN3_/SqrtSqrtBN3_/add_2:z:0*
T0*
_output_shapes
:@o
BN3_/truedivRealDivBN3_/sub:z:0BN3_/Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ@p
BN3_/ReadVariableOp_4ReadVariableOpbn3__readvariableop_4_resource*
_output_shapes
:@*
dtype0}

BN3_/mul_4MulBN3_/ReadVariableOp_4:value:0BN3_/truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ@x
BN3_/add_3/ReadVariableOpReadVariableOp"bn3__add_3_readvariableop_resource*
_output_shapes
:@*
dtype0

BN3_/add_3AddV2BN3_/mul_4:z:0!BN3_/add_3/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@_
re_lu_2/ReluReluBN3_/add_3:z:0*
T0*0
_output_shapes
:џџџџџџџџџ@Ќ
max_pooling2d_2/MaxPoolMaxPoolre_lu_2/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides

CNN4_/Conv2D/ReadVariableOpReadVariableOp$cnn4__conv2d_readvariableop_resource*&
_output_shapes
:@`*
dtype0Р
CNN4_/Conv2DConv2D max_pooling2d_2/MaxPool:output:0#CNN4_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ`*
paddingSAME*
strides
~
CNN4_/BiasAdd/ReadVariableOpReadVariableOp%cnn4__biasadd_readvariableop_resource*
_output_shapes
:`*
dtype0
CNN4_/BiasAddBiasAddCNN4_/Conv2D:output:0$CNN4_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ`x
#BN4_/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          Ё
BN4_/moments/meanMeanCNN4_/BiasAdd:output:0,BN4_/moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:`*
	keep_dims(v
BN4_/moments/StopGradientStopGradientBN4_/moments/mean:output:0*
T0*&
_output_shapes
:`Њ
BN4_/moments/SquaredDifferenceSquaredDifferenceCNN4_/BiasAdd:output:0"BN4_/moments/StopGradient:output:0*
T0*0
_output_shapes
:џџџџџџџџџ`|
'BN4_/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          Е
BN4_/moments/varianceMean"BN4_/moments/SquaredDifference:z:00BN4_/moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:`*
	keep_dims(y
BN4_/moments/SqueezeSqueezeBN4_/moments/mean:output:0*
T0*
_output_shapes
:`*
squeeze_dims
 
BN4_/moments/Squeeze_1SqueezeBN4_/moments/variance:output:0*
T0*
_output_shapes
:`*
squeeze_dims
 l
BN4_/ReadVariableOpReadVariableOpbn4__readvariableop_resource*
_output_shapes
:`*
dtype0O

BN4_/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?f
BN4_/mulMulBN4_/ReadVariableOp:value:0BN4_/mul/y:output:0*
T0*
_output_shapes
:`Q
BN4_/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=l

BN4_/mul_1MulBN4_/moments/Squeeze:output:0BN4_/mul_1/y:output:0*
T0*
_output_shapes
:`T
BN4_/addAddV2BN4_/mul:z:0BN4_/mul_1:z:0*
T0*
_output_shapes
:`Ь
BN4_/AssignVariableOpAssignVariableOpbn4__readvariableop_resourceBN4_/add:z:0^BN4_/ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(
BN4_/ReadVariableOp_1ReadVariableOpbn4__readvariableop_resource^BN4_/AssignVariableOp*
_output_shapes
:`*
dtype0б
BN4_/AssignVariableOp_1AssignVariableOpbn4__readvariableop_resourceBN4_/ReadVariableOp_1:value:0^BN4_/AssignVariableOp^BN4_/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(p
BN4_/ReadVariableOp_2ReadVariableOpbn4__readvariableop_2_resource*
_output_shapes
:`*
dtype0Q
BN4_/mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?l

BN4_/mul_2MulBN4_/ReadVariableOp_2:value:0BN4_/mul_2/y:output:0*
T0*
_output_shapes
:`Q
BN4_/mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=n

BN4_/mul_3MulBN4_/moments/Squeeze_1:output:0BN4_/mul_3/y:output:0*
T0*
_output_shapes
:`X

BN4_/add_1AddV2BN4_/mul_2:z:0BN4_/mul_3:z:0*
T0*
_output_shapes
:`д
BN4_/AssignVariableOp_2AssignVariableOpbn4__readvariableop_2_resourceBN4_/add_1:z:0^BN4_/ReadVariableOp_2*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(
BN4_/ReadVariableOp_3ReadVariableOpbn4__readvariableop_2_resource^BN4_/AssignVariableOp_2*
_output_shapes
:`*
dtype0е
BN4_/AssignVariableOp_3AssignVariableOpbn4__readvariableop_2_resourceBN4_/ReadVariableOp_3:value:0^BN4_/AssignVariableOp_2^BN4_/ReadVariableOp_3*
_output_shapes
 *
dtype0*
validate_shape(
BN4_/subSubCNN4_/BiasAdd:output:0BN4_/moments/Squeeze:output:0*
T0*0
_output_shapes
:џџџџџџџџџ`Q
BN4_/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75p

BN4_/add_2AddV2BN4_/moments/Squeeze_1:output:0BN4_/add_2/y:output:0*
T0*
_output_shapes
:`F
	BN4_/SqrtSqrtBN4_/add_2:z:0*
T0*
_output_shapes
:`o
BN4_/truedivRealDivBN4_/sub:z:0BN4_/Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ`p
BN4_/ReadVariableOp_4ReadVariableOpbn4__readvariableop_4_resource*
_output_shapes
:`*
dtype0}

BN4_/mul_4MulBN4_/ReadVariableOp_4:value:0BN4_/truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ`x
BN4_/add_3/ReadVariableOpReadVariableOp"bn4__add_3_readvariableop_resource*
_output_shapes
:`*
dtype0

BN4_/add_3AddV2BN4_/mul_4:z:0!BN4_/add_3/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ`_
re_lu_3/ReluReluBN4_/add_3:z:0*
T0*0
_output_shapes
:џџџџџџџџџ`Ћ
max_pooling2d_3/MaxPoolMaxPoolre_lu_3/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@`*
ksize
*
paddingVALID*
strides

CNN5_/Conv2D/ReadVariableOpReadVariableOp$cnn5__conv2d_readvariableop_resource*'
_output_shapes
:`*
dtype0Р
CNN5_/Conv2DConv2D max_pooling2d_3/MaxPool:output:0#CNN5_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

CNN5_/BiasAdd/ReadVariableOpReadVariableOp%cnn5__biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
CNN5_/BiasAddBiasAddCNN5_/Conv2D:output:0$CNN5_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@x
#BN5_/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          Ђ
BN5_/moments/meanMeanCNN5_/BiasAdd:output:0,BN5_/moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(w
BN5_/moments/StopGradientStopGradientBN5_/moments/mean:output:0*
T0*'
_output_shapes
:Њ
BN5_/moments/SquaredDifferenceSquaredDifferenceCNN5_/BiasAdd:output:0"BN5_/moments/StopGradient:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@|
'BN5_/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          Ж
BN5_/moments/varianceMean"BN5_/moments/SquaredDifference:z:00BN5_/moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(z
BN5_/moments/SqueezeSqueezeBN5_/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 
BN5_/moments/Squeeze_1SqueezeBN5_/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 m
BN5_/ReadVariableOpReadVariableOpbn5__readvariableop_resource*
_output_shapes	
:*
dtype0O

BN5_/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?g
BN5_/mulMulBN5_/ReadVariableOp:value:0BN5_/mul/y:output:0*
T0*
_output_shapes	
:Q
BN5_/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=m

BN5_/mul_1MulBN5_/moments/Squeeze:output:0BN5_/mul_1/y:output:0*
T0*
_output_shapes	
:U
BN5_/addAddV2BN5_/mul:z:0BN5_/mul_1:z:0*
T0*
_output_shapes	
:Ь
BN5_/AssignVariableOpAssignVariableOpbn5__readvariableop_resourceBN5_/add:z:0^BN5_/ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(
BN5_/ReadVariableOp_1ReadVariableOpbn5__readvariableop_resource^BN5_/AssignVariableOp*
_output_shapes	
:*
dtype0б
BN5_/AssignVariableOp_1AssignVariableOpbn5__readvariableop_resourceBN5_/ReadVariableOp_1:value:0^BN5_/AssignVariableOp^BN5_/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(q
BN5_/ReadVariableOp_2ReadVariableOpbn5__readvariableop_2_resource*
_output_shapes	
:*
dtype0Q
BN5_/mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?m

BN5_/mul_2MulBN5_/ReadVariableOp_2:value:0BN5_/mul_2/y:output:0*
T0*
_output_shapes	
:Q
BN5_/mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=o

BN5_/mul_3MulBN5_/moments/Squeeze_1:output:0BN5_/mul_3/y:output:0*
T0*
_output_shapes	
:Y

BN5_/add_1AddV2BN5_/mul_2:z:0BN5_/mul_3:z:0*
T0*
_output_shapes	
:д
BN5_/AssignVariableOp_2AssignVariableOpbn5__readvariableop_2_resourceBN5_/add_1:z:0^BN5_/ReadVariableOp_2*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(
BN5_/ReadVariableOp_3ReadVariableOpbn5__readvariableop_2_resource^BN5_/AssignVariableOp_2*
_output_shapes	
:*
dtype0е
BN5_/AssignVariableOp_3AssignVariableOpbn5__readvariableop_2_resourceBN5_/ReadVariableOp_3:value:0^BN5_/AssignVariableOp_2^BN5_/ReadVariableOp_3*
_output_shapes
 *
dtype0*
validate_shape(
BN5_/subSubCNN5_/BiasAdd:output:0BN5_/moments/Squeeze:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@Q
BN5_/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75q

BN5_/add_2AddV2BN5_/moments/Squeeze_1:output:0BN5_/add_2/y:output:0*
T0*
_output_shapes	
:G
	BN5_/SqrtSqrtBN5_/add_2:z:0*
T0*
_output_shapes	
:o
BN5_/truedivRealDivBN5_/sub:z:0BN5_/Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ@q
BN5_/ReadVariableOp_4ReadVariableOpbn5__readvariableop_4_resource*
_output_shapes	
:*
dtype0}

BN5_/mul_4MulBN5_/ReadVariableOp_4:value:0BN5_/truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ@y
BN5_/add_3/ReadVariableOpReadVariableOp"bn5__add_3_readvariableop_resource*
_output_shapes	
:*
dtype0

BN5_/add_3AddV2BN5_/mul_4:z:0!BN5_/add_3/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@_
re_lu_4/ReluReluBN5_/add_3:z:0*
T0*0
_output_shapes
:џџџџџџџџџ@Ќ
max_pooling2d_4/MaxPoolMaxPoolre_lu_4/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides

CNN6_/Conv2D/ReadVariableOpReadVariableOp$cnn6__conv2d_readvariableop_resource*(
_output_shapes
:Р*
dtype0Р
CNN6_/Conv2DConv2D max_pooling2d_4/MaxPool:output:0#CNN6_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ Р*
paddingSAME*
strides

CNN6_/BiasAdd/ReadVariableOpReadVariableOp%cnn6__biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0
CNN6_/BiasAddBiasAddCNN6_/Conv2D:output:0$CNN6_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ Рx
#BN6_/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          Ђ
BN6_/moments/meanMeanCNN6_/BiasAdd:output:0,BN6_/moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:Р*
	keep_dims(w
BN6_/moments/StopGradientStopGradientBN6_/moments/mean:output:0*
T0*'
_output_shapes
:РЊ
BN6_/moments/SquaredDifferenceSquaredDifferenceCNN6_/BiasAdd:output:0"BN6_/moments/StopGradient:output:0*
T0*0
_output_shapes
:џџџџџџџџџ Р|
'BN6_/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          Ж
BN6_/moments/varianceMean"BN6_/moments/SquaredDifference:z:00BN6_/moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:Р*
	keep_dims(z
BN6_/moments/SqueezeSqueezeBN6_/moments/mean:output:0*
T0*
_output_shapes	
:Р*
squeeze_dims
 
BN6_/moments/Squeeze_1SqueezeBN6_/moments/variance:output:0*
T0*
_output_shapes	
:Р*
squeeze_dims
 m
BN6_/ReadVariableOpReadVariableOpbn6__readvariableop_resource*
_output_shapes	
:Р*
dtype0O

BN6_/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?g
BN6_/mulMulBN6_/ReadVariableOp:value:0BN6_/mul/y:output:0*
T0*
_output_shapes	
:РQ
BN6_/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=m

BN6_/mul_1MulBN6_/moments/Squeeze:output:0BN6_/mul_1/y:output:0*
T0*
_output_shapes	
:РU
BN6_/addAddV2BN6_/mul:z:0BN6_/mul_1:z:0*
T0*
_output_shapes	
:РЬ
BN6_/AssignVariableOpAssignVariableOpbn6__readvariableop_resourceBN6_/add:z:0^BN6_/ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(
BN6_/ReadVariableOp_1ReadVariableOpbn6__readvariableop_resource^BN6_/AssignVariableOp*
_output_shapes	
:Р*
dtype0б
BN6_/AssignVariableOp_1AssignVariableOpbn6__readvariableop_resourceBN6_/ReadVariableOp_1:value:0^BN6_/AssignVariableOp^BN6_/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(q
BN6_/ReadVariableOp_2ReadVariableOpbn6__readvariableop_2_resource*
_output_shapes	
:Р*
dtype0Q
BN6_/mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?m

BN6_/mul_2MulBN6_/ReadVariableOp_2:value:0BN6_/mul_2/y:output:0*
T0*
_output_shapes	
:РQ
BN6_/mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=o

BN6_/mul_3MulBN6_/moments/Squeeze_1:output:0BN6_/mul_3/y:output:0*
T0*
_output_shapes	
:РY

BN6_/add_1AddV2BN6_/mul_2:z:0BN6_/mul_3:z:0*
T0*
_output_shapes	
:Рд
BN6_/AssignVariableOp_2AssignVariableOpbn6__readvariableop_2_resourceBN6_/add_1:z:0^BN6_/ReadVariableOp_2*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(
BN6_/ReadVariableOp_3ReadVariableOpbn6__readvariableop_2_resource^BN6_/AssignVariableOp_2*
_output_shapes	
:Р*
dtype0е
BN6_/AssignVariableOp_3AssignVariableOpbn6__readvariableop_2_resourceBN6_/ReadVariableOp_3:value:0^BN6_/AssignVariableOp_2^BN6_/ReadVariableOp_3*
_output_shapes
 *
dtype0*
validate_shape(
BN6_/subSubCNN6_/BiasAdd:output:0BN6_/moments/Squeeze:output:0*
T0*0
_output_shapes
:џџџџџџџџџ РQ
BN6_/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75q

BN6_/add_2AddV2BN6_/moments/Squeeze_1:output:0BN6_/add_2/y:output:0*
T0*
_output_shapes	
:РG
	BN6_/SqrtSqrtBN6_/add_2:z:0*
T0*
_output_shapes	
:Рo
BN6_/truedivRealDivBN6_/sub:z:0BN6_/Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ Рq
BN6_/ReadVariableOp_4ReadVariableOpbn6__readvariableop_4_resource*
_output_shapes	
:Р*
dtype0}

BN6_/mul_4MulBN6_/ReadVariableOp_4:value:0BN6_/truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ Рy
BN6_/add_3/ReadVariableOpReadVariableOp"bn6__add_3_readvariableop_resource*
_output_shapes	
:Р*
dtype0

BN6_/add_3AddV2BN6_/mul_4:z:0!BN6_/add_3/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ Р_
re_lu_5/ReluReluBN6_/add_3:z:0*
T0*0
_output_shapes
:џџџџџџџџџ РЗ
average_pooling2d/AvgPoolAvgPoolre_lu_5/Relu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџР*
ksize
 *
paddingVALID*
strides
f
FC1_preFlatten1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   
FC1_preFlatten1/ReshapeReshape"average_pooling2d/AvgPool:output:0FC1_preFlatten1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџР
FC1_/MatMul/ReadVariableOpReadVariableOp#fc1__matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0
FC1_/MatMulMatMul FC1_preFlatten1/Reshape:output:0"FC1_/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ|
FC1_/BiasAdd/ReadVariableOpReadVariableOp$fc1__biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
FC1_/BiasAddBiasAddFC1_/MatMul:product:0#FC1_/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџc
softmax/SoftmaxSoftmaxFC1_/BiasAdd:output:0*
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
:џџџџџџџџџП
NoOpNoOp^BN1_/AssignVariableOp^BN1_/AssignVariableOp_1^BN1_/AssignVariableOp_2^BN1_/AssignVariableOp_3^BN1_/ReadVariableOp^BN1_/ReadVariableOp_1^BN1_/ReadVariableOp_2^BN1_/ReadVariableOp_3^BN1_/ReadVariableOp_4^BN1_/add_3/ReadVariableOp^BN2_/AssignVariableOp^BN2_/AssignVariableOp_1^BN2_/AssignVariableOp_2^BN2_/AssignVariableOp_3^BN2_/ReadVariableOp^BN2_/ReadVariableOp_1^BN2_/ReadVariableOp_2^BN2_/ReadVariableOp_3^BN2_/ReadVariableOp_4^BN2_/add_3/ReadVariableOp^BN3_/AssignVariableOp^BN3_/AssignVariableOp_1^BN3_/AssignVariableOp_2^BN3_/AssignVariableOp_3^BN3_/ReadVariableOp^BN3_/ReadVariableOp_1^BN3_/ReadVariableOp_2^BN3_/ReadVariableOp_3^BN3_/ReadVariableOp_4^BN3_/add_3/ReadVariableOp^BN4_/AssignVariableOp^BN4_/AssignVariableOp_1^BN4_/AssignVariableOp_2^BN4_/AssignVariableOp_3^BN4_/ReadVariableOp^BN4_/ReadVariableOp_1^BN4_/ReadVariableOp_2^BN4_/ReadVariableOp_3^BN4_/ReadVariableOp_4^BN4_/add_3/ReadVariableOp^BN5_/AssignVariableOp^BN5_/AssignVariableOp_1^BN5_/AssignVariableOp_2^BN5_/AssignVariableOp_3^BN5_/ReadVariableOp^BN5_/ReadVariableOp_1^BN5_/ReadVariableOp_2^BN5_/ReadVariableOp_3^BN5_/ReadVariableOp_4^BN5_/add_3/ReadVariableOp^BN6_/AssignVariableOp^BN6_/AssignVariableOp_1^BN6_/AssignVariableOp_2^BN6_/AssignVariableOp_3^BN6_/ReadVariableOp^BN6_/ReadVariableOp_1^BN6_/ReadVariableOp_2^BN6_/ReadVariableOp_3^BN6_/ReadVariableOp_4^BN6_/add_3/ReadVariableOp^CNN1_/BiasAdd/ReadVariableOp^CNN1_/Conv2D/ReadVariableOp^CNN2_/BiasAdd/ReadVariableOp^CNN2_/Conv2D/ReadVariableOp^CNN3_/BiasAdd/ReadVariableOp^CNN3_/Conv2D/ReadVariableOp^CNN4_/BiasAdd/ReadVariableOp^CNN4_/Conv2D/ReadVariableOp^CNN5_/BiasAdd/ReadVariableOp^CNN5_/Conv2D/ReadVariableOp^CNN6_/BiasAdd/ReadVariableOp^CNN6_/Conv2D/ReadVariableOp^FC1_/BiasAdd/ReadVariableOp^FC1_/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2.
BN1_/AssignVariableOpBN1_/AssignVariableOp22
BN1_/AssignVariableOp_1BN1_/AssignVariableOp_122
BN1_/AssignVariableOp_2BN1_/AssignVariableOp_222
BN1_/AssignVariableOp_3BN1_/AssignVariableOp_32*
BN1_/ReadVariableOpBN1_/ReadVariableOp2.
BN1_/ReadVariableOp_1BN1_/ReadVariableOp_12.
BN1_/ReadVariableOp_2BN1_/ReadVariableOp_22.
BN1_/ReadVariableOp_3BN1_/ReadVariableOp_32.
BN1_/ReadVariableOp_4BN1_/ReadVariableOp_426
BN1_/add_3/ReadVariableOpBN1_/add_3/ReadVariableOp2.
BN2_/AssignVariableOpBN2_/AssignVariableOp22
BN2_/AssignVariableOp_1BN2_/AssignVariableOp_122
BN2_/AssignVariableOp_2BN2_/AssignVariableOp_222
BN2_/AssignVariableOp_3BN2_/AssignVariableOp_32*
BN2_/ReadVariableOpBN2_/ReadVariableOp2.
BN2_/ReadVariableOp_1BN2_/ReadVariableOp_12.
BN2_/ReadVariableOp_2BN2_/ReadVariableOp_22.
BN2_/ReadVariableOp_3BN2_/ReadVariableOp_32.
BN2_/ReadVariableOp_4BN2_/ReadVariableOp_426
BN2_/add_3/ReadVariableOpBN2_/add_3/ReadVariableOp2.
BN3_/AssignVariableOpBN3_/AssignVariableOp22
BN3_/AssignVariableOp_1BN3_/AssignVariableOp_122
BN3_/AssignVariableOp_2BN3_/AssignVariableOp_222
BN3_/AssignVariableOp_3BN3_/AssignVariableOp_32*
BN3_/ReadVariableOpBN3_/ReadVariableOp2.
BN3_/ReadVariableOp_1BN3_/ReadVariableOp_12.
BN3_/ReadVariableOp_2BN3_/ReadVariableOp_22.
BN3_/ReadVariableOp_3BN3_/ReadVariableOp_32.
BN3_/ReadVariableOp_4BN3_/ReadVariableOp_426
BN3_/add_3/ReadVariableOpBN3_/add_3/ReadVariableOp2.
BN4_/AssignVariableOpBN4_/AssignVariableOp22
BN4_/AssignVariableOp_1BN4_/AssignVariableOp_122
BN4_/AssignVariableOp_2BN4_/AssignVariableOp_222
BN4_/AssignVariableOp_3BN4_/AssignVariableOp_32*
BN4_/ReadVariableOpBN4_/ReadVariableOp2.
BN4_/ReadVariableOp_1BN4_/ReadVariableOp_12.
BN4_/ReadVariableOp_2BN4_/ReadVariableOp_22.
BN4_/ReadVariableOp_3BN4_/ReadVariableOp_32.
BN4_/ReadVariableOp_4BN4_/ReadVariableOp_426
BN4_/add_3/ReadVariableOpBN4_/add_3/ReadVariableOp2.
BN5_/AssignVariableOpBN5_/AssignVariableOp22
BN5_/AssignVariableOp_1BN5_/AssignVariableOp_122
BN5_/AssignVariableOp_2BN5_/AssignVariableOp_222
BN5_/AssignVariableOp_3BN5_/AssignVariableOp_32*
BN5_/ReadVariableOpBN5_/ReadVariableOp2.
BN5_/ReadVariableOp_1BN5_/ReadVariableOp_12.
BN5_/ReadVariableOp_2BN5_/ReadVariableOp_22.
BN5_/ReadVariableOp_3BN5_/ReadVariableOp_32.
BN5_/ReadVariableOp_4BN5_/ReadVariableOp_426
BN5_/add_3/ReadVariableOpBN5_/add_3/ReadVariableOp2.
BN6_/AssignVariableOpBN6_/AssignVariableOp22
BN6_/AssignVariableOp_1BN6_/AssignVariableOp_122
BN6_/AssignVariableOp_2BN6_/AssignVariableOp_222
BN6_/AssignVariableOp_3BN6_/AssignVariableOp_32*
BN6_/ReadVariableOpBN6_/ReadVariableOp2.
BN6_/ReadVariableOp_1BN6_/ReadVariableOp_12.
BN6_/ReadVariableOp_2BN6_/ReadVariableOp_22.
BN6_/ReadVariableOp_3BN6_/ReadVariableOp_32.
BN6_/ReadVariableOp_4BN6_/ReadVariableOp_426
BN6_/add_3/ReadVariableOpBN6_/add_3/ReadVariableOp2<
CNN1_/BiasAdd/ReadVariableOpCNN1_/BiasAdd/ReadVariableOp2:
CNN1_/Conv2D/ReadVariableOpCNN1_/Conv2D/ReadVariableOp2<
CNN2_/BiasAdd/ReadVariableOpCNN2_/BiasAdd/ReadVariableOp2:
CNN2_/Conv2D/ReadVariableOpCNN2_/Conv2D/ReadVariableOp2<
CNN3_/BiasAdd/ReadVariableOpCNN3_/BiasAdd/ReadVariableOp2:
CNN3_/Conv2D/ReadVariableOpCNN3_/Conv2D/ReadVariableOp2<
CNN4_/BiasAdd/ReadVariableOpCNN4_/BiasAdd/ReadVariableOp2:
CNN4_/Conv2D/ReadVariableOpCNN4_/Conv2D/ReadVariableOp2<
CNN5_/BiasAdd/ReadVariableOpCNN5_/BiasAdd/ReadVariableOp2:
CNN5_/Conv2D/ReadVariableOpCNN5_/Conv2D/ReadVariableOp2<
CNN6_/BiasAdd/ReadVariableOpCNN6_/BiasAdd/ReadVariableOp2:
CNN6_/Conv2D/ReadVariableOpCNN6_/Conv2D/ReadVariableOp2:
FC1_/BiasAdd/ReadVariableOpFC1_/BiasAdd/ReadVariableOp28
FC1_/MatMul/ReadVariableOpFC1_/MatMul/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Љ

њ
A__inference_CNN4__layer_call_and_return_conditional_losses_160544

inputs8
conv2d_readvariableop_resource:@`-
biasadd_readvariableop_resource:`
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@`*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ`*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ`h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ`w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ћ
Р
%__inference_BN3__layer_call_fn_162993

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN3__layer_call_and_return_conditional_losses_161147x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ћ

ќ
A__inference_CNN5__layer_call_and_return_conditional_losses_163213

inputs9
conv2d_readvariableop_resource:`.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:`*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@`
 
_user_specified_nameinputs
Ђ*
Ы
@__inference_BN4__layer_call_and_return_conditional_losses_161065

inputs%
readvariableop_resource:`'
readvariableop_2_resource:`'
readvariableop_4_resource:`+
add_3_readvariableop_resource:`
identityЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_2ЂAssignVariableOp_3ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3ЂReadVariableOp_4Ђadd_3/ReadVariableOps
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:`*
	keep_dims(l
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:`
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*0
_output_shapes
:џџџџџџџџџ`w
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          І
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:`*
	keep_dims(o
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:`*
squeeze_dims
 u
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:`*
squeeze_dims
 b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?W
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes
:`L
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=]
mul_1Mulmoments/Squeeze:output:0mul_1/y:output:0*
T0*
_output_shapes
:`E
addAddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:`И
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(w
ReadVariableOp_1ReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes
:`*
dtype0И
AssignVariableOp_1AssignVariableOpreadvariableop_resourceReadVariableOp_1:value:0^AssignVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(f
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
:`*
dtype0L
mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?]
mul_2MulReadVariableOp_2:value:0mul_2/y:output:0*
T0*
_output_shapes
:`L
mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=_
mul_3Mulmoments/Squeeze_1:output:0mul_3/y:output:0*
T0*
_output_shapes
:`I
add_1AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:`Р
AssignVariableOp_2AssignVariableOpreadvariableop_2_resource	add_1:z:0^ReadVariableOp_2*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape({
ReadVariableOp_3ReadVariableOpreadvariableop_2_resource^AssignVariableOp_2*
_output_shapes
:`*
dtype0М
AssignVariableOp_3AssignVariableOpreadvariableop_2_resourceReadVariableOp_3:value:0^AssignVariableOp_2^ReadVariableOp_3*
_output_shapes
 *
dtype0*
validate_shape(g
subSubinputsmoments/Squeeze:output:0*
T0*0
_output_shapes
:џџџџџџџџџ`L
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75a
add_2AddV2moments/Squeeze_1:output:0add_2/y:output:0*
T0*
_output_shapes
:`<
SqrtSqrt	add_2:z:0*
T0*
_output_shapes
:``
truedivRealDivsub:z:0Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ`f
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource*
_output_shapes
:`*
dtype0n
mul_4MulReadVariableOp_4:value:0truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ`n
add_3/ReadVariableOpReadVariableOpadd_3_readvariableop_resource*
_output_shapes
:`*
dtype0r
add_3AddV2	mul_4:z:0add_3/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ`a
IdentityIdentity	add_3:z:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^add_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ`: : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42,
add_3/ReadVariableOpadd_3/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ`
 
_user_specified_nameinputs
n
с
A__inference_model_layer_call_and_return_conditional_losses_160733

inputs&
cnn1__160386: 
cnn1__160388: 
bn1__160411: 
bn1__160413: 
bn1__160415: 
bn1__160417: &
cnn2__160439: 0
cnn2__160441:0
bn2__160464:0
bn2__160466:0
bn2__160468:0
bn2__160470:0&
cnn3__160492:0@
cnn3__160494:@
bn3__160517:@
bn3__160519:@
bn3__160521:@
bn3__160523:@&
cnn4__160545:@`
cnn4__160547:`
bn4__160570:`
bn4__160572:`
bn4__160574:`
bn4__160576:`'
cnn5__160598:`
cnn5__160600:	
bn5__160623:	
bn5__160625:	
bn5__160627:	
bn5__160629:	(
cnn6__160651:Р
cnn6__160653:	Р
bn6__160676:	Р
bn6__160678:	Р
bn6__160680:	Р
bn6__160682:	Р
fc1__160712:	Р
fc1__160714:
identityЂBN1_/StatefulPartitionedCallЂBN2_/StatefulPartitionedCallЂBN3_/StatefulPartitionedCallЂBN4_/StatefulPartitionedCallЂBN5_/StatefulPartitionedCallЂBN6_/StatefulPartitionedCallЂCNN1_/StatefulPartitionedCallЂCNN2_/StatefulPartitionedCallЂCNN3_/StatefulPartitionedCallЂCNN4_/StatefulPartitionedCallЂCNN5_/StatefulPartitionedCallЂCNN6_/StatefulPartitionedCallЂFC1_/StatefulPartitionedCall№
CNN1_/StatefulPartitionedCallStatefulPartitionedCallinputscnn1__160386cnn1__160388*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN1__layer_call_and_return_conditional_losses_160385Њ
BN1_/StatefulPartitionedCallStatefulPartitionedCall&CNN1_/StatefulPartitionedCall:output:0bn1__160411bn1__160413bn1__160415bn1__160417*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN1__layer_call_and_return_conditional_losses_160410н
re_lu/PartitionedCallPartitionedCall%BN1_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_re_lu_layer_call_and_return_conditional_losses_160425ц
max_pooling2d/PartitionedCallPartitionedCallre_lu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_160305
CNN2_/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0cnn2__160439cnn2__160441*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN2__layer_call_and_return_conditional_losses_160438Њ
BN2_/StatefulPartitionedCallStatefulPartitionedCall&CNN2_/StatefulPartitionedCall:output:0bn2__160464bn2__160466bn2__160468bn2__160470*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN2__layer_call_and_return_conditional_losses_160463с
re_lu_1/PartitionedCallPartitionedCall%BN2_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_1_layer_call_and_return_conditional_losses_160478ь
max_pooling2d_1/PartitionedCallPartitionedCall re_lu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_160317
CNN3_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0cnn3__160492cnn3__160494*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN3__layer_call_and_return_conditional_losses_160491Њ
BN3_/StatefulPartitionedCallStatefulPartitionedCall&CNN3_/StatefulPartitionedCall:output:0bn3__160517bn3__160519bn3__160521bn3__160523*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN3__layer_call_and_return_conditional_losses_160516с
re_lu_2/PartitionedCallPartitionedCall%BN3_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_2_layer_call_and_return_conditional_losses_160531ь
max_pooling2d_2/PartitionedCallPartitionedCall re_lu_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_160329
CNN4_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0cnn4__160545cnn4__160547*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN4__layer_call_and_return_conditional_losses_160544Њ
BN4_/StatefulPartitionedCallStatefulPartitionedCall&CNN4_/StatefulPartitionedCall:output:0bn4__160570bn4__160572bn4__160574bn4__160576*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN4__layer_call_and_return_conditional_losses_160569с
re_lu_3/PartitionedCallPartitionedCall%BN4_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_3_layer_call_and_return_conditional_losses_160584ы
max_pooling2d_3/PartitionedCallPartitionedCall re_lu_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_160341
CNN5_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0cnn5__160598cnn5__160600*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN5__layer_call_and_return_conditional_losses_160597Њ
BN5_/StatefulPartitionedCallStatefulPartitionedCall&CNN5_/StatefulPartitionedCall:output:0bn5__160623bn5__160625bn5__160627bn5__160629*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN5__layer_call_and_return_conditional_losses_160622с
re_lu_4/PartitionedCallPartitionedCall%BN5_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_4_layer_call_and_return_conditional_losses_160637ь
max_pooling2d_4/PartitionedCallPartitionedCall re_lu_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_160353
CNN6_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0cnn6__160651cnn6__160653*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ Р*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN6__layer_call_and_return_conditional_losses_160650Њ
BN6_/StatefulPartitionedCallStatefulPartitionedCall&CNN6_/StatefulPartitionedCall:output:0bn6__160676bn6__160678bn6__160680bn6__160682*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ Р*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN6__layer_call_and_return_conditional_losses_160675с
re_lu_5/PartitionedCallPartitionedCall%BN6_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ Р* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_5_layer_call_and_return_conditional_losses_160690№
!average_pooling2d/PartitionedCallPartitionedCall re_lu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџР* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_160365ю
FC1_preFlatten1/PartitionedCallPartitionedCall*average_pooling2d/PartitionedCall:output:0*
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
GPU2*0J 8 *T
fORM
K__inference_FC1_preFlatten1_layer_call_and_return_conditional_losses_160699
FC1_/StatefulPartitionedCallStatefulPartitionedCall(FC1_preFlatten1/PartitionedCall:output:0fc1__160712fc1__160714*
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
@__inference_FC1__layer_call_and_return_conditional_losses_160711и
softmax/PartitionedCallPartitionedCall%FC1_/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *L
fGRE
C__inference_softmax_layer_call_and_return_conditional_losses_160722г
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
GPU2*0J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_160730o
IdentityIdentity flatten/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџп
NoOpNoOp^BN1_/StatefulPartitionedCall^BN2_/StatefulPartitionedCall^BN3_/StatefulPartitionedCall^BN4_/StatefulPartitionedCall^BN5_/StatefulPartitionedCall^BN6_/StatefulPartitionedCall^CNN1_/StatefulPartitionedCall^CNN2_/StatefulPartitionedCall^CNN3_/StatefulPartitionedCall^CNN4_/StatefulPartitionedCall^CNN5_/StatefulPartitionedCall^CNN6_/StatefulPartitionedCall^FC1_/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2<
BN1_/StatefulPartitionedCallBN1_/StatefulPartitionedCall2<
BN2_/StatefulPartitionedCallBN2_/StatefulPartitionedCall2<
BN3_/StatefulPartitionedCallBN3_/StatefulPartitionedCall2<
BN4_/StatefulPartitionedCallBN4_/StatefulPartitionedCall2<
BN5_/StatefulPartitionedCallBN5_/StatefulPartitionedCall2<
BN6_/StatefulPartitionedCallBN6_/StatefulPartitionedCall2>
CNN1_/StatefulPartitionedCallCNN1_/StatefulPartitionedCall2>
CNN2_/StatefulPartitionedCallCNN2_/StatefulPartitionedCall2>
CNN3_/StatefulPartitionedCallCNN3_/StatefulPartitionedCall2>
CNN4_/StatefulPartitionedCallCNN4_/StatefulPartitionedCall2>
CNN5_/StatefulPartitionedCallCNN5_/StatefulPartitionedCall2>
CNN6_/StatefulPartitionedCallCNN6_/StatefulPartitionedCall2<
FC1_/StatefulPartitionedCallFC1_/StatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
њm
с
A__inference_model_layer_call_and_return_conditional_losses_161523

inputs&
cnn1__161418: 
cnn1__161420: 
bn1__161423: 
bn1__161425: 
bn1__161427: 
bn1__161429: &
cnn2__161434: 0
cnn2__161436:0
bn2__161439:0
bn2__161441:0
bn2__161443:0
bn2__161445:0&
cnn3__161450:0@
cnn3__161452:@
bn3__161455:@
bn3__161457:@
bn3__161459:@
bn3__161461:@&
cnn4__161466:@`
cnn4__161468:`
bn4__161471:`
bn4__161473:`
bn4__161475:`
bn4__161477:`'
cnn5__161482:`
cnn5__161484:	
bn5__161487:	
bn5__161489:	
bn5__161491:	
bn5__161493:	(
cnn6__161498:Р
cnn6__161500:	Р
bn6__161503:	Р
bn6__161505:	Р
bn6__161507:	Р
bn6__161509:	Р
fc1__161515:	Р
fc1__161517:
identityЂBN1_/StatefulPartitionedCallЂBN2_/StatefulPartitionedCallЂBN3_/StatefulPartitionedCallЂBN4_/StatefulPartitionedCallЂBN5_/StatefulPartitionedCallЂBN6_/StatefulPartitionedCallЂCNN1_/StatefulPartitionedCallЂCNN2_/StatefulPartitionedCallЂCNN3_/StatefulPartitionedCallЂCNN4_/StatefulPartitionedCallЂCNN5_/StatefulPartitionedCallЂCNN6_/StatefulPartitionedCallЂFC1_/StatefulPartitionedCall№
CNN1_/StatefulPartitionedCallStatefulPartitionedCallinputscnn1__161418cnn1__161420*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN1__layer_call_and_return_conditional_losses_160385Ј
BN1_/StatefulPartitionedCallStatefulPartitionedCall&CNN1_/StatefulPartitionedCall:output:0bn1__161423bn1__161425bn1__161427bn1__161429*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN1__layer_call_and_return_conditional_losses_161311н
re_lu/PartitionedCallPartitionedCall%BN1_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_re_lu_layer_call_and_return_conditional_losses_160425ц
max_pooling2d/PartitionedCallPartitionedCallre_lu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_160305
CNN2_/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0cnn2__161434cnn2__161436*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN2__layer_call_and_return_conditional_losses_160438Ј
BN2_/StatefulPartitionedCallStatefulPartitionedCall&CNN2_/StatefulPartitionedCall:output:0bn2__161439bn2__161441bn2__161443bn2__161445*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN2__layer_call_and_return_conditional_losses_161229с
re_lu_1/PartitionedCallPartitionedCall%BN2_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_1_layer_call_and_return_conditional_losses_160478ь
max_pooling2d_1/PartitionedCallPartitionedCall re_lu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_160317
CNN3_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0cnn3__161450cnn3__161452*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN3__layer_call_and_return_conditional_losses_160491Ј
BN3_/StatefulPartitionedCallStatefulPartitionedCall&CNN3_/StatefulPartitionedCall:output:0bn3__161455bn3__161457bn3__161459bn3__161461*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN3__layer_call_and_return_conditional_losses_161147с
re_lu_2/PartitionedCallPartitionedCall%BN3_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_2_layer_call_and_return_conditional_losses_160531ь
max_pooling2d_2/PartitionedCallPartitionedCall re_lu_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_160329
CNN4_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0cnn4__161466cnn4__161468*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN4__layer_call_and_return_conditional_losses_160544Ј
BN4_/StatefulPartitionedCallStatefulPartitionedCall&CNN4_/StatefulPartitionedCall:output:0bn4__161471bn4__161473bn4__161475bn4__161477*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN4__layer_call_and_return_conditional_losses_161065с
re_lu_3/PartitionedCallPartitionedCall%BN4_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_3_layer_call_and_return_conditional_losses_160584ы
max_pooling2d_3/PartitionedCallPartitionedCall re_lu_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_160341
CNN5_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0cnn5__161482cnn5__161484*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN5__layer_call_and_return_conditional_losses_160597Ј
BN5_/StatefulPartitionedCallStatefulPartitionedCall&CNN5_/StatefulPartitionedCall:output:0bn5__161487bn5__161489bn5__161491bn5__161493*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN5__layer_call_and_return_conditional_losses_160983с
re_lu_4/PartitionedCallPartitionedCall%BN5_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_4_layer_call_and_return_conditional_losses_160637ь
max_pooling2d_4/PartitionedCallPartitionedCall re_lu_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_160353
CNN6_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0cnn6__161498cnn6__161500*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ Р*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN6__layer_call_and_return_conditional_losses_160650Ј
BN6_/StatefulPartitionedCallStatefulPartitionedCall&CNN6_/StatefulPartitionedCall:output:0bn6__161503bn6__161505bn6__161507bn6__161509*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ Р*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN6__layer_call_and_return_conditional_losses_160901с
re_lu_5/PartitionedCallPartitionedCall%BN6_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ Р* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_5_layer_call_and_return_conditional_losses_160690№
!average_pooling2d/PartitionedCallPartitionedCall re_lu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџР* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_160365ю
FC1_preFlatten1/PartitionedCallPartitionedCall*average_pooling2d/PartitionedCall:output:0*
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
GPU2*0J 8 *T
fORM
K__inference_FC1_preFlatten1_layer_call_and_return_conditional_losses_160699
FC1_/StatefulPartitionedCallStatefulPartitionedCall(FC1_preFlatten1/PartitionedCall:output:0fc1__161515fc1__161517*
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
@__inference_FC1__layer_call_and_return_conditional_losses_160711и
softmax/PartitionedCallPartitionedCall%FC1_/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *L
fGRE
C__inference_softmax_layer_call_and_return_conditional_losses_160722г
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
GPU2*0J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_160730o
IdentityIdentity flatten/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџп
NoOpNoOp^BN1_/StatefulPartitionedCall^BN2_/StatefulPartitionedCall^BN3_/StatefulPartitionedCall^BN4_/StatefulPartitionedCall^BN5_/StatefulPartitionedCall^BN6_/StatefulPartitionedCall^CNN1_/StatefulPartitionedCall^CNN2_/StatefulPartitionedCall^CNN3_/StatefulPartitionedCall^CNN4_/StatefulPartitionedCall^CNN5_/StatefulPartitionedCall^CNN6_/StatefulPartitionedCall^FC1_/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2<
BN1_/StatefulPartitionedCallBN1_/StatefulPartitionedCall2<
BN2_/StatefulPartitionedCallBN2_/StatefulPartitionedCall2<
BN3_/StatefulPartitionedCallBN3_/StatefulPartitionedCall2<
BN4_/StatefulPartitionedCallBN4_/StatefulPartitionedCall2<
BN5_/StatefulPartitionedCallBN5_/StatefulPartitionedCall2<
BN6_/StatefulPartitionedCallBN6_/StatefulPartitionedCall2>
CNN1_/StatefulPartitionedCallCNN1_/StatefulPartitionedCall2>
CNN2_/StatefulPartitionedCallCNN2_/StatefulPartitionedCall2>
CNN3_/StatefulPartitionedCallCNN3_/StatefulPartitionedCall2>
CNN4_/StatefulPartitionedCallCNN4_/StatefulPartitionedCall2>
CNN5_/StatefulPartitionedCallCNN5_/StatefulPartitionedCall2>
CNN6_/StatefulPartitionedCallCNN6_/StatefulPartitionedCall2<
FC1_/StatefulPartitionedCallFC1_/StatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
о
	
$__inference_signature_wrapper_161984
input_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: 0
	unknown_6:0
	unknown_7:0
	unknown_8:0
	unknown_9:0

unknown_10:0$

unknown_11:0@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@`

unknown_18:`

unknown_19:`

unknown_20:`

unknown_21:`

unknown_22:`%

unknown_23:`

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	&

unknown_29:Р

unknown_30:	Р

unknown_31:	Р

unknown_32:	Р

unknown_33:	Р

unknown_34:	Р

unknown_35:	Р

unknown_36:
identityЂStatefulPartitionedCallЉ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_160296o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1

з
@__inference_BN4__layer_call_and_return_conditional_losses_160569

inputs)
sub_readvariableop_resource:`%
readvariableop_resource:`'
readvariableop_1_resource:`+
add_1_readvariableop_resource:`
identityЂReadVariableOpЂReadVariableOp_1Ђadd_1/ReadVariableOpЂsub/ReadVariableOpj
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:`*
dtype0i
subSubinputssub/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ`b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype0J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75Y
addAddV2ReadVariableOp:value:0add/y:output:0*
T0*
_output_shapes
:`:
SqrtSqrtadd:z:0*
T0*
_output_shapes
:``
truedivRealDivsub:z:0Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ`f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype0l
mulMulReadVariableOp_1:value:0truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ`n
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:`*
dtype0p
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ`a
IdentityIdentity	add_1:z:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^add_1/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ`: : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ`
 
_user_specified_nameinputs
Ћ
Р
%__inference_BN1__layer_call_fn_162747

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN1__layer_call_and_return_conditional_losses_161311x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ё
	
&__inference_model_layer_call_fn_162146

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: 0
	unknown_6:0
	unknown_7:0
	unknown_8:0
	unknown_9:0

unknown_10:0$

unknown_11:0@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@`

unknown_18:`

unknown_19:`

unknown_20:`

unknown_21:`

unknown_22:`%

unknown_23:`

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	&

unknown_29:Р

unknown_30:	Р

unknown_31:	Р

unknown_32:	Р

unknown_33:	Р

unknown_34:	Р

unknown_35:	Р

unknown_36:
identityЂStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*<
_read_only_resource_inputs
 #$%&*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_161523o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Џ
L
#__inference__update_step_xla_162692
gradient
variable:	Р*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:Р: *
	_noinline(:E A

_output_shapes	
:Р
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ќ
K
#__inference__update_step_xla_162602
gradient
variable:0*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:0: *
	_noinline(:D @

_output_shapes
:0
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ќ
K
#__inference__update_step_xla_162632
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable

л
@__inference_BN6__layer_call_and_return_conditional_losses_163381

inputs*
sub_readvariableop_resource:	Р&
readvariableop_resource:	Р(
readvariableop_1_resource:	Р,
add_1_readvariableop_resource:	Р
identityЂReadVariableOpЂReadVariableOp_1Ђadd_1/ReadVariableOpЂsub/ReadVariableOpk
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:Р*
dtype0i
subSubinputssub/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ Рc
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:Р*
dtype0J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75Z
addAddV2ReadVariableOp:value:0add/y:output:0*
T0*
_output_shapes	
:Р;
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:Р`
truedivRealDivsub:z:0Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ Рg
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:Р*
dtype0l
mulMulReadVariableOp_1:value:0truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ Рo
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:Р*
dtype0p
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ Рa
IdentityIdentity	add_1:z:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ Р
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^add_1/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ Р: : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ Р
 
_user_specified_nameinputs

	
&__inference_model_layer_call_fn_160812
input_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: 0
	unknown_6:0
	unknown_7:0
	unknown_8:0
	unknown_9:0

unknown_10:0$

unknown_11:0@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@`

unknown_18:`

unknown_19:`

unknown_20:`

unknown_21:`

unknown_22:`%

unknown_23:`

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	&

unknown_29:Р

unknown_30:	Р

unknown_31:	Р

unknown_32:	Р

unknown_33:	Р

unknown_34:	Р

unknown_35:	Р

unknown_36:
identityЂStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_160733o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1
ы
_
C__inference_re_lu_4_layer_call_and_return_conditional_losses_163307

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:џџџџџџџџџ@c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ@:X T
0
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Й*
Я
@__inference_BN5__layer_call_and_return_conditional_losses_160983

inputs&
readvariableop_resource:	(
readvariableop_2_resource:	(
readvariableop_4_resource:	,
add_3_readvariableop_resource:	
identityЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_2ЂAssignVariableOp_3ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3ЂReadVariableOp_4Ђadd_3/ReadVariableOps
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(m
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@w
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          Ї
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(p
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 v
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?X
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes	
:L
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=^
mul_1Mulmoments/Squeeze:output:0mul_1/y:output:0*
T0*
_output_shapes	
:F
addAddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes	
:И
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(x
ReadVariableOp_1ReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes	
:*
dtype0И
AssignVariableOp_1AssignVariableOpreadvariableop_resourceReadVariableOp_1:value:0^AssignVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(g
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes	
:*
dtype0L
mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?^
mul_2MulReadVariableOp_2:value:0mul_2/y:output:0*
T0*
_output_shapes	
:L
mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=`
mul_3Mulmoments/Squeeze_1:output:0mul_3/y:output:0*
T0*
_output_shapes	
:J
add_1AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes	
:Р
AssignVariableOp_2AssignVariableOpreadvariableop_2_resource	add_1:z:0^ReadVariableOp_2*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(|
ReadVariableOp_3ReadVariableOpreadvariableop_2_resource^AssignVariableOp_2*
_output_shapes	
:*
dtype0М
AssignVariableOp_3AssignVariableOpreadvariableop_2_resourceReadVariableOp_3:value:0^AssignVariableOp_2^ReadVariableOp_3*
_output_shapes
 *
dtype0*
validate_shape(g
subSubinputsmoments/Squeeze:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@L
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75b
add_2AddV2moments/Squeeze_1:output:0add_2/y:output:0*
T0*
_output_shapes	
:=
SqrtSqrt	add_2:z:0*
T0*
_output_shapes	
:`
truedivRealDivsub:z:0Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ@g
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource*
_output_shapes	
:*
dtype0n
mul_4MulReadVariableOp_4:value:0truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ@o
add_3/ReadVariableOpReadVariableOpadd_3_readvariableop_resource*
_output_shapes	
:*
dtype0r
add_3AddV2	mul_4:z:0add_3/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@a
IdentityIdentity	add_3:z:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^add_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ@: : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42,
add_3/ReadVariableOpadd_3/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Д
Љ
!__inference__wrapped_model_160296
input_1D
*model_cnn1__conv2d_readvariableop_resource: 9
+model_cnn1__biasadd_readvariableop_resource: 4
&model_bn1__sub_readvariableop_resource: 0
"model_bn1__readvariableop_resource: 2
$model_bn1__readvariableop_1_resource: 6
(model_bn1__add_1_readvariableop_resource: D
*model_cnn2__conv2d_readvariableop_resource: 09
+model_cnn2__biasadd_readvariableop_resource:04
&model_bn2__sub_readvariableop_resource:00
"model_bn2__readvariableop_resource:02
$model_bn2__readvariableop_1_resource:06
(model_bn2__add_1_readvariableop_resource:0D
*model_cnn3__conv2d_readvariableop_resource:0@9
+model_cnn3__biasadd_readvariableop_resource:@4
&model_bn3__sub_readvariableop_resource:@0
"model_bn3__readvariableop_resource:@2
$model_bn3__readvariableop_1_resource:@6
(model_bn3__add_1_readvariableop_resource:@D
*model_cnn4__conv2d_readvariableop_resource:@`9
+model_cnn4__biasadd_readvariableop_resource:`4
&model_bn4__sub_readvariableop_resource:`0
"model_bn4__readvariableop_resource:`2
$model_bn4__readvariableop_1_resource:`6
(model_bn4__add_1_readvariableop_resource:`E
*model_cnn5__conv2d_readvariableop_resource:`:
+model_cnn5__biasadd_readvariableop_resource:	5
&model_bn5__sub_readvariableop_resource:	1
"model_bn5__readvariableop_resource:	3
$model_bn5__readvariableop_1_resource:	7
(model_bn5__add_1_readvariableop_resource:	F
*model_cnn6__conv2d_readvariableop_resource:Р:
+model_cnn6__biasadd_readvariableop_resource:	Р5
&model_bn6__sub_readvariableop_resource:	Р1
"model_bn6__readvariableop_resource:	Р3
$model_bn6__readvariableop_1_resource:	Р7
(model_bn6__add_1_readvariableop_resource:	Р<
)model_fc1__matmul_readvariableop_resource:	Р8
*model_fc1__biasadd_readvariableop_resource:
identityЂmodel/BN1_/ReadVariableOpЂmodel/BN1_/ReadVariableOp_1Ђmodel/BN1_/add_1/ReadVariableOpЂmodel/BN1_/sub/ReadVariableOpЂmodel/BN2_/ReadVariableOpЂmodel/BN2_/ReadVariableOp_1Ђmodel/BN2_/add_1/ReadVariableOpЂmodel/BN2_/sub/ReadVariableOpЂmodel/BN3_/ReadVariableOpЂmodel/BN3_/ReadVariableOp_1Ђmodel/BN3_/add_1/ReadVariableOpЂmodel/BN3_/sub/ReadVariableOpЂmodel/BN4_/ReadVariableOpЂmodel/BN4_/ReadVariableOp_1Ђmodel/BN4_/add_1/ReadVariableOpЂmodel/BN4_/sub/ReadVariableOpЂmodel/BN5_/ReadVariableOpЂmodel/BN5_/ReadVariableOp_1Ђmodel/BN5_/add_1/ReadVariableOpЂmodel/BN5_/sub/ReadVariableOpЂmodel/BN6_/ReadVariableOpЂmodel/BN6_/ReadVariableOp_1Ђmodel/BN6_/add_1/ReadVariableOpЂmodel/BN6_/sub/ReadVariableOpЂ"model/CNN1_/BiasAdd/ReadVariableOpЂ!model/CNN1_/Conv2D/ReadVariableOpЂ"model/CNN2_/BiasAdd/ReadVariableOpЂ!model/CNN2_/Conv2D/ReadVariableOpЂ"model/CNN3_/BiasAdd/ReadVariableOpЂ!model/CNN3_/Conv2D/ReadVariableOpЂ"model/CNN4_/BiasAdd/ReadVariableOpЂ!model/CNN4_/Conv2D/ReadVariableOpЂ"model/CNN5_/BiasAdd/ReadVariableOpЂ!model/CNN5_/Conv2D/ReadVariableOpЂ"model/CNN6_/BiasAdd/ReadVariableOpЂ!model/CNN6_/Conv2D/ReadVariableOpЂ!model/FC1_/BiasAdd/ReadVariableOpЂ model/FC1_/MatMul/ReadVariableOp
!model/CNN1_/Conv2D/ReadVariableOpReadVariableOp*model_cnn1__conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Г
model/CNN1_/Conv2DConv2Dinput_1)model/CNN1_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ *
paddingSAME*
strides

"model/CNN1_/BiasAdd/ReadVariableOpReadVariableOp+model_cnn1__biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ђ
model/CNN1_/BiasAddBiasAddmodel/CNN1_/Conv2D:output:0*model/CNN1_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ 
model/BN1_/sub/ReadVariableOpReadVariableOp&model_bn1__sub_readvariableop_resource*
_output_shapes
: *
dtype0
model/BN1_/subSubmodel/CNN1_/BiasAdd:output:0%model/BN1_/sub/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ x
model/BN1_/ReadVariableOpReadVariableOp"model_bn1__readvariableop_resource*
_output_shapes
: *
dtype0U
model/BN1_/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75z
model/BN1_/addAddV2!model/BN1_/ReadVariableOp:value:0model/BN1_/add/y:output:0*
T0*
_output_shapes
: P
model/BN1_/SqrtSqrtmodel/BN1_/add:z:0*
T0*
_output_shapes
: 
model/BN1_/truedivRealDivmodel/BN1_/sub:z:0model/BN1_/Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ |
model/BN1_/ReadVariableOp_1ReadVariableOp$model_bn1__readvariableop_1_resource*
_output_shapes
: *
dtype0
model/BN1_/mulMul#model/BN1_/ReadVariableOp_1:value:0model/BN1_/truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ 
model/BN1_/add_1/ReadVariableOpReadVariableOp(model_bn1__add_1_readvariableop_resource*
_output_shapes
: *
dtype0
model/BN1_/add_1AddV2model/BN1_/mul:z:0'model/BN1_/add_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ i
model/re_lu/ReluRelumodel/BN1_/add_1:z:0*
T0*0
_output_shapes
:џџџџџџџџџ Д
model/max_pooling2d/MaxPoolMaxPoolmodel/re_lu/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides

!model/CNN2_/Conv2D/ReadVariableOpReadVariableOp*model_cnn2__conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype0а
model/CNN2_/Conv2DConv2D$model/max_pooling2d/MaxPool:output:0)model/CNN2_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0*
paddingSAME*
strides

"model/CNN2_/BiasAdd/ReadVariableOpReadVariableOp+model_cnn2__biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0Ђ
model/CNN2_/BiasAddBiasAddmodel/CNN2_/Conv2D:output:0*model/CNN2_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0
model/BN2_/sub/ReadVariableOpReadVariableOp&model_bn2__sub_readvariableop_resource*
_output_shapes
:0*
dtype0
model/BN2_/subSubmodel/CNN2_/BiasAdd:output:0%model/BN2_/sub/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0x
model/BN2_/ReadVariableOpReadVariableOp"model_bn2__readvariableop_resource*
_output_shapes
:0*
dtype0U
model/BN2_/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75z
model/BN2_/addAddV2!model/BN2_/ReadVariableOp:value:0model/BN2_/add/y:output:0*
T0*
_output_shapes
:0P
model/BN2_/SqrtSqrtmodel/BN2_/add:z:0*
T0*
_output_shapes
:0
model/BN2_/truedivRealDivmodel/BN2_/sub:z:0model/BN2_/Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ0|
model/BN2_/ReadVariableOp_1ReadVariableOp$model_bn2__readvariableop_1_resource*
_output_shapes
:0*
dtype0
model/BN2_/mulMul#model/BN2_/ReadVariableOp_1:value:0model/BN2_/truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ0
model/BN2_/add_1/ReadVariableOpReadVariableOp(model_bn2__add_1_readvariableop_resource*
_output_shapes
:0*
dtype0
model/BN2_/add_1AddV2model/BN2_/mul:z:0'model/BN2_/add_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0k
model/re_lu_1/ReluRelumodel/BN2_/add_1:z:0*
T0*0
_output_shapes
:џџџџџџџџџ0И
model/max_pooling2d_1/MaxPoolMaxPool model/re_lu_1/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ0*
ksize
*
paddingVALID*
strides

!model/CNN3_/Conv2D/ReadVariableOpReadVariableOp*model_cnn3__conv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0в
model/CNN3_/Conv2DConv2D&model/max_pooling2d_1/MaxPool:output:0)model/CNN3_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

"model/CNN3_/BiasAdd/ReadVariableOpReadVariableOp+model_cnn3__biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ђ
model/CNN3_/BiasAddBiasAddmodel/CNN3_/Conv2D:output:0*model/CNN3_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@
model/BN3_/sub/ReadVariableOpReadVariableOp&model_bn3__sub_readvariableop_resource*
_output_shapes
:@*
dtype0
model/BN3_/subSubmodel/CNN3_/BiasAdd:output:0%model/BN3_/sub/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@x
model/BN3_/ReadVariableOpReadVariableOp"model_bn3__readvariableop_resource*
_output_shapes
:@*
dtype0U
model/BN3_/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75z
model/BN3_/addAddV2!model/BN3_/ReadVariableOp:value:0model/BN3_/add/y:output:0*
T0*
_output_shapes
:@P
model/BN3_/SqrtSqrtmodel/BN3_/add:z:0*
T0*
_output_shapes
:@
model/BN3_/truedivRealDivmodel/BN3_/sub:z:0model/BN3_/Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ@|
model/BN3_/ReadVariableOp_1ReadVariableOp$model_bn3__readvariableop_1_resource*
_output_shapes
:@*
dtype0
model/BN3_/mulMul#model/BN3_/ReadVariableOp_1:value:0model/BN3_/truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ@
model/BN3_/add_1/ReadVariableOpReadVariableOp(model_bn3__add_1_readvariableop_resource*
_output_shapes
:@*
dtype0
model/BN3_/add_1AddV2model/BN3_/mul:z:0'model/BN3_/add_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@k
model/re_lu_2/ReluRelumodel/BN3_/add_1:z:0*
T0*0
_output_shapes
:џџџџџџџџџ@И
model/max_pooling2d_2/MaxPoolMaxPool model/re_lu_2/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides

!model/CNN4_/Conv2D/ReadVariableOpReadVariableOp*model_cnn4__conv2d_readvariableop_resource*&
_output_shapes
:@`*
dtype0в
model/CNN4_/Conv2DConv2D&model/max_pooling2d_2/MaxPool:output:0)model/CNN4_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ`*
paddingSAME*
strides

"model/CNN4_/BiasAdd/ReadVariableOpReadVariableOp+model_cnn4__biasadd_readvariableop_resource*
_output_shapes
:`*
dtype0Ђ
model/CNN4_/BiasAddBiasAddmodel/CNN4_/Conv2D:output:0*model/CNN4_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ`
model/BN4_/sub/ReadVariableOpReadVariableOp&model_bn4__sub_readvariableop_resource*
_output_shapes
:`*
dtype0
model/BN4_/subSubmodel/CNN4_/BiasAdd:output:0%model/BN4_/sub/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ`x
model/BN4_/ReadVariableOpReadVariableOp"model_bn4__readvariableop_resource*
_output_shapes
:`*
dtype0U
model/BN4_/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75z
model/BN4_/addAddV2!model/BN4_/ReadVariableOp:value:0model/BN4_/add/y:output:0*
T0*
_output_shapes
:`P
model/BN4_/SqrtSqrtmodel/BN4_/add:z:0*
T0*
_output_shapes
:`
model/BN4_/truedivRealDivmodel/BN4_/sub:z:0model/BN4_/Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ`|
model/BN4_/ReadVariableOp_1ReadVariableOp$model_bn4__readvariableop_1_resource*
_output_shapes
:`*
dtype0
model/BN4_/mulMul#model/BN4_/ReadVariableOp_1:value:0model/BN4_/truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ`
model/BN4_/add_1/ReadVariableOpReadVariableOp(model_bn4__add_1_readvariableop_resource*
_output_shapes
:`*
dtype0
model/BN4_/add_1AddV2model/BN4_/mul:z:0'model/BN4_/add_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ`k
model/re_lu_3/ReluRelumodel/BN4_/add_1:z:0*
T0*0
_output_shapes
:џџџџџџџџџ`З
model/max_pooling2d_3/MaxPoolMaxPool model/re_lu_3/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@`*
ksize
*
paddingVALID*
strides

!model/CNN5_/Conv2D/ReadVariableOpReadVariableOp*model_cnn5__conv2d_readvariableop_resource*'
_output_shapes
:`*
dtype0в
model/CNN5_/Conv2DConv2D&model/max_pooling2d_3/MaxPool:output:0)model/CNN5_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

"model/CNN5_/BiasAdd/ReadVariableOpReadVariableOp+model_cnn5__biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ђ
model/CNN5_/BiasAddBiasAddmodel/CNN5_/Conv2D:output:0*model/CNN5_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@
model/BN5_/sub/ReadVariableOpReadVariableOp&model_bn5__sub_readvariableop_resource*
_output_shapes	
:*
dtype0
model/BN5_/subSubmodel/CNN5_/BiasAdd:output:0%model/BN5_/sub/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@y
model/BN5_/ReadVariableOpReadVariableOp"model_bn5__readvariableop_resource*
_output_shapes	
:*
dtype0U
model/BN5_/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75{
model/BN5_/addAddV2!model/BN5_/ReadVariableOp:value:0model/BN5_/add/y:output:0*
T0*
_output_shapes	
:Q
model/BN5_/SqrtSqrtmodel/BN5_/add:z:0*
T0*
_output_shapes	
:
model/BN5_/truedivRealDivmodel/BN5_/sub:z:0model/BN5_/Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ@}
model/BN5_/ReadVariableOp_1ReadVariableOp$model_bn5__readvariableop_1_resource*
_output_shapes	
:*
dtype0
model/BN5_/mulMul#model/BN5_/ReadVariableOp_1:value:0model/BN5_/truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ@
model/BN5_/add_1/ReadVariableOpReadVariableOp(model_bn5__add_1_readvariableop_resource*
_output_shapes	
:*
dtype0
model/BN5_/add_1AddV2model/BN5_/mul:z:0'model/BN5_/add_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@k
model/re_lu_4/ReluRelumodel/BN5_/add_1:z:0*
T0*0
_output_shapes
:џџџџџџџџџ@И
model/max_pooling2d_4/MaxPoolMaxPool model/re_lu_4/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides

!model/CNN6_/Conv2D/ReadVariableOpReadVariableOp*model_cnn6__conv2d_readvariableop_resource*(
_output_shapes
:Р*
dtype0в
model/CNN6_/Conv2DConv2D&model/max_pooling2d_4/MaxPool:output:0)model/CNN6_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ Р*
paddingSAME*
strides

"model/CNN6_/BiasAdd/ReadVariableOpReadVariableOp+model_cnn6__biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Ђ
model/CNN6_/BiasAddBiasAddmodel/CNN6_/Conv2D:output:0*model/CNN6_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ Р
model/BN6_/sub/ReadVariableOpReadVariableOp&model_bn6__sub_readvariableop_resource*
_output_shapes	
:Р*
dtype0
model/BN6_/subSubmodel/CNN6_/BiasAdd:output:0%model/BN6_/sub/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ Рy
model/BN6_/ReadVariableOpReadVariableOp"model_bn6__readvariableop_resource*
_output_shapes	
:Р*
dtype0U
model/BN6_/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75{
model/BN6_/addAddV2!model/BN6_/ReadVariableOp:value:0model/BN6_/add/y:output:0*
T0*
_output_shapes	
:РQ
model/BN6_/SqrtSqrtmodel/BN6_/add:z:0*
T0*
_output_shapes	
:Р
model/BN6_/truedivRealDivmodel/BN6_/sub:z:0model/BN6_/Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ Р}
model/BN6_/ReadVariableOp_1ReadVariableOp$model_bn6__readvariableop_1_resource*
_output_shapes	
:Р*
dtype0
model/BN6_/mulMul#model/BN6_/ReadVariableOp_1:value:0model/BN6_/truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ Р
model/BN6_/add_1/ReadVariableOpReadVariableOp(model_bn6__add_1_readvariableop_resource*
_output_shapes	
:Р*
dtype0
model/BN6_/add_1AddV2model/BN6_/mul:z:0'model/BN6_/add_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ Рk
model/re_lu_5/ReluRelumodel/BN6_/add_1:z:0*
T0*0
_output_shapes
:џџџџџџџџџ РУ
model/average_pooling2d/AvgPoolAvgPool model/re_lu_5/Relu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџР*
ksize
 *
paddingVALID*
strides
l
model/FC1_preFlatten1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   Ћ
model/FC1_preFlatten1/ReshapeReshape(model/average_pooling2d/AvgPool:output:0$model/FC1_preFlatten1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџР
 model/FC1_/MatMul/ReadVariableOpReadVariableOp)model_fc1__matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0
model/FC1_/MatMulMatMul&model/FC1_preFlatten1/Reshape:output:0(model/FC1_/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!model/FC1_/BiasAdd/ReadVariableOpReadVariableOp*model_fc1__biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
model/FC1_/BiasAddBiasAddmodel/FC1_/MatMul:product:0)model/FC1_/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџo
model/softmax/SoftmaxSoftmaxmodel/FC1_/BiasAdd:output:0*
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
:џџџџџџџџџЋ

NoOpNoOp^model/BN1_/ReadVariableOp^model/BN1_/ReadVariableOp_1 ^model/BN1_/add_1/ReadVariableOp^model/BN1_/sub/ReadVariableOp^model/BN2_/ReadVariableOp^model/BN2_/ReadVariableOp_1 ^model/BN2_/add_1/ReadVariableOp^model/BN2_/sub/ReadVariableOp^model/BN3_/ReadVariableOp^model/BN3_/ReadVariableOp_1 ^model/BN3_/add_1/ReadVariableOp^model/BN3_/sub/ReadVariableOp^model/BN4_/ReadVariableOp^model/BN4_/ReadVariableOp_1 ^model/BN4_/add_1/ReadVariableOp^model/BN4_/sub/ReadVariableOp^model/BN5_/ReadVariableOp^model/BN5_/ReadVariableOp_1 ^model/BN5_/add_1/ReadVariableOp^model/BN5_/sub/ReadVariableOp^model/BN6_/ReadVariableOp^model/BN6_/ReadVariableOp_1 ^model/BN6_/add_1/ReadVariableOp^model/BN6_/sub/ReadVariableOp#^model/CNN1_/BiasAdd/ReadVariableOp"^model/CNN1_/Conv2D/ReadVariableOp#^model/CNN2_/BiasAdd/ReadVariableOp"^model/CNN2_/Conv2D/ReadVariableOp#^model/CNN3_/BiasAdd/ReadVariableOp"^model/CNN3_/Conv2D/ReadVariableOp#^model/CNN4_/BiasAdd/ReadVariableOp"^model/CNN4_/Conv2D/ReadVariableOp#^model/CNN5_/BiasAdd/ReadVariableOp"^model/CNN5_/Conv2D/ReadVariableOp#^model/CNN6_/BiasAdd/ReadVariableOp"^model/CNN6_/Conv2D/ReadVariableOp"^model/FC1_/BiasAdd/ReadVariableOp!^model/FC1_/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 26
model/BN1_/ReadVariableOpmodel/BN1_/ReadVariableOp2:
model/BN1_/ReadVariableOp_1model/BN1_/ReadVariableOp_12B
model/BN1_/add_1/ReadVariableOpmodel/BN1_/add_1/ReadVariableOp2>
model/BN1_/sub/ReadVariableOpmodel/BN1_/sub/ReadVariableOp26
model/BN2_/ReadVariableOpmodel/BN2_/ReadVariableOp2:
model/BN2_/ReadVariableOp_1model/BN2_/ReadVariableOp_12B
model/BN2_/add_1/ReadVariableOpmodel/BN2_/add_1/ReadVariableOp2>
model/BN2_/sub/ReadVariableOpmodel/BN2_/sub/ReadVariableOp26
model/BN3_/ReadVariableOpmodel/BN3_/ReadVariableOp2:
model/BN3_/ReadVariableOp_1model/BN3_/ReadVariableOp_12B
model/BN3_/add_1/ReadVariableOpmodel/BN3_/add_1/ReadVariableOp2>
model/BN3_/sub/ReadVariableOpmodel/BN3_/sub/ReadVariableOp26
model/BN4_/ReadVariableOpmodel/BN4_/ReadVariableOp2:
model/BN4_/ReadVariableOp_1model/BN4_/ReadVariableOp_12B
model/BN4_/add_1/ReadVariableOpmodel/BN4_/add_1/ReadVariableOp2>
model/BN4_/sub/ReadVariableOpmodel/BN4_/sub/ReadVariableOp26
model/BN5_/ReadVariableOpmodel/BN5_/ReadVariableOp2:
model/BN5_/ReadVariableOp_1model/BN5_/ReadVariableOp_12B
model/BN5_/add_1/ReadVariableOpmodel/BN5_/add_1/ReadVariableOp2>
model/BN5_/sub/ReadVariableOpmodel/BN5_/sub/ReadVariableOp26
model/BN6_/ReadVariableOpmodel/BN6_/ReadVariableOp2:
model/BN6_/ReadVariableOp_1model/BN6_/ReadVariableOp_12B
model/BN6_/add_1/ReadVariableOpmodel/BN6_/add_1/ReadVariableOp2>
model/BN6_/sub/ReadVariableOpmodel/BN6_/sub/ReadVariableOp2H
"model/CNN1_/BiasAdd/ReadVariableOp"model/CNN1_/BiasAdd/ReadVariableOp2F
!model/CNN1_/Conv2D/ReadVariableOp!model/CNN1_/Conv2D/ReadVariableOp2H
"model/CNN2_/BiasAdd/ReadVariableOp"model/CNN2_/BiasAdd/ReadVariableOp2F
!model/CNN2_/Conv2D/ReadVariableOp!model/CNN2_/Conv2D/ReadVariableOp2H
"model/CNN3_/BiasAdd/ReadVariableOp"model/CNN3_/BiasAdd/ReadVariableOp2F
!model/CNN3_/Conv2D/ReadVariableOp!model/CNN3_/Conv2D/ReadVariableOp2H
"model/CNN4_/BiasAdd/ReadVariableOp"model/CNN4_/BiasAdd/ReadVariableOp2F
!model/CNN4_/Conv2D/ReadVariableOp!model/CNN4_/Conv2D/ReadVariableOp2H
"model/CNN5_/BiasAdd/ReadVariableOp"model/CNN5_/BiasAdd/ReadVariableOp2F
!model/CNN5_/Conv2D/ReadVariableOp!model/CNN5_/Conv2D/ReadVariableOp2H
"model/CNN6_/BiasAdd/ReadVariableOp"model/CNN6_/BiasAdd/ReadVariableOp2F
!model/CNN6_/Conv2D/ReadVariableOp!model/CNN6_/Conv2D/ReadVariableOp2F
!model/FC1_/BiasAdd/ReadVariableOp!model/FC1_/BiasAdd/ReadVariableOp2D
 model/FC1_/MatMul/ReadVariableOp model/FC1_/MatMul/ReadVariableOp:Y U
0
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1
Т
D
(__inference_re_lu_1_layer_call_fn_162933

inputs
identityК
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_1_layer_call_and_return_conditional_losses_160478i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџ0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ0:X T
0
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
Т
D
(__inference_re_lu_5_layer_call_fn_163425

inputs
identityК
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ Р* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_5_layer_call_and_return_conditional_losses_160690i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџ Р"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ Р:X T
0
_output_shapes
:џџџџџџџџџ Р
 
_user_specified_nameinputs
­
Р
%__inference_BN1__layer_call_fn_162734

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityЂStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN1__layer_call_and_return_conditional_losses_160410x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
а
W
#__inference__update_step_xla_162597
gradient"
variable: 0*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: 0: *
	_noinline(:P L
&
_output_shapes
: 0
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ь
_
C__inference_softmax_layer_call_and_return_conditional_losses_163480

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
Џ

§
A__inference_CNN6__layer_call_and_return_conditional_losses_163336

inputs:
conv2d_readvariableop_resource:Р.
biasadd_readvariableop_resource:	Р
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:Р*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ Р*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ Рh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ Рw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
П
N
2__inference_average_pooling2d_layer_call_fn_163435

inputs
identityо
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_160365
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Џ

§
A__inference_CNN6__layer_call_and_return_conditional_losses_160650

inputs:
conv2d_readvariableop_resource:Р.
biasadd_readvariableop_resource:	Р
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:Р*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ Р*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ Рh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ Рw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
щ
]
A__inference_re_lu_layer_call_and_return_conditional_losses_160425

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:џџџџџџџџџ c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ :X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Г
_
C__inference_flatten_layer_call_and_return_conditional_losses_160730

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
ы
_
C__inference_re_lu_5_layer_call_and_return_conditional_losses_160690

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:џџџџџџџџџ Рc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ Р"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ Р:X T
0
_output_shapes
:џџџџџџџџџ Р
 
_user_specified_nameinputs
Ь
_
C__inference_softmax_layer_call_and_return_conditional_losses_160722

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
Й*
Я
@__inference_BN6__layer_call_and_return_conditional_losses_163420

inputs&
readvariableop_resource:	Р(
readvariableop_2_resource:	Р(
readvariableop_4_resource:	Р,
add_3_readvariableop_resource:	Р
identityЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_2ЂAssignVariableOp_3ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3ЂReadVariableOp_4Ђadd_3/ReadVariableOps
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:Р*
	keep_dims(m
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:Р
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*0
_output_shapes
:џџџџџџџџџ Рw
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          Ї
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:Р*
	keep_dims(p
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:Р*
squeeze_dims
 v
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:Р*
squeeze_dims
 c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:Р*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?X
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes	
:РL
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=^
mul_1Mulmoments/Squeeze:output:0mul_1/y:output:0*
T0*
_output_shapes	
:РF
addAddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes	
:РИ
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(x
ReadVariableOp_1ReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes	
:Р*
dtype0И
AssignVariableOp_1AssignVariableOpreadvariableop_resourceReadVariableOp_1:value:0^AssignVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(g
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes	
:Р*
dtype0L
mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?^
mul_2MulReadVariableOp_2:value:0mul_2/y:output:0*
T0*
_output_shapes	
:РL
mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=`
mul_3Mulmoments/Squeeze_1:output:0mul_3/y:output:0*
T0*
_output_shapes	
:РJ
add_1AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes	
:РР
AssignVariableOp_2AssignVariableOpreadvariableop_2_resource	add_1:z:0^ReadVariableOp_2*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(|
ReadVariableOp_3ReadVariableOpreadvariableop_2_resource^AssignVariableOp_2*
_output_shapes	
:Р*
dtype0М
AssignVariableOp_3AssignVariableOpreadvariableop_2_resourceReadVariableOp_3:value:0^AssignVariableOp_2^ReadVariableOp_3*
_output_shapes
 *
dtype0*
validate_shape(g
subSubinputsmoments/Squeeze:output:0*
T0*0
_output_shapes
:џџџџџџџџџ РL
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75b
add_2AddV2moments/Squeeze_1:output:0add_2/y:output:0*
T0*
_output_shapes	
:Р=
SqrtSqrt	add_2:z:0*
T0*
_output_shapes	
:Р`
truedivRealDivsub:z:0Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ Рg
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource*
_output_shapes	
:Р*
dtype0n
mul_4MulReadVariableOp_4:value:0truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ Рo
add_3/ReadVariableOpReadVariableOpadd_3_readvariableop_resource*
_output_shapes	
:Р*
dtype0r
add_3AddV2	mul_4:z:0add_3/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ Рa
IdentityIdentity	add_3:z:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ Р
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^add_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ Р: : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42,
add_3/ReadVariableOpadd_3/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ Р
 
_user_specified_nameinputs

з
@__inference_BN1__layer_call_and_return_conditional_losses_162766

inputs)
sub_readvariableop_resource: %
readvariableop_resource: '
readvariableop_1_resource: +
add_1_readvariableop_resource: 
identityЂReadVariableOpЂReadVariableOp_1Ђadd_1/ReadVariableOpЂsub/ReadVariableOpj
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
: *
dtype0i
subSubinputssub/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75Y
addAddV2ReadVariableOp:value:0add/y:output:0*
T0*
_output_shapes
: :
SqrtSqrtadd:z:0*
T0*
_output_shapes
: `
truedivRealDivsub:z:0Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0l
mulMulReadVariableOp_1:value:0truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ n
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
: *
dtype0p
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ a
IdentityIdentity	add_1:z:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ 
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^add_1/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ : : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Б
Ф
%__inference_BN6__layer_call_fn_163349

inputs
unknown:	Р
	unknown_0:	Р
	unknown_1:	Р
	unknown_2:	Р
identityЂStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ Р*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN6__layer_call_and_return_conditional_losses_160675x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ Р`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ Р: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ Р
 
_user_specified_nameinputs
Џ
L
#__inference__update_step_xla_162682
gradient
variable:	Р*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:Р: *
	_noinline(:E A

_output_shapes	
:Р
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ћ
Р
%__inference_BN2__layer_call_fn_162870

inputs
unknown:0
	unknown_0:0
	unknown_1:0
	unknown_2:0
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN2__layer_call_and_return_conditional_losses_161229x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ0: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
Г
_
C__inference_flatten_layer_call_and_return_conditional_losses_163491

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
Ќ
K
#__inference__update_step_xla_162652
gradient
variable:`*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:`: *
	_noinline(:D @

_output_shapes
:`
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ы

&__inference_CNN5__layer_call_fn_163203

inputs"
unknown:`
	unknown_0:	
identityЂStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN5__layer_call_and_return_conditional_losses_160597x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@`: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@`
 
_user_specified_nameinputs
а
W
#__inference__update_step_xla_162637
gradient"
variable:@`*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@`: *
	_noinline(:P L
&
_output_shapes
:@`
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
­
Р
%__inference_BN4__layer_call_fn_163103

inputs
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
identityЂStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN4__layer_call_and_return_conditional_losses_160569x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ``
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ`: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ`
 
_user_specified_nameinputs
Л
L
0__inference_max_pooling2d_2_layer_call_fn_163066

inputs
identityм
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_160329
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
О
B
&__inference_re_lu_layer_call_fn_162810

inputs
identityИ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_re_lu_layer_call_and_return_conditional_losses_160425i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ :X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Т
D
(__inference_re_lu_4_layer_call_fn_163302

inputs
identityК
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_4_layer_call_and_return_conditional_losses_160637i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ@:X T
0
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Љ

њ
A__inference_CNN2__layer_call_and_return_conditional_losses_160438

inputs8
conv2d_readvariableop_resource: 0-
biasadd_readvariableop_resource:0
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ0w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Л
P
#__inference__update_step_xla_162697
gradient
variable:	Р*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	Р: *
	_noinline(:I E

_output_shapes
:	Р
"
_user_specified_name
gradient:($
"
_user_specified_name
variable

e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_162825

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

з
@__inference_BN3__layer_call_and_return_conditional_losses_163012

inputs)
sub_readvariableop_resource:@%
readvariableop_resource:@'
readvariableop_1_resource:@+
add_1_readvariableop_resource:@
identityЂReadVariableOpЂReadVariableOp_1Ђadd_1/ReadVariableOpЂsub/ReadVariableOpj
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype0i
subSubinputssub/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75Y
addAddV2ReadVariableOp:value:0add/y:output:0*
T0*
_output_shapes
:@:
SqrtSqrtadd:z:0*
T0*
_output_shapes
:@`
truedivRealDivsub:z:0Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ@f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0l
mulMulReadVariableOp_1:value:0truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ@n
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:@*
dtype0p
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@a
IdentityIdentity	add_1:z:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^add_1/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ@: : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
г
X
#__inference__update_step_xla_162657
gradient#
variable:`*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*(
_input_shapes
:`: *
	_noinline(:Q M
'
_output_shapes
:`
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Љ

њ
A__inference_CNN1__layer_call_and_return_conditional_losses_160385

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ЏЏ
Ь)
__inference__traced_save_163802
file_prefix+
'savev2_cnn1__kernel_read_readvariableop)
%savev2_cnn1__bias_read_readvariableop5
1savev2_bn1__custom_batch_beta_read_readvariableop6
2savev2_bn1__custom_batch_gamma_read_readvariableop<
8savev2_bn1__custom_batch_moving_mean_read_readvariableop@
<savev2_bn1__custom_batch_moving_variance_read_readvariableop+
'savev2_cnn2__kernel_read_readvariableop)
%savev2_cnn2__bias_read_readvariableop5
1savev2_bn2__custom_batch_beta_read_readvariableop6
2savev2_bn2__custom_batch_gamma_read_readvariableop<
8savev2_bn2__custom_batch_moving_mean_read_readvariableop@
<savev2_bn2__custom_batch_moving_variance_read_readvariableop+
'savev2_cnn3__kernel_read_readvariableop)
%savev2_cnn3__bias_read_readvariableop5
1savev2_bn3__custom_batch_beta_read_readvariableop6
2savev2_bn3__custom_batch_gamma_read_readvariableop<
8savev2_bn3__custom_batch_moving_mean_read_readvariableop@
<savev2_bn3__custom_batch_moving_variance_read_readvariableop+
'savev2_cnn4__kernel_read_readvariableop)
%savev2_cnn4__bias_read_readvariableop5
1savev2_bn4__custom_batch_beta_read_readvariableop6
2savev2_bn4__custom_batch_gamma_read_readvariableop<
8savev2_bn4__custom_batch_moving_mean_read_readvariableop@
<savev2_bn4__custom_batch_moving_variance_read_readvariableop+
'savev2_cnn5__kernel_read_readvariableop)
%savev2_cnn5__bias_read_readvariableop5
1savev2_bn5__custom_batch_beta_read_readvariableop6
2savev2_bn5__custom_batch_gamma_read_readvariableop<
8savev2_bn5__custom_batch_moving_mean_read_readvariableop@
<savev2_bn5__custom_batch_moving_variance_read_readvariableop+
'savev2_cnn6__kernel_read_readvariableop)
%savev2_cnn6__bias_read_readvariableop5
1savev2_bn6__custom_batch_beta_read_readvariableop6
2savev2_bn6__custom_batch_gamma_read_readvariableop<
8savev2_bn6__custom_batch_moving_mean_read_readvariableop@
<savev2_bn6__custom_batch_moving_variance_read_readvariableop*
&savev2_fc1__kernel_read_readvariableop(
$savev2_fc1__bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop2
.savev2_adam_m_cnn1__kernel_read_readvariableop2
.savev2_adam_v_cnn1__kernel_read_readvariableop0
,savev2_adam_m_cnn1__bias_read_readvariableop0
,savev2_adam_v_cnn1__bias_read_readvariableop<
8savev2_adam_m_bn1__custom_batch_beta_read_readvariableop<
8savev2_adam_v_bn1__custom_batch_beta_read_readvariableop=
9savev2_adam_m_bn1__custom_batch_gamma_read_readvariableop=
9savev2_adam_v_bn1__custom_batch_gamma_read_readvariableop2
.savev2_adam_m_cnn2__kernel_read_readvariableop2
.savev2_adam_v_cnn2__kernel_read_readvariableop0
,savev2_adam_m_cnn2__bias_read_readvariableop0
,savev2_adam_v_cnn2__bias_read_readvariableop<
8savev2_adam_m_bn2__custom_batch_beta_read_readvariableop<
8savev2_adam_v_bn2__custom_batch_beta_read_readvariableop=
9savev2_adam_m_bn2__custom_batch_gamma_read_readvariableop=
9savev2_adam_v_bn2__custom_batch_gamma_read_readvariableop2
.savev2_adam_m_cnn3__kernel_read_readvariableop2
.savev2_adam_v_cnn3__kernel_read_readvariableop0
,savev2_adam_m_cnn3__bias_read_readvariableop0
,savev2_adam_v_cnn3__bias_read_readvariableop<
8savev2_adam_m_bn3__custom_batch_beta_read_readvariableop<
8savev2_adam_v_bn3__custom_batch_beta_read_readvariableop=
9savev2_adam_m_bn3__custom_batch_gamma_read_readvariableop=
9savev2_adam_v_bn3__custom_batch_gamma_read_readvariableop2
.savev2_adam_m_cnn4__kernel_read_readvariableop2
.savev2_adam_v_cnn4__kernel_read_readvariableop0
,savev2_adam_m_cnn4__bias_read_readvariableop0
,savev2_adam_v_cnn4__bias_read_readvariableop<
8savev2_adam_m_bn4__custom_batch_beta_read_readvariableop<
8savev2_adam_v_bn4__custom_batch_beta_read_readvariableop=
9savev2_adam_m_bn4__custom_batch_gamma_read_readvariableop=
9savev2_adam_v_bn4__custom_batch_gamma_read_readvariableop2
.savev2_adam_m_cnn5__kernel_read_readvariableop2
.savev2_adam_v_cnn5__kernel_read_readvariableop0
,savev2_adam_m_cnn5__bias_read_readvariableop0
,savev2_adam_v_cnn5__bias_read_readvariableop<
8savev2_adam_m_bn5__custom_batch_beta_read_readvariableop<
8savev2_adam_v_bn5__custom_batch_beta_read_readvariableop=
9savev2_adam_m_bn5__custom_batch_gamma_read_readvariableop=
9savev2_adam_v_bn5__custom_batch_gamma_read_readvariableop2
.savev2_adam_m_cnn6__kernel_read_readvariableop2
.savev2_adam_v_cnn6__kernel_read_readvariableop0
,savev2_adam_m_cnn6__bias_read_readvariableop0
,savev2_adam_v_cnn6__bias_read_readvariableop<
8savev2_adam_m_bn6__custom_batch_beta_read_readvariableop<
8savev2_adam_v_bn6__custom_batch_beta_read_readvariableop=
9savev2_adam_m_bn6__custom_batch_gamma_read_readvariableop=
9savev2_adam_v_bn6__custom_batch_gamma_read_readvariableop1
-savev2_adam_m_fc1__kernel_read_readvariableop1
-savev2_adam_v_fc1__kernel_read_readvariableop/
+savev2_adam_m_fc1__bias_read_readvariableop/
+savev2_adam_v_fc1__bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
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
valueЭBЪaB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B (
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_cnn1__kernel_read_readvariableop%savev2_cnn1__bias_read_readvariableop1savev2_bn1__custom_batch_beta_read_readvariableop2savev2_bn1__custom_batch_gamma_read_readvariableop8savev2_bn1__custom_batch_moving_mean_read_readvariableop<savev2_bn1__custom_batch_moving_variance_read_readvariableop'savev2_cnn2__kernel_read_readvariableop%savev2_cnn2__bias_read_readvariableop1savev2_bn2__custom_batch_beta_read_readvariableop2savev2_bn2__custom_batch_gamma_read_readvariableop8savev2_bn2__custom_batch_moving_mean_read_readvariableop<savev2_bn2__custom_batch_moving_variance_read_readvariableop'savev2_cnn3__kernel_read_readvariableop%savev2_cnn3__bias_read_readvariableop1savev2_bn3__custom_batch_beta_read_readvariableop2savev2_bn3__custom_batch_gamma_read_readvariableop8savev2_bn3__custom_batch_moving_mean_read_readvariableop<savev2_bn3__custom_batch_moving_variance_read_readvariableop'savev2_cnn4__kernel_read_readvariableop%savev2_cnn4__bias_read_readvariableop1savev2_bn4__custom_batch_beta_read_readvariableop2savev2_bn4__custom_batch_gamma_read_readvariableop8savev2_bn4__custom_batch_moving_mean_read_readvariableop<savev2_bn4__custom_batch_moving_variance_read_readvariableop'savev2_cnn5__kernel_read_readvariableop%savev2_cnn5__bias_read_readvariableop1savev2_bn5__custom_batch_beta_read_readvariableop2savev2_bn5__custom_batch_gamma_read_readvariableop8savev2_bn5__custom_batch_moving_mean_read_readvariableop<savev2_bn5__custom_batch_moving_variance_read_readvariableop'savev2_cnn6__kernel_read_readvariableop%savev2_cnn6__bias_read_readvariableop1savev2_bn6__custom_batch_beta_read_readvariableop2savev2_bn6__custom_batch_gamma_read_readvariableop8savev2_bn6__custom_batch_moving_mean_read_readvariableop<savev2_bn6__custom_batch_moving_variance_read_readvariableop&savev2_fc1__kernel_read_readvariableop$savev2_fc1__bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop.savev2_adam_m_cnn1__kernel_read_readvariableop.savev2_adam_v_cnn1__kernel_read_readvariableop,savev2_adam_m_cnn1__bias_read_readvariableop,savev2_adam_v_cnn1__bias_read_readvariableop8savev2_adam_m_bn1__custom_batch_beta_read_readvariableop8savev2_adam_v_bn1__custom_batch_beta_read_readvariableop9savev2_adam_m_bn1__custom_batch_gamma_read_readvariableop9savev2_adam_v_bn1__custom_batch_gamma_read_readvariableop.savev2_adam_m_cnn2__kernel_read_readvariableop.savev2_adam_v_cnn2__kernel_read_readvariableop,savev2_adam_m_cnn2__bias_read_readvariableop,savev2_adam_v_cnn2__bias_read_readvariableop8savev2_adam_m_bn2__custom_batch_beta_read_readvariableop8savev2_adam_v_bn2__custom_batch_beta_read_readvariableop9savev2_adam_m_bn2__custom_batch_gamma_read_readvariableop9savev2_adam_v_bn2__custom_batch_gamma_read_readvariableop.savev2_adam_m_cnn3__kernel_read_readvariableop.savev2_adam_v_cnn3__kernel_read_readvariableop,savev2_adam_m_cnn3__bias_read_readvariableop,savev2_adam_v_cnn3__bias_read_readvariableop8savev2_adam_m_bn3__custom_batch_beta_read_readvariableop8savev2_adam_v_bn3__custom_batch_beta_read_readvariableop9savev2_adam_m_bn3__custom_batch_gamma_read_readvariableop9savev2_adam_v_bn3__custom_batch_gamma_read_readvariableop.savev2_adam_m_cnn4__kernel_read_readvariableop.savev2_adam_v_cnn4__kernel_read_readvariableop,savev2_adam_m_cnn4__bias_read_readvariableop,savev2_adam_v_cnn4__bias_read_readvariableop8savev2_adam_m_bn4__custom_batch_beta_read_readvariableop8savev2_adam_v_bn4__custom_batch_beta_read_readvariableop9savev2_adam_m_bn4__custom_batch_gamma_read_readvariableop9savev2_adam_v_bn4__custom_batch_gamma_read_readvariableop.savev2_adam_m_cnn5__kernel_read_readvariableop.savev2_adam_v_cnn5__kernel_read_readvariableop,savev2_adam_m_cnn5__bias_read_readvariableop,savev2_adam_v_cnn5__bias_read_readvariableop8savev2_adam_m_bn5__custom_batch_beta_read_readvariableop8savev2_adam_v_bn5__custom_batch_beta_read_readvariableop9savev2_adam_m_bn5__custom_batch_gamma_read_readvariableop9savev2_adam_v_bn5__custom_batch_gamma_read_readvariableop.savev2_adam_m_cnn6__kernel_read_readvariableop.savev2_adam_v_cnn6__kernel_read_readvariableop,savev2_adam_m_cnn6__bias_read_readvariableop,savev2_adam_v_cnn6__bias_read_readvariableop8savev2_adam_m_bn6__custom_batch_beta_read_readvariableop8savev2_adam_v_bn6__custom_batch_beta_read_readvariableop9savev2_adam_m_bn6__custom_batch_gamma_read_readvariableop9savev2_adam_v_bn6__custom_batch_gamma_read_readvariableop-savev2_adam_m_fc1__kernel_read_readvariableop-savev2_adam_v_fc1__kernel_read_readvariableop+savev2_adam_m_fc1__bias_read_readvariableop+savev2_adam_v_fc1__bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
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
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ч
_input_shapesЕ
В: : : : : : : : 0:0:0:0:0:0:0@:@:@:@:@:@:@`:`:`:`:`:`:`::::::Р:Р:Р:Р:Р:Р:	Р:: : : : : : : : : : : 0: 0:0:0:0:0:0:0:0@:0@:@:@:@:@:@:@:@`:@`:`:`:`:`:`:`:`:`:::::::Р:Р:Р:Р:Р:Р:Р:Р:	Р:	Р::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: 0: 

_output_shapes
:0: 	

_output_shapes
:0: 


_output_shapes
:0: 

_output_shapes
:0: 

_output_shapes
:0:,(
&
_output_shapes
:0@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@`: 

_output_shapes
:`: 

_output_shapes
:`: 

_output_shapes
:`: 

_output_shapes
:`: 

_output_shapes
:`:-)
'
_output_shapes
:`:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::.*
(
_output_shapes
:Р:! 

_output_shapes	
:Р:!!

_output_shapes	
:Р:!"

_output_shapes	
:Р:!#

_output_shapes	
:Р:!$

_output_shapes	
:Р:%%!

_output_shapes
:	Р: &

_output_shapes
::'

_output_shapes
: :(

_output_shapes
: :,)(
&
_output_shapes
: :,*(
&
_output_shapes
: : +

_output_shapes
: : ,

_output_shapes
: : -

_output_shapes
: : .

_output_shapes
: : /

_output_shapes
: : 0

_output_shapes
: :,1(
&
_output_shapes
: 0:,2(
&
_output_shapes
: 0: 3

_output_shapes
:0: 4

_output_shapes
:0: 5

_output_shapes
:0: 6

_output_shapes
:0: 7

_output_shapes
:0: 8

_output_shapes
:0:,9(
&
_output_shapes
:0@:,:(
&
_output_shapes
:0@: ;

_output_shapes
:@: <

_output_shapes
:@: =

_output_shapes
:@: >

_output_shapes
:@: ?

_output_shapes
:@: @

_output_shapes
:@:,A(
&
_output_shapes
:@`:,B(
&
_output_shapes
:@`: C

_output_shapes
:`: D

_output_shapes
:`: E

_output_shapes
:`: F

_output_shapes
:`: G

_output_shapes
:`: H

_output_shapes
:`:-I)
'
_output_shapes
:`:-J)
'
_output_shapes
:`:!K

_output_shapes	
::!L

_output_shapes	
::!M

_output_shapes	
::!N

_output_shapes	
::!O

_output_shapes	
::!P

_output_shapes	
::.Q*
(
_output_shapes
:Р:.R*
(
_output_shapes
:Р:!S

_output_shapes	
:Р:!T

_output_shapes	
:Р:!U

_output_shapes	
:Р:!V

_output_shapes	
:Р:!W

_output_shapes	
:Р:!X

_output_shapes	
:Р:%Y!

_output_shapes
:	Р:%Z!

_output_shapes
:	Р: [

_output_shapes
:: \

_output_shapes
::]

_output_shapes
: :^

_output_shapes
: :_

_output_shapes
: :`

_output_shapes
: :a

_output_shapes
: 
Ќ
K
#__inference__update_step_xla_162587
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ќ
K
#__inference__update_step_xla_162622
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ы
_
C__inference_re_lu_2_layer_call_and_return_conditional_losses_160531

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:џџџџџџџџџ@c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ@:X T
0
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ђ*
Ы
@__inference_BN3__layer_call_and_return_conditional_losses_161147

inputs%
readvariableop_resource:@'
readvariableop_2_resource:@'
readvariableop_4_resource:@+
add_3_readvariableop_resource:@
identityЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_2ЂAssignVariableOp_3ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3ЂReadVariableOp_4Ђadd_3/ReadVariableOps
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(l
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:@
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@w
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          І
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(o
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 u
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?W
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes
:@L
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=]
mul_1Mulmoments/Squeeze:output:0mul_1/y:output:0*
T0*
_output_shapes
:@E
addAddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:@И
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(w
ReadVariableOp_1ReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes
:@*
dtype0И
AssignVariableOp_1AssignVariableOpreadvariableop_resourceReadVariableOp_1:value:0^AssignVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(f
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
:@*
dtype0L
mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?]
mul_2MulReadVariableOp_2:value:0mul_2/y:output:0*
T0*
_output_shapes
:@L
mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=_
mul_3Mulmoments/Squeeze_1:output:0mul_3/y:output:0*
T0*
_output_shapes
:@I
add_1AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:@Р
AssignVariableOp_2AssignVariableOpreadvariableop_2_resource	add_1:z:0^ReadVariableOp_2*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape({
ReadVariableOp_3ReadVariableOpreadvariableop_2_resource^AssignVariableOp_2*
_output_shapes
:@*
dtype0М
AssignVariableOp_3AssignVariableOpreadvariableop_2_resourceReadVariableOp_3:value:0^AssignVariableOp_2^ReadVariableOp_3*
_output_shapes
 *
dtype0*
validate_shape(g
subSubinputsmoments/Squeeze:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@L
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75a
add_2AddV2moments/Squeeze_1:output:0add_2/y:output:0*
T0*
_output_shapes
:@<
SqrtSqrt	add_2:z:0*
T0*
_output_shapes
:@`
truedivRealDivsub:z:0Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ@f
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource*
_output_shapes
:@*
dtype0n
mul_4MulReadVariableOp_4:value:0truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ@n
add_3/ReadVariableOpReadVariableOpadd_3_readvariableop_resource*
_output_shapes
:@*
dtype0r
add_3AddV2	mul_4:z:0add_3/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@a
IdentityIdentity	add_3:z:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^add_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ@: : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42,
add_3/ReadVariableOpadd_3/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ы
_
C__inference_re_lu_3_layer_call_and_return_conditional_losses_160584

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:џџџџџџџџџ`c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ`:X T
0
_output_shapes
:џџџџџџџџџ`
 
_user_specified_nameinputs
ы

&__inference_CNN3__layer_call_fn_162957

inputs!
unknown:0@
	unknown_0:@
identityЂStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN3__layer_call_and_return_conditional_losses_160491x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ0: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
ж
Y
#__inference__update_step_xla_162677
gradient$
variable:Р*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:Р: *
	_noinline(:R N
(
_output_shapes
:Р
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
а
W
#__inference__update_step_xla_162617
gradient"
variable:0@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:0@: *
	_noinline(:P L
&
_output_shapes
:0@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable

i
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_163440

inputs
identityЋ
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
 *
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ы

&__inference_CNN1__layer_call_fn_162711

inputs!
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN1__layer_call_and_return_conditional_losses_160385x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
а
W
#__inference__update_step_xla_162577
gradient"
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: : *
	_noinline(:P L
&
_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable

з
@__inference_BN4__layer_call_and_return_conditional_losses_163135

inputs)
sub_readvariableop_resource:`%
readvariableop_resource:`'
readvariableop_1_resource:`+
add_1_readvariableop_resource:`
identityЂReadVariableOpЂReadVariableOp_1Ђadd_1/ReadVariableOpЂsub/ReadVariableOpj
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:`*
dtype0i
subSubinputssub/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ`b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype0J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75Y
addAddV2ReadVariableOp:value:0add/y:output:0*
T0*
_output_shapes
:`:
SqrtSqrtadd:z:0*
T0*
_output_shapes
:``
truedivRealDivsub:z:0Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ`f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype0l
mulMulReadVariableOp_1:value:0truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ`n
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:`*
dtype0p
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ`a
IdentityIdentity	add_1:z:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^add_1/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ`: : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ`
 
_user_specified_nameinputs
Љ

њ
A__inference_CNN3__layer_call_and_return_conditional_losses_160491

inputs8
conv2d_readvariableop_resource:0@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs

з
@__inference_BN2__layer_call_and_return_conditional_losses_160463

inputs)
sub_readvariableop_resource:0%
readvariableop_resource:0'
readvariableop_1_resource:0+
add_1_readvariableop_resource:0
identityЂReadVariableOpЂReadVariableOp_1Ђadd_1/ReadVariableOpЂsub/ReadVariableOpj
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:0*
dtype0i
subSubinputssub/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype0J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75Y
addAddV2ReadVariableOp:value:0add/y:output:0*
T0*
_output_shapes
:0:
SqrtSqrtadd:z:0*
T0*
_output_shapes
:0`
truedivRealDivsub:z:0Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype0l
mulMulReadVariableOp_1:value:0truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ0n
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:0*
dtype0p
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0a
IdentityIdentity	add_1:z:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ0
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^add_1/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ0: : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
Џ
L
#__inference__update_step_xla_162672
gradient
variable:	*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:: *
	_noinline(:E A

_output_shapes	
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Т
L
0__inference_FC1_preFlatten1_layer_call_fn_163445

inputs
identityК
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
GPU2*0J 8 *T
fORM
K__inference_FC1_preFlatten1_layer_call_and_return_conditional_losses_160699a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџР"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџР:X T
0
_output_shapes
:џџџџџџџџџР
 
_user_specified_nameinputs
Џ
Ф
%__inference_BN5__layer_call_fn_163239

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN5__layer_call_and_return_conditional_losses_160983x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_163317

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ђ*
Ы
@__inference_BN2__layer_call_and_return_conditional_losses_161229

inputs%
readvariableop_resource:0'
readvariableop_2_resource:0'
readvariableop_4_resource:0+
add_3_readvariableop_resource:0
identityЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_2ЂAssignVariableOp_3ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3ЂReadVariableOp_4Ђadd_3/ReadVariableOps
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:0*
	keep_dims(l
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:0
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*0
_output_shapes
:џџџџџџџџџ0w
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          І
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:0*
	keep_dims(o
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:0*
squeeze_dims
 u
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:0*
squeeze_dims
 b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?W
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes
:0L
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=]
mul_1Mulmoments/Squeeze:output:0mul_1/y:output:0*
T0*
_output_shapes
:0E
addAddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:0И
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(w
ReadVariableOp_1ReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes
:0*
dtype0И
AssignVariableOp_1AssignVariableOpreadvariableop_resourceReadVariableOp_1:value:0^AssignVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(f
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
:0*
dtype0L
mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?]
mul_2MulReadVariableOp_2:value:0mul_2/y:output:0*
T0*
_output_shapes
:0L
mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=_
mul_3Mulmoments/Squeeze_1:output:0mul_3/y:output:0*
T0*
_output_shapes
:0I
add_1AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:0Р
AssignVariableOp_2AssignVariableOpreadvariableop_2_resource	add_1:z:0^ReadVariableOp_2*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape({
ReadVariableOp_3ReadVariableOpreadvariableop_2_resource^AssignVariableOp_2*
_output_shapes
:0*
dtype0М
AssignVariableOp_3AssignVariableOpreadvariableop_2_resourceReadVariableOp_3:value:0^AssignVariableOp_2^ReadVariableOp_3*
_output_shapes
 *
dtype0*
validate_shape(g
subSubinputsmoments/Squeeze:output:0*
T0*0
_output_shapes
:џџџџџџџџџ0L
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75a
add_2AddV2moments/Squeeze_1:output:0add_2/y:output:0*
T0*
_output_shapes
:0<
SqrtSqrt	add_2:z:0*
T0*
_output_shapes
:0`
truedivRealDivsub:z:0Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ0f
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource*
_output_shapes
:0*
dtype0n
mul_4MulReadVariableOp_4:value:0truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ0n
add_3/ReadVariableOpReadVariableOpadd_3_readvariableop_resource*
_output_shapes
:0*
dtype0r
add_3AddV2	mul_4:z:0add_3/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0a
IdentityIdentity	add_3:z:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ0
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^add_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ0: : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42,
add_3/ReadVariableOpadd_3/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs

л
@__inference_BN5__layer_call_and_return_conditional_losses_160622

inputs*
sub_readvariableop_resource:	&
readvariableop_resource:	(
readvariableop_1_resource:	,
add_1_readvariableop_resource:	
identityЂReadVariableOpЂReadVariableOp_1Ђadd_1/ReadVariableOpЂsub/ReadVariableOpk
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype0i
subSubinputssub/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75Z
addAddV2ReadVariableOp:value:0add/y:output:0*
T0*
_output_shapes	
:;
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:`
truedivRealDivsub:z:0Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ@g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0l
mulMulReadVariableOp_1:value:0truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ@o
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:*
dtype0p
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@a
IdentityIdentity	add_1:z:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^add_1/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ@: : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ќ
K
#__inference__update_step_xla_162642
gradient
variable:`*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:`: *
	_noinline(:D @

_output_shapes
:`
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ы
_
C__inference_re_lu_2_layer_call_and_return_conditional_losses_163061

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:џџџџџџџџџ@c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ@:X T
0
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ы
_
C__inference_re_lu_4_layer_call_and_return_conditional_losses_160637

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:џџџџџџџџџ@c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ@:X T
0
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Љ

њ
A__inference_CNN1__layer_call_and_return_conditional_losses_162721

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_160353

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
n
т
A__inference_model_layer_call_and_return_conditional_losses_161791
input_1&
cnn1__161686: 
cnn1__161688: 
bn1__161691: 
bn1__161693: 
bn1__161695: 
bn1__161697: &
cnn2__161702: 0
cnn2__161704:0
bn2__161707:0
bn2__161709:0
bn2__161711:0
bn2__161713:0&
cnn3__161718:0@
cnn3__161720:@
bn3__161723:@
bn3__161725:@
bn3__161727:@
bn3__161729:@&
cnn4__161734:@`
cnn4__161736:`
bn4__161739:`
bn4__161741:`
bn4__161743:`
bn4__161745:`'
cnn5__161750:`
cnn5__161752:	
bn5__161755:	
bn5__161757:	
bn5__161759:	
bn5__161761:	(
cnn6__161766:Р
cnn6__161768:	Р
bn6__161771:	Р
bn6__161773:	Р
bn6__161775:	Р
bn6__161777:	Р
fc1__161783:	Р
fc1__161785:
identityЂBN1_/StatefulPartitionedCallЂBN2_/StatefulPartitionedCallЂBN3_/StatefulPartitionedCallЂBN4_/StatefulPartitionedCallЂBN5_/StatefulPartitionedCallЂBN6_/StatefulPartitionedCallЂCNN1_/StatefulPartitionedCallЂCNN2_/StatefulPartitionedCallЂCNN3_/StatefulPartitionedCallЂCNN4_/StatefulPartitionedCallЂCNN5_/StatefulPartitionedCallЂCNN6_/StatefulPartitionedCallЂFC1_/StatefulPartitionedCallё
CNN1_/StatefulPartitionedCallStatefulPartitionedCallinput_1cnn1__161686cnn1__161688*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN1__layer_call_and_return_conditional_losses_160385Њ
BN1_/StatefulPartitionedCallStatefulPartitionedCall&CNN1_/StatefulPartitionedCall:output:0bn1__161691bn1__161693bn1__161695bn1__161697*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN1__layer_call_and_return_conditional_losses_160410н
re_lu/PartitionedCallPartitionedCall%BN1_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_re_lu_layer_call_and_return_conditional_losses_160425ц
max_pooling2d/PartitionedCallPartitionedCallre_lu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_160305
CNN2_/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0cnn2__161702cnn2__161704*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN2__layer_call_and_return_conditional_losses_160438Њ
BN2_/StatefulPartitionedCallStatefulPartitionedCall&CNN2_/StatefulPartitionedCall:output:0bn2__161707bn2__161709bn2__161711bn2__161713*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN2__layer_call_and_return_conditional_losses_160463с
re_lu_1/PartitionedCallPartitionedCall%BN2_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_1_layer_call_and_return_conditional_losses_160478ь
max_pooling2d_1/PartitionedCallPartitionedCall re_lu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_160317
CNN3_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0cnn3__161718cnn3__161720*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN3__layer_call_and_return_conditional_losses_160491Њ
BN3_/StatefulPartitionedCallStatefulPartitionedCall&CNN3_/StatefulPartitionedCall:output:0bn3__161723bn3__161725bn3__161727bn3__161729*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN3__layer_call_and_return_conditional_losses_160516с
re_lu_2/PartitionedCallPartitionedCall%BN3_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_2_layer_call_and_return_conditional_losses_160531ь
max_pooling2d_2/PartitionedCallPartitionedCall re_lu_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_160329
CNN4_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0cnn4__161734cnn4__161736*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN4__layer_call_and_return_conditional_losses_160544Њ
BN4_/StatefulPartitionedCallStatefulPartitionedCall&CNN4_/StatefulPartitionedCall:output:0bn4__161739bn4__161741bn4__161743bn4__161745*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN4__layer_call_and_return_conditional_losses_160569с
re_lu_3/PartitionedCallPartitionedCall%BN4_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_3_layer_call_and_return_conditional_losses_160584ы
max_pooling2d_3/PartitionedCallPartitionedCall re_lu_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_160341
CNN5_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0cnn5__161750cnn5__161752*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN5__layer_call_and_return_conditional_losses_160597Њ
BN5_/StatefulPartitionedCallStatefulPartitionedCall&CNN5_/StatefulPartitionedCall:output:0bn5__161755bn5__161757bn5__161759bn5__161761*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN5__layer_call_and_return_conditional_losses_160622с
re_lu_4/PartitionedCallPartitionedCall%BN5_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_4_layer_call_and_return_conditional_losses_160637ь
max_pooling2d_4/PartitionedCallPartitionedCall re_lu_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_160353
CNN6_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0cnn6__161766cnn6__161768*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ Р*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN6__layer_call_and_return_conditional_losses_160650Њ
BN6_/StatefulPartitionedCallStatefulPartitionedCall&CNN6_/StatefulPartitionedCall:output:0bn6__161771bn6__161773bn6__161775bn6__161777*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ Р*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN6__layer_call_and_return_conditional_losses_160675с
re_lu_5/PartitionedCallPartitionedCall%BN6_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ Р* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_5_layer_call_and_return_conditional_losses_160690№
!average_pooling2d/PartitionedCallPartitionedCall re_lu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџР* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_160365ю
FC1_preFlatten1/PartitionedCallPartitionedCall*average_pooling2d/PartitionedCall:output:0*
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
GPU2*0J 8 *T
fORM
K__inference_FC1_preFlatten1_layer_call_and_return_conditional_losses_160699
FC1_/StatefulPartitionedCallStatefulPartitionedCall(FC1_preFlatten1/PartitionedCall:output:0fc1__161783fc1__161785*
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
@__inference_FC1__layer_call_and_return_conditional_losses_160711и
softmax/PartitionedCallPartitionedCall%FC1_/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *L
fGRE
C__inference_softmax_layer_call_and_return_conditional_losses_160722г
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
GPU2*0J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_160730o
IdentityIdentity flatten/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџп
NoOpNoOp^BN1_/StatefulPartitionedCall^BN2_/StatefulPartitionedCall^BN3_/StatefulPartitionedCall^BN4_/StatefulPartitionedCall^BN5_/StatefulPartitionedCall^BN6_/StatefulPartitionedCall^CNN1_/StatefulPartitionedCall^CNN2_/StatefulPartitionedCall^CNN3_/StatefulPartitionedCall^CNN4_/StatefulPartitionedCall^CNN5_/StatefulPartitionedCall^CNN6_/StatefulPartitionedCall^FC1_/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2<
BN1_/StatefulPartitionedCallBN1_/StatefulPartitionedCall2<
BN2_/StatefulPartitionedCallBN2_/StatefulPartitionedCall2<
BN3_/StatefulPartitionedCallBN3_/StatefulPartitionedCall2<
BN4_/StatefulPartitionedCallBN4_/StatefulPartitionedCall2<
BN5_/StatefulPartitionedCallBN5_/StatefulPartitionedCall2<
BN6_/StatefulPartitionedCallBN6_/StatefulPartitionedCall2>
CNN1_/StatefulPartitionedCallCNN1_/StatefulPartitionedCall2>
CNN2_/StatefulPartitionedCallCNN2_/StatefulPartitionedCall2>
CNN3_/StatefulPartitionedCallCNN3_/StatefulPartitionedCall2>
CNN4_/StatefulPartitionedCallCNN4_/StatefulPartitionedCall2>
CNN5_/StatefulPartitionedCallCNN5_/StatefulPartitionedCall2>
CNN6_/StatefulPartitionedCallCNN6_/StatefulPartitionedCall2<
FC1_/StatefulPartitionedCallFC1_/StatefulPartitionedCall:Y U
0
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1

з
@__inference_BN1__layer_call_and_return_conditional_losses_160410

inputs)
sub_readvariableop_resource: %
readvariableop_resource: '
readvariableop_1_resource: +
add_1_readvariableop_resource: 
identityЂReadVariableOpЂReadVariableOp_1Ђadd_1/ReadVariableOpЂsub/ReadVariableOpj
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
: *
dtype0i
subSubinputssub/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75Y
addAddV2ReadVariableOp:value:0add/y:output:0*
T0*
_output_shapes
: :
SqrtSqrtadd:z:0*
T0*
_output_shapes
: `
truedivRealDivsub:z:0Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0l
mulMulReadVariableOp_1:value:0truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ n
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
: *
dtype0p
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ a
IdentityIdentity	add_1:z:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ 
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^add_1/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ : : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs

i
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_160365

inputs
identityЋ
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
 *
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
є
	
&__inference_model_layer_call_fn_161683
input_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: 0
	unknown_6:0
	unknown_7:0
	unknown_8:0
	unknown_9:0

unknown_10:0$

unknown_11:0@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@`

unknown_18:`

unknown_19:`

unknown_20:`

unknown_21:`

unknown_22:`%

unknown_23:`

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	&

unknown_29:Р

unknown_30:	Р

unknown_31:	Р

unknown_32:	Р

unknown_33:	Р

unknown_34:	Р

unknown_35:	Р

unknown_36:
identityЂStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*<
_read_only_resource_inputs
 #$%&*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_161523o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1
Џ
L
#__inference__update_step_xla_162662
gradient
variable:	*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:: *
	_noinline(:E A

_output_shapes	
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ы

&__inference_CNN4__layer_call_fn_163080

inputs!
unknown:@`
	unknown_0:`
identityЂStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN4__layer_call_and_return_conditional_losses_160544x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ``
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ќ
K
#__inference__update_step_xla_162592
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
­
Р
%__inference_BN3__layer_call_fn_162980

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityЂStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN3__layer_call_and_return_conditional_losses_160516x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Џ
L
#__inference__update_step_xla_162667
gradient
variable:	*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:: *
	_noinline(:E A

_output_shapes	
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable

g
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_162948

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

D
(__inference_flatten_layer_call_fn_163485

inputs
identityБ
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
GPU2*0J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_160730`
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
ы

&__inference_CNN2__layer_call_fn_162834

inputs!
unknown: 0
	unknown_0:0
identityЂStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN2__layer_call_and_return_conditional_losses_160438x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
д
п=
"__inference__traced_restore_164100
file_prefix7
assignvariableop_cnn1__kernel: +
assignvariableop_1_cnn1__bias: 7
)assignvariableop_2_bn1__custom_batch_beta: 8
*assignvariableop_3_bn1__custom_batch_gamma: >
0assignvariableop_4_bn1__custom_batch_moving_mean: B
4assignvariableop_5_bn1__custom_batch_moving_variance: 9
assignvariableop_6_cnn2__kernel: 0+
assignvariableop_7_cnn2__bias:07
)assignvariableop_8_bn2__custom_batch_beta:08
*assignvariableop_9_bn2__custom_batch_gamma:0?
1assignvariableop_10_bn2__custom_batch_moving_mean:0C
5assignvariableop_11_bn2__custom_batch_moving_variance:0:
 assignvariableop_12_cnn3__kernel:0@,
assignvariableop_13_cnn3__bias:@8
*assignvariableop_14_bn3__custom_batch_beta:@9
+assignvariableop_15_bn3__custom_batch_gamma:@?
1assignvariableop_16_bn3__custom_batch_moving_mean:@C
5assignvariableop_17_bn3__custom_batch_moving_variance:@:
 assignvariableop_18_cnn4__kernel:@`,
assignvariableop_19_cnn4__bias:`8
*assignvariableop_20_bn4__custom_batch_beta:`9
+assignvariableop_21_bn4__custom_batch_gamma:`?
1assignvariableop_22_bn4__custom_batch_moving_mean:`C
5assignvariableop_23_bn4__custom_batch_moving_variance:`;
 assignvariableop_24_cnn5__kernel:`-
assignvariableop_25_cnn5__bias:	9
*assignvariableop_26_bn5__custom_batch_beta:	:
+assignvariableop_27_bn5__custom_batch_gamma:	@
1assignvariableop_28_bn5__custom_batch_moving_mean:	D
5assignvariableop_29_bn5__custom_batch_moving_variance:	<
 assignvariableop_30_cnn6__kernel:Р-
assignvariableop_31_cnn6__bias:	Р9
*assignvariableop_32_bn6__custom_batch_beta:	Р:
+assignvariableop_33_bn6__custom_batch_gamma:	Р@
1assignvariableop_34_bn6__custom_batch_moving_mean:	РD
5assignvariableop_35_bn6__custom_batch_moving_variance:	Р2
assignvariableop_36_fc1__kernel:	Р+
assignvariableop_37_fc1__bias:'
assignvariableop_38_iteration:	 +
!assignvariableop_39_learning_rate: A
'assignvariableop_40_adam_m_cnn1__kernel: A
'assignvariableop_41_adam_v_cnn1__kernel: 3
%assignvariableop_42_adam_m_cnn1__bias: 3
%assignvariableop_43_adam_v_cnn1__bias: ?
1assignvariableop_44_adam_m_bn1__custom_batch_beta: ?
1assignvariableop_45_adam_v_bn1__custom_batch_beta: @
2assignvariableop_46_adam_m_bn1__custom_batch_gamma: @
2assignvariableop_47_adam_v_bn1__custom_batch_gamma: A
'assignvariableop_48_adam_m_cnn2__kernel: 0A
'assignvariableop_49_adam_v_cnn2__kernel: 03
%assignvariableop_50_adam_m_cnn2__bias:03
%assignvariableop_51_adam_v_cnn2__bias:0?
1assignvariableop_52_adam_m_bn2__custom_batch_beta:0?
1assignvariableop_53_adam_v_bn2__custom_batch_beta:0@
2assignvariableop_54_adam_m_bn2__custom_batch_gamma:0@
2assignvariableop_55_adam_v_bn2__custom_batch_gamma:0A
'assignvariableop_56_adam_m_cnn3__kernel:0@A
'assignvariableop_57_adam_v_cnn3__kernel:0@3
%assignvariableop_58_adam_m_cnn3__bias:@3
%assignvariableop_59_adam_v_cnn3__bias:@?
1assignvariableop_60_adam_m_bn3__custom_batch_beta:@?
1assignvariableop_61_adam_v_bn3__custom_batch_beta:@@
2assignvariableop_62_adam_m_bn3__custom_batch_gamma:@@
2assignvariableop_63_adam_v_bn3__custom_batch_gamma:@A
'assignvariableop_64_adam_m_cnn4__kernel:@`A
'assignvariableop_65_adam_v_cnn4__kernel:@`3
%assignvariableop_66_adam_m_cnn4__bias:`3
%assignvariableop_67_adam_v_cnn4__bias:`?
1assignvariableop_68_adam_m_bn4__custom_batch_beta:`?
1assignvariableop_69_adam_v_bn4__custom_batch_beta:`@
2assignvariableop_70_adam_m_bn4__custom_batch_gamma:`@
2assignvariableop_71_adam_v_bn4__custom_batch_gamma:`B
'assignvariableop_72_adam_m_cnn5__kernel:`B
'assignvariableop_73_adam_v_cnn5__kernel:`4
%assignvariableop_74_adam_m_cnn5__bias:	4
%assignvariableop_75_adam_v_cnn5__bias:	@
1assignvariableop_76_adam_m_bn5__custom_batch_beta:	@
1assignvariableop_77_adam_v_bn5__custom_batch_beta:	A
2assignvariableop_78_adam_m_bn5__custom_batch_gamma:	A
2assignvariableop_79_adam_v_bn5__custom_batch_gamma:	C
'assignvariableop_80_adam_m_cnn6__kernel:РC
'assignvariableop_81_adam_v_cnn6__kernel:Р4
%assignvariableop_82_adam_m_cnn6__bias:	Р4
%assignvariableop_83_adam_v_cnn6__bias:	Р@
1assignvariableop_84_adam_m_bn6__custom_batch_beta:	Р@
1assignvariableop_85_adam_v_bn6__custom_batch_beta:	РA
2assignvariableop_86_adam_m_bn6__custom_batch_gamma:	РA
2assignvariableop_87_adam_v_bn6__custom_batch_gamma:	Р9
&assignvariableop_88_adam_m_fc1__kernel:	Р9
&assignvariableop_89_adam_v_fc1__kernel:	Р2
$assignvariableop_90_adam_m_fc1__bias:2
$assignvariableop_91_adam_v_fc1__bias:%
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
AssignVariableOpAssignVariableOpassignvariableop_cnn1__kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_1AssignVariableOpassignvariableop_1_cnn1__biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_2AssignVariableOp)assignvariableop_2_bn1__custom_batch_betaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_3AssignVariableOp*assignvariableop_3_bn1__custom_batch_gammaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_4AssignVariableOp0assignvariableop_4_bn1__custom_batch_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_5AssignVariableOp4assignvariableop_5_bn1__custom_batch_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ж
AssignVariableOp_6AssignVariableOpassignvariableop_6_cnn2__kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_7AssignVariableOpassignvariableop_7_cnn2__biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_8AssignVariableOp)assignvariableop_8_bn2__custom_batch_betaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_9AssignVariableOp*assignvariableop_9_bn2__custom_batch_gammaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_10AssignVariableOp1assignvariableop_10_bn2__custom_batch_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_11AssignVariableOp5assignvariableop_11_bn2__custom_batch_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_12AssignVariableOp assignvariableop_12_cnn3__kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_13AssignVariableOpassignvariableop_13_cnn3__biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_14AssignVariableOp*assignvariableop_14_bn3__custom_batch_betaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_15AssignVariableOp+assignvariableop_15_bn3__custom_batch_gammaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_16AssignVariableOp1assignvariableop_16_bn3__custom_batch_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_17AssignVariableOp5assignvariableop_17_bn3__custom_batch_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_18AssignVariableOp assignvariableop_18_cnn4__kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_19AssignVariableOpassignvariableop_19_cnn4__biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_20AssignVariableOp*assignvariableop_20_bn4__custom_batch_betaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_21AssignVariableOp+assignvariableop_21_bn4__custom_batch_gammaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_22AssignVariableOp1assignvariableop_22_bn4__custom_batch_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_23AssignVariableOp5assignvariableop_23_bn4__custom_batch_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_24AssignVariableOp assignvariableop_24_cnn5__kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_25AssignVariableOpassignvariableop_25_cnn5__biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_26AssignVariableOp*assignvariableop_26_bn5__custom_batch_betaIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_27AssignVariableOp+assignvariableop_27_bn5__custom_batch_gammaIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_28AssignVariableOp1assignvariableop_28_bn5__custom_batch_moving_meanIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_29AssignVariableOp5assignvariableop_29_bn5__custom_batch_moving_varianceIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_30AssignVariableOp assignvariableop_30_cnn6__kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_31AssignVariableOpassignvariableop_31_cnn6__biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_32AssignVariableOp*assignvariableop_32_bn6__custom_batch_betaIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_33AssignVariableOp+assignvariableop_33_bn6__custom_batch_gammaIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_34AssignVariableOp1assignvariableop_34_bn6__custom_batch_moving_meanIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_35AssignVariableOp5assignvariableop_35_bn6__custom_batch_moving_varianceIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_36AssignVariableOpassignvariableop_36_fc1__kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ж
AssignVariableOp_37AssignVariableOpassignvariableop_37_fc1__biasIdentity_37:output:0"/device:CPU:0*&
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
AssignVariableOp_40AssignVariableOp'assignvariableop_40_adam_m_cnn1__kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_41AssignVariableOp'assignvariableop_41_adam_v_cnn1__kernelIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_42AssignVariableOp%assignvariableop_42_adam_m_cnn1__biasIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_43AssignVariableOp%assignvariableop_43_adam_v_cnn1__biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_44AssignVariableOp1assignvariableop_44_adam_m_bn1__custom_batch_betaIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_45AssignVariableOp1assignvariableop_45_adam_v_bn1__custom_batch_betaIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_46AssignVariableOp2assignvariableop_46_adam_m_bn1__custom_batch_gammaIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_47AssignVariableOp2assignvariableop_47_adam_v_bn1__custom_batch_gammaIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_m_cnn2__kernelIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_49AssignVariableOp'assignvariableop_49_adam_v_cnn2__kernelIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_50AssignVariableOp%assignvariableop_50_adam_m_cnn2__biasIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_51AssignVariableOp%assignvariableop_51_adam_v_cnn2__biasIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_52AssignVariableOp1assignvariableop_52_adam_m_bn2__custom_batch_betaIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_53AssignVariableOp1assignvariableop_53_adam_v_bn2__custom_batch_betaIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_54AssignVariableOp2assignvariableop_54_adam_m_bn2__custom_batch_gammaIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_55AssignVariableOp2assignvariableop_55_adam_v_bn2__custom_batch_gammaIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_56AssignVariableOp'assignvariableop_56_adam_m_cnn3__kernelIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_57AssignVariableOp'assignvariableop_57_adam_v_cnn3__kernelIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_58AssignVariableOp%assignvariableop_58_adam_m_cnn3__biasIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_59AssignVariableOp%assignvariableop_59_adam_v_cnn3__biasIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_60AssignVariableOp1assignvariableop_60_adam_m_bn3__custom_batch_betaIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_61AssignVariableOp1assignvariableop_61_adam_v_bn3__custom_batch_betaIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_62AssignVariableOp2assignvariableop_62_adam_m_bn3__custom_batch_gammaIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_63AssignVariableOp2assignvariableop_63_adam_v_bn3__custom_batch_gammaIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_64AssignVariableOp'assignvariableop_64_adam_m_cnn4__kernelIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_65AssignVariableOp'assignvariableop_65_adam_v_cnn4__kernelIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_66AssignVariableOp%assignvariableop_66_adam_m_cnn4__biasIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_67AssignVariableOp%assignvariableop_67_adam_v_cnn4__biasIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_68AssignVariableOp1assignvariableop_68_adam_m_bn4__custom_batch_betaIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_69AssignVariableOp1assignvariableop_69_adam_v_bn4__custom_batch_betaIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_70AssignVariableOp2assignvariableop_70_adam_m_bn4__custom_batch_gammaIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_71AssignVariableOp2assignvariableop_71_adam_v_bn4__custom_batch_gammaIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_72AssignVariableOp'assignvariableop_72_adam_m_cnn5__kernelIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_73AssignVariableOp'assignvariableop_73_adam_v_cnn5__kernelIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_74AssignVariableOp%assignvariableop_74_adam_m_cnn5__biasIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_75AssignVariableOp%assignvariableop_75_adam_v_cnn5__biasIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_76AssignVariableOp1assignvariableop_76_adam_m_bn5__custom_batch_betaIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_77AssignVariableOp1assignvariableop_77_adam_v_bn5__custom_batch_betaIdentity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_78AssignVariableOp2assignvariableop_78_adam_m_bn5__custom_batch_gammaIdentity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_79AssignVariableOp2assignvariableop_79_adam_v_bn5__custom_batch_gammaIdentity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_80AssignVariableOp'assignvariableop_80_adam_m_cnn6__kernelIdentity_80:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_81AssignVariableOp'assignvariableop_81_adam_v_cnn6__kernelIdentity_81:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_82AssignVariableOp%assignvariableop_82_adam_m_cnn6__biasIdentity_82:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_83AssignVariableOp%assignvariableop_83_adam_v_cnn6__biasIdentity_83:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_84AssignVariableOp1assignvariableop_84_adam_m_bn6__custom_batch_betaIdentity_84:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_85AssignVariableOp1assignvariableop_85_adam_v_bn6__custom_batch_betaIdentity_85:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_86AssignVariableOp2assignvariableop_86_adam_m_bn6__custom_batch_gammaIdentity_86:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_87AssignVariableOp2assignvariableop_87_adam_v_bn6__custom_batch_gammaIdentity_87:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_88AssignVariableOp&assignvariableop_88_adam_m_fc1__kernelIdentity_88:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_89AssignVariableOp&assignvariableop_89_adam_v_fc1__kernelIdentity_89:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_90AssignVariableOp$assignvariableop_90_adam_m_fc1__biasIdentity_90:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_91AssignVariableOp$assignvariableop_91_adam_v_fc1__biasIdentity_91:output:0"/device:CPU:0*&
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
Т: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
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
AssignVariableOp_3AssignVariableOp_32*
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
AssignVariableOp_4AssignVariableOp_42*
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
AssignVariableOp_5AssignVariableOp_52*
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
AssignVariableOp_6AssignVariableOp_62*
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
AssignVariableOp_7AssignVariableOp_72*
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
AssignVariableOp_8AssignVariableOp_82*
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
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_95:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Љ

њ
A__inference_CNN3__layer_call_and_return_conditional_losses_162967

inputs8
conv2d_readvariableop_resource:0@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
Ќ
K
#__inference__update_step_xla_162582
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ќ
K
#__inference__update_step_xla_162612
gradient
variable:0*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:0: *
	_noinline(:D @

_output_shapes
:0
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ћ

ќ
A__inference_CNN5__layer_call_and_return_conditional_losses_160597

inputs9
conv2d_readvariableop_resource:`.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:`*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@`
 
_user_specified_nameinputs
Я
g
K__inference_FC1_preFlatten1_layer_call_and_return_conditional_losses_163451

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
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџР:X T
0
_output_shapes
:џџџџџџџџџР
 
_user_specified_nameinputs
­
Р
%__inference_BN2__layer_call_fn_162857

inputs
unknown:0
	unknown_0:0
	unknown_1:0
	unknown_2:0
identityЂStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN2__layer_call_and_return_conditional_losses_160463x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ0: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
§
	
&__inference_model_layer_call_fn_162065

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: 0
	unknown_6:0
	unknown_7:0
	unknown_8:0
	unknown_9:0

unknown_10:0$

unknown_11:0@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@`

unknown_18:`

unknown_19:`

unknown_20:`

unknown_21:`

unknown_22:`%

unknown_23:`

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	&

unknown_29:Р

unknown_30:	Р

unknown_31:	Р

unknown_32:	Р

unknown_33:	Р

unknown_34:	Р

unknown_35:	Р

unknown_36:
identityЂStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_160733o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
З
J
.__inference_max_pooling2d_layer_call_fn_162820

inputs
identityк
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_160305
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ы
_
C__inference_re_lu_1_layer_call_and_return_conditional_losses_160478

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:џџџџџџџџџ0c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ0:X T
0
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
Ђ*
Ы
@__inference_BN1__layer_call_and_return_conditional_losses_161311

inputs%
readvariableop_resource: '
readvariableop_2_resource: '
readvariableop_4_resource: +
add_3_readvariableop_resource: 
identityЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_2ЂAssignVariableOp_3ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3ЂReadVariableOp_4Ђadd_3/ReadVariableOps
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
: *
	keep_dims(l
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
: 
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*0
_output_shapes
:џџџџџџџџџ w
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          І
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
: *
	keep_dims(o
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 u
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?W
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes
: L
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=]
mul_1Mulmoments/Squeeze:output:0mul_1/y:output:0*
T0*
_output_shapes
: E
addAddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
: И
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(w
ReadVariableOp_1ReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes
: *
dtype0И
AssignVariableOp_1AssignVariableOpreadvariableop_resourceReadVariableOp_1:value:0^AssignVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(f
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype0L
mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?]
mul_2MulReadVariableOp_2:value:0mul_2/y:output:0*
T0*
_output_shapes
: L
mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=_
mul_3Mulmoments/Squeeze_1:output:0mul_3/y:output:0*
T0*
_output_shapes
: I
add_1AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
: Р
AssignVariableOp_2AssignVariableOpreadvariableop_2_resource	add_1:z:0^ReadVariableOp_2*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape({
ReadVariableOp_3ReadVariableOpreadvariableop_2_resource^AssignVariableOp_2*
_output_shapes
: *
dtype0М
AssignVariableOp_3AssignVariableOpreadvariableop_2_resourceReadVariableOp_3:value:0^AssignVariableOp_2^ReadVariableOp_3*
_output_shapes
 *
dtype0*
validate_shape(g
subSubinputsmoments/Squeeze:output:0*
T0*0
_output_shapes
:џџџџџџџџџ L
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75a
add_2AddV2moments/Squeeze_1:output:0add_2/y:output:0*
T0*
_output_shapes
: <
SqrtSqrt	add_2:z:0*
T0*
_output_shapes
: `
truedivRealDivsub:z:0Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ f
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource*
_output_shapes
: *
dtype0n
mul_4MulReadVariableOp_4:value:0truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ n
add_3/ReadVariableOpReadVariableOpadd_3_readvariableop_resource*
_output_shapes
: *
dtype0r
add_3AddV2	mul_4:z:0add_3/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ a
IdentityIdentity	add_3:z:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ 
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^add_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42,
add_3/ReadVariableOpadd_3/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Л
L
0__inference_max_pooling2d_4_layer_call_fn_163312

inputs
identityм
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_160353
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Т
D
(__inference_re_lu_3_layer_call_fn_163179

inputs
identityК
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_3_layer_call_and_return_conditional_losses_160584i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџ`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ`:X T
0
_output_shapes
:џџџџџџџџџ`
 
_user_specified_nameinputs
ю

&__inference_CNN6__layer_call_fn_163326

inputs#
unknown:Р
	unknown_0:	Р
identityЂStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ Р*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN6__layer_call_and_return_conditional_losses_160650x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ Р`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Т
D
(__inference_re_lu_2_layer_call_fn_163056

inputs
identityК
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_2_layer_call_and_return_conditional_losses_160531i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ@:X T
0
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ы
_
C__inference_re_lu_1_layer_call_and_return_conditional_losses_162938

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:џџџџџџџџџ0c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ0:X T
0
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
Ќ
K
#__inference__update_step_xla_162647
gradient
variable:`*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:`: *
	_noinline(:D @

_output_shapes
:`
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
§m
т
A__inference_model_layer_call_and_return_conditional_losses_161899
input_1&
cnn1__161794: 
cnn1__161796: 
bn1__161799: 
bn1__161801: 
bn1__161803: 
bn1__161805: &
cnn2__161810: 0
cnn2__161812:0
bn2__161815:0
bn2__161817:0
bn2__161819:0
bn2__161821:0&
cnn3__161826:0@
cnn3__161828:@
bn3__161831:@
bn3__161833:@
bn3__161835:@
bn3__161837:@&
cnn4__161842:@`
cnn4__161844:`
bn4__161847:`
bn4__161849:`
bn4__161851:`
bn4__161853:`'
cnn5__161858:`
cnn5__161860:	
bn5__161863:	
bn5__161865:	
bn5__161867:	
bn5__161869:	(
cnn6__161874:Р
cnn6__161876:	Р
bn6__161879:	Р
bn6__161881:	Р
bn6__161883:	Р
bn6__161885:	Р
fc1__161891:	Р
fc1__161893:
identityЂBN1_/StatefulPartitionedCallЂBN2_/StatefulPartitionedCallЂBN3_/StatefulPartitionedCallЂBN4_/StatefulPartitionedCallЂBN5_/StatefulPartitionedCallЂBN6_/StatefulPartitionedCallЂCNN1_/StatefulPartitionedCallЂCNN2_/StatefulPartitionedCallЂCNN3_/StatefulPartitionedCallЂCNN4_/StatefulPartitionedCallЂCNN5_/StatefulPartitionedCallЂCNN6_/StatefulPartitionedCallЂFC1_/StatefulPartitionedCallё
CNN1_/StatefulPartitionedCallStatefulPartitionedCallinput_1cnn1__161794cnn1__161796*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN1__layer_call_and_return_conditional_losses_160385Ј
BN1_/StatefulPartitionedCallStatefulPartitionedCall&CNN1_/StatefulPartitionedCall:output:0bn1__161799bn1__161801bn1__161803bn1__161805*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN1__layer_call_and_return_conditional_losses_161311н
re_lu/PartitionedCallPartitionedCall%BN1_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_re_lu_layer_call_and_return_conditional_losses_160425ц
max_pooling2d/PartitionedCallPartitionedCallre_lu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_160305
CNN2_/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0cnn2__161810cnn2__161812*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN2__layer_call_and_return_conditional_losses_160438Ј
BN2_/StatefulPartitionedCallStatefulPartitionedCall&CNN2_/StatefulPartitionedCall:output:0bn2__161815bn2__161817bn2__161819bn2__161821*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN2__layer_call_and_return_conditional_losses_161229с
re_lu_1/PartitionedCallPartitionedCall%BN2_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_1_layer_call_and_return_conditional_losses_160478ь
max_pooling2d_1/PartitionedCallPartitionedCall re_lu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_160317
CNN3_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0cnn3__161826cnn3__161828*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN3__layer_call_and_return_conditional_losses_160491Ј
BN3_/StatefulPartitionedCallStatefulPartitionedCall&CNN3_/StatefulPartitionedCall:output:0bn3__161831bn3__161833bn3__161835bn3__161837*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN3__layer_call_and_return_conditional_losses_161147с
re_lu_2/PartitionedCallPartitionedCall%BN3_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_2_layer_call_and_return_conditional_losses_160531ь
max_pooling2d_2/PartitionedCallPartitionedCall re_lu_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_160329
CNN4_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0cnn4__161842cnn4__161844*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN4__layer_call_and_return_conditional_losses_160544Ј
BN4_/StatefulPartitionedCallStatefulPartitionedCall&CNN4_/StatefulPartitionedCall:output:0bn4__161847bn4__161849bn4__161851bn4__161853*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN4__layer_call_and_return_conditional_losses_161065с
re_lu_3/PartitionedCallPartitionedCall%BN4_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_3_layer_call_and_return_conditional_losses_160584ы
max_pooling2d_3/PartitionedCallPartitionedCall re_lu_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_160341
CNN5_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0cnn5__161858cnn5__161860*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN5__layer_call_and_return_conditional_losses_160597Ј
BN5_/StatefulPartitionedCallStatefulPartitionedCall&CNN5_/StatefulPartitionedCall:output:0bn5__161863bn5__161865bn5__161867bn5__161869*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN5__layer_call_and_return_conditional_losses_160983с
re_lu_4/PartitionedCallPartitionedCall%BN5_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_4_layer_call_and_return_conditional_losses_160637ь
max_pooling2d_4/PartitionedCallPartitionedCall re_lu_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_160353
CNN6_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0cnn6__161874cnn6__161876*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ Р*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_CNN6__layer_call_and_return_conditional_losses_160650Ј
BN6_/StatefulPartitionedCallStatefulPartitionedCall&CNN6_/StatefulPartitionedCall:output:0bn6__161879bn6__161881bn6__161883bn6__161885*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ Р*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN6__layer_call_and_return_conditional_losses_160901с
re_lu_5/PartitionedCallPartitionedCall%BN6_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ Р* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_5_layer_call_and_return_conditional_losses_160690№
!average_pooling2d/PartitionedCallPartitionedCall re_lu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџР* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_160365ю
FC1_preFlatten1/PartitionedCallPartitionedCall*average_pooling2d/PartitionedCall:output:0*
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
GPU2*0J 8 *T
fORM
K__inference_FC1_preFlatten1_layer_call_and_return_conditional_losses_160699
FC1_/StatefulPartitionedCallStatefulPartitionedCall(FC1_preFlatten1/PartitionedCall:output:0fc1__161891fc1__161893*
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
@__inference_FC1__layer_call_and_return_conditional_losses_160711и
softmax/PartitionedCallPartitionedCall%FC1_/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *L
fGRE
C__inference_softmax_layer_call_and_return_conditional_losses_160722г
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
GPU2*0J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_160730o
IdentityIdentity flatten/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџп
NoOpNoOp^BN1_/StatefulPartitionedCall^BN2_/StatefulPartitionedCall^BN3_/StatefulPartitionedCall^BN4_/StatefulPartitionedCall^BN5_/StatefulPartitionedCall^BN6_/StatefulPartitionedCall^CNN1_/StatefulPartitionedCall^CNN2_/StatefulPartitionedCall^CNN3_/StatefulPartitionedCall^CNN4_/StatefulPartitionedCall^CNN5_/StatefulPartitionedCall^CNN6_/StatefulPartitionedCall^FC1_/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2<
BN1_/StatefulPartitionedCallBN1_/StatefulPartitionedCall2<
BN2_/StatefulPartitionedCallBN2_/StatefulPartitionedCall2<
BN3_/StatefulPartitionedCallBN3_/StatefulPartitionedCall2<
BN4_/StatefulPartitionedCallBN4_/StatefulPartitionedCall2<
BN5_/StatefulPartitionedCallBN5_/StatefulPartitionedCall2<
BN6_/StatefulPartitionedCallBN6_/StatefulPartitionedCall2>
CNN1_/StatefulPartitionedCallCNN1_/StatefulPartitionedCall2>
CNN2_/StatefulPartitionedCallCNN2_/StatefulPartitionedCall2>
CNN3_/StatefulPartitionedCallCNN3_/StatefulPartitionedCall2>
CNN4_/StatefulPartitionedCallCNN4_/StatefulPartitionedCall2>
CNN5_/StatefulPartitionedCallCNN5_/StatefulPartitionedCall2>
CNN6_/StatefulPartitionedCallCNN6_/StatefulPartitionedCall2<
FC1_/StatefulPartitionedCallFC1_/StatefulPartitionedCall:Y U
0
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1
Л
L
0__inference_max_pooling2d_1_layer_call_fn_162943

inputs
identityм
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_160317
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ќ

A__inference_model_layer_call_and_return_conditional_losses_162299

inputs>
$cnn1__conv2d_readvariableop_resource: 3
%cnn1__biasadd_readvariableop_resource: .
 bn1__sub_readvariableop_resource: *
bn1__readvariableop_resource: ,
bn1__readvariableop_1_resource: 0
"bn1__add_1_readvariableop_resource: >
$cnn2__conv2d_readvariableop_resource: 03
%cnn2__biasadd_readvariableop_resource:0.
 bn2__sub_readvariableop_resource:0*
bn2__readvariableop_resource:0,
bn2__readvariableop_1_resource:00
"bn2__add_1_readvariableop_resource:0>
$cnn3__conv2d_readvariableop_resource:0@3
%cnn3__biasadd_readvariableop_resource:@.
 bn3__sub_readvariableop_resource:@*
bn3__readvariableop_resource:@,
bn3__readvariableop_1_resource:@0
"bn3__add_1_readvariableop_resource:@>
$cnn4__conv2d_readvariableop_resource:@`3
%cnn4__biasadd_readvariableop_resource:`.
 bn4__sub_readvariableop_resource:`*
bn4__readvariableop_resource:`,
bn4__readvariableop_1_resource:`0
"bn4__add_1_readvariableop_resource:`?
$cnn5__conv2d_readvariableop_resource:`4
%cnn5__biasadd_readvariableop_resource:	/
 bn5__sub_readvariableop_resource:	+
bn5__readvariableop_resource:	-
bn5__readvariableop_1_resource:	1
"bn5__add_1_readvariableop_resource:	@
$cnn6__conv2d_readvariableop_resource:Р4
%cnn6__biasadd_readvariableop_resource:	Р/
 bn6__sub_readvariableop_resource:	Р+
bn6__readvariableop_resource:	Р-
bn6__readvariableop_1_resource:	Р1
"bn6__add_1_readvariableop_resource:	Р6
#fc1__matmul_readvariableop_resource:	Р2
$fc1__biasadd_readvariableop_resource:
identityЂBN1_/ReadVariableOpЂBN1_/ReadVariableOp_1ЂBN1_/add_1/ReadVariableOpЂBN1_/sub/ReadVariableOpЂBN2_/ReadVariableOpЂBN2_/ReadVariableOp_1ЂBN2_/add_1/ReadVariableOpЂBN2_/sub/ReadVariableOpЂBN3_/ReadVariableOpЂBN3_/ReadVariableOp_1ЂBN3_/add_1/ReadVariableOpЂBN3_/sub/ReadVariableOpЂBN4_/ReadVariableOpЂBN4_/ReadVariableOp_1ЂBN4_/add_1/ReadVariableOpЂBN4_/sub/ReadVariableOpЂBN5_/ReadVariableOpЂBN5_/ReadVariableOp_1ЂBN5_/add_1/ReadVariableOpЂBN5_/sub/ReadVariableOpЂBN6_/ReadVariableOpЂBN6_/ReadVariableOp_1ЂBN6_/add_1/ReadVariableOpЂBN6_/sub/ReadVariableOpЂCNN1_/BiasAdd/ReadVariableOpЂCNN1_/Conv2D/ReadVariableOpЂCNN2_/BiasAdd/ReadVariableOpЂCNN2_/Conv2D/ReadVariableOpЂCNN3_/BiasAdd/ReadVariableOpЂCNN3_/Conv2D/ReadVariableOpЂCNN4_/BiasAdd/ReadVariableOpЂCNN4_/Conv2D/ReadVariableOpЂCNN5_/BiasAdd/ReadVariableOpЂCNN5_/Conv2D/ReadVariableOpЂCNN6_/BiasAdd/ReadVariableOpЂCNN6_/Conv2D/ReadVariableOpЂFC1_/BiasAdd/ReadVariableOpЂFC1_/MatMul/ReadVariableOp
CNN1_/Conv2D/ReadVariableOpReadVariableOp$cnn1__conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0І
CNN1_/Conv2DConv2Dinputs#CNN1_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ *
paddingSAME*
strides
~
CNN1_/BiasAdd/ReadVariableOpReadVariableOp%cnn1__biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
CNN1_/BiasAddBiasAddCNN1_/Conv2D:output:0$CNN1_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ t
BN1_/sub/ReadVariableOpReadVariableOp bn1__sub_readvariableop_resource*
_output_shapes
: *
dtype0
BN1_/subSubCNN1_/BiasAdd:output:0BN1_/sub/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ l
BN1_/ReadVariableOpReadVariableOpbn1__readvariableop_resource*
_output_shapes
: *
dtype0O

BN1_/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75h
BN1_/addAddV2BN1_/ReadVariableOp:value:0BN1_/add/y:output:0*
T0*
_output_shapes
: D
	BN1_/SqrtSqrtBN1_/add:z:0*
T0*
_output_shapes
: o
BN1_/truedivRealDivBN1_/sub:z:0BN1_/Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ p
BN1_/ReadVariableOp_1ReadVariableOpbn1__readvariableop_1_resource*
_output_shapes
: *
dtype0{
BN1_/mulMulBN1_/ReadVariableOp_1:value:0BN1_/truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ x
BN1_/add_1/ReadVariableOpReadVariableOp"bn1__add_1_readvariableop_resource*
_output_shapes
: *
dtype0

BN1_/add_1AddV2BN1_/mul:z:0!BN1_/add_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ ]

re_lu/ReluReluBN1_/add_1:z:0*
T0*0
_output_shapes
:џџџџџџџџџ Ј
max_pooling2d/MaxPoolMaxPoolre_lu/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides

CNN2_/Conv2D/ReadVariableOpReadVariableOp$cnn2__conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype0О
CNN2_/Conv2DConv2Dmax_pooling2d/MaxPool:output:0#CNN2_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0*
paddingSAME*
strides
~
CNN2_/BiasAdd/ReadVariableOpReadVariableOp%cnn2__biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0
CNN2_/BiasAddBiasAddCNN2_/Conv2D:output:0$CNN2_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0t
BN2_/sub/ReadVariableOpReadVariableOp bn2__sub_readvariableop_resource*
_output_shapes
:0*
dtype0
BN2_/subSubCNN2_/BiasAdd:output:0BN2_/sub/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0l
BN2_/ReadVariableOpReadVariableOpbn2__readvariableop_resource*
_output_shapes
:0*
dtype0O

BN2_/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75h
BN2_/addAddV2BN2_/ReadVariableOp:value:0BN2_/add/y:output:0*
T0*
_output_shapes
:0D
	BN2_/SqrtSqrtBN2_/add:z:0*
T0*
_output_shapes
:0o
BN2_/truedivRealDivBN2_/sub:z:0BN2_/Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ0p
BN2_/ReadVariableOp_1ReadVariableOpbn2__readvariableop_1_resource*
_output_shapes
:0*
dtype0{
BN2_/mulMulBN2_/ReadVariableOp_1:value:0BN2_/truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ0x
BN2_/add_1/ReadVariableOpReadVariableOp"bn2__add_1_readvariableop_resource*
_output_shapes
:0*
dtype0

BN2_/add_1AddV2BN2_/mul:z:0!BN2_/add_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0_
re_lu_1/ReluReluBN2_/add_1:z:0*
T0*0
_output_shapes
:џџџџџџџџџ0Ќ
max_pooling2d_1/MaxPoolMaxPoolre_lu_1/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ0*
ksize
*
paddingVALID*
strides

CNN3_/Conv2D/ReadVariableOpReadVariableOp$cnn3__conv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0Р
CNN3_/Conv2DConv2D max_pooling2d_1/MaxPool:output:0#CNN3_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
~
CNN3_/BiasAdd/ReadVariableOpReadVariableOp%cnn3__biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
CNN3_/BiasAddBiasAddCNN3_/Conv2D:output:0$CNN3_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@t
BN3_/sub/ReadVariableOpReadVariableOp bn3__sub_readvariableop_resource*
_output_shapes
:@*
dtype0
BN3_/subSubCNN3_/BiasAdd:output:0BN3_/sub/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@l
BN3_/ReadVariableOpReadVariableOpbn3__readvariableop_resource*
_output_shapes
:@*
dtype0O

BN3_/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75h
BN3_/addAddV2BN3_/ReadVariableOp:value:0BN3_/add/y:output:0*
T0*
_output_shapes
:@D
	BN3_/SqrtSqrtBN3_/add:z:0*
T0*
_output_shapes
:@o
BN3_/truedivRealDivBN3_/sub:z:0BN3_/Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ@p
BN3_/ReadVariableOp_1ReadVariableOpbn3__readvariableop_1_resource*
_output_shapes
:@*
dtype0{
BN3_/mulMulBN3_/ReadVariableOp_1:value:0BN3_/truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ@x
BN3_/add_1/ReadVariableOpReadVariableOp"bn3__add_1_readvariableop_resource*
_output_shapes
:@*
dtype0

BN3_/add_1AddV2BN3_/mul:z:0!BN3_/add_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@_
re_lu_2/ReluReluBN3_/add_1:z:0*
T0*0
_output_shapes
:џџџџџџџџџ@Ќ
max_pooling2d_2/MaxPoolMaxPoolre_lu_2/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides

CNN4_/Conv2D/ReadVariableOpReadVariableOp$cnn4__conv2d_readvariableop_resource*&
_output_shapes
:@`*
dtype0Р
CNN4_/Conv2DConv2D max_pooling2d_2/MaxPool:output:0#CNN4_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ`*
paddingSAME*
strides
~
CNN4_/BiasAdd/ReadVariableOpReadVariableOp%cnn4__biasadd_readvariableop_resource*
_output_shapes
:`*
dtype0
CNN4_/BiasAddBiasAddCNN4_/Conv2D:output:0$CNN4_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ`t
BN4_/sub/ReadVariableOpReadVariableOp bn4__sub_readvariableop_resource*
_output_shapes
:`*
dtype0
BN4_/subSubCNN4_/BiasAdd:output:0BN4_/sub/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ`l
BN4_/ReadVariableOpReadVariableOpbn4__readvariableop_resource*
_output_shapes
:`*
dtype0O

BN4_/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75h
BN4_/addAddV2BN4_/ReadVariableOp:value:0BN4_/add/y:output:0*
T0*
_output_shapes
:`D
	BN4_/SqrtSqrtBN4_/add:z:0*
T0*
_output_shapes
:`o
BN4_/truedivRealDivBN4_/sub:z:0BN4_/Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ`p
BN4_/ReadVariableOp_1ReadVariableOpbn4__readvariableop_1_resource*
_output_shapes
:`*
dtype0{
BN4_/mulMulBN4_/ReadVariableOp_1:value:0BN4_/truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ`x
BN4_/add_1/ReadVariableOpReadVariableOp"bn4__add_1_readvariableop_resource*
_output_shapes
:`*
dtype0

BN4_/add_1AddV2BN4_/mul:z:0!BN4_/add_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ`_
re_lu_3/ReluReluBN4_/add_1:z:0*
T0*0
_output_shapes
:џџџџџџџџџ`Ћ
max_pooling2d_3/MaxPoolMaxPoolre_lu_3/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@`*
ksize
*
paddingVALID*
strides

CNN5_/Conv2D/ReadVariableOpReadVariableOp$cnn5__conv2d_readvariableop_resource*'
_output_shapes
:`*
dtype0Р
CNN5_/Conv2DConv2D max_pooling2d_3/MaxPool:output:0#CNN5_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

CNN5_/BiasAdd/ReadVariableOpReadVariableOp%cnn5__biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
CNN5_/BiasAddBiasAddCNN5_/Conv2D:output:0$CNN5_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@u
BN5_/sub/ReadVariableOpReadVariableOp bn5__sub_readvariableop_resource*
_output_shapes	
:*
dtype0
BN5_/subSubCNN5_/BiasAdd:output:0BN5_/sub/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@m
BN5_/ReadVariableOpReadVariableOpbn5__readvariableop_resource*
_output_shapes	
:*
dtype0O

BN5_/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75i
BN5_/addAddV2BN5_/ReadVariableOp:value:0BN5_/add/y:output:0*
T0*
_output_shapes	
:E
	BN5_/SqrtSqrtBN5_/add:z:0*
T0*
_output_shapes	
:o
BN5_/truedivRealDivBN5_/sub:z:0BN5_/Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ@q
BN5_/ReadVariableOp_1ReadVariableOpbn5__readvariableop_1_resource*
_output_shapes	
:*
dtype0{
BN5_/mulMulBN5_/ReadVariableOp_1:value:0BN5_/truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ@y
BN5_/add_1/ReadVariableOpReadVariableOp"bn5__add_1_readvariableop_resource*
_output_shapes	
:*
dtype0

BN5_/add_1AddV2BN5_/mul:z:0!BN5_/add_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@_
re_lu_4/ReluReluBN5_/add_1:z:0*
T0*0
_output_shapes
:џџџџџџџџџ@Ќ
max_pooling2d_4/MaxPoolMaxPoolre_lu_4/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides

CNN6_/Conv2D/ReadVariableOpReadVariableOp$cnn6__conv2d_readvariableop_resource*(
_output_shapes
:Р*
dtype0Р
CNN6_/Conv2DConv2D max_pooling2d_4/MaxPool:output:0#CNN6_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ Р*
paddingSAME*
strides

CNN6_/BiasAdd/ReadVariableOpReadVariableOp%cnn6__biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0
CNN6_/BiasAddBiasAddCNN6_/Conv2D:output:0$CNN6_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ Рu
BN6_/sub/ReadVariableOpReadVariableOp bn6__sub_readvariableop_resource*
_output_shapes	
:Р*
dtype0
BN6_/subSubCNN6_/BiasAdd:output:0BN6_/sub/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ Рm
BN6_/ReadVariableOpReadVariableOpbn6__readvariableop_resource*
_output_shapes	
:Р*
dtype0O

BN6_/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75i
BN6_/addAddV2BN6_/ReadVariableOp:value:0BN6_/add/y:output:0*
T0*
_output_shapes	
:РE
	BN6_/SqrtSqrtBN6_/add:z:0*
T0*
_output_shapes	
:Рo
BN6_/truedivRealDivBN6_/sub:z:0BN6_/Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ Рq
BN6_/ReadVariableOp_1ReadVariableOpbn6__readvariableop_1_resource*
_output_shapes	
:Р*
dtype0{
BN6_/mulMulBN6_/ReadVariableOp_1:value:0BN6_/truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ Рy
BN6_/add_1/ReadVariableOpReadVariableOp"bn6__add_1_readvariableop_resource*
_output_shapes	
:Р*
dtype0

BN6_/add_1AddV2BN6_/mul:z:0!BN6_/add_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ Р_
re_lu_5/ReluReluBN6_/add_1:z:0*
T0*0
_output_shapes
:џџџџџџџџџ РЗ
average_pooling2d/AvgPoolAvgPoolre_lu_5/Relu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџР*
ksize
 *
paddingVALID*
strides
f
FC1_preFlatten1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   
FC1_preFlatten1/ReshapeReshape"average_pooling2d/AvgPool:output:0FC1_preFlatten1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџР
FC1_/MatMul/ReadVariableOpReadVariableOp#fc1__matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0
FC1_/MatMulMatMul FC1_preFlatten1/Reshape:output:0"FC1_/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ|
FC1_/BiasAdd/ReadVariableOpReadVariableOp$fc1__biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
FC1_/BiasAddBiasAddFC1_/MatMul:product:0#FC1_/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџc
softmax/SoftmaxSoftmaxFC1_/BiasAdd:output:0*
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
:џџџџџџџџџЧ
NoOpNoOp^BN1_/ReadVariableOp^BN1_/ReadVariableOp_1^BN1_/add_1/ReadVariableOp^BN1_/sub/ReadVariableOp^BN2_/ReadVariableOp^BN2_/ReadVariableOp_1^BN2_/add_1/ReadVariableOp^BN2_/sub/ReadVariableOp^BN3_/ReadVariableOp^BN3_/ReadVariableOp_1^BN3_/add_1/ReadVariableOp^BN3_/sub/ReadVariableOp^BN4_/ReadVariableOp^BN4_/ReadVariableOp_1^BN4_/add_1/ReadVariableOp^BN4_/sub/ReadVariableOp^BN5_/ReadVariableOp^BN5_/ReadVariableOp_1^BN5_/add_1/ReadVariableOp^BN5_/sub/ReadVariableOp^BN6_/ReadVariableOp^BN6_/ReadVariableOp_1^BN6_/add_1/ReadVariableOp^BN6_/sub/ReadVariableOp^CNN1_/BiasAdd/ReadVariableOp^CNN1_/Conv2D/ReadVariableOp^CNN2_/BiasAdd/ReadVariableOp^CNN2_/Conv2D/ReadVariableOp^CNN3_/BiasAdd/ReadVariableOp^CNN3_/Conv2D/ReadVariableOp^CNN4_/BiasAdd/ReadVariableOp^CNN4_/Conv2D/ReadVariableOp^CNN5_/BiasAdd/ReadVariableOp^CNN5_/Conv2D/ReadVariableOp^CNN6_/BiasAdd/ReadVariableOp^CNN6_/Conv2D/ReadVariableOp^FC1_/BiasAdd/ReadVariableOp^FC1_/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
BN1_/ReadVariableOpBN1_/ReadVariableOp2.
BN1_/ReadVariableOp_1BN1_/ReadVariableOp_126
BN1_/add_1/ReadVariableOpBN1_/add_1/ReadVariableOp22
BN1_/sub/ReadVariableOpBN1_/sub/ReadVariableOp2*
BN2_/ReadVariableOpBN2_/ReadVariableOp2.
BN2_/ReadVariableOp_1BN2_/ReadVariableOp_126
BN2_/add_1/ReadVariableOpBN2_/add_1/ReadVariableOp22
BN2_/sub/ReadVariableOpBN2_/sub/ReadVariableOp2*
BN3_/ReadVariableOpBN3_/ReadVariableOp2.
BN3_/ReadVariableOp_1BN3_/ReadVariableOp_126
BN3_/add_1/ReadVariableOpBN3_/add_1/ReadVariableOp22
BN3_/sub/ReadVariableOpBN3_/sub/ReadVariableOp2*
BN4_/ReadVariableOpBN4_/ReadVariableOp2.
BN4_/ReadVariableOp_1BN4_/ReadVariableOp_126
BN4_/add_1/ReadVariableOpBN4_/add_1/ReadVariableOp22
BN4_/sub/ReadVariableOpBN4_/sub/ReadVariableOp2*
BN5_/ReadVariableOpBN5_/ReadVariableOp2.
BN5_/ReadVariableOp_1BN5_/ReadVariableOp_126
BN5_/add_1/ReadVariableOpBN5_/add_1/ReadVariableOp22
BN5_/sub/ReadVariableOpBN5_/sub/ReadVariableOp2*
BN6_/ReadVariableOpBN6_/ReadVariableOp2.
BN6_/ReadVariableOp_1BN6_/ReadVariableOp_126
BN6_/add_1/ReadVariableOpBN6_/add_1/ReadVariableOp22
BN6_/sub/ReadVariableOpBN6_/sub/ReadVariableOp2<
CNN1_/BiasAdd/ReadVariableOpCNN1_/BiasAdd/ReadVariableOp2:
CNN1_/Conv2D/ReadVariableOpCNN1_/Conv2D/ReadVariableOp2<
CNN2_/BiasAdd/ReadVariableOpCNN2_/BiasAdd/ReadVariableOp2:
CNN2_/Conv2D/ReadVariableOpCNN2_/Conv2D/ReadVariableOp2<
CNN3_/BiasAdd/ReadVariableOpCNN3_/BiasAdd/ReadVariableOp2:
CNN3_/Conv2D/ReadVariableOpCNN3_/Conv2D/ReadVariableOp2<
CNN4_/BiasAdd/ReadVariableOpCNN4_/BiasAdd/ReadVariableOp2:
CNN4_/Conv2D/ReadVariableOpCNN4_/Conv2D/ReadVariableOp2<
CNN5_/BiasAdd/ReadVariableOpCNN5_/BiasAdd/ReadVariableOp2:
CNN5_/Conv2D/ReadVariableOpCNN5_/Conv2D/ReadVariableOp2<
CNN6_/BiasAdd/ReadVariableOpCNN6_/BiasAdd/ReadVariableOp2:
CNN6_/Conv2D/ReadVariableOpCNN6_/Conv2D/ReadVariableOp2:
FC1_/BiasAdd/ReadVariableOpFC1_/BiasAdd/ReadVariableOp28
FC1_/MatMul/ReadVariableOpFC1_/MatMul/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Л
L
0__inference_max_pooling2d_3_layer_call_fn_163189

inputs
identityм
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_160341
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ќ
K
#__inference__update_step_xla_162607
gradient
variable:0*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:0: *
	_noinline(:D @

_output_shapes
:0
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Љ

њ
A__inference_CNN4__layer_call_and_return_conditional_losses_163090

inputs8
conv2d_readvariableop_resource:@`-
biasadd_readvariableop_resource:`
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@`*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ`*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ`h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ`w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_160317

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ђ*
Ы
@__inference_BN1__layer_call_and_return_conditional_losses_162805

inputs%
readvariableop_resource: '
readvariableop_2_resource: '
readvariableop_4_resource: +
add_3_readvariableop_resource: 
identityЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_2ЂAssignVariableOp_3ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3ЂReadVariableOp_4Ђadd_3/ReadVariableOps
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
: *
	keep_dims(l
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
: 
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*0
_output_shapes
:џџџџџџџџџ w
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          І
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
: *
	keep_dims(o
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 u
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?W
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes
: L
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=]
mul_1Mulmoments/Squeeze:output:0mul_1/y:output:0*
T0*
_output_shapes
: E
addAddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
: И
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(w
ReadVariableOp_1ReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes
: *
dtype0И
AssignVariableOp_1AssignVariableOpreadvariableop_resourceReadVariableOp_1:value:0^AssignVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(f
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype0L
mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?]
mul_2MulReadVariableOp_2:value:0mul_2/y:output:0*
T0*
_output_shapes
: L
mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=_
mul_3Mulmoments/Squeeze_1:output:0mul_3/y:output:0*
T0*
_output_shapes
: I
add_1AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
: Р
AssignVariableOp_2AssignVariableOpreadvariableop_2_resource	add_1:z:0^ReadVariableOp_2*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape({
ReadVariableOp_3ReadVariableOpreadvariableop_2_resource^AssignVariableOp_2*
_output_shapes
: *
dtype0М
AssignVariableOp_3AssignVariableOpreadvariableop_2_resourceReadVariableOp_3:value:0^AssignVariableOp_2^ReadVariableOp_3*
_output_shapes
 *
dtype0*
validate_shape(g
subSubinputsmoments/Squeeze:output:0*
T0*0
_output_shapes
:џџџџџџџџџ L
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75a
add_2AddV2moments/Squeeze_1:output:0add_2/y:output:0*
T0*
_output_shapes
: <
SqrtSqrt	add_2:z:0*
T0*
_output_shapes
: `
truedivRealDivsub:z:0Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ f
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource*
_output_shapes
: *
dtype0n
mul_4MulReadVariableOp_4:value:0truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ n
add_3/ReadVariableOpReadVariableOpadd_3_readvariableop_resource*
_output_shapes
: *
dtype0r
add_3AddV2	mul_4:z:0add_3/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ a
IdentityIdentity	add_3:z:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ 
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^add_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42,
add_3/ReadVariableOpadd_3/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs

з
@__inference_BN2__layer_call_and_return_conditional_losses_162889

inputs)
sub_readvariableop_resource:0%
readvariableop_resource:0'
readvariableop_1_resource:0+
add_1_readvariableop_resource:0
identityЂReadVariableOpЂReadVariableOp_1Ђadd_1/ReadVariableOpЂsub/ReadVariableOpj
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:0*
dtype0i
subSubinputssub/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype0J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75Y
addAddV2ReadVariableOp:value:0add/y:output:0*
T0*
_output_shapes
:0:
SqrtSqrtadd:z:0*
T0*
_output_shapes
:0`
truedivRealDivsub:z:0Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype0l
mulMulReadVariableOp_1:value:0truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ0n
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:0*
dtype0p
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0a
IdentityIdentity	add_1:z:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ0
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^add_1/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ0: : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
Я
g
K__inference_FC1_preFlatten1_layer_call_and_return_conditional_losses_160699

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
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџР:X T
0
_output_shapes
:џџџџџџџџџР
 
_user_specified_nameinputs
Ђ*
Ы
@__inference_BN4__layer_call_and_return_conditional_losses_163174

inputs%
readvariableop_resource:`'
readvariableop_2_resource:`'
readvariableop_4_resource:`+
add_3_readvariableop_resource:`
identityЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_2ЂAssignVariableOp_3ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3ЂReadVariableOp_4Ђadd_3/ReadVariableOps
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:`*
	keep_dims(l
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:`
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*0
_output_shapes
:џџџџџџџџџ`w
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          І
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:`*
	keep_dims(o
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:`*
squeeze_dims
 u
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:`*
squeeze_dims
 b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?W
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes
:`L
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=]
mul_1Mulmoments/Squeeze:output:0mul_1/y:output:0*
T0*
_output_shapes
:`E
addAddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:`И
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(w
ReadVariableOp_1ReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes
:`*
dtype0И
AssignVariableOp_1AssignVariableOpreadvariableop_resourceReadVariableOp_1:value:0^AssignVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(f
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
:`*
dtype0L
mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?]
mul_2MulReadVariableOp_2:value:0mul_2/y:output:0*
T0*
_output_shapes
:`L
mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=_
mul_3Mulmoments/Squeeze_1:output:0mul_3/y:output:0*
T0*
_output_shapes
:`I
add_1AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:`Р
AssignVariableOp_2AssignVariableOpreadvariableop_2_resource	add_1:z:0^ReadVariableOp_2*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape({
ReadVariableOp_3ReadVariableOpreadvariableop_2_resource^AssignVariableOp_2*
_output_shapes
:`*
dtype0М
AssignVariableOp_3AssignVariableOpreadvariableop_2_resourceReadVariableOp_3:value:0^AssignVariableOp_2^ReadVariableOp_3*
_output_shapes
 *
dtype0*
validate_shape(g
subSubinputsmoments/Squeeze:output:0*
T0*0
_output_shapes
:џџџџџџџџџ`L
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75a
add_2AddV2moments/Squeeze_1:output:0add_2/y:output:0*
T0*
_output_shapes
:`<
SqrtSqrt	add_2:z:0*
T0*
_output_shapes
:``
truedivRealDivsub:z:0Sqrt:y:0*
T0*0
_output_shapes
:џџџџџџџџџ`f
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource*
_output_shapes
:`*
dtype0n
mul_4MulReadVariableOp_4:value:0truediv:z:0*
T0*0
_output_shapes
:џџџџџџџџџ`n
add_3/ReadVariableOpReadVariableOpadd_3_readvariableop_resource*
_output_shapes
:`*
dtype0r
add_3AddV2	mul_4:z:0add_3/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ`a
IdentityIdentity	add_3:z:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^add_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ`: : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42,
add_3/ReadVariableOpadd_3/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ`
 
_user_specified_nameinputs
Џ
Ф
%__inference_BN6__layer_call_fn_163362

inputs
unknown:	Р
	unknown_0:	Р
	unknown_1:	Р
	unknown_2:	Р
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ Р*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_BN6__layer_call_and_return_conditional_losses_160901x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ Р`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ Р: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ Р
 
_user_specified_nameinputs
ы
_
C__inference_re_lu_5_layer_call_and_return_conditional_losses_163430

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:џџџџџџџџџ Рc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ Р"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ Р:X T
0
_output_shapes
:џџџџџџџџџ Р
 
_user_specified_nameinputs
Ч	
ђ
@__inference_FC1__layer_call_and_return_conditional_losses_160711

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
 
_user_specified_nameinputs"
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Г
serving_default
D
input_19
serving_default_input_1:0џџџџџџџџџ;
flatten0
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:лс
Ф
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer-11
layer-12
layer_with_weights-6
layer-13
layer_with_weights-7
layer-14
layer-15
layer-16
layer_with_weights-8
layer-17
layer_with_weights-9
layer-18
layer-19
layer-20
layer_with_weights-10
layer-21
layer_with_weights-11
layer-22
layer-23
layer-24
layer-25
layer_with_weights-12
layer-26
layer-27
layer-28
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses
$_default_save_signature
%	optimizer
&
signatures"
_tf_keras_network
"
_tf_keras_input_layer
н
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias
 /_jit_compiled_convolution_op"
_tf_keras_layer
Я
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses
6custom_batch_beta
6beta
7custom_batch_gamma
	7gamma
8custom_batch_moving_mean
8moving_mean
 9custom_batch_moving_variance
9moving_variance"
_tf_keras_layer
Ѕ
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_layer
н
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias
 N_jit_compiled_convolution_op"
_tf_keras_layer
Я
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses
Ucustom_batch_beta
Ubeta
Vcustom_batch_gamma
	Vgamma
Wcustom_batch_moving_mean
Wmoving_mean
 Xcustom_batch_moving_variance
Xmoving_variance"
_tf_keras_layer
Ѕ
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses"
_tf_keras_layer
н
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses

kkernel
lbias
 m_jit_compiled_convolution_op"
_tf_keras_layer
Я
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses
tcustom_batch_beta
tbeta
ucustom_batch_gamma
	ugamma
vcustom_batch_moving_mean
vmoving_mean
 wcustom_batch_moving_variance
wmoving_variance"
_tf_keras_layer
Ѕ
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses"
_tf_keras_layer
Љ
~	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op"
_tf_keras_layer
н
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
custom_batch_beta
	beta
custom_batch_gamma

gamma
custom_batch_moving_mean
moving_mean
!custom_batch_moving_variance
moving_variance"
_tf_keras_layer
Ћ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
	variables
trainable_variables
regularization_losses
 	keras_api
Ё__call__
+Ђ&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
Ѓ	variables
Єtrainable_variables
Ѕregularization_losses
І	keras_api
Ї__call__
+Ј&call_and_return_all_conditional_losses
Љkernel
	Њbias
!Ћ_jit_compiled_convolution_op"
_tf_keras_layer
н
Ќ	variables
­trainable_variables
Ўregularization_losses
Џ	keras_api
А__call__
+Б&call_and_return_all_conditional_losses
Вcustom_batch_beta
	Вbeta
Гcustom_batch_gamma

Гgamma
Дcustom_batch_moving_mean
Дmoving_mean
!Еcustom_batch_moving_variance
Еmoving_variance"
_tf_keras_layer
Ћ
Ж	variables
Зtrainable_variables
Иregularization_losses
Й	keras_api
К__call__
+Л&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
М	variables
Нtrainable_variables
Оregularization_losses
П	keras_api
Р__call__
+С&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
Т	variables
Уtrainable_variables
Фregularization_losses
Х	keras_api
Ц__call__
+Ч&call_and_return_all_conditional_losses
Шkernel
	Щbias
!Ъ_jit_compiled_convolution_op"
_tf_keras_layer
н
Ы	variables
Ьtrainable_variables
Эregularization_losses
Ю	keras_api
Я__call__
+а&call_and_return_all_conditional_losses
бcustom_batch_beta
	бbeta
вcustom_batch_gamma

вgamma
гcustom_batch_moving_mean
гmoving_mean
!дcustom_batch_moving_variance
дmoving_variance"
_tf_keras_layer
Ћ
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
л	variables
мtrainable_variables
нregularization_losses
о	keras_api
п__call__
+р&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
с	variables
тtrainable_variables
уregularization_losses
ф	keras_api
х__call__
+ц&call_and_return_all_conditional_losses"
_tf_keras_layer
У
ч	variables
шtrainable_variables
щregularization_losses
ъ	keras_api
ы__call__
+ь&call_and_return_all_conditional_losses
эkernel
	юbias"
_tf_keras_layer
Ћ
я	variables
№trainable_variables
ёregularization_losses
ђ	keras_api
ѓ__call__
+є&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
ѕ	variables
іtrainable_variables
їregularization_losses
ј	keras_api
љ__call__
+њ&call_and_return_all_conditional_losses"
_tf_keras_layer
к
-0
.1
62
73
84
95
L6
M7
U8
V9
W10
X11
k12
l13
t14
u15
v16
w17
18
19
20
21
22
23
Љ24
Њ25
В26
Г27
Д28
Е29
Ш30
Щ31
б32
в33
г34
д35
э36
ю37"
trackable_list_wrapper
є
-0
.1
62
73
L4
M5
U6
V7
k8
l9
t10
u11
12
13
14
15
Љ16
Њ17
В18
Г19
Ш20
Щ21
б22
в23
э24
ю25"
trackable_list_wrapper
 "
trackable_list_wrapper
Я
ћnon_trainable_variables
ќlayers
§metrics
 ўlayer_regularization_losses
џlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
$_default_save_signature
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
е
trace_0
trace_1
trace_2
trace_32т
&__inference_model_layer_call_fn_160812
&__inference_model_layer_call_fn_162065
&__inference_model_layer_call_fn_162146
&__inference_model_layer_call_fn_161683П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1ztrace_2ztrace_3
С
trace_0
trace_1
trace_2
trace_32Ю
A__inference_model_layer_call_and_return_conditional_losses_162299
A__inference_model_layer_call_and_return_conditional_losses_162572
A__inference_model_layer_call_and_return_conditional_losses_161791
A__inference_model_layer_call_and_return_conditional_losses_161899П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1ztrace_2ztrace_3
ЬBЩ
!__inference__wrapped_model_160296input_1"
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

_variables
_iterations
_learning_rate
_index_dict

_momentums
_velocities
_update_step_xla"
experimentalOptimizer
-
serving_default"
signature_map
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
ь
trace_02Э
&__inference_CNN1__layer_call_fn_162711Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 ztrace_0

trace_02ш
A__inference_CNN1__layer_call_and_return_conditional_losses_162721Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 ztrace_0
&:$ 2CNN1_/kernel
: 2
CNN1_/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
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
annotationsЊ *
 0
<
60
71
82
93"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
К
trace_0
trace_12џ
%__inference_BN1__layer_call_fn_162734
%__inference_BN1__layer_call_fn_162747Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
№
trace_0
trace_12Е
@__inference_BN1__layer_call_and_return_conditional_losses_162766
@__inference_BN1__layer_call_and_return_conditional_losses_162805Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
$:" 2BN1_/custom_batch_beta
%:# 2BN1_/custom_batch_gamma
):' 2BN1_/custom_batch_moving_mean
-:+ 2!BN1_/custom_batch_moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
 non_trainable_variables
Ёlayers
Ђmetrics
 Ѓlayer_regularization_losses
Єlayer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
ь
Ѕtrace_02Э
&__inference_re_lu_layer_call_fn_162810Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zЅtrace_0

Іtrace_02ш
A__inference_re_lu_layer_call_and_return_conditional_losses_162815Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zІtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Їnon_trainable_variables
Јlayers
Љmetrics
 Њlayer_regularization_losses
Ћlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
є
Ќtrace_02е
.__inference_max_pooling2d_layer_call_fn_162820Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zЌtrace_0

­trace_02№
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_162825Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 z­trace_0
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Ўnon_trainable_variables
Џlayers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
ь
Гtrace_02Э
&__inference_CNN2__layer_call_fn_162834Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zГtrace_0

Дtrace_02ш
A__inference_CNN2__layer_call_and_return_conditional_losses_162844Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zДtrace_0
&:$ 02CNN2_/kernel
:02
CNN2_/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
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
annotationsЊ *
 0
<
U0
V1
W2
X3"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
К
Кtrace_0
Лtrace_12џ
%__inference_BN2__layer_call_fn_162857
%__inference_BN2__layer_call_fn_162870Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zКtrace_0zЛtrace_1
№
Мtrace_0
Нtrace_12Е
@__inference_BN2__layer_call_and_return_conditional_losses_162889
@__inference_BN2__layer_call_and_return_conditional_losses_162928Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zМtrace_0zНtrace_1
$:"02BN2_/custom_batch_beta
%:#02BN2_/custom_batch_gamma
):'02BN2_/custom_batch_moving_mean
-:+02!BN2_/custom_batch_moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
ю
Уtrace_02Я
(__inference_re_lu_1_layer_call_fn_162933Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zУtrace_0

Фtrace_02ъ
C__inference_re_lu_1_layer_call_and_return_conditional_losses_162938Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zФtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
і
Ъtrace_02з
0__inference_max_pooling2d_1_layer_call_fn_162943Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zЪtrace_0

Ыtrace_02ђ
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_162948Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zЫtrace_0
.
k0
l1"
trackable_list_wrapper
.
k0
l1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
ь
бtrace_02Э
&__inference_CNN3__layer_call_fn_162957Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zбtrace_0

вtrace_02ш
A__inference_CNN3__layer_call_and_return_conditional_losses_162967Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zвtrace_0
&:$0@2CNN3_/kernel
:@2
CNN3_/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
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
annotationsЊ *
 0
<
t0
u1
v2
w3"
trackable_list_wrapper
.
t0
u1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
К
иtrace_0
йtrace_12џ
%__inference_BN3__layer_call_fn_162980
%__inference_BN3__layer_call_fn_162993Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zиtrace_0zйtrace_1
№
кtrace_0
лtrace_12Е
@__inference_BN3__layer_call_and_return_conditional_losses_163012
@__inference_BN3__layer_call_and_return_conditional_losses_163051Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zкtrace_0zлtrace_1
$:"@2BN3_/custom_batch_beta
%:#@2BN3_/custom_batch_gamma
):'@2BN3_/custom_batch_moving_mean
-:+@2!BN3_/custom_batch_moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
рlayer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
ю
сtrace_02Я
(__inference_re_lu_2_layer_call_fn_163056Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zсtrace_0

тtrace_02ъ
C__inference_re_lu_2_layer_call_and_return_conditional_losses_163061Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zтtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ж
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
~	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
і
шtrace_02з
0__inference_max_pooling2d_2_layer_call_fn_163066Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zшtrace_0

щtrace_02ђ
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_163071Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zщtrace_0
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ь
яtrace_02Э
&__inference_CNN4__layer_call_fn_163080Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zяtrace_0

№trace_02ш
A__inference_CNN4__layer_call_and_return_conditional_losses_163090Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 z№trace_0
&:$@`2CNN4_/kernel
:`2
CNN4_/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
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
annotationsЊ *
 0
@
0
1
2
3"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
ёnon_trainable_variables
ђlayers
ѓmetrics
 єlayer_regularization_losses
ѕlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
К
іtrace_0
їtrace_12џ
%__inference_BN4__layer_call_fn_163103
%__inference_BN4__layer_call_fn_163116Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zіtrace_0zїtrace_1
№
јtrace_0
љtrace_12Е
@__inference_BN4__layer_call_and_return_conditional_losses_163135
@__inference_BN4__layer_call_and_return_conditional_losses_163174Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zјtrace_0zљtrace_1
$:"`2BN4_/custom_batch_beta
%:#`2BN4_/custom_batch_gamma
):'`2BN4_/custom_batch_moving_mean
-:+`2!BN4_/custom_batch_moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
њnon_trainable_variables
ћlayers
ќmetrics
 §layer_regularization_losses
ўlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ю
џtrace_02Я
(__inference_re_lu_3_layer_call_fn_163179Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zџtrace_0

trace_02ъ
C__inference_re_lu_3_layer_call_and_return_conditional_losses_163184Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
Ё__call__
+Ђ&call_and_return_all_conditional_losses
'Ђ"call_and_return_conditional_losses"
_generic_user_object
і
trace_02з
0__inference_max_pooling2d_3_layer_call_fn_163189Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 ztrace_0

trace_02ђ
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_163194Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 ztrace_0
0
Љ0
Њ1"
trackable_list_wrapper
0
Љ0
Њ1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ѓ	variables
Єtrainable_variables
Ѕregularization_losses
Ї__call__
+Ј&call_and_return_all_conditional_losses
'Ј"call_and_return_conditional_losses"
_generic_user_object
ь
trace_02Э
&__inference_CNN5__layer_call_fn_163203Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 ztrace_0

trace_02ш
A__inference_CNN5__layer_call_and_return_conditional_losses_163213Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 ztrace_0
':%`2CNN5_/kernel
:2
CNN5_/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
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
annotationsЊ *
 0
@
В0
Г1
Д2
Е3"
trackable_list_wrapper
0
В0
Г1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ќ	variables
­trainable_variables
Ўregularization_losses
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses"
_generic_user_object
К
trace_0
trace_12џ
%__inference_BN5__layer_call_fn_163226
%__inference_BN5__layer_call_fn_163239Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
№
trace_0
trace_12Е
@__inference_BN5__layer_call_and_return_conditional_losses_163258
@__inference_BN5__layer_call_and_return_conditional_losses_163297Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
%:#2BN5_/custom_batch_beta
&:$2BN5_/custom_batch_gamma
*:(2BN5_/custom_batch_moving_mean
.:,2!BN5_/custom_batch_moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ж	variables
Зtrainable_variables
Иregularization_losses
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
ю
trace_02Я
(__inference_re_lu_4_layer_call_fn_163302Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 ztrace_0

trace_02ъ
C__inference_re_lu_4_layer_call_and_return_conditional_losses_163307Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
 layers
Ёmetrics
 Ђlayer_regularization_losses
Ѓlayer_metrics
М	variables
Нtrainable_variables
Оregularization_losses
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
і
Єtrace_02з
0__inference_max_pooling2d_4_layer_call_fn_163312Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zЄtrace_0

Ѕtrace_02ђ
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_163317Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zЅtrace_0
0
Ш0
Щ1"
trackable_list_wrapper
0
Ш0
Щ1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Іnon_trainable_variables
Їlayers
Јmetrics
 Љlayer_regularization_losses
Њlayer_metrics
Т	variables
Уtrainable_variables
Фregularization_losses
Ц__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
ь
Ћtrace_02Э
&__inference_CNN6__layer_call_fn_163326Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zЋtrace_0

Ќtrace_02ш
A__inference_CNN6__layer_call_and_return_conditional_losses_163336Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zЌtrace_0
(:&Р2CNN6_/kernel
:Р2
CNN6_/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
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
annotationsЊ *
 0
@
б0
в1
г2
д3"
trackable_list_wrapper
0
б0
в1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
­non_trainable_variables
Ўlayers
Џmetrics
 Аlayer_regularization_losses
Бlayer_metrics
Ы	variables
Ьtrainable_variables
Эregularization_losses
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
К
Вtrace_0
Гtrace_12џ
%__inference_BN6__layer_call_fn_163349
%__inference_BN6__layer_call_fn_163362Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zВtrace_0zГtrace_1
№
Дtrace_0
Еtrace_12Е
@__inference_BN6__layer_call_and_return_conditional_losses_163381
@__inference_BN6__layer_call_and_return_conditional_losses_163420Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zДtrace_0zЕtrace_1
%:#Р2BN6_/custom_batch_beta
&:$Р2BN6_/custom_batch_gamma
*:(Р2BN6_/custom_batch_moving_mean
.:,Р2!BN6_/custom_batch_moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
ю
Лtrace_02Я
(__inference_re_lu_5_layer_call_fn_163425Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zЛtrace_0

Мtrace_02ъ
C__inference_re_lu_5_layer_call_and_return_conditional_losses_163430Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zМtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Нnon_trainable_variables
Оlayers
Пmetrics
 Рlayer_regularization_losses
Сlayer_metrics
л	variables
мtrainable_variables
нregularization_losses
п__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses"
_generic_user_object
ј
Тtrace_02й
2__inference_average_pooling2d_layer_call_fn_163435Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zТtrace_0

Уtrace_02є
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_163440Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zУtrace_0
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
с	variables
тtrainable_variables
уregularization_losses
х__call__
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses"
_generic_user_object
і
Щtrace_02з
0__inference_FC1_preFlatten1_layer_call_fn_163445Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zЩtrace_0

Ъtrace_02ђ
K__inference_FC1_preFlatten1_layer_call_and_return_conditional_losses_163451Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zЪtrace_0
0
э0
ю1"
trackable_list_wrapper
0
э0
ю1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
ч	variables
шtrainable_variables
щregularization_losses
ы__call__
+ь&call_and_return_all_conditional_losses
'ь"call_and_return_conditional_losses"
_generic_user_object
ы
аtrace_02Ь
%__inference_FC1__layer_call_fn_163460Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zаtrace_0

бtrace_02ч
@__inference_FC1__layer_call_and_return_conditional_losses_163470Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zбtrace_0
:	Р2FC1_/kernel
:2	FC1_/bias
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
я	variables
№trainable_variables
ёregularization_losses
ѓ__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
ћ
зtrace_02м
(__inference_softmax_layer_call_fn_163475Џ
ІВЂ
FullArgSpec%
args
jself
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
annotationsЊ *
 zзtrace_0

иtrace_02ї
C__inference_softmax_layer_call_and_return_conditional_losses_163480Џ
ІВЂ
FullArgSpec%
args
jself
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
annotationsЊ *
 zиtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
ѕ	variables
іtrainable_variables
їregularization_losses
љ__call__
+њ&call_and_return_all_conditional_losses
'њ"call_and_return_conditional_losses"
_generic_user_object
ю
оtrace_02Я
(__inference_flatten_layer_call_fn_163485Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zоtrace_0

пtrace_02ъ
C__inference_flatten_layer_call_and_return_conditional_losses_163491Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zпtrace_0
|
80
91
W2
X3
v4
w5
6
7
Д8
Е9
г10
д11"
trackable_list_wrapper
ў
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
28"
trackable_list_wrapper
0
р0
с1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
јBѕ
&__inference_model_layer_call_fn_160812input_1"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
&__inference_model_layer_call_fn_162065inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
&__inference_model_layer_call_fn_162146inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
&__inference_model_layer_call_fn_161683input_1"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
A__inference_model_layer_call_and_return_conditional_losses_162299inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
A__inference_model_layer_call_and_return_conditional_losses_162572inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
A__inference_model_layer_call_and_return_conditional_losses_161791input_1"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
A__inference_model_layer_call_and_return_conditional_losses_161899input_1"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѓ
0
т1
у2
ф3
х4
ц5
ч6
ш7
щ8
ъ9
ы10
ь11
э12
ю13
я14
№15
ё16
ђ17
ѓ18
є19
ѕ20
і21
ї22
ј23
љ24
њ25
ћ26
ќ27
§28
ў29
џ30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper

т0
ф1
ц2
ш3
ъ4
ь5
ю6
№7
ђ8
є9
і10
ј11
њ12
ќ13
ў14
15
16
17
18
19
20
21
22
23
24
25"
trackable_list_wrapper

у0
х1
ч2
щ3
ы4
э5
я6
ё7
ѓ8
ѕ9
ї10
љ11
ћ12
§13
џ14
15
16
17
18
19
20
21
22
23
24
25"
trackable_list_wrapper
љ
trace_0
trace_1
trace_2
trace_3
trace_4
trace_5
trace_6
trace_7
trace_8
trace_9
 trace_10
Ёtrace_11
Ђtrace_12
Ѓtrace_13
Єtrace_14
Ѕtrace_15
Іtrace_16
Їtrace_17
Јtrace_18
Љtrace_19
Њtrace_20
Ћtrace_21
Ќtrace_22
­trace_23
Ўtrace_24
Џtrace_252ў
#__inference__update_step_xla_162577
#__inference__update_step_xla_162582
#__inference__update_step_xla_162587
#__inference__update_step_xla_162592
#__inference__update_step_xla_162597
#__inference__update_step_xla_162602
#__inference__update_step_xla_162607
#__inference__update_step_xla_162612
#__inference__update_step_xla_162617
#__inference__update_step_xla_162622
#__inference__update_step_xla_162627
#__inference__update_step_xla_162632
#__inference__update_step_xla_162637
#__inference__update_step_xla_162642
#__inference__update_step_xla_162647
#__inference__update_step_xla_162652
#__inference__update_step_xla_162657
#__inference__update_step_xla_162662
#__inference__update_step_xla_162667
#__inference__update_step_xla_162672
#__inference__update_step_xla_162677
#__inference__update_step_xla_162682
#__inference__update_step_xla_162687
#__inference__update_step_xla_162692
#__inference__update_step_xla_162697
#__inference__update_step_xla_162702Й
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 0ztrace_0ztrace_1ztrace_2ztrace_3ztrace_4ztrace_5ztrace_6ztrace_7ztrace_8ztrace_9z trace_10zЁtrace_11zЂtrace_12zЃtrace_13zЄtrace_14zЅtrace_15zІtrace_16zЇtrace_17zЈtrace_18zЉtrace_19zЊtrace_20zЋtrace_21zЌtrace_22z­trace_23zЎtrace_24zЏtrace_25
ЫBШ
$__inference_signature_wrapper_161984input_1"
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
кBз
&__inference_CNN1__layer_call_fn_162711inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
ѕBђ
A__inference_CNN1__layer_call_and_return_conditional_losses_162721inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
хBт
%__inference_BN1__layer_call_fn_162734inputs"Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
хBт
%__inference_BN1__layer_call_fn_162747inputs"Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
@__inference_BN1__layer_call_and_return_conditional_losses_162766inputs"Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
@__inference_BN1__layer_call_and_return_conditional_losses_162805inputs"Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
кBз
&__inference_re_lu_layer_call_fn_162810inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
ѕBђ
A__inference_re_lu_layer_call_and_return_conditional_losses_162815inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
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
тBп
.__inference_max_pooling2d_layer_call_fn_162820inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
§Bњ
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_162825inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
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
кBз
&__inference_CNN2__layer_call_fn_162834inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
ѕBђ
A__inference_CNN2__layer_call_and_return_conditional_losses_162844inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
хBт
%__inference_BN2__layer_call_fn_162857inputs"Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
хBт
%__inference_BN2__layer_call_fn_162870inputs"Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
@__inference_BN2__layer_call_and_return_conditional_losses_162889inputs"Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
@__inference_BN2__layer_call_and_return_conditional_losses_162928inputs"Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
мBй
(__inference_re_lu_1_layer_call_fn_162933inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
їBє
C__inference_re_lu_1_layer_call_and_return_conditional_losses_162938inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
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
фBс
0__inference_max_pooling2d_1_layer_call_fn_162943inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
џBќ
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_162948inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
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
кBз
&__inference_CNN3__layer_call_fn_162957inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
ѕBђ
A__inference_CNN3__layer_call_and_return_conditional_losses_162967inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
.
v0
w1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
хBт
%__inference_BN3__layer_call_fn_162980inputs"Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
хBт
%__inference_BN3__layer_call_fn_162993inputs"Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
@__inference_BN3__layer_call_and_return_conditional_losses_163012inputs"Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
@__inference_BN3__layer_call_and_return_conditional_losses_163051inputs"Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
мBй
(__inference_re_lu_2_layer_call_fn_163056inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
їBє
C__inference_re_lu_2_layer_call_and_return_conditional_losses_163061inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
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
фBс
0__inference_max_pooling2d_2_layer_call_fn_163066inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
џBќ
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_163071inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
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
кBз
&__inference_CNN4__layer_call_fn_163080inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
ѕBђ
A__inference_CNN4__layer_call_and_return_conditional_losses_163090inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
хBт
%__inference_BN4__layer_call_fn_163103inputs"Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
хBт
%__inference_BN4__layer_call_fn_163116inputs"Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
@__inference_BN4__layer_call_and_return_conditional_losses_163135inputs"Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
@__inference_BN4__layer_call_and_return_conditional_losses_163174inputs"Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
мBй
(__inference_re_lu_3_layer_call_fn_163179inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
їBє
C__inference_re_lu_3_layer_call_and_return_conditional_losses_163184inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
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
фBс
0__inference_max_pooling2d_3_layer_call_fn_163189inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
џBќ
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_163194inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
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
кBз
&__inference_CNN5__layer_call_fn_163203inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
ѕBђ
A__inference_CNN5__layer_call_and_return_conditional_losses_163213inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
0
Д0
Е1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
хBт
%__inference_BN5__layer_call_fn_163226inputs"Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
хBт
%__inference_BN5__layer_call_fn_163239inputs"Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
@__inference_BN5__layer_call_and_return_conditional_losses_163258inputs"Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
@__inference_BN5__layer_call_and_return_conditional_losses_163297inputs"Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
мBй
(__inference_re_lu_4_layer_call_fn_163302inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
їBє
C__inference_re_lu_4_layer_call_and_return_conditional_losses_163307inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
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
фBс
0__inference_max_pooling2d_4_layer_call_fn_163312inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
џBќ
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_163317inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
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
кBз
&__inference_CNN6__layer_call_fn_163326inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
ѕBђ
A__inference_CNN6__layer_call_and_return_conditional_losses_163336inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
0
г0
д1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
хBт
%__inference_BN6__layer_call_fn_163349inputs"Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
хBт
%__inference_BN6__layer_call_fn_163362inputs"Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
@__inference_BN6__layer_call_and_return_conditional_losses_163381inputs"Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
@__inference_BN6__layer_call_and_return_conditional_losses_163420inputs"Ў
ЅВЁ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
мBй
(__inference_re_lu_5_layer_call_fn_163425inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
їBє
C__inference_re_lu_5_layer_call_and_return_conditional_losses_163430inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
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
цBу
2__inference_average_pooling2d_layer_call_fn_163435inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
Bў
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_163440inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
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
фBс
0__inference_FC1_preFlatten1_layer_call_fn_163445inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
џBќ
K__inference_FC1_preFlatten1_layer_call_and_return_conditional_losses_163451inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
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
йBж
%__inference_FC1__layer_call_fn_163460inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
єBё
@__inference_FC1__layer_call_and_return_conditional_losses_163470inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
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
щBц
(__inference_softmax_layer_call_fn_163475inputs"Џ
ІВЂ
FullArgSpec%
args
jself
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
annotationsЊ *
 
B
C__inference_softmax_layer_call_and_return_conditional_losses_163480inputs"Џ
ІВЂ
FullArgSpec%
args
jself
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
annotationsЊ *
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
мBй
(__inference_flatten_layer_call_fn_163485inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
їBє
C__inference_flatten_layer_call_and_return_conditional_losses_163491inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
R
А	variables
Б	keras_api

Вtotal

Гcount"
_tf_keras_metric
c
Д	variables
Е	keras_api

Жtotal

Зcount
И
_fn_kwargs"
_tf_keras_metric
+:) 2Adam/m/CNN1_/kernel
+:) 2Adam/v/CNN1_/kernel
: 2Adam/m/CNN1_/bias
: 2Adam/v/CNN1_/bias
):' 2Adam/m/BN1_/custom_batch_beta
):' 2Adam/v/BN1_/custom_batch_beta
*:( 2Adam/m/BN1_/custom_batch_gamma
*:( 2Adam/v/BN1_/custom_batch_gamma
+:) 02Adam/m/CNN2_/kernel
+:) 02Adam/v/CNN2_/kernel
:02Adam/m/CNN2_/bias
:02Adam/v/CNN2_/bias
):'02Adam/m/BN2_/custom_batch_beta
):'02Adam/v/BN2_/custom_batch_beta
*:(02Adam/m/BN2_/custom_batch_gamma
*:(02Adam/v/BN2_/custom_batch_gamma
+:)0@2Adam/m/CNN3_/kernel
+:)0@2Adam/v/CNN3_/kernel
:@2Adam/m/CNN3_/bias
:@2Adam/v/CNN3_/bias
):'@2Adam/m/BN3_/custom_batch_beta
):'@2Adam/v/BN3_/custom_batch_beta
*:(@2Adam/m/BN3_/custom_batch_gamma
*:(@2Adam/v/BN3_/custom_batch_gamma
+:)@`2Adam/m/CNN4_/kernel
+:)@`2Adam/v/CNN4_/kernel
:`2Adam/m/CNN4_/bias
:`2Adam/v/CNN4_/bias
):'`2Adam/m/BN4_/custom_batch_beta
):'`2Adam/v/BN4_/custom_batch_beta
*:(`2Adam/m/BN4_/custom_batch_gamma
*:(`2Adam/v/BN4_/custom_batch_gamma
,:*`2Adam/m/CNN5_/kernel
,:*`2Adam/v/CNN5_/kernel
:2Adam/m/CNN5_/bias
:2Adam/v/CNN5_/bias
*:(2Adam/m/BN5_/custom_batch_beta
*:(2Adam/v/BN5_/custom_batch_beta
+:)2Adam/m/BN5_/custom_batch_gamma
+:)2Adam/v/BN5_/custom_batch_gamma
-:+Р2Adam/m/CNN6_/kernel
-:+Р2Adam/v/CNN6_/kernel
:Р2Adam/m/CNN6_/bias
:Р2Adam/v/CNN6_/bias
*:(Р2Adam/m/BN6_/custom_batch_beta
*:(Р2Adam/v/BN6_/custom_batch_beta
+:)Р2Adam/m/BN6_/custom_batch_gamma
+:)Р2Adam/v/BN6_/custom_batch_gamma
#:!	Р2Adam/m/FC1_/kernel
#:!	Р2Adam/v/FC1_/kernel
:2Adam/m/FC1_/bias
:2Adam/v/FC1_/bias
јBѕ
#__inference__update_step_xla_162577gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162582gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162587gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162592gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162597gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162602gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162607gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162612gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162617gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162622gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162627gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162632gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162637gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162642gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162647gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162652gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162657gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162662gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162667gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162672gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162677gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162682gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162687gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162692gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162697gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_162702gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

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
annotationsЊ *
 
0
В0
Г1"
trackable_list_wrapper
.
А	variables"
_generic_user_object
:  (2total
:  (2count
0
Ж0
З1"
trackable_list_wrapper
.
Д	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperП
@__inference_BN1__layer_call_and_return_conditional_losses_162766{8976<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ 
p 
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ 
 П
@__inference_BN1__layer_call_and_return_conditional_losses_162805{8976<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ 
p
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ 
 
%__inference_BN1__layer_call_fn_162734p8976<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ 
p 
Њ "*'
unknownџџџџџџџџџ 
%__inference_BN1__layer_call_fn_162747p8976<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ 
p
Њ "*'
unknownџџџџџџџџџ П
@__inference_BN2__layer_call_and_return_conditional_losses_162889{WXVU<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ0
p 
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ0
 П
@__inference_BN2__layer_call_and_return_conditional_losses_162928{WXVU<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ0
p
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ0
 
%__inference_BN2__layer_call_fn_162857pWXVU<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ0
p 
Њ "*'
unknownџџџџџџџџџ0
%__inference_BN2__layer_call_fn_162870pWXVU<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ0
p
Њ "*'
unknownџџџџџџџџџ0П
@__inference_BN3__layer_call_and_return_conditional_losses_163012{vwut<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ@
p 
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ@
 П
@__inference_BN3__layer_call_and_return_conditional_losses_163051{vwut<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ@
p
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ@
 
%__inference_BN3__layer_call_fn_162980pvwut<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ@
p 
Њ "*'
unknownџџџџџџџџџ@
%__inference_BN3__layer_call_fn_162993pvwut<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ@
p
Њ "*'
unknownџџџџџџџџџ@У
@__inference_BN4__layer_call_and_return_conditional_losses_163135<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ`
p 
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ`
 У
@__inference_BN4__layer_call_and_return_conditional_losses_163174<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ`
p
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ`
 
%__inference_BN4__layer_call_fn_163103t<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ`
p 
Њ "*'
unknownџџџџџџџџџ`
%__inference_BN4__layer_call_fn_163116t<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ`
p
Њ "*'
unknownџџџџџџџџџ`У
@__inference_BN5__layer_call_and_return_conditional_losses_163258ДЕГВ<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ@
p 
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ@
 У
@__inference_BN5__layer_call_and_return_conditional_losses_163297ДЕГВ<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ@
p
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ@
 
%__inference_BN5__layer_call_fn_163226tДЕГВ<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ@
p 
Њ "*'
unknownџџџџџџџџџ@
%__inference_BN5__layer_call_fn_163239tДЕГВ<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ@
p
Њ "*'
unknownџџџџџџџџџ@У
@__inference_BN6__layer_call_and_return_conditional_losses_163381гдвб<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ Р
p 
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ Р
 У
@__inference_BN6__layer_call_and_return_conditional_losses_163420гдвб<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ Р
p
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ Р
 
%__inference_BN6__layer_call_fn_163349tгдвб<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ Р
p 
Њ "*'
unknownџџџџџџџџџ Р
%__inference_BN6__layer_call_fn_163362tгдвб<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ Р
p
Њ "*'
unknownџџџџџџџџџ РК
A__inference_CNN1__layer_call_and_return_conditional_losses_162721u-.8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ 
 
&__inference_CNN1__layer_call_fn_162711j-.8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "*'
unknownџџџџџџџџџ К
A__inference_CNN2__layer_call_and_return_conditional_losses_162844uLM8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ 
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ0
 
&__inference_CNN2__layer_call_fn_162834jLM8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ 
Њ "*'
unknownџџџџџџџџџ0К
A__inference_CNN3__layer_call_and_return_conditional_losses_162967ukl8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ0
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ@
 
&__inference_CNN3__layer_call_fn_162957jkl8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ0
Њ "*'
unknownџџџџџџџџџ@М
A__inference_CNN4__layer_call_and_return_conditional_losses_163090w8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ@
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ`
 
&__inference_CNN4__layer_call_fn_163080l8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ@
Њ "*'
unknownџџџџџџџџџ`Л
A__inference_CNN5__layer_call_and_return_conditional_losses_163213vЉЊ7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@`
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ@
 
&__inference_CNN5__layer_call_fn_163203kЉЊ7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@`
Њ "*'
unknownџџџџџџџџџ@М
A__inference_CNN6__layer_call_and_return_conditional_losses_163336wШЩ8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ 
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ Р
 
&__inference_CNN6__layer_call_fn_163326lШЩ8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ 
Њ "*'
unknownџџџџџџџџџ РЊ
@__inference_FC1__layer_call_and_return_conditional_losses_163470fэю0Ђ-
&Ђ#
!
inputsџџџџџџџџџР
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
%__inference_FC1__layer_call_fn_163460[эю0Ђ-
&Ђ#
!
inputsџџџџџџџџџР
Њ "!
unknownџџџџџџџџџИ
K__inference_FC1_preFlatten1_layer_call_and_return_conditional_losses_163451i8Ђ5
.Ђ+
)&
inputsџџџџџџџџџР
Њ "-Ђ*
# 
tensor_0џџџџџџџџџР
 
0__inference_FC1_preFlatten1_layer_call_fn_163445^8Ђ5
.Ђ+
)&
inputsџџџџџџџџџР
Њ ""
unknownџџџџџџџџџРЅ
#__inference__update_step_xla_162577~xЂu
nЂk
!
gradient 
<9	%Ђ"
њ 

p
` VariableSpec 
`рЃЈід?
Њ "
 
#__inference__update_step_xla_162582f`Ђ]
VЂS

gradient 
0-	Ђ
њ 

p
` VariableSpec 
`рпРе?
Њ "
 
#__inference__update_step_xla_162587f`Ђ]
VЂS

gradient 
0-	Ђ
њ 

p
` VariableSpec 
`РЛЗе?
Њ "
 
#__inference__update_step_xla_162592f`Ђ]
VЂS

gradient 
0-	Ђ
њ 

p
` VariableSpec 
`  е?
Њ "
 Ѕ
#__inference__update_step_xla_162597~xЂu
nЂk
!
gradient 0
<9	%Ђ"
њ 0

p
` VariableSpec 
`рОІюе?
Њ "
 
#__inference__update_step_xla_162602f`Ђ]
VЂS

gradient0
0-	Ђ
њ0

p
` VariableSpec 
`ррИе?
Њ "
 
#__inference__update_step_xla_162607f`Ђ]
VЂS

gradient0
0-	Ђ
њ0

p
` VariableSpec 
`ЅЖе?
Њ "
 
#__inference__update_step_xla_162612f`Ђ]
VЂS

gradient0
0-	Ђ
њ0

p
` VariableSpec 
`РЖе?
Њ "
 Ѕ
#__inference__update_step_xla_162617~xЂu
nЂk
!
gradient0@
<9	%Ђ"
њ0@

p
` VariableSpec 
`рїОе?
Њ "
 
#__inference__update_step_xla_162622f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
`р ўе?
Њ "
 
#__inference__update_step_xla_162627f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
`бАе?
Њ "
 
#__inference__update_step_xla_162632f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
` зАе?
Њ "
 Ѕ
#__inference__update_step_xla_162637~xЂu
nЂk
!
gradient@`
<9	%Ђ"
њ@`

p
` VariableSpec 
`ЅКе?
Њ "
 
#__inference__update_step_xla_162642f`Ђ]
VЂS

gradient`
0-	Ђ
њ`

p
` VariableSpec 
`рђЇе?
Њ "
 
#__inference__update_step_xla_162647f`Ђ]
VЂS

gradient`
0-	Ђ
њ`

p
` VariableSpec 
`РтАе?
Њ "
 
#__inference__update_step_xla_162652f`Ђ]
VЂS

gradient`
0-	Ђ
њ`

p
` VariableSpec 
`яАе?
Њ "
 Ј
#__inference__update_step_xla_162657zЂw
pЂm
"
gradient`
=:	&Ђ#
њ`

p
` VariableSpec 
` зЎе?
Њ "
 
#__inference__update_step_xla_162662hbЂ_
XЂU

gradient
1.	Ђ
њ

p
` VariableSpec 
`рэЋід?
Њ "
 
#__inference__update_step_xla_162667hbЂ_
XЂU

gradient
1.	Ђ
њ

p
` VariableSpec 
`ЙЛе?
Њ "
 
#__inference__update_step_xla_162672hbЂ_
XЂU

gradient
1.	Ђ
њ

p
` VariableSpec 
`рРЉе?
Њ "
 Њ
#__inference__update_step_xla_162677|Ђy
rЂo
# 
gradientР
>;	'Ђ$
њР

p
` VariableSpec 
`рдЎе?
Њ "
 
#__inference__update_step_xla_162682hbЂ_
XЂU

gradientР
1.	Ђ
њР

p
` VariableSpec 
`р ље?
Њ "
 
#__inference__update_step_xla_162687hbЂ_
XЂU

gradientР
1.	Ђ
њР

p
` VariableSpec 
`роИе?
Њ "
 
#__inference__update_step_xla_162692hbЂ_
XЂU

gradientР
1.	Ђ
њР

p
` VariableSpec 
`хИе?
Њ "
 
#__inference__update_step_xla_162697pjЂg
`Ђ]

gradient	Р
52	Ђ
њ	Р

p
` VariableSpec 
`роДе?
Њ "
 
#__inference__update_step_xla_162702f`Ђ]
VЂS

gradient
0-	Ђ
њ

p
` VariableSpec 
`рујје?
Њ "
 а
!__inference__wrapped_model_160296Њ:-.8976LMWXVUklvwutЉЊДЕГВШЩгдвбэю9Ђ6
/Ђ,
*'
input_1џџџџџџџџџ
Њ "1Њ.
,
flatten!
flattenџџџџџџџџџї
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_163440ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
2__inference_average_pooling2d_layer_call_fn_163435RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџІ
C__inference_flatten_layer_call_and_return_conditional_losses_163491_/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
(__inference_flatten_layer_call_fn_163485T/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "!
unknownџџџџџџџџџѕ
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_162948ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Я
0__inference_max_pooling2d_1_layer_call_fn_162943RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџѕ
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_163071ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Я
0__inference_max_pooling2d_2_layer_call_fn_163066RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџѕ
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_163194ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Я
0__inference_max_pooling2d_3_layer_call_fn_163189RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџѕ
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_163317ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Я
0__inference_max_pooling2d_4_layer_call_fn_163312RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџѓ
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_162825ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Э
.__inference_max_pooling2d_layer_call_fn_162820RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџѓ
A__inference_model_layer_call_and_return_conditional_losses_161791­:-.8976LMWXVUklvwutЉЊДЕГВШЩгдвбэюAЂ>
7Ђ4
*'
input_1џџџџџџџџџ
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 ѓ
A__inference_model_layer_call_and_return_conditional_losses_161899­:-.8976LMWXVUklvwutЉЊДЕГВШЩгдвбэюAЂ>
7Ђ4
*'
input_1џџџџџџџџџ
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 ђ
A__inference_model_layer_call_and_return_conditional_losses_162299Ќ:-.8976LMWXVUklvwutЉЊДЕГВШЩгдвбэю@Ђ=
6Ђ3
)&
inputsџџџџџџџџџ
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 ђ
A__inference_model_layer_call_and_return_conditional_losses_162572Ќ:-.8976LMWXVUklvwutЉЊДЕГВШЩгдвбэю@Ђ=
6Ђ3
)&
inputsџџџџџџџџџ
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Э
&__inference_model_layer_call_fn_160812Ђ:-.8976LMWXVUklvwutЉЊДЕГВШЩгдвбэюAЂ>
7Ђ4
*'
input_1џџџџџџџџџ
p 

 
Њ "!
unknownџџџџџџџџџЭ
&__inference_model_layer_call_fn_161683Ђ:-.8976LMWXVUklvwutЉЊДЕГВШЩгдвбэюAЂ>
7Ђ4
*'
input_1џџџџџџџџџ
p

 
Њ "!
unknownџџџџџџџџџЬ
&__inference_model_layer_call_fn_162065Ё:-.8976LMWXVUklvwutЉЊДЕГВШЩгдвбэю@Ђ=
6Ђ3
)&
inputsџџџџџџџџџ
p 

 
Њ "!
unknownџџџџџџџџџЬ
&__inference_model_layer_call_fn_162146Ё:-.8976LMWXVUklvwutЉЊДЕГВШЩгдвбэю@Ђ=
6Ђ3
)&
inputsџџџџџџџџџ
p

 
Њ "!
unknownџџџџџџџџџИ
C__inference_re_lu_1_layer_call_and_return_conditional_losses_162938q8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ0
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ0
 
(__inference_re_lu_1_layer_call_fn_162933f8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ0
Њ "*'
unknownџџџџџџџџџ0И
C__inference_re_lu_2_layer_call_and_return_conditional_losses_163061q8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ@
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ@
 
(__inference_re_lu_2_layer_call_fn_163056f8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ@
Њ "*'
unknownџџџџџџџџџ@И
C__inference_re_lu_3_layer_call_and_return_conditional_losses_163184q8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ`
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ`
 
(__inference_re_lu_3_layer_call_fn_163179f8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ`
Њ "*'
unknownџџџџџџџџџ`И
C__inference_re_lu_4_layer_call_and_return_conditional_losses_163307q8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ@
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ@
 
(__inference_re_lu_4_layer_call_fn_163302f8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ@
Њ "*'
unknownџџџџџџџџџ@И
C__inference_re_lu_5_layer_call_and_return_conditional_losses_163430q8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ Р
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ Р
 
(__inference_re_lu_5_layer_call_fn_163425f8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ Р
Њ "*'
unknownџџџџџџџџџ РЖ
A__inference_re_lu_layer_call_and_return_conditional_losses_162815q8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ 
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ 
 
&__inference_re_lu_layer_call_fn_162810f8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ 
Њ "*'
unknownџџџџџџџџџ о
$__inference_signature_wrapper_161984Е:-.8976LMWXVUklvwutЉЊДЕГВШЩгдвбэюDЂA
Ђ 
:Њ7
5
input_1*'
input_1џџџџџџџџџ"1Њ.
,
flatten!
flattenџџџџџџџџџЊ
C__inference_softmax_layer_call_and_return_conditional_losses_163480c3Ђ0
)Ђ&
 
inputsџџџџџџџџџ

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
(__inference_softmax_layer_call_fn_163475X3Ђ0
)Ђ&
 
inputsџџџџџџџџџ

 
Њ "!
unknownџџџџџџџџџ