Т
№С
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
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
њ
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%Зб8"&
exponential_avg_factorfloat%  ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
­
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
О
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8ЖЊ
|
CNN1_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameCNN1_/kernel
u
 CNN1_/kernel/Read/ReadVariableOpReadVariableOpCNN1_/kernel*&
_output_shapes
:*
dtype0
l

CNN1_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
CNN1_/bias
e
CNN1_/bias/Read/ReadVariableOpReadVariableOp
CNN1_/bias*
_output_shapes
:*
dtype0
l

BN1_/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
BN1_/gamma
e
BN1_/gamma/Read/ReadVariableOpReadVariableOp
BN1_/gamma*
_output_shapes
:*
dtype0
j
	BN1_/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	BN1_/beta
c
BN1_/beta/Read/ReadVariableOpReadVariableOp	BN1_/beta*
_output_shapes
:*
dtype0
x
BN1_/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameBN1_/moving_mean
q
$BN1_/moving_mean/Read/ReadVariableOpReadVariableOpBN1_/moving_mean*
_output_shapes
:*
dtype0

BN1_/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameBN1_/moving_variance
y
(BN1_/moving_variance/Read/ReadVariableOpReadVariableOpBN1_/moving_variance*
_output_shapes
:*
dtype0
|
CNN2_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameCNN2_/kernel
u
 CNN2_/kernel/Read/ReadVariableOpReadVariableOpCNN2_/kernel*&
_output_shapes
:*
dtype0
l

CNN2_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
CNN2_/bias
e
CNN2_/bias/Read/ReadVariableOpReadVariableOp
CNN2_/bias*
_output_shapes
:*
dtype0
l

BN2_/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
BN2_/gamma
e
BN2_/gamma/Read/ReadVariableOpReadVariableOp
BN2_/gamma*
_output_shapes
:*
dtype0
j
	BN2_/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	BN2_/beta
c
BN2_/beta/Read/ReadVariableOpReadVariableOp	BN2_/beta*
_output_shapes
:*
dtype0
x
BN2_/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameBN2_/moving_mean
q
$BN2_/moving_mean/Read/ReadVariableOpReadVariableOpBN2_/moving_mean*
_output_shapes
:*
dtype0

BN2_/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameBN2_/moving_variance
y
(BN2_/moving_variance/Read/ReadVariableOpReadVariableOpBN2_/moving_variance*
_output_shapes
:*
dtype0
|
CNN3_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameCNN3_/kernel
u
 CNN3_/kernel/Read/ReadVariableOpReadVariableOpCNN3_/kernel*&
_output_shapes
: *
dtype0
l

CNN3_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
CNN3_/bias
e
CNN3_/bias/Read/ReadVariableOpReadVariableOp
CNN3_/bias*
_output_shapes
: *
dtype0
l

BN3_/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
BN3_/gamma
e
BN3_/gamma/Read/ReadVariableOpReadVariableOp
BN3_/gamma*
_output_shapes
: *
dtype0
j
	BN3_/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	BN3_/beta
c
BN3_/beta/Read/ReadVariableOpReadVariableOp	BN3_/beta*
_output_shapes
: *
dtype0
x
BN3_/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameBN3_/moving_mean
q
$BN3_/moving_mean/Read/ReadVariableOpReadVariableOpBN3_/moving_mean*
_output_shapes
: *
dtype0

BN3_/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameBN3_/moving_variance
y
(BN3_/moving_variance/Read/ReadVariableOpReadVariableOpBN3_/moving_variance*
_output_shapes
: *
dtype0
|
CNN4_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*
shared_nameCNN4_/kernel
u
 CNN4_/kernel/Read/ReadVariableOpReadVariableOpCNN4_/kernel*&
_output_shapes
: 0*
dtype0
l

CNN4_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_name
CNN4_/bias
e
CNN4_/bias/Read/ReadVariableOpReadVariableOp
CNN4_/bias*
_output_shapes
:0*
dtype0
l

BN4_/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_name
BN4_/gamma
e
BN4_/gamma/Read/ReadVariableOpReadVariableOp
BN4_/gamma*
_output_shapes
:0*
dtype0
j
	BN4_/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_name	BN4_/beta
c
BN4_/beta/Read/ReadVariableOpReadVariableOp	BN4_/beta*
_output_shapes
:0*
dtype0
x
BN4_/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*!
shared_nameBN4_/moving_mean
q
$BN4_/moving_mean/Read/ReadVariableOpReadVariableOpBN4_/moving_mean*
_output_shapes
:0*
dtype0

BN4_/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*%
shared_nameBN4_/moving_variance
y
(BN4_/moving_variance/Read/ReadVariableOpReadVariableOpBN4_/moving_variance*
_output_shapes
:0*
dtype0
|
CNN5_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0@*
shared_nameCNN5_/kernel
u
 CNN5_/kernel/Read/ReadVariableOpReadVariableOpCNN5_/kernel*&
_output_shapes
:0@*
dtype0
l

CNN5_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
CNN5_/bias
e
CNN5_/bias/Read/ReadVariableOpReadVariableOp
CNN5_/bias*
_output_shapes
:@*
dtype0
l

BN5_/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
BN5_/gamma
e
BN5_/gamma/Read/ReadVariableOpReadVariableOp
BN5_/gamma*
_output_shapes
:@*
dtype0
j
	BN5_/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	BN5_/beta
c
BN5_/beta/Read/ReadVariableOpReadVariableOp	BN5_/beta*
_output_shapes
:@*
dtype0
x
BN5_/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameBN5_/moving_mean
q
$BN5_/moving_mean/Read/ReadVariableOpReadVariableOpBN5_/moving_mean*
_output_shapes
:@*
dtype0

BN5_/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameBN5_/moving_variance
y
(BN5_/moving_variance/Read/ReadVariableOpReadVariableOpBN5_/moving_variance*
_output_shapes
:@*
dtype0
|
CNN6_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@`*
shared_nameCNN6_/kernel
u
 CNN6_/kernel/Read/ReadVariableOpReadVariableOpCNN6_/kernel*&
_output_shapes
:@`*
dtype0
l

CNN6_/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*
shared_name
CNN6_/bias
e
CNN6_/bias/Read/ReadVariableOpReadVariableOp
CNN6_/bias*
_output_shapes
:`*
dtype0
l

BN6_/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*
shared_name
BN6_/gamma
e
BN6_/gamma/Read/ReadVariableOpReadVariableOp
BN6_/gamma*
_output_shapes
:`*
dtype0
j
	BN6_/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*
shared_name	BN6_/beta
c
BN6_/beta/Read/ReadVariableOpReadVariableOp	BN6_/beta*
_output_shapes
:`*
dtype0
x
BN6_/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*!
shared_nameBN6_/moving_mean
q
$BN6_/moving_mean/Read/ReadVariableOpReadVariableOpBN6_/moving_mean*
_output_shapes
:`*
dtype0

BN6_/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*%
shared_nameBN6_/moving_variance
y
(BN6_/moving_variance/Read/ReadVariableOpReadVariableOpBN6_/moving_variance*
_output_shapes
:`*
dtype0
r
FC1_/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:`*
shared_nameFC1_/kernel
k
FC1_/kernel/Read/ReadVariableOpReadVariableOpFC1_/kernel*
_output_shapes

:`*
dtype0
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

NoOpNoOp
r
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ьq
valueТqBПq BИq
м
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
	optimizer
loss
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$
signatures
 
h

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api

+axis
	,gamma
-beta
.moving_mean
/moving_variance
0	variables
1trainable_variables
2regularization_losses
3	keras_api
R
4	variables
5trainable_variables
6regularization_losses
7	keras_api
R
8	variables
9trainable_variables
:regularization_losses
;	keras_api
h

<kernel
=bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api

Baxis
	Cgamma
Dbeta
Emoving_mean
Fmoving_variance
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
R
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
R
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
h

Skernel
Tbias
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api

Yaxis
	Zgamma
[beta
\moving_mean
]moving_variance
^	variables
_trainable_variables
`regularization_losses
a	keras_api
R
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
R
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
h

jkernel
kbias
l	variables
mtrainable_variables
nregularization_losses
o	keras_api

paxis
	qgamma
rbeta
smoving_mean
tmoving_variance
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
R
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
S
}	variables
~trainable_variables
regularization_losses
	keras_api
n
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
 
	axis

gamma
	beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
	keras_api
V
	variables
trainable_variables
regularization_losses
	keras_api
V
	variables
trainable_variables
regularization_losses
	keras_api
n
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
 
	axis

gamma
	 beta
Ёmoving_mean
Ђmoving_variance
Ѓ	variables
Єtrainable_variables
Ѕregularization_losses
І	keras_api
V
Ї	variables
Јtrainable_variables
Љregularization_losses
Њ	keras_api
V
Ћ	variables
Ќtrainable_variables
­regularization_losses
Ў	keras_api
V
Џ	variables
Аtrainable_variables
Бregularization_losses
В	keras_api
n
Гkernel
	Дbias
Е	variables
Жtrainable_variables
Зregularization_losses
И	keras_api
V
Й	variables
Кtrainable_variables
Лregularization_losses
М	keras_api
V
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
 
 
Д
%0
&1
,2
-3
.4
/5
<6
=7
C8
D9
E10
F11
S12
T13
Z14
[15
\16
]17
j18
k19
q20
r21
s22
t23
24
25
26
27
28
29
30
31
32
 33
Ё34
Ђ35
Г36
Д37
а
%0
&1
,2
-3
<4
=5
C6
D7
S8
T9
Z10
[11
j12
k13
q14
r15
16
17
18
19
20
21
22
 23
Г24
Д25
 
В
 	variables
!trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
Хnon_trainable_variables
"regularization_losses
 
XV
VARIABLE_VALUECNN1_/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
CNN1_/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

%0
&1

%0
&1
 
В
'	variables
(trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
Ъnon_trainable_variables
)regularization_losses
 
US
VARIABLE_VALUE
BN1_/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	BN1_/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEBN1_/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEBN1_/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

,0
-1
.2
/3

,0
-1
 
В
0	variables
1trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
Яnon_trainable_variables
2regularization_losses
 
 
 
В
4	variables
5trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
дnon_trainable_variables
6regularization_losses
 
 
 
В
8	variables
9trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
йnon_trainable_variables
:regularization_losses
XV
VARIABLE_VALUECNN2_/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
CNN2_/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

<0
=1

<0
=1
 
В
>	variables
?trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
оnon_trainable_variables
@regularization_losses
 
US
VARIABLE_VALUE
BN2_/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	BN2_/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEBN2_/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEBN2_/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

C0
D1
E2
F3

C0
D1
 
В
G	variables
Htrainable_variables
пlayers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
уnon_trainable_variables
Iregularization_losses
 
 
 
В
K	variables
Ltrainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
шnon_trainable_variables
Mregularization_losses
 
 
 
В
O	variables
Ptrainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
эnon_trainable_variables
Qregularization_losses
XV
VARIABLE_VALUECNN3_/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
CNN3_/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

S0
T1

S0
T1
 
В
U	variables
Vtrainable_variables
юlayers
яmetrics
 №layer_regularization_losses
ёlayer_metrics
ђnon_trainable_variables
Wregularization_losses
 
US
VARIABLE_VALUE
BN3_/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	BN3_/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEBN3_/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEBN3_/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

Z0
[1
\2
]3

Z0
[1
 
В
^	variables
_trainable_variables
ѓlayers
єmetrics
 ѕlayer_regularization_losses
іlayer_metrics
їnon_trainable_variables
`regularization_losses
 
 
 
В
b	variables
ctrainable_variables
јlayers
љmetrics
 њlayer_regularization_losses
ћlayer_metrics
ќnon_trainable_variables
dregularization_losses
 
 
 
В
f	variables
gtrainable_variables
§layers
ўmetrics
 џlayer_regularization_losses
layer_metrics
non_trainable_variables
hregularization_losses
XV
VARIABLE_VALUECNN4_/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
CNN4_/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

j0
k1

j0
k1
 
В
l	variables
mtrainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
non_trainable_variables
nregularization_losses
 
US
VARIABLE_VALUE
BN4_/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	BN4_/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEBN4_/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEBN4_/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

q0
r1
s2
t3

q0
r1
 
В
u	variables
vtrainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
non_trainable_variables
wregularization_losses
 
 
 
В
y	variables
ztrainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
non_trainable_variables
{regularization_losses
 
 
 
В
}	variables
~trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
non_trainable_variables
regularization_losses
XV
VARIABLE_VALUECNN5_/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
CNN5_/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
Е
	variables
trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
non_trainable_variables
regularization_losses
 
US
VARIABLE_VALUE
BN5_/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	BN5_/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEBN5_/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEBN5_/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
0
1
2
3

0
1
 
Е
	variables
trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
non_trainable_variables
regularization_losses
 
 
 
Е
	variables
trainable_variables
 layers
Ёmetrics
 Ђlayer_regularization_losses
Ѓlayer_metrics
Єnon_trainable_variables
regularization_losses
 
 
 
Е
	variables
trainable_variables
Ѕlayers
Іmetrics
 Їlayer_regularization_losses
Јlayer_metrics
Љnon_trainable_variables
regularization_losses
YW
VARIABLE_VALUECNN6_/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUE
CNN6_/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
Е
	variables
trainable_variables
Њlayers
Ћmetrics
 Ќlayer_regularization_losses
­layer_metrics
Ўnon_trainable_variables
regularization_losses
 
VT
VARIABLE_VALUE
BN6_/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE	BN6_/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEBN6_/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEBN6_/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
0
 1
Ё2
Ђ3

0
 1
 
Е
Ѓ	variables
Єtrainable_variables
Џlayers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
Гnon_trainable_variables
Ѕregularization_losses
 
 
 
Е
Ї	variables
Јtrainable_variables
Дlayers
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
Иnon_trainable_variables
Љregularization_losses
 
 
 
Е
Ћ	variables
Ќtrainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
Нnon_trainable_variables
­regularization_losses
 
 
 
Е
Џ	variables
Аtrainable_variables
Оlayers
Пmetrics
 Рlayer_regularization_losses
Сlayer_metrics
Тnon_trainable_variables
Бregularization_losses
XV
VARIABLE_VALUEFC1_/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE	FC1_/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE

Г0
Д1

Г0
Д1
 
Е
Е	variables
Жtrainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
Чnon_trainable_variables
Зregularization_losses
 
 
 
Е
Й	variables
Кtrainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
Ьnon_trainable_variables
Лregularization_losses
 
 
 
Е
Н	variables
Оtrainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
бnon_trainable_variables
Пregularization_losses
о
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
 
 
 
Z
.0
/1
E2
F3
\4
]5
s6
t7
8
9
Ё10
Ђ11
 
 
 
 
 
 
 
 
 

.0
/1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

E0
F1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

\0
]1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

s0
t1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

0
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

Ё0
Ђ1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

serving_default_input_1Placeholder*0
_output_shapes
:џџџџџџџџџ*
dtype0*%
shape:џџџџџџџџџ
Њ
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1CNN1_/kernel
CNN1_/bias
BN1_/gamma	BN1_/betaBN1_/moving_meanBN1_/moving_varianceCNN2_/kernel
CNN2_/bias
BN2_/gamma	BN2_/betaBN2_/moving_meanBN2_/moving_varianceCNN3_/kernel
CNN3_/bias
BN3_/gamma	BN3_/betaBN3_/moving_meanBN3_/moving_varianceCNN4_/kernel
CNN4_/bias
BN4_/gamma	BN4_/betaBN4_/moving_meanBN4_/moving_varianceCNN5_/kernel
CNN5_/bias
BN5_/gamma	BN5_/betaBN5_/moving_meanBN5_/moving_varianceCNN6_/kernel
CNN6_/bias
BN6_/gamma	BN6_/betaBN6_/moving_meanBN6_/moving_varianceFC1_/kernel	FC1_/bias*2
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
 !"#$%&*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_2740
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
х
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename CNN1_/kernel/Read/ReadVariableOpCNN1_/bias/Read/ReadVariableOpBN1_/gamma/Read/ReadVariableOpBN1_/beta/Read/ReadVariableOp$BN1_/moving_mean/Read/ReadVariableOp(BN1_/moving_variance/Read/ReadVariableOp CNN2_/kernel/Read/ReadVariableOpCNN2_/bias/Read/ReadVariableOpBN2_/gamma/Read/ReadVariableOpBN2_/beta/Read/ReadVariableOp$BN2_/moving_mean/Read/ReadVariableOp(BN2_/moving_variance/Read/ReadVariableOp CNN3_/kernel/Read/ReadVariableOpCNN3_/bias/Read/ReadVariableOpBN3_/gamma/Read/ReadVariableOpBN3_/beta/Read/ReadVariableOp$BN3_/moving_mean/Read/ReadVariableOp(BN3_/moving_variance/Read/ReadVariableOp CNN4_/kernel/Read/ReadVariableOpCNN4_/bias/Read/ReadVariableOpBN4_/gamma/Read/ReadVariableOpBN4_/beta/Read/ReadVariableOp$BN4_/moving_mean/Read/ReadVariableOp(BN4_/moving_variance/Read/ReadVariableOp CNN5_/kernel/Read/ReadVariableOpCNN5_/bias/Read/ReadVariableOpBN5_/gamma/Read/ReadVariableOpBN5_/beta/Read/ReadVariableOp$BN5_/moving_mean/Read/ReadVariableOp(BN5_/moving_variance/Read/ReadVariableOp CNN6_/kernel/Read/ReadVariableOpCNN6_/bias/Read/ReadVariableOpBN6_/gamma/Read/ReadVariableOpBN6_/beta/Read/ReadVariableOp$BN6_/moving_mean/Read/ReadVariableOp(BN6_/moving_variance/Read/ReadVariableOpFC1_/kernel/Read/ReadVariableOpFC1_/bias/Read/ReadVariableOpConst*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *&
f!R
__inference__traced_save_4422
ш
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameCNN1_/kernel
CNN1_/bias
BN1_/gamma	BN1_/betaBN1_/moving_meanBN1_/moving_varianceCNN2_/kernel
CNN2_/bias
BN2_/gamma	BN2_/betaBN2_/moving_meanBN2_/moving_varianceCNN3_/kernel
CNN3_/bias
BN3_/gamma	BN3_/betaBN3_/moving_meanBN3_/moving_varianceCNN4_/kernel
CNN4_/bias
BN4_/gamma	BN4_/betaBN4_/moving_meanBN4_/moving_varianceCNN5_/kernel
CNN5_/bias
BN5_/gamma	BN5_/betaBN5_/moving_meanBN5_/moving_varianceCNN6_/kernel
CNN6_/bias
BN6_/gamma	BN6_/betaBN6_/moving_meanBN6_/moving_varianceFC1_/kernel	FC1_/bias*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_restore_4546ез
Г

#__inference_BN3__layer_call_fn_3648

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN3__layer_call_and_return_conditional_losses_16672
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџ ::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
і

>__inference_BN4__layer_call_and_return_conditional_losses_3838

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1й
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ0:0:0:0:0:*
epsilon%№'7*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1џ
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:џџџџџџџџџ02

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџ0::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
­
L
0__inference_average_pooling2d_layer_call_fn_1392

inputs
identityь
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
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_average_pooling2d_layer_call_and_return_conditional_losses_13862
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
і

#__inference_BN2__layer_call_fn_3555

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *F
fAR?
=__inference_BN2__layer_call_and_return_conditional_losses_8742
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ў
с
>__inference_BN2__layer_call_and_return_conditional_losses_3542

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1м
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%№'7*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ъ	
и
?__inference_CNN3__layer_call_and_return_conditional_losses_3588

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ 2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ъ
с
>__inference_BN3__layer_call_and_return_conditional_losses_1685

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ы
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ : : : : :*
epsilon%№'7*
is_training( 2
FusedBatchNormV3л
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџ ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Џ

#__inference_BN6__layer_call_fn_4183

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ `*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN6__layer_call_and_return_conditional_losses_20062
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ `2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ `::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ `
 
_user_specified_nameinputs
Я
]
A__inference_re_lu_5_layer_call_and_return_conditional_losses_4201

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:џџџџџџџџџ `2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ `2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ `:W S
/
_output_shapes
:џџџџџџџџџ `
 
_user_specified_nameinputs
і

#__inference_BN1__layer_call_fn_3334

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *F
fAR?
=__inference_BN1__layer_call_and_return_conditional_losses_7582
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
і

#__inference_BN3__layer_call_fn_3712

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *F
fAR?
=__inference_BN3__layer_call_and_return_conditional_losses_9902
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Я
]
A__inference_re_lu_4_layer_call_and_return_conditional_losses_4044

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:џџџџџџџџџ@@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@@:W S
/
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
Е

#__inference_BN2__layer_call_fn_3504

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN2__layer_call_and_return_conditional_losses_15722
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџ::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
К

>__inference_BN3__layer_call_and_return_conditional_losses_3681

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%№'7*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
љ

#__inference_BN4__layer_call_fn_3818

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN4__layer_call_and_return_conditional_losses_11372
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ02

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0
 
_user_specified_nameinputs
ч
н
>__inference_FC1__layer_call_and_return_conditional_losses_4255

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:`*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesu
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisб
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axisз
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axisА
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*/
_output_shapes
:џџџџџџџџџ`2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axisН
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2	
BiasAdd 
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ`::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ`
 
_user_specified_nameinputs
г
]
A__inference_re_lu_1_layer_call_and_return_conditional_losses_3573

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:џџџџџџџџџ2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ц
с
>__inference_BN6__layer_call_and_return_conditional_losses_2024

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ `:`:`:`:`:*
epsilon%№'7*
is_training( 2
FusedBatchNormV3к
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:џџџџџџџџџ `2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ `::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџ `
 
_user_specified_nameinputs
А
B
&__inference_re_lu_1_layer_call_fn_3578

inputs
identityШ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_1_layer_call_and_return_conditional_losses_16132
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
џ
e
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1154

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ц
с
>__inference_BN5__layer_call_and_return_conditional_losses_1911

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ@@:@:@:@:@:*
epsilon%№'7*
is_training( 2
FusedBatchNormV3к
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:џџџџџџџџџ@@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ@@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
џ
e
I__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1270

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
і

>__inference_BN3__layer_call_and_return_conditional_losses_3617

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1й
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ : : : : :*
epsilon%№'7*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1џ
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџ ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ъ
с
>__inference_BN3__layer_call_and_return_conditional_losses_3635

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ы
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ : : : : :*
epsilon%№'7*
is_training( 2
FusedBatchNormV3л
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџ ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
М
J
.__inference_FC1_preFlatten1_layer_call_fn_4225

inputs
identityЯ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_FC1_preFlatten1_layer_call_and_return_conditional_losses_20882
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ`2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ`:W S
/
_output_shapes
:џџџџџџџџџ`
 
_user_specified_nameinputs
ъn
Н
?__inference_model_layer_call_and_return_conditional_losses_2578

inputs

cnn1__2473

cnn1__2475
	bn1__2478
	bn1__2480
	bn1__2482
	bn1__2484

cnn2__2489

cnn2__2491
	bn2__2494
	bn2__2496
	bn2__2498
	bn2__2500

cnn3__2505

cnn3__2507
	bn3__2510
	bn3__2512
	bn3__2514
	bn3__2516

cnn4__2521

cnn4__2523
	bn4__2526
	bn4__2528
	bn4__2530
	bn4__2532

cnn5__2537

cnn5__2539
	bn5__2542
	bn5__2544
	bn5__2546
	bn5__2548

cnn6__2553

cnn6__2555
	bn6__2558
	bn6__2560
	bn6__2562
	bn6__2564
	fc1__2570
	fc1__2572
identityЂBN1_/StatefulPartitionedCallЂBN2_/StatefulPartitionedCallЂBN3_/StatefulPartitionedCallЂBN4_/StatefulPartitionedCallЂBN5_/StatefulPartitionedCallЂBN6_/StatefulPartitionedCallЂCNN1_/StatefulPartitionedCallЂCNN2_/StatefulPartitionedCallЂCNN3_/StatefulPartitionedCallЂCNN4_/StatefulPartitionedCallЂCNN5_/StatefulPartitionedCallЂCNN6_/StatefulPartitionedCallЂFC1_/StatefulPartitionedCall
CNN1_/StatefulPartitionedCallStatefulPartitionedCallinputs
cnn1__2473
cnn1__2475*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN1__layer_call_and_return_conditional_losses_14062
CNN1_/StatefulPartitionedCallН
BN1_/StatefulPartitionedCallStatefulPartitionedCall&CNN1_/StatefulPartitionedCall:output:0	bn1__2478	bn1__2480	bn1__2482	bn1__2484*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN1__layer_call_and_return_conditional_losses_14592
BN1_/StatefulPartitionedCallё
re_lu/PartitionedCallPartitionedCall%BN1_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_re_lu_layer_call_and_return_conditional_losses_15002
re_lu/PartitionedCall
max_pooling2d/PartitionedCallPartitionedCallre_lu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_max_pooling2d_layer_call_and_return_conditional_losses_8062
max_pooling2d/PartitionedCallЈ
CNN2_/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0
cnn2__2489
cnn2__2491*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN2__layer_call_and_return_conditional_losses_15192
CNN2_/StatefulPartitionedCallН
BN2_/StatefulPartitionedCallStatefulPartitionedCall&CNN2_/StatefulPartitionedCall:output:0	bn2__2494	bn2__2496	bn2__2498	bn2__2500*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN2__layer_call_and_return_conditional_losses_15722
BN2_/StatefulPartitionedCallї
re_lu_1/PartitionedCallPartitionedCall%BN2_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_1_layer_call_and_return_conditional_losses_16132
re_lu_1/PartitionedCall
max_pooling2d_1/PartitionedCallPartitionedCall re_lu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_9222!
max_pooling2d_1/PartitionedCallЊ
CNN3_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0
cnn3__2505
cnn3__2507*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN3__layer_call_and_return_conditional_losses_16322
CNN3_/StatefulPartitionedCallН
BN3_/StatefulPartitionedCallStatefulPartitionedCall&CNN3_/StatefulPartitionedCall:output:0	bn3__2510	bn3__2512	bn3__2514	bn3__2516*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN3__layer_call_and_return_conditional_losses_16852
BN3_/StatefulPartitionedCallї
re_lu_2/PartitionedCallPartitionedCall%BN3_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_2_layer_call_and_return_conditional_losses_17262
re_lu_2/PartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCall re_lu_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_10382!
max_pooling2d_2/PartitionedCallЊ
CNN4_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0
cnn4__2521
cnn4__2523*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN4__layer_call_and_return_conditional_losses_17452
CNN4_/StatefulPartitionedCallН
BN4_/StatefulPartitionedCallStatefulPartitionedCall&CNN4_/StatefulPartitionedCall:output:0	bn4__2526	bn4__2528	bn4__2530	bn4__2532*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN4__layer_call_and_return_conditional_losses_17982
BN4_/StatefulPartitionedCallї
re_lu_3/PartitionedCallPartitionedCall%BN4_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_3_layer_call_and_return_conditional_losses_18392
re_lu_3/PartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCall re_lu_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_11542!
max_pooling2d_3/PartitionedCallЉ
CNN5_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0
cnn5__2537
cnn5__2539*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN5__layer_call_and_return_conditional_losses_18582
CNN5_/StatefulPartitionedCallМ
BN5_/StatefulPartitionedCallStatefulPartitionedCall&CNN5_/StatefulPartitionedCall:output:0	bn5__2542	bn5__2544	bn5__2546	bn5__2548*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN5__layer_call_and_return_conditional_losses_19112
BN5_/StatefulPartitionedCallі
re_lu_4/PartitionedCallPartitionedCall%BN5_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_4_layer_call_and_return_conditional_losses_19522
re_lu_4/PartitionedCall
max_pooling2d_4/PartitionedCallPartitionedCall re_lu_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_12702!
max_pooling2d_4/PartitionedCallЉ
CNN6_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0
cnn6__2553
cnn6__2555*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ `*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN6__layer_call_and_return_conditional_losses_19712
CNN6_/StatefulPartitionedCallМ
BN6_/StatefulPartitionedCallStatefulPartitionedCall&CNN6_/StatefulPartitionedCall:output:0	bn6__2558	bn6__2560	bn6__2562	bn6__2564*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ `*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN6__layer_call_and_return_conditional_losses_20242
BN6_/StatefulPartitionedCallі
re_lu_5/PartitionedCallPartitionedCall%BN6_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ `* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_5_layer_call_and_return_conditional_losses_20652
re_lu_5/PartitionedCall
!average_pooling2d/PartitionedCallPartitionedCall re_lu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_average_pooling2d_layer_call_and_return_conditional_losses_13862#
!average_pooling2d/PartitionedCall
FC1_preFlatten1/PartitionedCallPartitionedCall*average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_FC1_preFlatten1_layer_call_and_return_conditional_losses_20882!
FC1_preFlatten1/PartitionedCallЄ
FC1_/StatefulPartitionedCallStatefulPartitionedCall(FC1_preFlatten1/PartitionedCall:output:0	fc1__2570	fc1__2572*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_FC1__layer_call_and_return_conditional_losses_21262
FC1_/StatefulPartitionedCallі
softmax/PartitionedCallPartitionedCall%FC1_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_softmax_layer_call_and_return_conditional_losses_21472
softmax/PartitionedCallщ
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
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_21612
flatten/PartitionedCall
IdentityIdentity flatten/PartitionedCall:output:0^BN1_/StatefulPartitionedCall^BN2_/StatefulPartitionedCall^BN3_/StatefulPartitionedCall^BN4_/StatefulPartitionedCall^BN5_/StatefulPartitionedCall^BN6_/StatefulPartitionedCall^CNN1_/StatefulPartitionedCall^CNN2_/StatefulPartitionedCall^CNN3_/StatefulPartitionedCall^CNN4_/StatefulPartitionedCall^CNN5_/StatefulPartitionedCall^CNN6_/StatefulPartitionedCall^FC1_/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*Щ
_input_shapesЗ
Д:џџџџџџџџџ::::::::::::::::::::::::::::::::::::::2<
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
б
[
?__inference_re_lu_layer_call_and_return_conditional_losses_3416

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:џџџџџџџџџ2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Й

=__inference_BN2__layer_call_and_return_conditional_losses_874

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%№'7*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
х	
и
?__inference_CNN6__layer_call_and_return_conditional_losses_1971

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@`*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ `*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ `2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ `2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ @
 
_user_specified_nameinputs
ъ
с
>__inference_BN2__layer_call_and_return_conditional_losses_1572

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ы
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ:::::*
epsilon%№'7*
is_training( 2
FusedBatchNormV3л
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
х	
и
?__inference_CNN5__layer_call_and_return_conditional_losses_3902

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ@@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ@0::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@0
 
_user_specified_nameinputs

А
$__inference_model_layer_call_fn_3264

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36
identityЂStatefulPartitionedCallо
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
 !"#$%&*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_25782
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*Щ
_input_shapesЗ
Д:џџџџџџџџџ::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Џ

#__inference_BN5__layer_call_fn_4026

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN5__layer_call_and_return_conditional_losses_18932
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ@@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ@@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
ќ
b
F__inference_max_pooling2d_layer_call_and_return_conditional_losses_806

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ј

#__inference_BN1__layer_call_fn_3347

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *F
fAR?
=__inference_BN1__layer_call_and_return_conditional_losses_7892
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ї

#__inference_BN4__layer_call_fn_3805

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN4__layer_call_and_return_conditional_losses_11062
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ02

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0
 
_user_specified_nameinputs
Љ
J
.__inference_max_pooling2d_3_layer_call_fn_1160

inputs
identityъ
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
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_11542
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

B
&__inference_flatten_layer_call_fn_4285

inputs
identityП
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
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_21612
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ч
н
>__inference_FC1__layer_call_and_return_conditional_losses_2126

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:`*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesu
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisб
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axisз
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axisА
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*/
_output_shapes
:џџџџџџџџџ`2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axisН
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2	
BiasAdd 
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ`::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ`
 
_user_specified_nameinputs
і

>__inference_BN1__layer_call_and_return_conditional_losses_1441

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1й
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ:::::*
epsilon%№'7*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1џ
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
і
y
$__inference_CNN2__layer_call_fn_3440

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN2__layer_call_and_return_conditional_losses_15192
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ъ	
и
?__inference_CNN4__layer_call_and_return_conditional_losses_1745

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ02	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:џџџџџџџџџ02

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ц
с
>__inference_BN6__layer_call_and_return_conditional_losses_4170

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ `:`:`:`:`:*
epsilon%№'7*
is_training( 2
FusedBatchNormV3к
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:џџџџџџџџџ `2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ `::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџ `
 
_user_specified_nameinputs
Ў
с
>__inference_BN3__layer_call_and_return_conditional_losses_1021

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1м
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%№'7*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
з
]
A__inference_softmax_layer_call_and_return_conditional_losses_4269

inputs
identity_
SoftmaxSoftmaxinputs*
T0*/
_output_shapes
:џџџџџџџџџ2	
Softmaxm
IdentityIdentitySoftmax:softmax:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Й

=__inference_BN3__layer_call_and_return_conditional_losses_990

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%№'7*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
сn
О
?__inference_model_layer_call_and_return_conditional_losses_2170
input_1

cnn1__1417

cnn1__1419
	bn1__1486
	bn1__1488
	bn1__1490
	bn1__1492

cnn2__1530

cnn2__1532
	bn2__1599
	bn2__1601
	bn2__1603
	bn2__1605

cnn3__1643

cnn3__1645
	bn3__1712
	bn3__1714
	bn3__1716
	bn3__1718

cnn4__1756

cnn4__1758
	bn4__1825
	bn4__1827
	bn4__1829
	bn4__1831

cnn5__1869

cnn5__1871
	bn5__1938
	bn5__1940
	bn5__1942
	bn5__1944

cnn6__1982

cnn6__1984
	bn6__2051
	bn6__2053
	bn6__2055
	bn6__2057
	fc1__2137
	fc1__2139
identityЂBN1_/StatefulPartitionedCallЂBN2_/StatefulPartitionedCallЂBN3_/StatefulPartitionedCallЂBN4_/StatefulPartitionedCallЂBN5_/StatefulPartitionedCallЂBN6_/StatefulPartitionedCallЂCNN1_/StatefulPartitionedCallЂCNN2_/StatefulPartitionedCallЂCNN3_/StatefulPartitionedCallЂCNN4_/StatefulPartitionedCallЂCNN5_/StatefulPartitionedCallЂCNN6_/StatefulPartitionedCallЂFC1_/StatefulPartitionedCall
CNN1_/StatefulPartitionedCallStatefulPartitionedCallinput_1
cnn1__1417
cnn1__1419*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN1__layer_call_and_return_conditional_losses_14062
CNN1_/StatefulPartitionedCallЛ
BN1_/StatefulPartitionedCallStatefulPartitionedCall&CNN1_/StatefulPartitionedCall:output:0	bn1__1486	bn1__1488	bn1__1490	bn1__1492*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN1__layer_call_and_return_conditional_losses_14412
BN1_/StatefulPartitionedCallё
re_lu/PartitionedCallPartitionedCall%BN1_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_re_lu_layer_call_and_return_conditional_losses_15002
re_lu/PartitionedCall
max_pooling2d/PartitionedCallPartitionedCallre_lu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_max_pooling2d_layer_call_and_return_conditional_losses_8062
max_pooling2d/PartitionedCallЈ
CNN2_/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0
cnn2__1530
cnn2__1532*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN2__layer_call_and_return_conditional_losses_15192
CNN2_/StatefulPartitionedCallЛ
BN2_/StatefulPartitionedCallStatefulPartitionedCall&CNN2_/StatefulPartitionedCall:output:0	bn2__1599	bn2__1601	bn2__1603	bn2__1605*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN2__layer_call_and_return_conditional_losses_15542
BN2_/StatefulPartitionedCallї
re_lu_1/PartitionedCallPartitionedCall%BN2_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_1_layer_call_and_return_conditional_losses_16132
re_lu_1/PartitionedCall
max_pooling2d_1/PartitionedCallPartitionedCall re_lu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_9222!
max_pooling2d_1/PartitionedCallЊ
CNN3_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0
cnn3__1643
cnn3__1645*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN3__layer_call_and_return_conditional_losses_16322
CNN3_/StatefulPartitionedCallЛ
BN3_/StatefulPartitionedCallStatefulPartitionedCall&CNN3_/StatefulPartitionedCall:output:0	bn3__1712	bn3__1714	bn3__1716	bn3__1718*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN3__layer_call_and_return_conditional_losses_16672
BN3_/StatefulPartitionedCallї
re_lu_2/PartitionedCallPartitionedCall%BN3_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_2_layer_call_and_return_conditional_losses_17262
re_lu_2/PartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCall re_lu_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_10382!
max_pooling2d_2/PartitionedCallЊ
CNN4_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0
cnn4__1756
cnn4__1758*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN4__layer_call_and_return_conditional_losses_17452
CNN4_/StatefulPartitionedCallЛ
BN4_/StatefulPartitionedCallStatefulPartitionedCall&CNN4_/StatefulPartitionedCall:output:0	bn4__1825	bn4__1827	bn4__1829	bn4__1831*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN4__layer_call_and_return_conditional_losses_17802
BN4_/StatefulPartitionedCallї
re_lu_3/PartitionedCallPartitionedCall%BN4_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_3_layer_call_and_return_conditional_losses_18392
re_lu_3/PartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCall re_lu_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_11542!
max_pooling2d_3/PartitionedCallЉ
CNN5_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0
cnn5__1869
cnn5__1871*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN5__layer_call_and_return_conditional_losses_18582
CNN5_/StatefulPartitionedCallК
BN5_/StatefulPartitionedCallStatefulPartitionedCall&CNN5_/StatefulPartitionedCall:output:0	bn5__1938	bn5__1940	bn5__1942	bn5__1944*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN5__layer_call_and_return_conditional_losses_18932
BN5_/StatefulPartitionedCallі
re_lu_4/PartitionedCallPartitionedCall%BN5_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_4_layer_call_and_return_conditional_losses_19522
re_lu_4/PartitionedCall
max_pooling2d_4/PartitionedCallPartitionedCall re_lu_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_12702!
max_pooling2d_4/PartitionedCallЉ
CNN6_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0
cnn6__1982
cnn6__1984*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ `*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN6__layer_call_and_return_conditional_losses_19712
CNN6_/StatefulPartitionedCallК
BN6_/StatefulPartitionedCallStatefulPartitionedCall&CNN6_/StatefulPartitionedCall:output:0	bn6__2051	bn6__2053	bn6__2055	bn6__2057*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ `*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN6__layer_call_and_return_conditional_losses_20062
BN6_/StatefulPartitionedCallі
re_lu_5/PartitionedCallPartitionedCall%BN6_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ `* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_5_layer_call_and_return_conditional_losses_20652
re_lu_5/PartitionedCall
!average_pooling2d/PartitionedCallPartitionedCall re_lu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_average_pooling2d_layer_call_and_return_conditional_losses_13862#
!average_pooling2d/PartitionedCall
FC1_preFlatten1/PartitionedCallPartitionedCall*average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_FC1_preFlatten1_layer_call_and_return_conditional_losses_20882!
FC1_preFlatten1/PartitionedCallЄ
FC1_/StatefulPartitionedCallStatefulPartitionedCall(FC1_preFlatten1/PartitionedCall:output:0	fc1__2137	fc1__2139*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_FC1__layer_call_and_return_conditional_losses_21262
FC1_/StatefulPartitionedCallі
softmax/PartitionedCallPartitionedCall%FC1_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_softmax_layer_call_and_return_conditional_losses_21472
softmax/PartitionedCallщ
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
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_21612
flatten/PartitionedCall
IdentityIdentity flatten/PartitionedCall:output:0^BN1_/StatefulPartitionedCall^BN2_/StatefulPartitionedCall^BN3_/StatefulPartitionedCall^BN4_/StatefulPartitionedCall^BN5_/StatefulPartitionedCall^BN6_/StatefulPartitionedCall^CNN1_/StatefulPartitionedCall^CNN2_/StatefulPartitionedCall^CNN3_/StatefulPartitionedCall^CNN4_/StatefulPartitionedCall^CNN5_/StatefulPartitionedCall^CNN6_/StatefulPartitionedCall^FC1_/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*Щ
_input_shapesЗ
Д:џџџџџџџџџ::::::::::::::::::::::::::::::::::::::2<
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
ъ
с
>__inference_BN1__layer_call_and_return_conditional_losses_3385

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ы
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ:::::*
epsilon%№'7*
is_training( 2
FusedBatchNormV3л
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ъ	
и
?__inference_CNN1__layer_call_and_return_conditional_losses_3274

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ќ
B
&__inference_re_lu_4_layer_call_fn_4049

inputs
identityЧ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_4_layer_call_and_return_conditional_losses_19522
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@@:W S
/
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
К

>__inference_BN4__layer_call_and_return_conditional_losses_1106

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0:0:0:0:0:*
epsilon%№'7*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ02

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0
 
_user_specified_nameinputs

Б
 __inference__traced_restore_4546
file_prefix!
assignvariableop_cnn1__kernel!
assignvariableop_1_cnn1__bias!
assignvariableop_2_bn1__gamma 
assignvariableop_3_bn1__beta'
#assignvariableop_4_bn1__moving_mean+
'assignvariableop_5_bn1__moving_variance#
assignvariableop_6_cnn2__kernel!
assignvariableop_7_cnn2__bias!
assignvariableop_8_bn2__gamma 
assignvariableop_9_bn2__beta(
$assignvariableop_10_bn2__moving_mean,
(assignvariableop_11_bn2__moving_variance$
 assignvariableop_12_cnn3__kernel"
assignvariableop_13_cnn3__bias"
assignvariableop_14_bn3__gamma!
assignvariableop_15_bn3__beta(
$assignvariableop_16_bn3__moving_mean,
(assignvariableop_17_bn3__moving_variance$
 assignvariableop_18_cnn4__kernel"
assignvariableop_19_cnn4__bias"
assignvariableop_20_bn4__gamma!
assignvariableop_21_bn4__beta(
$assignvariableop_22_bn4__moving_mean,
(assignvariableop_23_bn4__moving_variance$
 assignvariableop_24_cnn5__kernel"
assignvariableop_25_cnn5__bias"
assignvariableop_26_bn5__gamma!
assignvariableop_27_bn5__beta(
$assignvariableop_28_bn5__moving_mean,
(assignvariableop_29_bn5__moving_variance$
 assignvariableop_30_cnn6__kernel"
assignvariableop_31_cnn6__bias"
assignvariableop_32_bn6__gamma!
assignvariableop_33_bn6__beta(
$assignvariableop_34_bn6__moving_mean,
(assignvariableop_35_bn6__moving_variance#
assignvariableop_36_fc1__kernel!
assignvariableop_37_fc1__bias
identity_39ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Г
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*П
valueЕBВ'B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesм
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesё
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*В
_output_shapes
:::::::::::::::::::::::::::::::::::::::*5
dtypes+
)2'2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_cnn1__kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ђ
AssignVariableOp_1AssignVariableOpassignvariableop_1_cnn1__biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ђ
AssignVariableOp_2AssignVariableOpassignvariableop_2_bn1__gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ё
AssignVariableOp_3AssignVariableOpassignvariableop_3_bn1__betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ј
AssignVariableOp_4AssignVariableOp#assignvariableop_4_bn1__moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ќ
AssignVariableOp_5AssignVariableOp'assignvariableop_5_bn1__moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Є
AssignVariableOp_6AssignVariableOpassignvariableop_6_cnn2__kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ђ
AssignVariableOp_7AssignVariableOpassignvariableop_7_cnn2__biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Ђ
AssignVariableOp_8AssignVariableOpassignvariableop_8_bn2__gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ё
AssignVariableOp_9AssignVariableOpassignvariableop_9_bn2__betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ќ
AssignVariableOp_10AssignVariableOp$assignvariableop_10_bn2__moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11А
AssignVariableOp_11AssignVariableOp(assignvariableop_11_bn2__moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ј
AssignVariableOp_12AssignVariableOp assignvariableop_12_cnn3__kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13І
AssignVariableOp_13AssignVariableOpassignvariableop_13_cnn3__biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14І
AssignVariableOp_14AssignVariableOpassignvariableop_14_bn3__gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ѕ
AssignVariableOp_15AssignVariableOpassignvariableop_15_bn3__betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Ќ
AssignVariableOp_16AssignVariableOp$assignvariableop_16_bn3__moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17А
AssignVariableOp_17AssignVariableOp(assignvariableop_17_bn3__moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Ј
AssignVariableOp_18AssignVariableOp assignvariableop_18_cnn4__kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19І
AssignVariableOp_19AssignVariableOpassignvariableop_19_cnn4__biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20І
AssignVariableOp_20AssignVariableOpassignvariableop_20_bn4__gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Ѕ
AssignVariableOp_21AssignVariableOpassignvariableop_21_bn4__betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Ќ
AssignVariableOp_22AssignVariableOp$assignvariableop_22_bn4__moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23А
AssignVariableOp_23AssignVariableOp(assignvariableop_23_bn4__moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Ј
AssignVariableOp_24AssignVariableOp assignvariableop_24_cnn5__kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25І
AssignVariableOp_25AssignVariableOpassignvariableop_25_cnn5__biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26І
AssignVariableOp_26AssignVariableOpassignvariableop_26_bn5__gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27Ѕ
AssignVariableOp_27AssignVariableOpassignvariableop_27_bn5__betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Ќ
AssignVariableOp_28AssignVariableOp$assignvariableop_28_bn5__moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29А
AssignVariableOp_29AssignVariableOp(assignvariableop_29_bn5__moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Ј
AssignVariableOp_30AssignVariableOp assignvariableop_30_cnn6__kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31І
AssignVariableOp_31AssignVariableOpassignvariableop_31_cnn6__biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32І
AssignVariableOp_32AssignVariableOpassignvariableop_32_bn6__gammaIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33Ѕ
AssignVariableOp_33AssignVariableOpassignvariableop_33_bn6__betaIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34Ќ
AssignVariableOp_34AssignVariableOp$assignvariableop_34_bn6__moving_meanIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35А
AssignVariableOp_35AssignVariableOp(assignvariableop_35_bn6__moving_varianceIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Ї
AssignVariableOp_36AssignVariableOpassignvariableop_36_fc1__kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37Ѕ
AssignVariableOp_37AssignVariableOpassignvariableop_37_fc1__biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_379
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpЂ
Identity_38Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_38
Identity_39IdentityIdentity_38:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_39"#
identity_39Identity_39:output:0*Џ
_input_shapes
: ::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_37AssignVariableOp_372(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
К

>__inference_BN6__layer_call_and_return_conditional_losses_4088

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`:`:`:`:`:*
epsilon%№'7*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
 
_user_specified_nameinputs
б
[
?__inference_re_lu_layer_call_and_return_conditional_losses_1500

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:џџџџџџџџџ2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Г

#__inference_BN2__layer_call_fn_3491

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN2__layer_call_and_return_conditional_losses_15542
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџ::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
иK
В
__inference__traced_save_4422
file_prefix+
'savev2_cnn1__kernel_read_readvariableop)
%savev2_cnn1__bias_read_readvariableop)
%savev2_bn1__gamma_read_readvariableop(
$savev2_bn1__beta_read_readvariableop/
+savev2_bn1__moving_mean_read_readvariableop3
/savev2_bn1__moving_variance_read_readvariableop+
'savev2_cnn2__kernel_read_readvariableop)
%savev2_cnn2__bias_read_readvariableop)
%savev2_bn2__gamma_read_readvariableop(
$savev2_bn2__beta_read_readvariableop/
+savev2_bn2__moving_mean_read_readvariableop3
/savev2_bn2__moving_variance_read_readvariableop+
'savev2_cnn3__kernel_read_readvariableop)
%savev2_cnn3__bias_read_readvariableop)
%savev2_bn3__gamma_read_readvariableop(
$savev2_bn3__beta_read_readvariableop/
+savev2_bn3__moving_mean_read_readvariableop3
/savev2_bn3__moving_variance_read_readvariableop+
'savev2_cnn4__kernel_read_readvariableop)
%savev2_cnn4__bias_read_readvariableop)
%savev2_bn4__gamma_read_readvariableop(
$savev2_bn4__beta_read_readvariableop/
+savev2_bn4__moving_mean_read_readvariableop3
/savev2_bn4__moving_variance_read_readvariableop+
'savev2_cnn5__kernel_read_readvariableop)
%savev2_cnn5__bias_read_readvariableop)
%savev2_bn5__gamma_read_readvariableop(
$savev2_bn5__beta_read_readvariableop/
+savev2_bn5__moving_mean_read_readvariableop3
/savev2_bn5__moving_variance_read_readvariableop+
'savev2_cnn6__kernel_read_readvariableop)
%savev2_cnn6__bias_read_readvariableop)
%savev2_bn6__gamma_read_readvariableop(
$savev2_bn6__beta_read_readvariableop/
+savev2_bn6__moving_mean_read_readvariableop3
/savev2_bn6__moving_variance_read_readvariableop*
&savev2_fc1__kernel_read_readvariableop(
$savev2_fc1__bias_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename­
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*П
valueЕBВ'B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesж
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_cnn1__kernel_read_readvariableop%savev2_cnn1__bias_read_readvariableop%savev2_bn1__gamma_read_readvariableop$savev2_bn1__beta_read_readvariableop+savev2_bn1__moving_mean_read_readvariableop/savev2_bn1__moving_variance_read_readvariableop'savev2_cnn2__kernel_read_readvariableop%savev2_cnn2__bias_read_readvariableop%savev2_bn2__gamma_read_readvariableop$savev2_bn2__beta_read_readvariableop+savev2_bn2__moving_mean_read_readvariableop/savev2_bn2__moving_variance_read_readvariableop'savev2_cnn3__kernel_read_readvariableop%savev2_cnn3__bias_read_readvariableop%savev2_bn3__gamma_read_readvariableop$savev2_bn3__beta_read_readvariableop+savev2_bn3__moving_mean_read_readvariableop/savev2_bn3__moving_variance_read_readvariableop'savev2_cnn4__kernel_read_readvariableop%savev2_cnn4__bias_read_readvariableop%savev2_bn4__gamma_read_readvariableop$savev2_bn4__beta_read_readvariableop+savev2_bn4__moving_mean_read_readvariableop/savev2_bn4__moving_variance_read_readvariableop'savev2_cnn5__kernel_read_readvariableop%savev2_cnn5__bias_read_readvariableop%savev2_bn5__gamma_read_readvariableop$savev2_bn5__beta_read_readvariableop+savev2_bn5__moving_mean_read_readvariableop/savev2_bn5__moving_variance_read_readvariableop'savev2_cnn6__kernel_read_readvariableop%savev2_cnn6__bias_read_readvariableop%savev2_bn6__gamma_read_readvariableop$savev2_bn6__beta_read_readvariableop+savev2_bn6__moving_mean_read_readvariableop/savev2_bn6__moving_variance_read_readvariableop&savev2_fc1__kernel_read_readvariableop$savev2_fc1__bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *5
dtypes+
)2'2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*Щ
_input_shapesЗ
Д: ::::::::::::: : : : : : : 0:0:0:0:0:0:0@:@:@:@:@:@:@`:`:`:`:`:`:`:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 	

_output_shapes
:: 


_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: 0: 

_output_shapes
:0: 

_output_shapes
:0: 

_output_shapes
:0: 

_output_shapes
:0: 

_output_shapes
:0:,(
&
_output_shapes
:0@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@`:  

_output_shapes
:`: !

_output_shapes
:`: "

_output_shapes
:`: #

_output_shapes
:`: $

_output_shapes
:`:$% 

_output_shapes

:`: &

_output_shapes
::'

_output_shapes
: 
і
y
$__inference_CNN3__layer_call_fn_3597

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN3__layer_call_and_return_conditional_losses_16322
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

Б
$__inference_model_layer_call_fn_2468
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36
identityЂStatefulPartitionedCallг
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
	
 !"%&*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_23892
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*Щ
_input_shapesЗ
Д:џџџџџџџџџ::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1
№
x
#__inference_FC1__layer_call_fn_4264

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_FC1__layer_call_and_return_conditional_losses_21262
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ`::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ`
 
_user_specified_nameinputs
ъ	
и
?__inference_CNN4__layer_call_and_return_conditional_losses_3745

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ02	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:џџџџџџџџџ02

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
г
]
A__inference_re_lu_1_layer_call_and_return_conditional_losses_1613

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:џџџџџџџџџ2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ї
I
-__inference_max_pooling2d_1_layer_call_fn_928

inputs
identityщ
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
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_9222
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
і

>__inference_BN2__layer_call_and_return_conditional_losses_3460

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1й
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ:::::*
epsilon%№'7*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1џ
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ї

#__inference_BN6__layer_call_fn_4119

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN6__layer_call_and_return_conditional_losses_13382
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
 
_user_specified_nameinputs
А
B
&__inference_re_lu_3_layer_call_fn_3892

inputs
identityШ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_3_layer_call_and_return_conditional_losses_18392
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџ02

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ0:X T
0
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
Г

#__inference_BN4__layer_call_fn_3869

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN4__layer_call_and_return_conditional_losses_17802
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:џџџџџџџџџ02

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџ0::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs

А
$__inference_model_layer_call_fn_3183

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36
identityЂStatefulPartitionedCallв
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
	
 !"%&*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_23892
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*Щ
_input_shapesЗ
Д:џџџџџџџџџ::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ъ	
и
?__inference_CNN2__layer_call_and_return_conditional_losses_3431

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
эn
О
?__inference_model_layer_call_and_return_conditional_losses_2278
input_1

cnn1__2173

cnn1__2175
	bn1__2178
	bn1__2180
	bn1__2182
	bn1__2184

cnn2__2189

cnn2__2191
	bn2__2194
	bn2__2196
	bn2__2198
	bn2__2200

cnn3__2205

cnn3__2207
	bn3__2210
	bn3__2212
	bn3__2214
	bn3__2216

cnn4__2221

cnn4__2223
	bn4__2226
	bn4__2228
	bn4__2230
	bn4__2232

cnn5__2237

cnn5__2239
	bn5__2242
	bn5__2244
	bn5__2246
	bn5__2248

cnn6__2253

cnn6__2255
	bn6__2258
	bn6__2260
	bn6__2262
	bn6__2264
	fc1__2270
	fc1__2272
identityЂBN1_/StatefulPartitionedCallЂBN2_/StatefulPartitionedCallЂBN3_/StatefulPartitionedCallЂBN4_/StatefulPartitionedCallЂBN5_/StatefulPartitionedCallЂBN6_/StatefulPartitionedCallЂCNN1_/StatefulPartitionedCallЂCNN2_/StatefulPartitionedCallЂCNN3_/StatefulPartitionedCallЂCNN4_/StatefulPartitionedCallЂCNN5_/StatefulPartitionedCallЂCNN6_/StatefulPartitionedCallЂFC1_/StatefulPartitionedCall
CNN1_/StatefulPartitionedCallStatefulPartitionedCallinput_1
cnn1__2173
cnn1__2175*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN1__layer_call_and_return_conditional_losses_14062
CNN1_/StatefulPartitionedCallН
BN1_/StatefulPartitionedCallStatefulPartitionedCall&CNN1_/StatefulPartitionedCall:output:0	bn1__2178	bn1__2180	bn1__2182	bn1__2184*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN1__layer_call_and_return_conditional_losses_14592
BN1_/StatefulPartitionedCallё
re_lu/PartitionedCallPartitionedCall%BN1_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_re_lu_layer_call_and_return_conditional_losses_15002
re_lu/PartitionedCall
max_pooling2d/PartitionedCallPartitionedCallre_lu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_max_pooling2d_layer_call_and_return_conditional_losses_8062
max_pooling2d/PartitionedCallЈ
CNN2_/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0
cnn2__2189
cnn2__2191*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN2__layer_call_and_return_conditional_losses_15192
CNN2_/StatefulPartitionedCallН
BN2_/StatefulPartitionedCallStatefulPartitionedCall&CNN2_/StatefulPartitionedCall:output:0	bn2__2194	bn2__2196	bn2__2198	bn2__2200*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN2__layer_call_and_return_conditional_losses_15722
BN2_/StatefulPartitionedCallї
re_lu_1/PartitionedCallPartitionedCall%BN2_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_1_layer_call_and_return_conditional_losses_16132
re_lu_1/PartitionedCall
max_pooling2d_1/PartitionedCallPartitionedCall re_lu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_9222!
max_pooling2d_1/PartitionedCallЊ
CNN3_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0
cnn3__2205
cnn3__2207*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN3__layer_call_and_return_conditional_losses_16322
CNN3_/StatefulPartitionedCallН
BN3_/StatefulPartitionedCallStatefulPartitionedCall&CNN3_/StatefulPartitionedCall:output:0	bn3__2210	bn3__2212	bn3__2214	bn3__2216*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN3__layer_call_and_return_conditional_losses_16852
BN3_/StatefulPartitionedCallї
re_lu_2/PartitionedCallPartitionedCall%BN3_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_2_layer_call_and_return_conditional_losses_17262
re_lu_2/PartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCall re_lu_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_10382!
max_pooling2d_2/PartitionedCallЊ
CNN4_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0
cnn4__2221
cnn4__2223*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN4__layer_call_and_return_conditional_losses_17452
CNN4_/StatefulPartitionedCallН
BN4_/StatefulPartitionedCallStatefulPartitionedCall&CNN4_/StatefulPartitionedCall:output:0	bn4__2226	bn4__2228	bn4__2230	bn4__2232*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN4__layer_call_and_return_conditional_losses_17982
BN4_/StatefulPartitionedCallї
re_lu_3/PartitionedCallPartitionedCall%BN4_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_3_layer_call_and_return_conditional_losses_18392
re_lu_3/PartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCall re_lu_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_11542!
max_pooling2d_3/PartitionedCallЉ
CNN5_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0
cnn5__2237
cnn5__2239*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN5__layer_call_and_return_conditional_losses_18582
CNN5_/StatefulPartitionedCallМ
BN5_/StatefulPartitionedCallStatefulPartitionedCall&CNN5_/StatefulPartitionedCall:output:0	bn5__2242	bn5__2244	bn5__2246	bn5__2248*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN5__layer_call_and_return_conditional_losses_19112
BN5_/StatefulPartitionedCallі
re_lu_4/PartitionedCallPartitionedCall%BN5_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_4_layer_call_and_return_conditional_losses_19522
re_lu_4/PartitionedCall
max_pooling2d_4/PartitionedCallPartitionedCall re_lu_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_12702!
max_pooling2d_4/PartitionedCallЉ
CNN6_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0
cnn6__2253
cnn6__2255*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ `*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN6__layer_call_and_return_conditional_losses_19712
CNN6_/StatefulPartitionedCallМ
BN6_/StatefulPartitionedCallStatefulPartitionedCall&CNN6_/StatefulPartitionedCall:output:0	bn6__2258	bn6__2260	bn6__2262	bn6__2264*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ `*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN6__layer_call_and_return_conditional_losses_20242
BN6_/StatefulPartitionedCallі
re_lu_5/PartitionedCallPartitionedCall%BN6_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ `* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_5_layer_call_and_return_conditional_losses_20652
re_lu_5/PartitionedCall
!average_pooling2d/PartitionedCallPartitionedCall re_lu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_average_pooling2d_layer_call_and_return_conditional_losses_13862#
!average_pooling2d/PartitionedCall
FC1_preFlatten1/PartitionedCallPartitionedCall*average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_FC1_preFlatten1_layer_call_and_return_conditional_losses_20882!
FC1_preFlatten1/PartitionedCallЄ
FC1_/StatefulPartitionedCallStatefulPartitionedCall(FC1_preFlatten1/PartitionedCall:output:0	fc1__2270	fc1__2272*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_FC1__layer_call_and_return_conditional_losses_21262
FC1_/StatefulPartitionedCallі
softmax/PartitionedCallPartitionedCall%FC1_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_softmax_layer_call_and_return_conditional_losses_21472
softmax/PartitionedCallщ
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
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_21612
flatten/PartitionedCall
IdentityIdentity flatten/PartitionedCall:output:0^BN1_/StatefulPartitionedCall^BN2_/StatefulPartitionedCall^BN3_/StatefulPartitionedCall^BN4_/StatefulPartitionedCall^BN5_/StatefulPartitionedCall^BN6_/StatefulPartitionedCall^CNN1_/StatefulPartitionedCall^CNN2_/StatefulPartitionedCall^CNN3_/StatefulPartitionedCall^CNN4_/StatefulPartitionedCall^CNN5_/StatefulPartitionedCall^CNN6_/StatefulPartitionedCall^FC1_/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*Щ
_input_shapesЗ
Д:џџџџџџџџџ::::::::::::::::::::::::::::::::::::::2<
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
џ
e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1038

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ъ	
и
?__inference_CNN2__layer_call_and_return_conditional_losses_1519

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ј

#__inference_BN2__layer_call_fn_3568

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *F
fAR?
=__inference_BN2__layer_call_and_return_conditional_losses_9052
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Б

#__inference_BN5__layer_call_fn_4039

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN5__layer_call_and_return_conditional_losses_19112
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ@@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ@@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
Ў
с
>__inference_BN6__layer_call_and_return_conditional_losses_1369

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1м
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`:`:`:`:`:*
epsilon%№'7*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
 
_user_specified_nameinputs
Љ
J
.__inference_max_pooling2d_2_layer_call_fn_1044

inputs
identityъ
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
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_10382
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
А
B
&__inference_re_lu_2_layer_call_fn_3735

inputs
identityШ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_2_layer_call_and_return_conditional_losses_17262
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ :X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ў
с
>__inference_BN1__layer_call_and_return_conditional_losses_3321

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1м
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%№'7*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
і

>__inference_BN4__layer_call_and_return_conditional_losses_1780

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1й
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ0:0:0:0:0:*
epsilon%№'7*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1џ
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:џџџџџџџџџ02

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџ0::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
ъ	
и
?__inference_CNN1__layer_call_and_return_conditional_losses_1406

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ў
с
>__inference_BN5__layer_call_and_return_conditional_losses_3949

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1м
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%№'7*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
г
]
A__inference_re_lu_2_layer_call_and_return_conditional_losses_3730

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:џџџџџџџџџ 2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ :X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ц
с
>__inference_BN5__layer_call_and_return_conditional_losses_4013

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ@@:@:@:@:@:*
epsilon%№'7*
is_training( 2
FusedBatchNormV3к
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:џџџџџџџџџ@@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ@@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
їо

__inference__wrapped_model_696
input_1.
*model_cnn1__conv2d_readvariableop_resource/
+model_cnn1__biasadd_readvariableop_resource&
"model_bn1__readvariableop_resource(
$model_bn1__readvariableop_1_resource7
3model_bn1__fusedbatchnormv3_readvariableop_resource9
5model_bn1__fusedbatchnormv3_readvariableop_1_resource.
*model_cnn2__conv2d_readvariableop_resource/
+model_cnn2__biasadd_readvariableop_resource&
"model_bn2__readvariableop_resource(
$model_bn2__readvariableop_1_resource7
3model_bn2__fusedbatchnormv3_readvariableop_resource9
5model_bn2__fusedbatchnormv3_readvariableop_1_resource.
*model_cnn3__conv2d_readvariableop_resource/
+model_cnn3__biasadd_readvariableop_resource&
"model_bn3__readvariableop_resource(
$model_bn3__readvariableop_1_resource7
3model_bn3__fusedbatchnormv3_readvariableop_resource9
5model_bn3__fusedbatchnormv3_readvariableop_1_resource.
*model_cnn4__conv2d_readvariableop_resource/
+model_cnn4__biasadd_readvariableop_resource&
"model_bn4__readvariableop_resource(
$model_bn4__readvariableop_1_resource7
3model_bn4__fusedbatchnormv3_readvariableop_resource9
5model_bn4__fusedbatchnormv3_readvariableop_1_resource.
*model_cnn5__conv2d_readvariableop_resource/
+model_cnn5__biasadd_readvariableop_resource&
"model_bn5__readvariableop_resource(
$model_bn5__readvariableop_1_resource7
3model_bn5__fusedbatchnormv3_readvariableop_resource9
5model_bn5__fusedbatchnormv3_readvariableop_1_resource.
*model_cnn6__conv2d_readvariableop_resource/
+model_cnn6__biasadd_readvariableop_resource&
"model_bn6__readvariableop_resource(
$model_bn6__readvariableop_1_resource7
3model_bn6__fusedbatchnormv3_readvariableop_resource9
5model_bn6__fusedbatchnormv3_readvariableop_1_resource0
,model_fc1__tensordot_readvariableop_resource.
*model_fc1__biasadd_readvariableop_resource
identityЂ*model/BN1_/FusedBatchNormV3/ReadVariableOpЂ,model/BN1_/FusedBatchNormV3/ReadVariableOp_1Ђmodel/BN1_/ReadVariableOpЂmodel/BN1_/ReadVariableOp_1Ђ*model/BN2_/FusedBatchNormV3/ReadVariableOpЂ,model/BN2_/FusedBatchNormV3/ReadVariableOp_1Ђmodel/BN2_/ReadVariableOpЂmodel/BN2_/ReadVariableOp_1Ђ*model/BN3_/FusedBatchNormV3/ReadVariableOpЂ,model/BN3_/FusedBatchNormV3/ReadVariableOp_1Ђmodel/BN3_/ReadVariableOpЂmodel/BN3_/ReadVariableOp_1Ђ*model/BN4_/FusedBatchNormV3/ReadVariableOpЂ,model/BN4_/FusedBatchNormV3/ReadVariableOp_1Ђmodel/BN4_/ReadVariableOpЂmodel/BN4_/ReadVariableOp_1Ђ*model/BN5_/FusedBatchNormV3/ReadVariableOpЂ,model/BN5_/FusedBatchNormV3/ReadVariableOp_1Ђmodel/BN5_/ReadVariableOpЂmodel/BN5_/ReadVariableOp_1Ђ*model/BN6_/FusedBatchNormV3/ReadVariableOpЂ,model/BN6_/FusedBatchNormV3/ReadVariableOp_1Ђmodel/BN6_/ReadVariableOpЂmodel/BN6_/ReadVariableOp_1Ђ"model/CNN1_/BiasAdd/ReadVariableOpЂ!model/CNN1_/Conv2D/ReadVariableOpЂ"model/CNN2_/BiasAdd/ReadVariableOpЂ!model/CNN2_/Conv2D/ReadVariableOpЂ"model/CNN3_/BiasAdd/ReadVariableOpЂ!model/CNN3_/Conv2D/ReadVariableOpЂ"model/CNN4_/BiasAdd/ReadVariableOpЂ!model/CNN4_/Conv2D/ReadVariableOpЂ"model/CNN5_/BiasAdd/ReadVariableOpЂ!model/CNN5_/Conv2D/ReadVariableOpЂ"model/CNN6_/BiasAdd/ReadVariableOpЂ!model/CNN6_/Conv2D/ReadVariableOpЂ!model/FC1_/BiasAdd/ReadVariableOpЂ#model/FC1_/Tensordot/ReadVariableOpЙ
!model/CNN1_/Conv2D/ReadVariableOpReadVariableOp*model_cnn1__conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!model/CNN1_/Conv2D/ReadVariableOpЩ
model/CNN1_/Conv2DConv2Dinput_1)model/CNN1_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
model/CNN1_/Conv2DА
"model/CNN1_/BiasAdd/ReadVariableOpReadVariableOp+model_cnn1__biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"model/CNN1_/BiasAdd/ReadVariableOpЙ
model/CNN1_/BiasAddBiasAddmodel/CNN1_/Conv2D:output:0*model/CNN1_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2
model/CNN1_/BiasAdd
model/BN1_/ReadVariableOpReadVariableOp"model_bn1__readvariableop_resource*
_output_shapes
:*
dtype02
model/BN1_/ReadVariableOp
model/BN1_/ReadVariableOp_1ReadVariableOp$model_bn1__readvariableop_1_resource*
_output_shapes
:*
dtype02
model/BN1_/ReadVariableOp_1Ш
*model/BN1_/FusedBatchNormV3/ReadVariableOpReadVariableOp3model_bn1__fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02,
*model/BN1_/FusedBatchNormV3/ReadVariableOpЮ
,model/BN1_/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5model_bn1__fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02.
,model/BN1_/FusedBatchNormV3/ReadVariableOp_1Ѓ
model/BN1_/FusedBatchNormV3FusedBatchNormV3model/CNN1_/BiasAdd:output:0!model/BN1_/ReadVariableOp:value:0#model/BN1_/ReadVariableOp_1:value:02model/BN1_/FusedBatchNormV3/ReadVariableOp:value:04model/BN1_/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ:::::*
epsilon%№'7*
is_training( 2
model/BN1_/FusedBatchNormV3
model/re_lu/ReluRelumodel/BN1_/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:џџџџџџџџџ2
model/re_lu/Reluг
model/max_pooling2d/MaxPoolMaxPoolmodel/re_lu/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d/MaxPoolЙ
!model/CNN2_/Conv2D/ReadVariableOpReadVariableOp*model_cnn2__conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!model/CNN2_/Conv2D/ReadVariableOpц
model/CNN2_/Conv2DConv2D$model/max_pooling2d/MaxPool:output:0)model/CNN2_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
model/CNN2_/Conv2DА
"model/CNN2_/BiasAdd/ReadVariableOpReadVariableOp+model_cnn2__biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"model/CNN2_/BiasAdd/ReadVariableOpЙ
model/CNN2_/BiasAddBiasAddmodel/CNN2_/Conv2D:output:0*model/CNN2_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2
model/CNN2_/BiasAdd
model/BN2_/ReadVariableOpReadVariableOp"model_bn2__readvariableop_resource*
_output_shapes
:*
dtype02
model/BN2_/ReadVariableOp
model/BN2_/ReadVariableOp_1ReadVariableOp$model_bn2__readvariableop_1_resource*
_output_shapes
:*
dtype02
model/BN2_/ReadVariableOp_1Ш
*model/BN2_/FusedBatchNormV3/ReadVariableOpReadVariableOp3model_bn2__fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02,
*model/BN2_/FusedBatchNormV3/ReadVariableOpЮ
,model/BN2_/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5model_bn2__fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02.
,model/BN2_/FusedBatchNormV3/ReadVariableOp_1Ѓ
model/BN2_/FusedBatchNormV3FusedBatchNormV3model/CNN2_/BiasAdd:output:0!model/BN2_/ReadVariableOp:value:0#model/BN2_/ReadVariableOp_1:value:02model/BN2_/FusedBatchNormV3/ReadVariableOp:value:04model/BN2_/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ:::::*
epsilon%№'7*
is_training( 2
model/BN2_/FusedBatchNormV3
model/re_lu_1/ReluRelumodel/BN2_/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:џџџџџџџџџ2
model/re_lu_1/Reluй
model/max_pooling2d_1/MaxPoolMaxPool model/re_lu_1/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d_1/MaxPoolЙ
!model/CNN3_/Conv2D/ReadVariableOpReadVariableOp*model_cnn3__conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02#
!model/CNN3_/Conv2D/ReadVariableOpш
model/CNN3_/Conv2DConv2D&model/max_pooling2d_1/MaxPool:output:0)model/CNN3_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ *
paddingSAME*
strides
2
model/CNN3_/Conv2DА
"model/CNN3_/BiasAdd/ReadVariableOpReadVariableOp+model_cnn3__biasadd_readvariableop_resource*
_output_shapes
: *
dtype02$
"model/CNN3_/BiasAdd/ReadVariableOpЙ
model/CNN3_/BiasAddBiasAddmodel/CNN3_/Conv2D:output:0*model/CNN3_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ 2
model/CNN3_/BiasAdd
model/BN3_/ReadVariableOpReadVariableOp"model_bn3__readvariableop_resource*
_output_shapes
: *
dtype02
model/BN3_/ReadVariableOp
model/BN3_/ReadVariableOp_1ReadVariableOp$model_bn3__readvariableop_1_resource*
_output_shapes
: *
dtype02
model/BN3_/ReadVariableOp_1Ш
*model/BN3_/FusedBatchNormV3/ReadVariableOpReadVariableOp3model_bn3__fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02,
*model/BN3_/FusedBatchNormV3/ReadVariableOpЮ
,model/BN3_/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5model_bn3__fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02.
,model/BN3_/FusedBatchNormV3/ReadVariableOp_1Ѓ
model/BN3_/FusedBatchNormV3FusedBatchNormV3model/CNN3_/BiasAdd:output:0!model/BN3_/ReadVariableOp:value:0#model/BN3_/ReadVariableOp_1:value:02model/BN3_/FusedBatchNormV3/ReadVariableOp:value:04model/BN3_/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ : : : : :*
epsilon%№'7*
is_training( 2
model/BN3_/FusedBatchNormV3
model/re_lu_2/ReluRelumodel/BN3_/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:џџџџџџџџџ 2
model/re_lu_2/Reluй
model/max_pooling2d_2/MaxPoolMaxPool model/re_lu_2/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides
2
model/max_pooling2d_2/MaxPoolЙ
!model/CNN4_/Conv2D/ReadVariableOpReadVariableOp*model_cnn4__conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02#
!model/CNN4_/Conv2D/ReadVariableOpш
model/CNN4_/Conv2DConv2D&model/max_pooling2d_2/MaxPool:output:0)model/CNN4_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0*
paddingSAME*
strides
2
model/CNN4_/Conv2DА
"model/CNN4_/BiasAdd/ReadVariableOpReadVariableOp+model_cnn4__biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02$
"model/CNN4_/BiasAdd/ReadVariableOpЙ
model/CNN4_/BiasAddBiasAddmodel/CNN4_/Conv2D:output:0*model/CNN4_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ02
model/CNN4_/BiasAdd
model/BN4_/ReadVariableOpReadVariableOp"model_bn4__readvariableop_resource*
_output_shapes
:0*
dtype02
model/BN4_/ReadVariableOp
model/BN4_/ReadVariableOp_1ReadVariableOp$model_bn4__readvariableop_1_resource*
_output_shapes
:0*
dtype02
model/BN4_/ReadVariableOp_1Ш
*model/BN4_/FusedBatchNormV3/ReadVariableOpReadVariableOp3model_bn4__fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02,
*model/BN4_/FusedBatchNormV3/ReadVariableOpЮ
,model/BN4_/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5model_bn4__fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02.
,model/BN4_/FusedBatchNormV3/ReadVariableOp_1Ѓ
model/BN4_/FusedBatchNormV3FusedBatchNormV3model/CNN4_/BiasAdd:output:0!model/BN4_/ReadVariableOp:value:0#model/BN4_/ReadVariableOp_1:value:02model/BN4_/FusedBatchNormV3/ReadVariableOp:value:04model/BN4_/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ0:0:0:0:0:*
epsilon%№'7*
is_training( 2
model/BN4_/FusedBatchNormV3
model/re_lu_3/ReluRelumodel/BN4_/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:џџџџџџџџџ02
model/re_lu_3/Reluи
model/max_pooling2d_3/MaxPoolMaxPool model/re_lu_3/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@0*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d_3/MaxPoolЙ
!model/CNN5_/Conv2D/ReadVariableOpReadVariableOp*model_cnn5__conv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype02#
!model/CNN5_/Conv2D/ReadVariableOpч
model/CNN5_/Conv2DConv2D&model/max_pooling2d_3/MaxPool:output:0)model/CNN5_/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@*
paddingSAME*
strides
2
model/CNN5_/Conv2DА
"model/CNN5_/BiasAdd/ReadVariableOpReadVariableOp+model_cnn5__biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02$
"model/CNN5_/BiasAdd/ReadVariableOpИ
model/CNN5_/BiasAddBiasAddmodel/CNN5_/Conv2D:output:0*model/CNN5_/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2
model/CNN5_/BiasAdd
model/BN5_/ReadVariableOpReadVariableOp"model_bn5__readvariableop_resource*
_output_shapes
:@*
dtype02
model/BN5_/ReadVariableOp
model/BN5_/ReadVariableOp_1ReadVariableOp$model_bn5__readvariableop_1_resource*
_output_shapes
:@*
dtype02
model/BN5_/ReadVariableOp_1Ш
*model/BN5_/FusedBatchNormV3/ReadVariableOpReadVariableOp3model_bn5__fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02,
*model/BN5_/FusedBatchNormV3/ReadVariableOpЮ
,model/BN5_/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5model_bn5__fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02.
,model/BN5_/FusedBatchNormV3/ReadVariableOp_1Ђ
model/BN5_/FusedBatchNormV3FusedBatchNormV3model/CNN5_/BiasAdd:output:0!model/BN5_/ReadVariableOp:value:0#model/BN5_/ReadVariableOp_1:value:02model/BN5_/FusedBatchNormV3/ReadVariableOp:value:04model/BN5_/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ@@:@:@:@:@:*
epsilon%№'7*
is_training( 2
model/BN5_/FusedBatchNormV3
model/re_lu_4/ReluRelumodel/BN5_/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2
model/re_lu_4/Reluи
model/max_pooling2d_4/MaxPoolMaxPool model/re_lu_4/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ @*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d_4/MaxPoolЙ
!model/CNN6_/Conv2D/ReadVariableOpReadVariableOp*model_cnn6__conv2d_readvariableop_resource*&
_output_shapes
:@`*
dtype02#
!model/CNN6_/Conv2D/ReadVariableOpч
model/CNN6_/Conv2DConv2D&model/max_pooling2d_4/MaxPool:output:0)model/CNN6_/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ `*
paddingSAME*
strides
2
model/CNN6_/Conv2DА
"model/CNN6_/BiasAdd/ReadVariableOpReadVariableOp+model_cnn6__biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02$
"model/CNN6_/BiasAdd/ReadVariableOpИ
model/CNN6_/BiasAddBiasAddmodel/CNN6_/Conv2D:output:0*model/CNN6_/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ `2
model/CNN6_/BiasAdd
model/BN6_/ReadVariableOpReadVariableOp"model_bn6__readvariableop_resource*
_output_shapes
:`*
dtype02
model/BN6_/ReadVariableOp
model/BN6_/ReadVariableOp_1ReadVariableOp$model_bn6__readvariableop_1_resource*
_output_shapes
:`*
dtype02
model/BN6_/ReadVariableOp_1Ш
*model/BN6_/FusedBatchNormV3/ReadVariableOpReadVariableOp3model_bn6__fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02,
*model/BN6_/FusedBatchNormV3/ReadVariableOpЮ
,model/BN6_/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5model_bn6__fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02.
,model/BN6_/FusedBatchNormV3/ReadVariableOp_1Ђ
model/BN6_/FusedBatchNormV3FusedBatchNormV3model/CNN6_/BiasAdd:output:0!model/BN6_/ReadVariableOp:value:0#model/BN6_/ReadVariableOp_1:value:02model/BN6_/FusedBatchNormV3/ReadVariableOp:value:04model/BN6_/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ `:`:`:`:`:*
epsilon%№'7*
is_training( 2
model/BN6_/FusedBatchNormV3
model/re_lu_5/ReluRelumodel/BN6_/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:џџџџџџџџџ `2
model/re_lu_5/Reluх
model/average_pooling2d/AvgPoolAvgPool model/re_lu_5/Relu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ`*
ksize
 *
paddingVALID*
strides
2!
model/average_pooling2d/AvgPool
model/FC1_preFlatten1/ShapeShape(model/average_pooling2d/AvgPool:output:0*
T0*
_output_shapes
:2
model/FC1_preFlatten1/Shape 
)model/FC1_preFlatten1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model/FC1_preFlatten1/strided_slice/stackЄ
+model/FC1_preFlatten1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model/FC1_preFlatten1/strided_slice/stack_1Є
+model/FC1_preFlatten1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model/FC1_preFlatten1/strided_slice/stack_2ц
#model/FC1_preFlatten1/strided_sliceStridedSlice$model/FC1_preFlatten1/Shape:output:02model/FC1_preFlatten1/strided_slice/stack:output:04model/FC1_preFlatten1/strided_slice/stack_1:output:04model/FC1_preFlatten1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model/FC1_preFlatten1/strided_slice
%model/FC1_preFlatten1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%model/FC1_preFlatten1/Reshape/shape/1
%model/FC1_preFlatten1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2'
%model/FC1_preFlatten1/Reshape/shape/2
%model/FC1_preFlatten1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2'
%model/FC1_preFlatten1/Reshape/shape/3О
#model/FC1_preFlatten1/Reshape/shapePack,model/FC1_preFlatten1/strided_slice:output:0.model/FC1_preFlatten1/Reshape/shape/1:output:0.model/FC1_preFlatten1/Reshape/shape/2:output:0.model/FC1_preFlatten1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2%
#model/FC1_preFlatten1/Reshape/shapeл
model/FC1_preFlatten1/ReshapeReshape(model/average_pooling2d/AvgPool:output:0,model/FC1_preFlatten1/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ`2
model/FC1_preFlatten1/ReshapeЗ
#model/FC1_/Tensordot/ReadVariableOpReadVariableOp,model_fc1__tensordot_readvariableop_resource*
_output_shapes

:`*
dtype02%
#model/FC1_/Tensordot/ReadVariableOp
model/FC1_/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
model/FC1_/Tensordot/axes
model/FC1_/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
model/FC1_/Tensordot/free
model/FC1_/Tensordot/ShapeShape&model/FC1_preFlatten1/Reshape:output:0*
T0*
_output_shapes
:2
model/FC1_/Tensordot/Shape
"model/FC1_/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"model/FC1_/Tensordot/GatherV2/axis
model/FC1_/Tensordot/GatherV2GatherV2#model/FC1_/Tensordot/Shape:output:0"model/FC1_/Tensordot/free:output:0+model/FC1_/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
model/FC1_/Tensordot/GatherV2
$model/FC1_/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$model/FC1_/Tensordot/GatherV2_1/axis
model/FC1_/Tensordot/GatherV2_1GatherV2#model/FC1_/Tensordot/Shape:output:0"model/FC1_/Tensordot/axes:output:0-model/FC1_/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2!
model/FC1_/Tensordot/GatherV2_1
model/FC1_/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
model/FC1_/Tensordot/ConstЌ
model/FC1_/Tensordot/ProdProd&model/FC1_/Tensordot/GatherV2:output:0#model/FC1_/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
model/FC1_/Tensordot/Prod
model/FC1_/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
model/FC1_/Tensordot/Const_1Д
model/FC1_/Tensordot/Prod_1Prod(model/FC1_/Tensordot/GatherV2_1:output:0%model/FC1_/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
model/FC1_/Tensordot/Prod_1
 model/FC1_/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 model/FC1_/Tensordot/concat/axisч
model/FC1_/Tensordot/concatConcatV2"model/FC1_/Tensordot/free:output:0"model/FC1_/Tensordot/axes:output:0)model/FC1_/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
model/FC1_/Tensordot/concatИ
model/FC1_/Tensordot/stackPack"model/FC1_/Tensordot/Prod:output:0$model/FC1_/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
model/FC1_/Tensordot/stackе
model/FC1_/Tensordot/transpose	Transpose&model/FC1_preFlatten1/Reshape:output:0$model/FC1_/Tensordot/concat:output:0*
T0*/
_output_shapes
:џџџџџџџџџ`2 
model/FC1_/Tensordot/transposeЫ
model/FC1_/Tensordot/ReshapeReshape"model/FC1_/Tensordot/transpose:y:0#model/FC1_/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
model/FC1_/Tensordot/ReshapeЪ
model/FC1_/Tensordot/MatMulMatMul%model/FC1_/Tensordot/Reshape:output:0+model/FC1_/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model/FC1_/Tensordot/MatMul
model/FC1_/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
model/FC1_/Tensordot/Const_2
"model/FC1_/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"model/FC1_/Tensordot/concat_1/axisє
model/FC1_/Tensordot/concat_1ConcatV2&model/FC1_/Tensordot/GatherV2:output:0%model/FC1_/Tensordot/Const_2:output:0+model/FC1_/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
model/FC1_/Tensordot/concat_1Р
model/FC1_/TensordotReshape%model/FC1_/Tensordot/MatMul:product:0&model/FC1_/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
model/FC1_/Tensordot­
!model/FC1_/BiasAdd/ReadVariableOpReadVariableOp*model_fc1__biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!model/FC1_/BiasAdd/ReadVariableOpЗ
model/FC1_/BiasAddBiasAddmodel/FC1_/Tensordot:output:0)model/FC1_/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2
model/FC1_/BiasAdd
model/softmax/SoftmaxSoftmaxmodel/FC1_/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
model/softmax/Softmax{
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
model/flatten/ConstЊ
model/flatten/ReshapeReshapemodel/softmax/Softmax:softmax:0model/flatten/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model/flatten/Reshapeі
IdentityIdentitymodel/flatten/Reshape:output:0+^model/BN1_/FusedBatchNormV3/ReadVariableOp-^model/BN1_/FusedBatchNormV3/ReadVariableOp_1^model/BN1_/ReadVariableOp^model/BN1_/ReadVariableOp_1+^model/BN2_/FusedBatchNormV3/ReadVariableOp-^model/BN2_/FusedBatchNormV3/ReadVariableOp_1^model/BN2_/ReadVariableOp^model/BN2_/ReadVariableOp_1+^model/BN3_/FusedBatchNormV3/ReadVariableOp-^model/BN3_/FusedBatchNormV3/ReadVariableOp_1^model/BN3_/ReadVariableOp^model/BN3_/ReadVariableOp_1+^model/BN4_/FusedBatchNormV3/ReadVariableOp-^model/BN4_/FusedBatchNormV3/ReadVariableOp_1^model/BN4_/ReadVariableOp^model/BN4_/ReadVariableOp_1+^model/BN5_/FusedBatchNormV3/ReadVariableOp-^model/BN5_/FusedBatchNormV3/ReadVariableOp_1^model/BN5_/ReadVariableOp^model/BN5_/ReadVariableOp_1+^model/BN6_/FusedBatchNormV3/ReadVariableOp-^model/BN6_/FusedBatchNormV3/ReadVariableOp_1^model/BN6_/ReadVariableOp^model/BN6_/ReadVariableOp_1#^model/CNN1_/BiasAdd/ReadVariableOp"^model/CNN1_/Conv2D/ReadVariableOp#^model/CNN2_/BiasAdd/ReadVariableOp"^model/CNN2_/Conv2D/ReadVariableOp#^model/CNN3_/BiasAdd/ReadVariableOp"^model/CNN3_/Conv2D/ReadVariableOp#^model/CNN4_/BiasAdd/ReadVariableOp"^model/CNN4_/Conv2D/ReadVariableOp#^model/CNN5_/BiasAdd/ReadVariableOp"^model/CNN5_/Conv2D/ReadVariableOp#^model/CNN6_/BiasAdd/ReadVariableOp"^model/CNN6_/Conv2D/ReadVariableOp"^model/FC1_/BiasAdd/ReadVariableOp$^model/FC1_/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*Щ
_input_shapesЗ
Д:џџџџџџџџџ::::::::::::::::::::::::::::::::::::::2X
*model/BN1_/FusedBatchNormV3/ReadVariableOp*model/BN1_/FusedBatchNormV3/ReadVariableOp2\
,model/BN1_/FusedBatchNormV3/ReadVariableOp_1,model/BN1_/FusedBatchNormV3/ReadVariableOp_126
model/BN1_/ReadVariableOpmodel/BN1_/ReadVariableOp2:
model/BN1_/ReadVariableOp_1model/BN1_/ReadVariableOp_12X
*model/BN2_/FusedBatchNormV3/ReadVariableOp*model/BN2_/FusedBatchNormV3/ReadVariableOp2\
,model/BN2_/FusedBatchNormV3/ReadVariableOp_1,model/BN2_/FusedBatchNormV3/ReadVariableOp_126
model/BN2_/ReadVariableOpmodel/BN2_/ReadVariableOp2:
model/BN2_/ReadVariableOp_1model/BN2_/ReadVariableOp_12X
*model/BN3_/FusedBatchNormV3/ReadVariableOp*model/BN3_/FusedBatchNormV3/ReadVariableOp2\
,model/BN3_/FusedBatchNormV3/ReadVariableOp_1,model/BN3_/FusedBatchNormV3/ReadVariableOp_126
model/BN3_/ReadVariableOpmodel/BN3_/ReadVariableOp2:
model/BN3_/ReadVariableOp_1model/BN3_/ReadVariableOp_12X
*model/BN4_/FusedBatchNormV3/ReadVariableOp*model/BN4_/FusedBatchNormV3/ReadVariableOp2\
,model/BN4_/FusedBatchNormV3/ReadVariableOp_1,model/BN4_/FusedBatchNormV3/ReadVariableOp_126
model/BN4_/ReadVariableOpmodel/BN4_/ReadVariableOp2:
model/BN4_/ReadVariableOp_1model/BN4_/ReadVariableOp_12X
*model/BN5_/FusedBatchNormV3/ReadVariableOp*model/BN5_/FusedBatchNormV3/ReadVariableOp2\
,model/BN5_/FusedBatchNormV3/ReadVariableOp_1,model/BN5_/FusedBatchNormV3/ReadVariableOp_126
model/BN5_/ReadVariableOpmodel/BN5_/ReadVariableOp2:
model/BN5_/ReadVariableOp_1model/BN5_/ReadVariableOp_12X
*model/BN6_/FusedBatchNormV3/ReadVariableOp*model/BN6_/FusedBatchNormV3/ReadVariableOp2\
,model/BN6_/FusedBatchNormV3/ReadVariableOp_1,model/BN6_/FusedBatchNormV3/ReadVariableOp_126
model/BN6_/ReadVariableOpmodel/BN6_/ReadVariableOp2:
model/BN6_/ReadVariableOp_1model/BN6_/ReadVariableOp_12H
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
!model/FC1_/BiasAdd/ReadVariableOp!model/FC1_/BiasAdd/ReadVariableOp2J
#model/FC1_/Tensordot/ReadVariableOp#model/FC1_/Tensordot/ReadVariableOp:Y U
0
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1
К

>__inference_BN1__layer_call_and_return_conditional_losses_3303

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%№'7*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ђ

>__inference_BN5__layer_call_and_return_conditional_losses_3995

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1и
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ@@:@:@:@:@:*
epsilon%№'7*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1ў
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:џџџџџџџџџ@@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ@@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs

e
I__inference_FC1_preFlatten1_layer_call_and_return_conditional_losses_4220

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2m
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
Reshape/shape/3К
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ`2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ`2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ`:W S
/
_output_shapes
:џџџџџџџџџ`
 
_user_specified_nameinputs
ыю
њ
?__inference_model_layer_call_and_return_conditional_losses_2927

inputs(
$cnn1__conv2d_readvariableop_resource)
%cnn1__biasadd_readvariableop_resource 
bn1__readvariableop_resource"
bn1__readvariableop_1_resource1
-bn1__fusedbatchnormv3_readvariableop_resource3
/bn1__fusedbatchnormv3_readvariableop_1_resource(
$cnn2__conv2d_readvariableop_resource)
%cnn2__biasadd_readvariableop_resource 
bn2__readvariableop_resource"
bn2__readvariableop_1_resource1
-bn2__fusedbatchnormv3_readvariableop_resource3
/bn2__fusedbatchnormv3_readvariableop_1_resource(
$cnn3__conv2d_readvariableop_resource)
%cnn3__biasadd_readvariableop_resource 
bn3__readvariableop_resource"
bn3__readvariableop_1_resource1
-bn3__fusedbatchnormv3_readvariableop_resource3
/bn3__fusedbatchnormv3_readvariableop_1_resource(
$cnn4__conv2d_readvariableop_resource)
%cnn4__biasadd_readvariableop_resource 
bn4__readvariableop_resource"
bn4__readvariableop_1_resource1
-bn4__fusedbatchnormv3_readvariableop_resource3
/bn4__fusedbatchnormv3_readvariableop_1_resource(
$cnn5__conv2d_readvariableop_resource)
%cnn5__biasadd_readvariableop_resource 
bn5__readvariableop_resource"
bn5__readvariableop_1_resource1
-bn5__fusedbatchnormv3_readvariableop_resource3
/bn5__fusedbatchnormv3_readvariableop_1_resource(
$cnn6__conv2d_readvariableop_resource)
%cnn6__biasadd_readvariableop_resource 
bn6__readvariableop_resource"
bn6__readvariableop_1_resource1
-bn6__fusedbatchnormv3_readvariableop_resource3
/bn6__fusedbatchnormv3_readvariableop_1_resource*
&fc1__tensordot_readvariableop_resource(
$fc1__biasadd_readvariableop_resource
identityЂBN1_/AssignNewValueЂBN1_/AssignNewValue_1Ђ$BN1_/FusedBatchNormV3/ReadVariableOpЂ&BN1_/FusedBatchNormV3/ReadVariableOp_1ЂBN1_/ReadVariableOpЂBN1_/ReadVariableOp_1ЂBN2_/AssignNewValueЂBN2_/AssignNewValue_1Ђ$BN2_/FusedBatchNormV3/ReadVariableOpЂ&BN2_/FusedBatchNormV3/ReadVariableOp_1ЂBN2_/ReadVariableOpЂBN2_/ReadVariableOp_1ЂBN3_/AssignNewValueЂBN3_/AssignNewValue_1Ђ$BN3_/FusedBatchNormV3/ReadVariableOpЂ&BN3_/FusedBatchNormV3/ReadVariableOp_1ЂBN3_/ReadVariableOpЂBN3_/ReadVariableOp_1ЂBN4_/AssignNewValueЂBN4_/AssignNewValue_1Ђ$BN4_/FusedBatchNormV3/ReadVariableOpЂ&BN4_/FusedBatchNormV3/ReadVariableOp_1ЂBN4_/ReadVariableOpЂBN4_/ReadVariableOp_1ЂBN5_/AssignNewValueЂBN5_/AssignNewValue_1Ђ$BN5_/FusedBatchNormV3/ReadVariableOpЂ&BN5_/FusedBatchNormV3/ReadVariableOp_1ЂBN5_/ReadVariableOpЂBN5_/ReadVariableOp_1ЂBN6_/AssignNewValueЂBN6_/AssignNewValue_1Ђ$BN6_/FusedBatchNormV3/ReadVariableOpЂ&BN6_/FusedBatchNormV3/ReadVariableOp_1ЂBN6_/ReadVariableOpЂBN6_/ReadVariableOp_1ЂCNN1_/BiasAdd/ReadVariableOpЂCNN1_/Conv2D/ReadVariableOpЂCNN2_/BiasAdd/ReadVariableOpЂCNN2_/Conv2D/ReadVariableOpЂCNN3_/BiasAdd/ReadVariableOpЂCNN3_/Conv2D/ReadVariableOpЂCNN4_/BiasAdd/ReadVariableOpЂCNN4_/Conv2D/ReadVariableOpЂCNN5_/BiasAdd/ReadVariableOpЂCNN5_/Conv2D/ReadVariableOpЂCNN6_/BiasAdd/ReadVariableOpЂCNN6_/Conv2D/ReadVariableOpЂFC1_/BiasAdd/ReadVariableOpЂFC1_/Tensordot/ReadVariableOpЇ
CNN1_/Conv2D/ReadVariableOpReadVariableOp$cnn1__conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
CNN1_/Conv2D/ReadVariableOpЖ
CNN1_/Conv2DConv2Dinputs#CNN1_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
CNN1_/Conv2D
CNN1_/BiasAdd/ReadVariableOpReadVariableOp%cnn1__biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
CNN1_/BiasAdd/ReadVariableOpЁ
CNN1_/BiasAddBiasAddCNN1_/Conv2D:output:0$CNN1_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2
CNN1_/BiasAdd
BN1_/ReadVariableOpReadVariableOpbn1__readvariableop_resource*
_output_shapes
:*
dtype02
BN1_/ReadVariableOp
BN1_/ReadVariableOp_1ReadVariableOpbn1__readvariableop_1_resource*
_output_shapes
:*
dtype02
BN1_/ReadVariableOp_1Ж
$BN1_/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn1__fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02&
$BN1_/FusedBatchNormV3/ReadVariableOpМ
&BN1_/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn1__fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02(
&BN1_/FusedBatchNormV3/ReadVariableOp_1
BN1_/FusedBatchNormV3FusedBatchNormV3CNN1_/BiasAdd:output:0BN1_/ReadVariableOp:value:0BN1_/ReadVariableOp_1:value:0,BN1_/FusedBatchNormV3/ReadVariableOp:value:0.BN1_/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ:::::*
epsilon%№'7*
exponential_avg_factor%
з#<2
BN1_/FusedBatchNormV3Ы
BN1_/AssignNewValueAssignVariableOp-bn1__fusedbatchnormv3_readvariableop_resource"BN1_/FusedBatchNormV3:batch_mean:0%^BN1_/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*@
_class6
42loc:@BN1_/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
BN1_/AssignNewValueй
BN1_/AssignNewValue_1AssignVariableOp/bn1__fusedbatchnormv3_readvariableop_1_resource&BN1_/FusedBatchNormV3:batch_variance:0'^BN1_/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*B
_class8
64loc:@BN1_/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
BN1_/AssignNewValue_1v

re_lu/ReluReluBN1_/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:џџџџџџџџџ2

re_lu/ReluС
max_pooling2d/MaxPoolMaxPoolre_lu/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolЇ
CNN2_/Conv2D/ReadVariableOpReadVariableOp$cnn2__conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
CNN2_/Conv2D/ReadVariableOpЮ
CNN2_/Conv2DConv2Dmax_pooling2d/MaxPool:output:0#CNN2_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
CNN2_/Conv2D
CNN2_/BiasAdd/ReadVariableOpReadVariableOp%cnn2__biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
CNN2_/BiasAdd/ReadVariableOpЁ
CNN2_/BiasAddBiasAddCNN2_/Conv2D:output:0$CNN2_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2
CNN2_/BiasAdd
BN2_/ReadVariableOpReadVariableOpbn2__readvariableop_resource*
_output_shapes
:*
dtype02
BN2_/ReadVariableOp
BN2_/ReadVariableOp_1ReadVariableOpbn2__readvariableop_1_resource*
_output_shapes
:*
dtype02
BN2_/ReadVariableOp_1Ж
$BN2_/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn2__fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02&
$BN2_/FusedBatchNormV3/ReadVariableOpМ
&BN2_/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn2__fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02(
&BN2_/FusedBatchNormV3/ReadVariableOp_1
BN2_/FusedBatchNormV3FusedBatchNormV3CNN2_/BiasAdd:output:0BN2_/ReadVariableOp:value:0BN2_/ReadVariableOp_1:value:0,BN2_/FusedBatchNormV3/ReadVariableOp:value:0.BN2_/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ:::::*
epsilon%№'7*
exponential_avg_factor%
з#<2
BN2_/FusedBatchNormV3Ы
BN2_/AssignNewValueAssignVariableOp-bn2__fusedbatchnormv3_readvariableop_resource"BN2_/FusedBatchNormV3:batch_mean:0%^BN2_/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*@
_class6
42loc:@BN2_/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
BN2_/AssignNewValueй
BN2_/AssignNewValue_1AssignVariableOp/bn2__fusedbatchnormv3_readvariableop_1_resource&BN2_/FusedBatchNormV3:batch_variance:0'^BN2_/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*B
_class8
64loc:@BN2_/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
BN2_/AssignNewValue_1z
re_lu_1/ReluReluBN2_/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:џџџџџџџџџ2
re_lu_1/ReluЧ
max_pooling2d_1/MaxPoolMaxPoolre_lu_1/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPoolЇ
CNN3_/Conv2D/ReadVariableOpReadVariableOp$cnn3__conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
CNN3_/Conv2D/ReadVariableOpа
CNN3_/Conv2DConv2D max_pooling2d_1/MaxPool:output:0#CNN3_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ *
paddingSAME*
strides
2
CNN3_/Conv2D
CNN3_/BiasAdd/ReadVariableOpReadVariableOp%cnn3__biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
CNN3_/BiasAdd/ReadVariableOpЁ
CNN3_/BiasAddBiasAddCNN3_/Conv2D:output:0$CNN3_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ 2
CNN3_/BiasAdd
BN3_/ReadVariableOpReadVariableOpbn3__readvariableop_resource*
_output_shapes
: *
dtype02
BN3_/ReadVariableOp
BN3_/ReadVariableOp_1ReadVariableOpbn3__readvariableop_1_resource*
_output_shapes
: *
dtype02
BN3_/ReadVariableOp_1Ж
$BN3_/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn3__fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02&
$BN3_/FusedBatchNormV3/ReadVariableOpМ
&BN3_/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn3__fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&BN3_/FusedBatchNormV3/ReadVariableOp_1
BN3_/FusedBatchNormV3FusedBatchNormV3CNN3_/BiasAdd:output:0BN3_/ReadVariableOp:value:0BN3_/ReadVariableOp_1:value:0,BN3_/FusedBatchNormV3/ReadVariableOp:value:0.BN3_/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ : : : : :*
epsilon%№'7*
exponential_avg_factor%
з#<2
BN3_/FusedBatchNormV3Ы
BN3_/AssignNewValueAssignVariableOp-bn3__fusedbatchnormv3_readvariableop_resource"BN3_/FusedBatchNormV3:batch_mean:0%^BN3_/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*@
_class6
42loc:@BN3_/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
BN3_/AssignNewValueй
BN3_/AssignNewValue_1AssignVariableOp/bn3__fusedbatchnormv3_readvariableop_1_resource&BN3_/FusedBatchNormV3:batch_variance:0'^BN3_/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*B
_class8
64loc:@BN3_/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
BN3_/AssignNewValue_1z
re_lu_2/ReluReluBN3_/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:џџџџџџџџџ 2
re_lu_2/ReluЧ
max_pooling2d_2/MaxPoolMaxPoolre_lu_2/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolЇ
CNN4_/Conv2D/ReadVariableOpReadVariableOp$cnn4__conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02
CNN4_/Conv2D/ReadVariableOpа
CNN4_/Conv2DConv2D max_pooling2d_2/MaxPool:output:0#CNN4_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0*
paddingSAME*
strides
2
CNN4_/Conv2D
CNN4_/BiasAdd/ReadVariableOpReadVariableOp%cnn4__biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
CNN4_/BiasAdd/ReadVariableOpЁ
CNN4_/BiasAddBiasAddCNN4_/Conv2D:output:0$CNN4_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ02
CNN4_/BiasAdd
BN4_/ReadVariableOpReadVariableOpbn4__readvariableop_resource*
_output_shapes
:0*
dtype02
BN4_/ReadVariableOp
BN4_/ReadVariableOp_1ReadVariableOpbn4__readvariableop_1_resource*
_output_shapes
:0*
dtype02
BN4_/ReadVariableOp_1Ж
$BN4_/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn4__fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02&
$BN4_/FusedBatchNormV3/ReadVariableOpМ
&BN4_/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn4__fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02(
&BN4_/FusedBatchNormV3/ReadVariableOp_1
BN4_/FusedBatchNormV3FusedBatchNormV3CNN4_/BiasAdd:output:0BN4_/ReadVariableOp:value:0BN4_/ReadVariableOp_1:value:0,BN4_/FusedBatchNormV3/ReadVariableOp:value:0.BN4_/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ0:0:0:0:0:*
epsilon%№'7*
exponential_avg_factor%
з#<2
BN4_/FusedBatchNormV3Ы
BN4_/AssignNewValueAssignVariableOp-bn4__fusedbatchnormv3_readvariableop_resource"BN4_/FusedBatchNormV3:batch_mean:0%^BN4_/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*@
_class6
42loc:@BN4_/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
BN4_/AssignNewValueй
BN4_/AssignNewValue_1AssignVariableOp/bn4__fusedbatchnormv3_readvariableop_1_resource&BN4_/FusedBatchNormV3:batch_variance:0'^BN4_/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*B
_class8
64loc:@BN4_/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
BN4_/AssignNewValue_1z
re_lu_3/ReluReluBN4_/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:џџџџџџџџџ02
re_lu_3/ReluЦ
max_pooling2d_3/MaxPoolMaxPoolre_lu_3/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@0*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPoolЇ
CNN5_/Conv2D/ReadVariableOpReadVariableOp$cnn5__conv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype02
CNN5_/Conv2D/ReadVariableOpЯ
CNN5_/Conv2DConv2D max_pooling2d_3/MaxPool:output:0#CNN5_/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@*
paddingSAME*
strides
2
CNN5_/Conv2D
CNN5_/BiasAdd/ReadVariableOpReadVariableOp%cnn5__biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
CNN5_/BiasAdd/ReadVariableOp 
CNN5_/BiasAddBiasAddCNN5_/Conv2D:output:0$CNN5_/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2
CNN5_/BiasAdd
BN5_/ReadVariableOpReadVariableOpbn5__readvariableop_resource*
_output_shapes
:@*
dtype02
BN5_/ReadVariableOp
BN5_/ReadVariableOp_1ReadVariableOpbn5__readvariableop_1_resource*
_output_shapes
:@*
dtype02
BN5_/ReadVariableOp_1Ж
$BN5_/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn5__fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02&
$BN5_/FusedBatchNormV3/ReadVariableOpМ
&BN5_/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn5__fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&BN5_/FusedBatchNormV3/ReadVariableOp_1
BN5_/FusedBatchNormV3FusedBatchNormV3CNN5_/BiasAdd:output:0BN5_/ReadVariableOp:value:0BN5_/ReadVariableOp_1:value:0,BN5_/FusedBatchNormV3/ReadVariableOp:value:0.BN5_/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ@@:@:@:@:@:*
epsilon%№'7*
exponential_avg_factor%
з#<2
BN5_/FusedBatchNormV3Ы
BN5_/AssignNewValueAssignVariableOp-bn5__fusedbatchnormv3_readvariableop_resource"BN5_/FusedBatchNormV3:batch_mean:0%^BN5_/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*@
_class6
42loc:@BN5_/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
BN5_/AssignNewValueй
BN5_/AssignNewValue_1AssignVariableOp/bn5__fusedbatchnormv3_readvariableop_1_resource&BN5_/FusedBatchNormV3:batch_variance:0'^BN5_/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*B
_class8
64loc:@BN5_/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
BN5_/AssignNewValue_1y
re_lu_4/ReluReluBN5_/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2
re_lu_4/ReluЦ
max_pooling2d_4/MaxPoolMaxPoolre_lu_4/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPoolЇ
CNN6_/Conv2D/ReadVariableOpReadVariableOp$cnn6__conv2d_readvariableop_resource*&
_output_shapes
:@`*
dtype02
CNN6_/Conv2D/ReadVariableOpЯ
CNN6_/Conv2DConv2D max_pooling2d_4/MaxPool:output:0#CNN6_/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ `*
paddingSAME*
strides
2
CNN6_/Conv2D
CNN6_/BiasAdd/ReadVariableOpReadVariableOp%cnn6__biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02
CNN6_/BiasAdd/ReadVariableOp 
CNN6_/BiasAddBiasAddCNN6_/Conv2D:output:0$CNN6_/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ `2
CNN6_/BiasAdd
BN6_/ReadVariableOpReadVariableOpbn6__readvariableop_resource*
_output_shapes
:`*
dtype02
BN6_/ReadVariableOp
BN6_/ReadVariableOp_1ReadVariableOpbn6__readvariableop_1_resource*
_output_shapes
:`*
dtype02
BN6_/ReadVariableOp_1Ж
$BN6_/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn6__fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02&
$BN6_/FusedBatchNormV3/ReadVariableOpМ
&BN6_/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn6__fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02(
&BN6_/FusedBatchNormV3/ReadVariableOp_1
BN6_/FusedBatchNormV3FusedBatchNormV3CNN6_/BiasAdd:output:0BN6_/ReadVariableOp:value:0BN6_/ReadVariableOp_1:value:0,BN6_/FusedBatchNormV3/ReadVariableOp:value:0.BN6_/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ `:`:`:`:`:*
epsilon%№'7*
exponential_avg_factor%
з#<2
BN6_/FusedBatchNormV3Ы
BN6_/AssignNewValueAssignVariableOp-bn6__fusedbatchnormv3_readvariableop_resource"BN6_/FusedBatchNormV3:batch_mean:0%^BN6_/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*@
_class6
42loc:@BN6_/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
BN6_/AssignNewValueй
BN6_/AssignNewValue_1AssignVariableOp/bn6__fusedbatchnormv3_readvariableop_1_resource&BN6_/FusedBatchNormV3:batch_variance:0'^BN6_/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*B
_class8
64loc:@BN6_/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
BN6_/AssignNewValue_1y
re_lu_5/ReluReluBN6_/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:џџџџџџџџџ `2
re_lu_5/Reluг
average_pooling2d/AvgPoolAvgPoolre_lu_5/Relu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ`*
ksize
 *
paddingVALID*
strides
2
average_pooling2d/AvgPool
FC1_preFlatten1/ShapeShape"average_pooling2d/AvgPool:output:0*
T0*
_output_shapes
:2
FC1_preFlatten1/Shape
#FC1_preFlatten1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#FC1_preFlatten1/strided_slice/stack
%FC1_preFlatten1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%FC1_preFlatten1/strided_slice/stack_1
%FC1_preFlatten1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%FC1_preFlatten1/strided_slice/stack_2Т
FC1_preFlatten1/strided_sliceStridedSliceFC1_preFlatten1/Shape:output:0,FC1_preFlatten1/strided_slice/stack:output:0.FC1_preFlatten1/strided_slice/stack_1:output:0.FC1_preFlatten1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
FC1_preFlatten1/strided_slice
FC1_preFlatten1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
FC1_preFlatten1/Reshape/shape/1
FC1_preFlatten1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2!
FC1_preFlatten1/Reshape/shape/2
FC1_preFlatten1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2!
FC1_preFlatten1/Reshape/shape/3
FC1_preFlatten1/Reshape/shapePack&FC1_preFlatten1/strided_slice:output:0(FC1_preFlatten1/Reshape/shape/1:output:0(FC1_preFlatten1/Reshape/shape/2:output:0(FC1_preFlatten1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
FC1_preFlatten1/Reshape/shapeУ
FC1_preFlatten1/ReshapeReshape"average_pooling2d/AvgPool:output:0&FC1_preFlatten1/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ`2
FC1_preFlatten1/ReshapeЅ
FC1_/Tensordot/ReadVariableOpReadVariableOp&fc1__tensordot_readvariableop_resource*
_output_shapes

:`*
dtype02
FC1_/Tensordot/ReadVariableOpt
FC1_/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
FC1_/Tensordot/axes
FC1_/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
FC1_/Tensordot/free|
FC1_/Tensordot/ShapeShape FC1_preFlatten1/Reshape:output:0*
T0*
_output_shapes
:2
FC1_/Tensordot/Shape~
FC1_/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
FC1_/Tensordot/GatherV2/axisъ
FC1_/Tensordot/GatherV2GatherV2FC1_/Tensordot/Shape:output:0FC1_/Tensordot/free:output:0%FC1_/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
FC1_/Tensordot/GatherV2
FC1_/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
FC1_/Tensordot/GatherV2_1/axis№
FC1_/Tensordot/GatherV2_1GatherV2FC1_/Tensordot/Shape:output:0FC1_/Tensordot/axes:output:0'FC1_/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
FC1_/Tensordot/GatherV2_1v
FC1_/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
FC1_/Tensordot/Const
FC1_/Tensordot/ProdProd FC1_/Tensordot/GatherV2:output:0FC1_/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
FC1_/Tensordot/Prodz
FC1_/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
FC1_/Tensordot/Const_1
FC1_/Tensordot/Prod_1Prod"FC1_/Tensordot/GatherV2_1:output:0FC1_/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
FC1_/Tensordot/Prod_1z
FC1_/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
FC1_/Tensordot/concat/axisЩ
FC1_/Tensordot/concatConcatV2FC1_/Tensordot/free:output:0FC1_/Tensordot/axes:output:0#FC1_/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
FC1_/Tensordot/concat 
FC1_/Tensordot/stackPackFC1_/Tensordot/Prod:output:0FC1_/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
FC1_/Tensordot/stackН
FC1_/Tensordot/transpose	Transpose FC1_preFlatten1/Reshape:output:0FC1_/Tensordot/concat:output:0*
T0*/
_output_shapes
:џџџџџџџџџ`2
FC1_/Tensordot/transposeГ
FC1_/Tensordot/ReshapeReshapeFC1_/Tensordot/transpose:y:0FC1_/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
FC1_/Tensordot/ReshapeВ
FC1_/Tensordot/MatMulMatMulFC1_/Tensordot/Reshape:output:0%FC1_/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
FC1_/Tensordot/MatMulz
FC1_/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
FC1_/Tensordot/Const_2~
FC1_/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
FC1_/Tensordot/concat_1/axisж
FC1_/Tensordot/concat_1ConcatV2 FC1_/Tensordot/GatherV2:output:0FC1_/Tensordot/Const_2:output:0%FC1_/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
FC1_/Tensordot/concat_1Ј
FC1_/TensordotReshapeFC1_/Tensordot/MatMul:product:0 FC1_/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
FC1_/Tensordot
FC1_/BiasAdd/ReadVariableOpReadVariableOp$fc1__biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
FC1_/BiasAdd/ReadVariableOp
FC1_/BiasAddBiasAddFC1_/Tensordot:output:0#FC1_/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2
FC1_/BiasAdd~
softmax/SoftmaxSoftmaxFC1_/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
softmax/Softmaxo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
flatten/Const
flatten/ReshapeReshapesoftmax/Softmax:softmax:0flatten/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
flatten/Reshape 
IdentityIdentityflatten/Reshape:output:0^BN1_/AssignNewValue^BN1_/AssignNewValue_1%^BN1_/FusedBatchNormV3/ReadVariableOp'^BN1_/FusedBatchNormV3/ReadVariableOp_1^BN1_/ReadVariableOp^BN1_/ReadVariableOp_1^BN2_/AssignNewValue^BN2_/AssignNewValue_1%^BN2_/FusedBatchNormV3/ReadVariableOp'^BN2_/FusedBatchNormV3/ReadVariableOp_1^BN2_/ReadVariableOp^BN2_/ReadVariableOp_1^BN3_/AssignNewValue^BN3_/AssignNewValue_1%^BN3_/FusedBatchNormV3/ReadVariableOp'^BN3_/FusedBatchNormV3/ReadVariableOp_1^BN3_/ReadVariableOp^BN3_/ReadVariableOp_1^BN4_/AssignNewValue^BN4_/AssignNewValue_1%^BN4_/FusedBatchNormV3/ReadVariableOp'^BN4_/FusedBatchNormV3/ReadVariableOp_1^BN4_/ReadVariableOp^BN4_/ReadVariableOp_1^BN5_/AssignNewValue^BN5_/AssignNewValue_1%^BN5_/FusedBatchNormV3/ReadVariableOp'^BN5_/FusedBatchNormV3/ReadVariableOp_1^BN5_/ReadVariableOp^BN5_/ReadVariableOp_1^BN6_/AssignNewValue^BN6_/AssignNewValue_1%^BN6_/FusedBatchNormV3/ReadVariableOp'^BN6_/FusedBatchNormV3/ReadVariableOp_1^BN6_/ReadVariableOp^BN6_/ReadVariableOp_1^CNN1_/BiasAdd/ReadVariableOp^CNN1_/Conv2D/ReadVariableOp^CNN2_/BiasAdd/ReadVariableOp^CNN2_/Conv2D/ReadVariableOp^CNN3_/BiasAdd/ReadVariableOp^CNN3_/Conv2D/ReadVariableOp^CNN4_/BiasAdd/ReadVariableOp^CNN4_/Conv2D/ReadVariableOp^CNN5_/BiasAdd/ReadVariableOp^CNN5_/Conv2D/ReadVariableOp^CNN6_/BiasAdd/ReadVariableOp^CNN6_/Conv2D/ReadVariableOp^FC1_/BiasAdd/ReadVariableOp^FC1_/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*Щ
_input_shapesЗ
Д:џџџџџџџџџ::::::::::::::::::::::::::::::::::::::2*
BN1_/AssignNewValueBN1_/AssignNewValue2.
BN1_/AssignNewValue_1BN1_/AssignNewValue_12L
$BN1_/FusedBatchNormV3/ReadVariableOp$BN1_/FusedBatchNormV3/ReadVariableOp2P
&BN1_/FusedBatchNormV3/ReadVariableOp_1&BN1_/FusedBatchNormV3/ReadVariableOp_12*
BN1_/ReadVariableOpBN1_/ReadVariableOp2.
BN1_/ReadVariableOp_1BN1_/ReadVariableOp_12*
BN2_/AssignNewValueBN2_/AssignNewValue2.
BN2_/AssignNewValue_1BN2_/AssignNewValue_12L
$BN2_/FusedBatchNormV3/ReadVariableOp$BN2_/FusedBatchNormV3/ReadVariableOp2P
&BN2_/FusedBatchNormV3/ReadVariableOp_1&BN2_/FusedBatchNormV3/ReadVariableOp_12*
BN2_/ReadVariableOpBN2_/ReadVariableOp2.
BN2_/ReadVariableOp_1BN2_/ReadVariableOp_12*
BN3_/AssignNewValueBN3_/AssignNewValue2.
BN3_/AssignNewValue_1BN3_/AssignNewValue_12L
$BN3_/FusedBatchNormV3/ReadVariableOp$BN3_/FusedBatchNormV3/ReadVariableOp2P
&BN3_/FusedBatchNormV3/ReadVariableOp_1&BN3_/FusedBatchNormV3/ReadVariableOp_12*
BN3_/ReadVariableOpBN3_/ReadVariableOp2.
BN3_/ReadVariableOp_1BN3_/ReadVariableOp_12*
BN4_/AssignNewValueBN4_/AssignNewValue2.
BN4_/AssignNewValue_1BN4_/AssignNewValue_12L
$BN4_/FusedBatchNormV3/ReadVariableOp$BN4_/FusedBatchNormV3/ReadVariableOp2P
&BN4_/FusedBatchNormV3/ReadVariableOp_1&BN4_/FusedBatchNormV3/ReadVariableOp_12*
BN4_/ReadVariableOpBN4_/ReadVariableOp2.
BN4_/ReadVariableOp_1BN4_/ReadVariableOp_12*
BN5_/AssignNewValueBN5_/AssignNewValue2.
BN5_/AssignNewValue_1BN5_/AssignNewValue_12L
$BN5_/FusedBatchNormV3/ReadVariableOp$BN5_/FusedBatchNormV3/ReadVariableOp2P
&BN5_/FusedBatchNormV3/ReadVariableOp_1&BN5_/FusedBatchNormV3/ReadVariableOp_12*
BN5_/ReadVariableOpBN5_/ReadVariableOp2.
BN5_/ReadVariableOp_1BN5_/ReadVariableOp_12*
BN6_/AssignNewValueBN6_/AssignNewValue2.
BN6_/AssignNewValue_1BN6_/AssignNewValue_12L
$BN6_/FusedBatchNormV3/ReadVariableOp$BN6_/FusedBatchNormV3/ReadVariableOp2P
&BN6_/FusedBatchNormV3/ReadVariableOp_1&BN6_/FusedBatchNormV3/ReadVariableOp_12*
BN6_/ReadVariableOpBN6_/ReadVariableOp2.
BN6_/ReadVariableOp_1BN6_/ReadVariableOp_12<
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
FC1_/BiasAdd/ReadVariableOpFC1_/BiasAdd/ReadVariableOp2>
FC1_/Tensordot/ReadVariableOpFC1_/Tensordot/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
К

>__inference_BN5__layer_call_and_return_conditional_losses_3931

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%№'7*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
ъ
с
>__inference_BN1__layer_call_and_return_conditional_losses_1459

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ы
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ:::::*
epsilon%№'7*
is_training( 2
FusedBatchNormV3л
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ќ
B
&__inference_softmax_layer_call_fn_4274

inputs
identityЧ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_softmax_layer_call_and_return_conditional_losses_21472
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
К

>__inference_BN2__layer_call_and_return_conditional_losses_3524

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%№'7*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ђ
y
$__inference_CNN6__layer_call_fn_4068

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ `*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN6__layer_call_and_return_conditional_losses_19712
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ `2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ @::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ @
 
_user_specified_nameinputs
Ќ
B
&__inference_re_lu_5_layer_call_fn_4206

inputs
identityЧ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ `* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_5_layer_call_and_return_conditional_losses_20652
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ `2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ `:W S
/
_output_shapes
:џџџџџџџџџ `
 
_user_specified_nameinputs
х	
и
?__inference_CNN5__layer_call_and_return_conditional_losses_1858

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ@@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ@0::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@0
 
_user_specified_nameinputs
г
]
A__inference_re_lu_3_layer_call_and_return_conditional_losses_1839

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:џџџџџџџџџ02
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ02

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ0:X T
0
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
­
р
=__inference_BN1__layer_call_and_return_conditional_losses_789

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1м
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%№'7*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
і
y
$__inference_CNN1__layer_call_fn_3283

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN1__layer_call_and_return_conditional_losses_14062
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
і

>__inference_BN3__layer_call_and_return_conditional_losses_1667

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1й
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ : : : : :*
epsilon%№'7*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1џ
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџ ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ў
с
>__inference_BN5__layer_call_and_return_conditional_losses_1253

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1м
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%№'7*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Я
]
A__inference_re_lu_5_layer_call_and_return_conditional_losses_2065

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:џџџџџџџџџ `2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ `2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ `:W S
/
_output_shapes
:џџџџџџџџџ `
 
_user_specified_nameinputs
і
y
$__inference_CNN4__layer_call_fn_3754

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN4__layer_call_and_return_conditional_losses_17452
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:џџџџџџџџџ02

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџ ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ЫХ
ц
?__inference_model_layer_call_and_return_conditional_losses_3102

inputs(
$cnn1__conv2d_readvariableop_resource)
%cnn1__biasadd_readvariableop_resource 
bn1__readvariableop_resource"
bn1__readvariableop_1_resource1
-bn1__fusedbatchnormv3_readvariableop_resource3
/bn1__fusedbatchnormv3_readvariableop_1_resource(
$cnn2__conv2d_readvariableop_resource)
%cnn2__biasadd_readvariableop_resource 
bn2__readvariableop_resource"
bn2__readvariableop_1_resource1
-bn2__fusedbatchnormv3_readvariableop_resource3
/bn2__fusedbatchnormv3_readvariableop_1_resource(
$cnn3__conv2d_readvariableop_resource)
%cnn3__biasadd_readvariableop_resource 
bn3__readvariableop_resource"
bn3__readvariableop_1_resource1
-bn3__fusedbatchnormv3_readvariableop_resource3
/bn3__fusedbatchnormv3_readvariableop_1_resource(
$cnn4__conv2d_readvariableop_resource)
%cnn4__biasadd_readvariableop_resource 
bn4__readvariableop_resource"
bn4__readvariableop_1_resource1
-bn4__fusedbatchnormv3_readvariableop_resource3
/bn4__fusedbatchnormv3_readvariableop_1_resource(
$cnn5__conv2d_readvariableop_resource)
%cnn5__biasadd_readvariableop_resource 
bn5__readvariableop_resource"
bn5__readvariableop_1_resource1
-bn5__fusedbatchnormv3_readvariableop_resource3
/bn5__fusedbatchnormv3_readvariableop_1_resource(
$cnn6__conv2d_readvariableop_resource)
%cnn6__biasadd_readvariableop_resource 
bn6__readvariableop_resource"
bn6__readvariableop_1_resource1
-bn6__fusedbatchnormv3_readvariableop_resource3
/bn6__fusedbatchnormv3_readvariableop_1_resource*
&fc1__tensordot_readvariableop_resource(
$fc1__biasadd_readvariableop_resource
identityЂ$BN1_/FusedBatchNormV3/ReadVariableOpЂ&BN1_/FusedBatchNormV3/ReadVariableOp_1ЂBN1_/ReadVariableOpЂBN1_/ReadVariableOp_1Ђ$BN2_/FusedBatchNormV3/ReadVariableOpЂ&BN2_/FusedBatchNormV3/ReadVariableOp_1ЂBN2_/ReadVariableOpЂBN2_/ReadVariableOp_1Ђ$BN3_/FusedBatchNormV3/ReadVariableOpЂ&BN3_/FusedBatchNormV3/ReadVariableOp_1ЂBN3_/ReadVariableOpЂBN3_/ReadVariableOp_1Ђ$BN4_/FusedBatchNormV3/ReadVariableOpЂ&BN4_/FusedBatchNormV3/ReadVariableOp_1ЂBN4_/ReadVariableOpЂBN4_/ReadVariableOp_1Ђ$BN5_/FusedBatchNormV3/ReadVariableOpЂ&BN5_/FusedBatchNormV3/ReadVariableOp_1ЂBN5_/ReadVariableOpЂBN5_/ReadVariableOp_1Ђ$BN6_/FusedBatchNormV3/ReadVariableOpЂ&BN6_/FusedBatchNormV3/ReadVariableOp_1ЂBN6_/ReadVariableOpЂBN6_/ReadVariableOp_1ЂCNN1_/BiasAdd/ReadVariableOpЂCNN1_/Conv2D/ReadVariableOpЂCNN2_/BiasAdd/ReadVariableOpЂCNN2_/Conv2D/ReadVariableOpЂCNN3_/BiasAdd/ReadVariableOpЂCNN3_/Conv2D/ReadVariableOpЂCNN4_/BiasAdd/ReadVariableOpЂCNN4_/Conv2D/ReadVariableOpЂCNN5_/BiasAdd/ReadVariableOpЂCNN5_/Conv2D/ReadVariableOpЂCNN6_/BiasAdd/ReadVariableOpЂCNN6_/Conv2D/ReadVariableOpЂFC1_/BiasAdd/ReadVariableOpЂFC1_/Tensordot/ReadVariableOpЇ
CNN1_/Conv2D/ReadVariableOpReadVariableOp$cnn1__conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
CNN1_/Conv2D/ReadVariableOpЖ
CNN1_/Conv2DConv2Dinputs#CNN1_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
CNN1_/Conv2D
CNN1_/BiasAdd/ReadVariableOpReadVariableOp%cnn1__biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
CNN1_/BiasAdd/ReadVariableOpЁ
CNN1_/BiasAddBiasAddCNN1_/Conv2D:output:0$CNN1_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2
CNN1_/BiasAdd
BN1_/ReadVariableOpReadVariableOpbn1__readvariableop_resource*
_output_shapes
:*
dtype02
BN1_/ReadVariableOp
BN1_/ReadVariableOp_1ReadVariableOpbn1__readvariableop_1_resource*
_output_shapes
:*
dtype02
BN1_/ReadVariableOp_1Ж
$BN1_/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn1__fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02&
$BN1_/FusedBatchNormV3/ReadVariableOpМ
&BN1_/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn1__fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02(
&BN1_/FusedBatchNormV3/ReadVariableOp_1љ
BN1_/FusedBatchNormV3FusedBatchNormV3CNN1_/BiasAdd:output:0BN1_/ReadVariableOp:value:0BN1_/ReadVariableOp_1:value:0,BN1_/FusedBatchNormV3/ReadVariableOp:value:0.BN1_/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ:::::*
epsilon%№'7*
is_training( 2
BN1_/FusedBatchNormV3v

re_lu/ReluReluBN1_/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:џџџџџџџџџ2

re_lu/ReluС
max_pooling2d/MaxPoolMaxPoolre_lu/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolЇ
CNN2_/Conv2D/ReadVariableOpReadVariableOp$cnn2__conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
CNN2_/Conv2D/ReadVariableOpЮ
CNN2_/Conv2DConv2Dmax_pooling2d/MaxPool:output:0#CNN2_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
CNN2_/Conv2D
CNN2_/BiasAdd/ReadVariableOpReadVariableOp%cnn2__biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
CNN2_/BiasAdd/ReadVariableOpЁ
CNN2_/BiasAddBiasAddCNN2_/Conv2D:output:0$CNN2_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2
CNN2_/BiasAdd
BN2_/ReadVariableOpReadVariableOpbn2__readvariableop_resource*
_output_shapes
:*
dtype02
BN2_/ReadVariableOp
BN2_/ReadVariableOp_1ReadVariableOpbn2__readvariableop_1_resource*
_output_shapes
:*
dtype02
BN2_/ReadVariableOp_1Ж
$BN2_/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn2__fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02&
$BN2_/FusedBatchNormV3/ReadVariableOpМ
&BN2_/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn2__fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02(
&BN2_/FusedBatchNormV3/ReadVariableOp_1љ
BN2_/FusedBatchNormV3FusedBatchNormV3CNN2_/BiasAdd:output:0BN2_/ReadVariableOp:value:0BN2_/ReadVariableOp_1:value:0,BN2_/FusedBatchNormV3/ReadVariableOp:value:0.BN2_/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ:::::*
epsilon%№'7*
is_training( 2
BN2_/FusedBatchNormV3z
re_lu_1/ReluReluBN2_/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:џџџџџџџџџ2
re_lu_1/ReluЧ
max_pooling2d_1/MaxPoolMaxPoolre_lu_1/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPoolЇ
CNN3_/Conv2D/ReadVariableOpReadVariableOp$cnn3__conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
CNN3_/Conv2D/ReadVariableOpа
CNN3_/Conv2DConv2D max_pooling2d_1/MaxPool:output:0#CNN3_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ *
paddingSAME*
strides
2
CNN3_/Conv2D
CNN3_/BiasAdd/ReadVariableOpReadVariableOp%cnn3__biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
CNN3_/BiasAdd/ReadVariableOpЁ
CNN3_/BiasAddBiasAddCNN3_/Conv2D:output:0$CNN3_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ 2
CNN3_/BiasAdd
BN3_/ReadVariableOpReadVariableOpbn3__readvariableop_resource*
_output_shapes
: *
dtype02
BN3_/ReadVariableOp
BN3_/ReadVariableOp_1ReadVariableOpbn3__readvariableop_1_resource*
_output_shapes
: *
dtype02
BN3_/ReadVariableOp_1Ж
$BN3_/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn3__fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02&
$BN3_/FusedBatchNormV3/ReadVariableOpМ
&BN3_/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn3__fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&BN3_/FusedBatchNormV3/ReadVariableOp_1љ
BN3_/FusedBatchNormV3FusedBatchNormV3CNN3_/BiasAdd:output:0BN3_/ReadVariableOp:value:0BN3_/ReadVariableOp_1:value:0,BN3_/FusedBatchNormV3/ReadVariableOp:value:0.BN3_/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ : : : : :*
epsilon%№'7*
is_training( 2
BN3_/FusedBatchNormV3z
re_lu_2/ReluReluBN3_/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:џџџџџџџџџ 2
re_lu_2/ReluЧ
max_pooling2d_2/MaxPoolMaxPoolre_lu_2/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolЇ
CNN4_/Conv2D/ReadVariableOpReadVariableOp$cnn4__conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02
CNN4_/Conv2D/ReadVariableOpа
CNN4_/Conv2DConv2D max_pooling2d_2/MaxPool:output:0#CNN4_/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ0*
paddingSAME*
strides
2
CNN4_/Conv2D
CNN4_/BiasAdd/ReadVariableOpReadVariableOp%cnn4__biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
CNN4_/BiasAdd/ReadVariableOpЁ
CNN4_/BiasAddBiasAddCNN4_/Conv2D:output:0$CNN4_/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ02
CNN4_/BiasAdd
BN4_/ReadVariableOpReadVariableOpbn4__readvariableop_resource*
_output_shapes
:0*
dtype02
BN4_/ReadVariableOp
BN4_/ReadVariableOp_1ReadVariableOpbn4__readvariableop_1_resource*
_output_shapes
:0*
dtype02
BN4_/ReadVariableOp_1Ж
$BN4_/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn4__fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02&
$BN4_/FusedBatchNormV3/ReadVariableOpМ
&BN4_/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn4__fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02(
&BN4_/FusedBatchNormV3/ReadVariableOp_1љ
BN4_/FusedBatchNormV3FusedBatchNormV3CNN4_/BiasAdd:output:0BN4_/ReadVariableOp:value:0BN4_/ReadVariableOp_1:value:0,BN4_/FusedBatchNormV3/ReadVariableOp:value:0.BN4_/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ0:0:0:0:0:*
epsilon%№'7*
is_training( 2
BN4_/FusedBatchNormV3z
re_lu_3/ReluReluBN4_/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:џџџџџџџџџ02
re_lu_3/ReluЦ
max_pooling2d_3/MaxPoolMaxPoolre_lu_3/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@0*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPoolЇ
CNN5_/Conv2D/ReadVariableOpReadVariableOp$cnn5__conv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype02
CNN5_/Conv2D/ReadVariableOpЯ
CNN5_/Conv2DConv2D max_pooling2d_3/MaxPool:output:0#CNN5_/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@*
paddingSAME*
strides
2
CNN5_/Conv2D
CNN5_/BiasAdd/ReadVariableOpReadVariableOp%cnn5__biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
CNN5_/BiasAdd/ReadVariableOp 
CNN5_/BiasAddBiasAddCNN5_/Conv2D:output:0$CNN5_/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2
CNN5_/BiasAdd
BN5_/ReadVariableOpReadVariableOpbn5__readvariableop_resource*
_output_shapes
:@*
dtype02
BN5_/ReadVariableOp
BN5_/ReadVariableOp_1ReadVariableOpbn5__readvariableop_1_resource*
_output_shapes
:@*
dtype02
BN5_/ReadVariableOp_1Ж
$BN5_/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn5__fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02&
$BN5_/FusedBatchNormV3/ReadVariableOpМ
&BN5_/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn5__fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&BN5_/FusedBatchNormV3/ReadVariableOp_1ј
BN5_/FusedBatchNormV3FusedBatchNormV3CNN5_/BiasAdd:output:0BN5_/ReadVariableOp:value:0BN5_/ReadVariableOp_1:value:0,BN5_/FusedBatchNormV3/ReadVariableOp:value:0.BN5_/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ@@:@:@:@:@:*
epsilon%№'7*
is_training( 2
BN5_/FusedBatchNormV3y
re_lu_4/ReluReluBN5_/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2
re_lu_4/ReluЦ
max_pooling2d_4/MaxPoolMaxPoolre_lu_4/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPoolЇ
CNN6_/Conv2D/ReadVariableOpReadVariableOp$cnn6__conv2d_readvariableop_resource*&
_output_shapes
:@`*
dtype02
CNN6_/Conv2D/ReadVariableOpЯ
CNN6_/Conv2DConv2D max_pooling2d_4/MaxPool:output:0#CNN6_/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ `*
paddingSAME*
strides
2
CNN6_/Conv2D
CNN6_/BiasAdd/ReadVariableOpReadVariableOp%cnn6__biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02
CNN6_/BiasAdd/ReadVariableOp 
CNN6_/BiasAddBiasAddCNN6_/Conv2D:output:0$CNN6_/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ `2
CNN6_/BiasAdd
BN6_/ReadVariableOpReadVariableOpbn6__readvariableop_resource*
_output_shapes
:`*
dtype02
BN6_/ReadVariableOp
BN6_/ReadVariableOp_1ReadVariableOpbn6__readvariableop_1_resource*
_output_shapes
:`*
dtype02
BN6_/ReadVariableOp_1Ж
$BN6_/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn6__fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02&
$BN6_/FusedBatchNormV3/ReadVariableOpМ
&BN6_/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn6__fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02(
&BN6_/FusedBatchNormV3/ReadVariableOp_1ј
BN6_/FusedBatchNormV3FusedBatchNormV3CNN6_/BiasAdd:output:0BN6_/ReadVariableOp:value:0BN6_/ReadVariableOp_1:value:0,BN6_/FusedBatchNormV3/ReadVariableOp:value:0.BN6_/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ `:`:`:`:`:*
epsilon%№'7*
is_training( 2
BN6_/FusedBatchNormV3y
re_lu_5/ReluReluBN6_/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:џџџџџџџџџ `2
re_lu_5/Reluг
average_pooling2d/AvgPoolAvgPoolre_lu_5/Relu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ`*
ksize
 *
paddingVALID*
strides
2
average_pooling2d/AvgPool
FC1_preFlatten1/ShapeShape"average_pooling2d/AvgPool:output:0*
T0*
_output_shapes
:2
FC1_preFlatten1/Shape
#FC1_preFlatten1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#FC1_preFlatten1/strided_slice/stack
%FC1_preFlatten1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%FC1_preFlatten1/strided_slice/stack_1
%FC1_preFlatten1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%FC1_preFlatten1/strided_slice/stack_2Т
FC1_preFlatten1/strided_sliceStridedSliceFC1_preFlatten1/Shape:output:0,FC1_preFlatten1/strided_slice/stack:output:0.FC1_preFlatten1/strided_slice/stack_1:output:0.FC1_preFlatten1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
FC1_preFlatten1/strided_slice
FC1_preFlatten1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
FC1_preFlatten1/Reshape/shape/1
FC1_preFlatten1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2!
FC1_preFlatten1/Reshape/shape/2
FC1_preFlatten1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2!
FC1_preFlatten1/Reshape/shape/3
FC1_preFlatten1/Reshape/shapePack&FC1_preFlatten1/strided_slice:output:0(FC1_preFlatten1/Reshape/shape/1:output:0(FC1_preFlatten1/Reshape/shape/2:output:0(FC1_preFlatten1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
FC1_preFlatten1/Reshape/shapeУ
FC1_preFlatten1/ReshapeReshape"average_pooling2d/AvgPool:output:0&FC1_preFlatten1/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ`2
FC1_preFlatten1/ReshapeЅ
FC1_/Tensordot/ReadVariableOpReadVariableOp&fc1__tensordot_readvariableop_resource*
_output_shapes

:`*
dtype02
FC1_/Tensordot/ReadVariableOpt
FC1_/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
FC1_/Tensordot/axes
FC1_/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
FC1_/Tensordot/free|
FC1_/Tensordot/ShapeShape FC1_preFlatten1/Reshape:output:0*
T0*
_output_shapes
:2
FC1_/Tensordot/Shape~
FC1_/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
FC1_/Tensordot/GatherV2/axisъ
FC1_/Tensordot/GatherV2GatherV2FC1_/Tensordot/Shape:output:0FC1_/Tensordot/free:output:0%FC1_/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
FC1_/Tensordot/GatherV2
FC1_/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
FC1_/Tensordot/GatherV2_1/axis№
FC1_/Tensordot/GatherV2_1GatherV2FC1_/Tensordot/Shape:output:0FC1_/Tensordot/axes:output:0'FC1_/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
FC1_/Tensordot/GatherV2_1v
FC1_/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
FC1_/Tensordot/Const
FC1_/Tensordot/ProdProd FC1_/Tensordot/GatherV2:output:0FC1_/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
FC1_/Tensordot/Prodz
FC1_/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
FC1_/Tensordot/Const_1
FC1_/Tensordot/Prod_1Prod"FC1_/Tensordot/GatherV2_1:output:0FC1_/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
FC1_/Tensordot/Prod_1z
FC1_/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
FC1_/Tensordot/concat/axisЩ
FC1_/Tensordot/concatConcatV2FC1_/Tensordot/free:output:0FC1_/Tensordot/axes:output:0#FC1_/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
FC1_/Tensordot/concat 
FC1_/Tensordot/stackPackFC1_/Tensordot/Prod:output:0FC1_/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
FC1_/Tensordot/stackН
FC1_/Tensordot/transpose	Transpose FC1_preFlatten1/Reshape:output:0FC1_/Tensordot/concat:output:0*
T0*/
_output_shapes
:џџџџџџџџџ`2
FC1_/Tensordot/transposeГ
FC1_/Tensordot/ReshapeReshapeFC1_/Tensordot/transpose:y:0FC1_/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
FC1_/Tensordot/ReshapeВ
FC1_/Tensordot/MatMulMatMulFC1_/Tensordot/Reshape:output:0%FC1_/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
FC1_/Tensordot/MatMulz
FC1_/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
FC1_/Tensordot/Const_2~
FC1_/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
FC1_/Tensordot/concat_1/axisж
FC1_/Tensordot/concat_1ConcatV2 FC1_/Tensordot/GatherV2:output:0FC1_/Tensordot/Const_2:output:0%FC1_/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
FC1_/Tensordot/concat_1Ј
FC1_/TensordotReshapeFC1_/Tensordot/MatMul:product:0 FC1_/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
FC1_/Tensordot
FC1_/BiasAdd/ReadVariableOpReadVariableOp$fc1__biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
FC1_/BiasAdd/ReadVariableOp
FC1_/BiasAddBiasAddFC1_/Tensordot:output:0#FC1_/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2
FC1_/BiasAdd~
softmax/SoftmaxSoftmaxFC1_/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
softmax/Softmaxo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
flatten/Const
flatten/ReshapeReshapesoftmax/Softmax:softmax:0flatten/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
flatten/Reshape

IdentityIdentityflatten/Reshape:output:0%^BN1_/FusedBatchNormV3/ReadVariableOp'^BN1_/FusedBatchNormV3/ReadVariableOp_1^BN1_/ReadVariableOp^BN1_/ReadVariableOp_1%^BN2_/FusedBatchNormV3/ReadVariableOp'^BN2_/FusedBatchNormV3/ReadVariableOp_1^BN2_/ReadVariableOp^BN2_/ReadVariableOp_1%^BN3_/FusedBatchNormV3/ReadVariableOp'^BN3_/FusedBatchNormV3/ReadVariableOp_1^BN3_/ReadVariableOp^BN3_/ReadVariableOp_1%^BN4_/FusedBatchNormV3/ReadVariableOp'^BN4_/FusedBatchNormV3/ReadVariableOp_1^BN4_/ReadVariableOp^BN4_/ReadVariableOp_1%^BN5_/FusedBatchNormV3/ReadVariableOp'^BN5_/FusedBatchNormV3/ReadVariableOp_1^BN5_/ReadVariableOp^BN5_/ReadVariableOp_1%^BN6_/FusedBatchNormV3/ReadVariableOp'^BN6_/FusedBatchNormV3/ReadVariableOp_1^BN6_/ReadVariableOp^BN6_/ReadVariableOp_1^CNN1_/BiasAdd/ReadVariableOp^CNN1_/Conv2D/ReadVariableOp^CNN2_/BiasAdd/ReadVariableOp^CNN2_/Conv2D/ReadVariableOp^CNN3_/BiasAdd/ReadVariableOp^CNN3_/Conv2D/ReadVariableOp^CNN4_/BiasAdd/ReadVariableOp^CNN4_/Conv2D/ReadVariableOp^CNN5_/BiasAdd/ReadVariableOp^CNN5_/Conv2D/ReadVariableOp^CNN6_/BiasAdd/ReadVariableOp^CNN6_/Conv2D/ReadVariableOp^FC1_/BiasAdd/ReadVariableOp^FC1_/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*Щ
_input_shapesЗ
Д:џџџџџџџџџ::::::::::::::::::::::::::::::::::::::2L
$BN1_/FusedBatchNormV3/ReadVariableOp$BN1_/FusedBatchNormV3/ReadVariableOp2P
&BN1_/FusedBatchNormV3/ReadVariableOp_1&BN1_/FusedBatchNormV3/ReadVariableOp_12*
BN1_/ReadVariableOpBN1_/ReadVariableOp2.
BN1_/ReadVariableOp_1BN1_/ReadVariableOp_12L
$BN2_/FusedBatchNormV3/ReadVariableOp$BN2_/FusedBatchNormV3/ReadVariableOp2P
&BN2_/FusedBatchNormV3/ReadVariableOp_1&BN2_/FusedBatchNormV3/ReadVariableOp_12*
BN2_/ReadVariableOpBN2_/ReadVariableOp2.
BN2_/ReadVariableOp_1BN2_/ReadVariableOp_12L
$BN3_/FusedBatchNormV3/ReadVariableOp$BN3_/FusedBatchNormV3/ReadVariableOp2P
&BN3_/FusedBatchNormV3/ReadVariableOp_1&BN3_/FusedBatchNormV3/ReadVariableOp_12*
BN3_/ReadVariableOpBN3_/ReadVariableOp2.
BN3_/ReadVariableOp_1BN3_/ReadVariableOp_12L
$BN4_/FusedBatchNormV3/ReadVariableOp$BN4_/FusedBatchNormV3/ReadVariableOp2P
&BN4_/FusedBatchNormV3/ReadVariableOp_1&BN4_/FusedBatchNormV3/ReadVariableOp_12*
BN4_/ReadVariableOpBN4_/ReadVariableOp2.
BN4_/ReadVariableOp_1BN4_/ReadVariableOp_12L
$BN5_/FusedBatchNormV3/ReadVariableOp$BN5_/FusedBatchNormV3/ReadVariableOp2P
&BN5_/FusedBatchNormV3/ReadVariableOp_1&BN5_/FusedBatchNormV3/ReadVariableOp_12*
BN5_/ReadVariableOpBN5_/ReadVariableOp2.
BN5_/ReadVariableOp_1BN5_/ReadVariableOp_12L
$BN6_/FusedBatchNormV3/ReadVariableOp$BN6_/FusedBatchNormV3/ReadVariableOp2P
&BN6_/FusedBatchNormV3/ReadVariableOp_1&BN6_/FusedBatchNormV3/ReadVariableOp_12*
BN6_/ReadVariableOpBN6_/ReadVariableOp2.
BN6_/ReadVariableOp_1BN6_/ReadVariableOp_12<
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
FC1_/BiasAdd/ReadVariableOpFC1_/BiasAdd/ReadVariableOp2>
FC1_/Tensordot/ReadVariableOpFC1_/Tensordot/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
З
]
A__inference_flatten_layer_call_and_return_conditional_losses_2161

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ђ

>__inference_BN6__layer_call_and_return_conditional_losses_2006

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1и
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ `:`:`:`:`:*
epsilon%№'7*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1ў
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:џџџџџџџџџ `2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ `::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџ `
 
_user_specified_nameinputs
Е

#__inference_BN4__layer_call_fn_3882

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN4__layer_call_and_return_conditional_losses_17982
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:џџџџџџџџџ02

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџ0::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
К

>__inference_BN6__layer_call_and_return_conditional_losses_1338

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`:`:`:`:`:*
epsilon%№'7*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
 
_user_specified_nameinputs
Е

#__inference_BN1__layer_call_fn_3411

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN1__layer_call_and_return_conditional_losses_14592
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџ::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
х	
и
?__inference_CNN6__layer_call_and_return_conditional_losses_4059

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@`*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ `*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ `2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ `2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ @
 
_user_specified_nameinputs
К

>__inference_BN4__layer_call_and_return_conditional_losses_3774

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0:0:0:0:0:*
epsilon%№'7*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ02

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0
 
_user_specified_nameinputs
Й

=__inference_BN1__layer_call_and_return_conditional_losses_758

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%№'7*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
оn
Н
?__inference_model_layer_call_and_return_conditional_losses_2389

inputs

cnn1__2284

cnn1__2286
	bn1__2289
	bn1__2291
	bn1__2293
	bn1__2295

cnn2__2300

cnn2__2302
	bn2__2305
	bn2__2307
	bn2__2309
	bn2__2311

cnn3__2316

cnn3__2318
	bn3__2321
	bn3__2323
	bn3__2325
	bn3__2327

cnn4__2332

cnn4__2334
	bn4__2337
	bn4__2339
	bn4__2341
	bn4__2343

cnn5__2348

cnn5__2350
	bn5__2353
	bn5__2355
	bn5__2357
	bn5__2359

cnn6__2364

cnn6__2366
	bn6__2369
	bn6__2371
	bn6__2373
	bn6__2375
	fc1__2381
	fc1__2383
identityЂBN1_/StatefulPartitionedCallЂBN2_/StatefulPartitionedCallЂBN3_/StatefulPartitionedCallЂBN4_/StatefulPartitionedCallЂBN5_/StatefulPartitionedCallЂBN6_/StatefulPartitionedCallЂCNN1_/StatefulPartitionedCallЂCNN2_/StatefulPartitionedCallЂCNN3_/StatefulPartitionedCallЂCNN4_/StatefulPartitionedCallЂCNN5_/StatefulPartitionedCallЂCNN6_/StatefulPartitionedCallЂFC1_/StatefulPartitionedCall
CNN1_/StatefulPartitionedCallStatefulPartitionedCallinputs
cnn1__2284
cnn1__2286*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN1__layer_call_and_return_conditional_losses_14062
CNN1_/StatefulPartitionedCallЛ
BN1_/StatefulPartitionedCallStatefulPartitionedCall&CNN1_/StatefulPartitionedCall:output:0	bn1__2289	bn1__2291	bn1__2293	bn1__2295*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN1__layer_call_and_return_conditional_losses_14412
BN1_/StatefulPartitionedCallё
re_lu/PartitionedCallPartitionedCall%BN1_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_re_lu_layer_call_and_return_conditional_losses_15002
re_lu/PartitionedCall
max_pooling2d/PartitionedCallPartitionedCallre_lu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_max_pooling2d_layer_call_and_return_conditional_losses_8062
max_pooling2d/PartitionedCallЈ
CNN2_/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0
cnn2__2300
cnn2__2302*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN2__layer_call_and_return_conditional_losses_15192
CNN2_/StatefulPartitionedCallЛ
BN2_/StatefulPartitionedCallStatefulPartitionedCall&CNN2_/StatefulPartitionedCall:output:0	bn2__2305	bn2__2307	bn2__2309	bn2__2311*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN2__layer_call_and_return_conditional_losses_15542
BN2_/StatefulPartitionedCallї
re_lu_1/PartitionedCallPartitionedCall%BN2_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_1_layer_call_and_return_conditional_losses_16132
re_lu_1/PartitionedCall
max_pooling2d_1/PartitionedCallPartitionedCall re_lu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_9222!
max_pooling2d_1/PartitionedCallЊ
CNN3_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0
cnn3__2316
cnn3__2318*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN3__layer_call_and_return_conditional_losses_16322
CNN3_/StatefulPartitionedCallЛ
BN3_/StatefulPartitionedCallStatefulPartitionedCall&CNN3_/StatefulPartitionedCall:output:0	bn3__2321	bn3__2323	bn3__2325	bn3__2327*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN3__layer_call_and_return_conditional_losses_16672
BN3_/StatefulPartitionedCallї
re_lu_2/PartitionedCallPartitionedCall%BN3_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_2_layer_call_and_return_conditional_losses_17262
re_lu_2/PartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCall re_lu_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_10382!
max_pooling2d_2/PartitionedCallЊ
CNN4_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0
cnn4__2332
cnn4__2334*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN4__layer_call_and_return_conditional_losses_17452
CNN4_/StatefulPartitionedCallЛ
BN4_/StatefulPartitionedCallStatefulPartitionedCall&CNN4_/StatefulPartitionedCall:output:0	bn4__2337	bn4__2339	bn4__2341	bn4__2343*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN4__layer_call_and_return_conditional_losses_17802
BN4_/StatefulPartitionedCallї
re_lu_3/PartitionedCallPartitionedCall%BN4_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_3_layer_call_and_return_conditional_losses_18392
re_lu_3/PartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCall re_lu_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_11542!
max_pooling2d_3/PartitionedCallЉ
CNN5_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0
cnn5__2348
cnn5__2350*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN5__layer_call_and_return_conditional_losses_18582
CNN5_/StatefulPartitionedCallК
BN5_/StatefulPartitionedCallStatefulPartitionedCall&CNN5_/StatefulPartitionedCall:output:0	bn5__2353	bn5__2355	bn5__2357	bn5__2359*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN5__layer_call_and_return_conditional_losses_18932
BN5_/StatefulPartitionedCallі
re_lu_4/PartitionedCallPartitionedCall%BN5_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_4_layer_call_and_return_conditional_losses_19522
re_lu_4/PartitionedCall
max_pooling2d_4/PartitionedCallPartitionedCall re_lu_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_12702!
max_pooling2d_4/PartitionedCallЉ
CNN6_/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0
cnn6__2364
cnn6__2366*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ `*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN6__layer_call_and_return_conditional_losses_19712
CNN6_/StatefulPartitionedCallК
BN6_/StatefulPartitionedCallStatefulPartitionedCall&CNN6_/StatefulPartitionedCall:output:0	bn6__2369	bn6__2371	bn6__2373	bn6__2375*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ `*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN6__layer_call_and_return_conditional_losses_20062
BN6_/StatefulPartitionedCallі
re_lu_5/PartitionedCallPartitionedCall%BN6_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ `* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_re_lu_5_layer_call_and_return_conditional_losses_20652
re_lu_5/PartitionedCall
!average_pooling2d/PartitionedCallPartitionedCall re_lu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_average_pooling2d_layer_call_and_return_conditional_losses_13862#
!average_pooling2d/PartitionedCall
FC1_preFlatten1/PartitionedCallPartitionedCall*average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_FC1_preFlatten1_layer_call_and_return_conditional_losses_20882!
FC1_preFlatten1/PartitionedCallЄ
FC1_/StatefulPartitionedCallStatefulPartitionedCall(FC1_preFlatten1/PartitionedCall:output:0	fc1__2381	fc1__2383*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_FC1__layer_call_and_return_conditional_losses_21262
FC1_/StatefulPartitionedCallі
softmax/PartitionedCallPartitionedCall%FC1_/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_softmax_layer_call_and_return_conditional_losses_21472
softmax/PartitionedCallщ
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
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_21612
flatten/PartitionedCall
IdentityIdentity flatten/PartitionedCall:output:0^BN1_/StatefulPartitionedCall^BN2_/StatefulPartitionedCall^BN3_/StatefulPartitionedCall^BN4_/StatefulPartitionedCall^BN5_/StatefulPartitionedCall^BN6_/StatefulPartitionedCall^CNN1_/StatefulPartitionedCall^CNN2_/StatefulPartitionedCall^CNN3_/StatefulPartitionedCall^CNN4_/StatefulPartitionedCall^CNN5_/StatefulPartitionedCall^CNN6_/StatefulPartitionedCall^FC1_/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*Щ
_input_shapesЗ
Д:џџџџџџџџџ::::::::::::::::::::::::::::::::::::::2<
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
ъ
с
>__inference_BN4__layer_call_and_return_conditional_losses_1798

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ы
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ0:0:0:0:0:*
epsilon%№'7*
is_training( 2
FusedBatchNormV3л
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:џџџџџџџџџ02

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџ0::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
ў
Џ
"__inference_signature_wrapper_2740
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36
identityЂStatefulPartitionedCallО
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
 !"#$%&*-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__wrapped_model_6962
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*Щ
_input_shapesЗ
Д:џџџџџџџџџ::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1
Е

#__inference_BN3__layer_call_fn_3661

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN3__layer_call_and_return_conditional_losses_16852
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџ ::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Г

#__inference_BN1__layer_call_fn_3398

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN1__layer_call_and_return_conditional_losses_14412
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџ::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ѓ
G
+__inference_max_pooling2d_layer_call_fn_812

inputs
identityч
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
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_max_pooling2d_layer_call_and_return_conditional_losses_8062
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
љ

#__inference_BN5__layer_call_fn_3975

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN5__layer_call_and_return_conditional_losses_12532
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

e
I__inference_FC1_preFlatten1_layer_call_and_return_conditional_losses_2088

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2m
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
Reshape/shape/3К
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ`2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ`2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ`:W S
/
_output_shapes
:џџџџџџџџџ`
 
_user_specified_nameinputs
Ќ
@
$__inference_re_lu_layer_call_fn_3421

inputs
identityЦ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_re_lu_layer_call_and_return_conditional_losses_15002
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
­
р
=__inference_BN2__layer_call_and_return_conditional_losses_905

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1м
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%№'7*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ў
с
>__inference_BN6__layer_call_and_return_conditional_losses_4106

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1м
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`:`:`:`:`:*
epsilon%№'7*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
 
_user_specified_nameinputs
ї

#__inference_BN5__layer_call_fn_3962

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN5__layer_call_and_return_conditional_losses_12222
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Ё
Б
$__inference_model_layer_call_fn_2657
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36
identityЂStatefulPartitionedCallп
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
 !"#$%&*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_25782
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*Щ
_input_shapesЗ
Д:џџџџџџџџџ::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1
Ў
с
>__inference_BN4__layer_call_and_return_conditional_losses_1137

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1м
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0:0:0:0:0:*
epsilon%№'7*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ02

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0
 
_user_specified_nameinputs
г
]
A__inference_re_lu_3_layer_call_and_return_conditional_losses_3887

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:џџџџџџџџџ02
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ02

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ0:X T
0
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
Б

#__inference_BN6__layer_call_fn_4196

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ `*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN6__layer_call_and_return_conditional_losses_20242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ `2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ `::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ `
 
_user_specified_nameinputs
з
]
A__inference_softmax_layer_call_and_return_conditional_losses_2147

inputs
identity_
SoftmaxSoftmaxinputs*
T0*/
_output_shapes
:џџџџџџџџџ2	
Softmaxm
IdentityIdentitySoftmax:softmax:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
К

>__inference_BN5__layer_call_and_return_conditional_losses_1222

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%№'7*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
љ

#__inference_BN6__layer_call_fn_4132

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN6__layer_call_and_return_conditional_losses_13692
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
 
_user_specified_nameinputs
Ў
с
>__inference_BN4__layer_call_and_return_conditional_losses_3792

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1м
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0:0:0:0:0:*
epsilon%№'7*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ02

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0
 
_user_specified_nameinputs
і

>__inference_BN2__layer_call_and_return_conditional_losses_1554

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1й
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ:::::*
epsilon%№'7*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1џ
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Я
]
A__inference_re_lu_4_layer_call_and_return_conditional_losses_1952

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:џџџџџџџџџ@@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@@:W S
/
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
ђ
y
$__inference_CNN5__layer_call_fn_3911

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_CNN5__layer_call_and_return_conditional_losses_18582
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ@@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ@0::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@0
 
_user_specified_nameinputs
Љ
J
.__inference_max_pooling2d_4_layer_call_fn_1276

inputs
identityъ
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
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_12702
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
З
]
A__inference_flatten_layer_call_and_return_conditional_losses_4280

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
г
]
A__inference_re_lu_2_layer_call_and_return_conditional_losses_1726

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:џџџџџџџџџ 2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ :X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ъ
с
>__inference_BN2__layer_call_and_return_conditional_losses_3478

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ы
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ:::::*
epsilon%№'7*
is_training( 2
FusedBatchNormV3л
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ђ

>__inference_BN5__layer_call_and_return_conditional_losses_1893

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1и
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ@@:@:@:@:@:*
epsilon%№'7*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1ў
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:џџџџџџџџџ@@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ@@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
і

>__inference_BN1__layer_call_and_return_conditional_losses_3367

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1й
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ:::::*
epsilon%№'7*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1џ
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ђ

>__inference_BN6__layer_call_and_return_conditional_losses_4152

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1и
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ `:`:`:`:`:*
epsilon%№'7*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1ў
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:џџџџџџџџџ `2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ `::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџ `
 
_user_specified_nameinputs

g
K__inference_average_pooling2d_layer_call_and_return_conditional_losses_1386

inputs
identityЖ
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
 *
paddingVALID*
strides
2	
AvgPool
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ъ
с
>__inference_BN4__layer_call_and_return_conditional_losses_3856

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ы
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџ0:0:0:0:0:*
epsilon%№'7*
is_training( 2
FusedBatchNormV3л
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:џџџџџџџџџ02

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџ0::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
Ў
с
>__inference_BN3__layer_call_and_return_conditional_losses_3699

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1м
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%№'7*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
љ

#__inference_BN3__layer_call_fn_3725

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_BN3__layer_call_and_return_conditional_losses_10212
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
ъ	
и
?__inference_CNN3__layer_call_and_return_conditional_losses_1632

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ 2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ў
d
H__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_922

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs"БL
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
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:ЌЬ
Йз
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
	optimizer
loss
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$
signatures
в_default_save_signature
г__call__
+д&call_and_return_all_conditional_losses"џЯ
_tf_keras_networkтЯ{"class_name": "Functional", "name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 1024, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "CNN1_", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [1, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "CNN1_", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BN1_", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN1_", "inbound_nodes": [[["CNN1_", 0, 0, {}]]]}, {"class_name": "ReLU", "config": {"name": "re_lu", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "name": "re_lu", "inbound_nodes": [[["BN1_", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d", "inbound_nodes": [[["re_lu", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "CNN2_", "trainable": true, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [1, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "CNN2_", "inbound_nodes": [[["max_pooling2d", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BN2_", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN2_", "inbound_nodes": [[["CNN2_", 0, 0, {}]]]}, {"class_name": "ReLU", "config": {"name": "re_lu_1", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "name": "re_lu_1", "inbound_nodes": [[["BN2_", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_1", "inbound_nodes": [[["re_lu_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "CNN3_", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "CNN3_", "inbound_nodes": [[["max_pooling2d_1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BN3_", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN3_", "inbound_nodes": [[["CNN3_", 0, 0, {}]]]}, {"class_name": "ReLU", "config": {"name": "re_lu_2", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "name": "re_lu_2", "inbound_nodes": [[["BN3_", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_2", "inbound_nodes": [[["re_lu_2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "CNN4_", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [1, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "CNN4_", "inbound_nodes": [[["max_pooling2d_2", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BN4_", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN4_", "inbound_nodes": [[["CNN4_", 0, 0, {}]]]}, {"class_name": "ReLU", "config": {"name": "re_lu_3", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "name": "re_lu_3", "inbound_nodes": [[["BN4_", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_3", "inbound_nodes": [[["re_lu_3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "CNN5_", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "CNN5_", "inbound_nodes": [[["max_pooling2d_3", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BN5_", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN5_", "inbound_nodes": [[["CNN5_", 0, 0, {}]]]}, {"class_name": "ReLU", "config": {"name": "re_lu_4", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "name": "re_lu_4", "inbound_nodes": [[["BN5_", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_4", "inbound_nodes": [[["re_lu_4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "CNN6_", "trainable": true, "dtype": "float32", "filters": 96, "kernel_size": {"class_name": "__tuple__", "items": [1, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "CNN6_", "inbound_nodes": [[["max_pooling2d_4", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BN6_", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN6_", "inbound_nodes": [[["CNN6_", 0, 0, {}]]]}, {"class_name": "ReLU", "config": {"name": "re_lu_5", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "name": "re_lu_5", "inbound_nodes": [[["BN6_", 0, 0, {}]]]}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 32]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 1]}, "data_format": "channels_last"}, "name": "average_pooling2d", "inbound_nodes": [[["re_lu_5", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "FC1_preFlatten1", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [1, 1, -1]}}, "name": "FC1_preFlatten1", "inbound_nodes": [[["average_pooling2d", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "FC1_", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "FC1_", "inbound_nodes": [[["FC1_preFlatten1", 0, 0, {}]]]}, {"class_name": "Softmax", "config": {"name": "softmax", "trainable": true, "dtype": "float32", "axis": -1}, "name": "softmax", "inbound_nodes": [[["FC1_", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["softmax", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["flatten", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1, 1024, 2]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 1024, 2]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 1024, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "CNN1_", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [1, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "CNN1_", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BN1_", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN1_", "inbound_nodes": [[["CNN1_", 0, 0, {}]]]}, {"class_name": "ReLU", "config": {"name": "re_lu", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "name": "re_lu", "inbound_nodes": [[["BN1_", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d", "inbound_nodes": [[["re_lu", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "CNN2_", "trainable": true, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [1, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "CNN2_", "inbound_nodes": [[["max_pooling2d", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BN2_", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN2_", "inbound_nodes": [[["CNN2_", 0, 0, {}]]]}, {"class_name": "ReLU", "config": {"name": "re_lu_1", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "name": "re_lu_1", "inbound_nodes": [[["BN2_", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_1", "inbound_nodes": [[["re_lu_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "CNN3_", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "CNN3_", "inbound_nodes": [[["max_pooling2d_1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BN3_", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN3_", "inbound_nodes": [[["CNN3_", 0, 0, {}]]]}, {"class_name": "ReLU", "config": {"name": "re_lu_2", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "name": "re_lu_2", "inbound_nodes": [[["BN3_", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_2", "inbound_nodes": [[["re_lu_2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "CNN4_", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [1, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "CNN4_", "inbound_nodes": [[["max_pooling2d_2", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BN4_", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN4_", "inbound_nodes": [[["CNN4_", 0, 0, {}]]]}, {"class_name": "ReLU", "config": {"name": "re_lu_3", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "name": "re_lu_3", "inbound_nodes": [[["BN4_", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_3", "inbound_nodes": [[["re_lu_3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "CNN5_", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "CNN5_", "inbound_nodes": [[["max_pooling2d_3", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BN5_", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN5_", "inbound_nodes": [[["CNN5_", 0, 0, {}]]]}, {"class_name": "ReLU", "config": {"name": "re_lu_4", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "name": "re_lu_4", "inbound_nodes": [[["BN5_", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_4", "inbound_nodes": [[["re_lu_4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "CNN6_", "trainable": true, "dtype": "float32", "filters": 96, "kernel_size": {"class_name": "__tuple__", "items": [1, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "CNN6_", "inbound_nodes": [[["max_pooling2d_4", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BN6_", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN6_", "inbound_nodes": [[["CNN6_", 0, 0, {}]]]}, {"class_name": "ReLU", "config": {"name": "re_lu_5", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "name": "re_lu_5", "inbound_nodes": [[["BN6_", 0, 0, {}]]]}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 32]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 1]}, "data_format": "channels_last"}, "name": "average_pooling2d", "inbound_nodes": [[["re_lu_5", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "FC1_preFlatten1", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [1, 1, -1]}}, "name": "FC1_preFlatten1", "inbound_nodes": [[["average_pooling2d", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "FC1_", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "FC1_", "inbound_nodes": [[["FC1_preFlatten1", 0, 0, {}]]]}, {"class_name": "Softmax", "config": {"name": "softmax", "trainable": true, "dtype": "float32", "axis": -1}, "name": "softmax", "inbound_nodes": [[["FC1_", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["softmax", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["flatten", 0, 0]]}}, "training_config": {"loss": null, "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.001, "decay": 0.0, "rho": 0.9, "momentum": 0.0, "epsilon": 1e-07, "centered": false}}}}
ћ"ј
_tf_keras_input_layerи{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 1024, 2]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 1024, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
я	

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
е__call__
+ж&call_and_return_all_conditional_losses"Ш
_tf_keras_layerЎ{"class_name": "Conv2D", "name": "CNN1_", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "CNN1_", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [1, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 2}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 1024, 2]}}
	
+axis
	,gamma
-beta
.moving_mean
/moving_variance
0	variables
1trainable_variables
2regularization_losses
3	keras_api
з__call__
+и&call_and_return_all_conditional_losses"Х
_tf_keras_layerЋ{"class_name": "BatchNormalization", "name": "BN1_", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "BN1_", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 1024, 16]}}
щ
4	variables
5trainable_variables
6regularization_losses
7	keras_api
й__call__
+к&call_and_return_all_conditional_losses"и
_tf_keras_layerО{"class_name": "ReLU", "name": "re_lu", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "re_lu", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}
§
8	variables
9trainable_variables
:regularization_losses
;	keras_api
л__call__
+м&call_and_return_all_conditional_losses"ь
_tf_keras_layerв{"class_name": "MaxPooling2D", "name": "max_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
№	

<kernel
=bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
н__call__
+о&call_and_return_all_conditional_losses"Щ
_tf_keras_layerЏ{"class_name": "Conv2D", "name": "CNN2_", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "CNN2_", "trainable": true, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [1, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 512, 16]}}
	
Baxis
	Cgamma
Dbeta
Emoving_mean
Fmoving_variance
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
п__call__
+р&call_and_return_all_conditional_losses"Ф
_tf_keras_layerЊ{"class_name": "BatchNormalization", "name": "BN2_", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "BN2_", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 24}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 512, 24]}}
э
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
с__call__
+т&call_and_return_all_conditional_losses"м
_tf_keras_layerТ{"class_name": "ReLU", "name": "re_lu_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "re_lu_1", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}

O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
у__call__
+ф&call_and_return_all_conditional_losses"№
_tf_keras_layerж{"class_name": "MaxPooling2D", "name": "max_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
№	

Skernel
Tbias
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
х__call__
+ц&call_and_return_all_conditional_losses"Щ
_tf_keras_layerЏ{"class_name": "Conv2D", "name": "CNN3_", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "CNN3_", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 24}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 256, 24]}}
	
Yaxis
	Zgamma
[beta
\moving_mean
]moving_variance
^	variables
_trainable_variables
`regularization_losses
a	keras_api
ч__call__
+ш&call_and_return_all_conditional_losses"Ф
_tf_keras_layerЊ{"class_name": "BatchNormalization", "name": "BN3_", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "BN3_", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 256, 32]}}
э
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
щ__call__
+ъ&call_and_return_all_conditional_losses"м
_tf_keras_layerТ{"class_name": "ReLU", "name": "re_lu_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "re_lu_2", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}

f	variables
gtrainable_variables
hregularization_losses
i	keras_api
ы__call__
+ь&call_and_return_all_conditional_losses"№
_tf_keras_layerж{"class_name": "MaxPooling2D", "name": "max_pooling2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
№	

jkernel
kbias
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
э__call__
+ю&call_and_return_all_conditional_losses"Щ
_tf_keras_layerЏ{"class_name": "Conv2D", "name": "CNN4_", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "CNN4_", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [1, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 128, 32]}}
	
paxis
	qgamma
rbeta
smoving_mean
tmoving_variance
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
я__call__
+№&call_and_return_all_conditional_losses"Ф
_tf_keras_layerЊ{"class_name": "BatchNormalization", "name": "BN4_", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "BN4_", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 48}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 128, 48]}}
э
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
ё__call__
+ђ&call_and_return_all_conditional_losses"м
_tf_keras_layerТ{"class_name": "ReLU", "name": "re_lu_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "re_lu_3", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}

}	variables
~trainable_variables
regularization_losses
	keras_api
ѓ__call__
+є&call_and_return_all_conditional_losses"№
_tf_keras_layerж{"class_name": "MaxPooling2D", "name": "max_pooling2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ѕ	
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
ѕ__call__
+і&call_and_return_all_conditional_losses"Ш
_tf_keras_layerЎ{"class_name": "Conv2D", "name": "CNN5_", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "CNN5_", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 48}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 64, 48]}}
Ђ	
	axis

gamma
	beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
	keras_api
ї__call__
+ј&call_and_return_all_conditional_losses"У
_tf_keras_layerЉ{"class_name": "BatchNormalization", "name": "BN5_", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "BN5_", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 64, 64]}}
ё
	variables
trainable_variables
regularization_losses
	keras_api
љ__call__
+њ&call_and_return_all_conditional_losses"м
_tf_keras_layerТ{"class_name": "ReLU", "name": "re_lu_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "re_lu_4", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}

	variables
trainable_variables
regularization_losses
	keras_api
ћ__call__
+ќ&call_and_return_all_conditional_losses"№
_tf_keras_layerж{"class_name": "MaxPooling2D", "name": "max_pooling2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ѕ	
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
§__call__
+ў&call_and_return_all_conditional_losses"Ш
_tf_keras_layerЎ{"class_name": "Conv2D", "name": "CNN6_", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "CNN6_", "trainable": true, "dtype": "float32", "filters": 96, "kernel_size": {"class_name": "__tuple__", "items": [1, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 32, 64]}}
Ђ	
	axis

gamma
	 beta
Ёmoving_mean
Ђmoving_variance
Ѓ	variables
Єtrainable_variables
Ѕregularization_losses
І	keras_api
џ__call__
+&call_and_return_all_conditional_losses"У
_tf_keras_layerЉ{"class_name": "BatchNormalization", "name": "BN6_", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "BN6_", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 96}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 32, 96]}}
ё
Ї	variables
Јtrainable_variables
Љregularization_losses
Њ	keras_api
__call__
+&call_and_return_all_conditional_losses"м
_tf_keras_layerТ{"class_name": "ReLU", "name": "re_lu_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "re_lu_5", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}

Ћ	variables
Ќtrainable_variables
­regularization_losses
Ў	keras_api
__call__
+&call_and_return_all_conditional_losses"љ
_tf_keras_layerп{"class_name": "AveragePooling2D", "name": "average_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "average_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 32]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 1]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}

Џ	variables
Аtrainable_variables
Бregularization_losses
В	keras_api
__call__
+&call_and_return_all_conditional_losses"ѕ
_tf_keras_layerл{"class_name": "Reshape", "name": "FC1_preFlatten1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "FC1_preFlatten1", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [1, 1, -1]}}}
њ
Гkernel
	Дbias
Е	variables
Жtrainable_variables
Зregularization_losses
И	keras_api
__call__
+&call_and_return_all_conditional_losses"Э
_tf_keras_layerГ{"class_name": "Dense", "name": "FC1_", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "FC1_", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 96}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 1, 96]}}
Ф
Й	variables
Кtrainable_variables
Лregularization_losses
М	keras_api
__call__
+&call_and_return_all_conditional_losses"Џ
_tf_keras_layer{"class_name": "Softmax", "name": "softmax", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "softmax", "trainable": true, "dtype": "float32", "axis": -1}}
ш
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
__call__
+&call_and_return_all_conditional_losses"г
_tf_keras_layerЙ{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
"
	optimizer
 "
trackable_dict_wrapper
д
%0
&1
,2
-3
.4
/5
<6
=7
C8
D9
E10
F11
S12
T13
Z14
[15
\16
]17
j18
k19
q20
r21
s22
t23
24
25
26
27
28
29
30
31
32
 33
Ё34
Ђ35
Г36
Д37"
trackable_list_wrapper
№
%0
&1
,2
-3
<4
=5
C6
D7
S8
T9
Z10
[11
j12
k13
q14
r15
16
17
18
19
20
21
22
 23
Г24
Д25"
trackable_list_wrapper
 "
trackable_list_wrapper
г
 	variables
!trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
Хnon_trainable_variables
"regularization_losses
г__call__
в_default_save_signature
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
&:$2CNN1_/kernel
:2
CNN1_/bias
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
'	variables
(trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
Ъnon_trainable_variables
)regularization_losses
е__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:2
BN1_/gamma
:2	BN1_/beta
 : (2BN1_/moving_mean
$:" (2BN1_/moving_variance
<
,0
-1
.2
/3"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
0	variables
1trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
Яnon_trainable_variables
2regularization_losses
з__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
4	variables
5trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
дnon_trainable_variables
6regularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
8	variables
9trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
йnon_trainable_variables
:regularization_losses
л__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses"
_generic_user_object
&:$2CNN2_/kernel
:2
CNN2_/bias
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
>	variables
?trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
оnon_trainable_variables
@regularization_losses
н__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:2
BN2_/gamma
:2	BN2_/beta
 : (2BN2_/moving_mean
$:" (2BN2_/moving_variance
<
C0
D1
E2
F3"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
G	variables
Htrainable_variables
пlayers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
уnon_trainable_variables
Iregularization_losses
п__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
K	variables
Ltrainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
шnon_trainable_variables
Mregularization_losses
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
O	variables
Ptrainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
эnon_trainable_variables
Qregularization_losses
у__call__
+ф&call_and_return_all_conditional_losses
'ф"call_and_return_conditional_losses"
_generic_user_object
&:$ 2CNN3_/kernel
: 2
CNN3_/bias
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
U	variables
Vtrainable_variables
юlayers
яmetrics
 №layer_regularization_losses
ёlayer_metrics
ђnon_trainable_variables
Wregularization_losses
х__call__
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
: 2
BN3_/gamma
: 2	BN3_/beta
 :  (2BN3_/moving_mean
$:"  (2BN3_/moving_variance
<
Z0
[1
\2
]3"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
^	variables
_trainable_variables
ѓlayers
єmetrics
 ѕlayer_regularization_losses
іlayer_metrics
їnon_trainable_variables
`regularization_losses
ч__call__
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
b	variables
ctrainable_variables
јlayers
љmetrics
 њlayer_regularization_losses
ћlayer_metrics
ќnon_trainable_variables
dregularization_losses
щ__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
f	variables
gtrainable_variables
§layers
ўmetrics
 џlayer_regularization_losses
layer_metrics
non_trainable_variables
hregularization_losses
ы__call__
+ь&call_and_return_all_conditional_losses
'ь"call_and_return_conditional_losses"
_generic_user_object
&:$ 02CNN4_/kernel
:02
CNN4_/bias
.
j0
k1"
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
l	variables
mtrainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
non_trainable_variables
nregularization_losses
э__call__
+ю&call_and_return_all_conditional_losses
'ю"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:02
BN4_/gamma
:02	BN4_/beta
 :0 (2BN4_/moving_mean
$:"0 (2BN4_/moving_variance
<
q0
r1
s2
t3"
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
u	variables
vtrainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
non_trainable_variables
wregularization_losses
я__call__
+№&call_and_return_all_conditional_losses
'№"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
y	variables
ztrainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
non_trainable_variables
{regularization_losses
ё__call__
+ђ&call_and_return_all_conditional_losses
'ђ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
}	variables
~trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
non_trainable_variables
regularization_losses
ѓ__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
&:$0@2CNN5_/kernel
:@2
CNN5_/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
	variables
trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
non_trainable_variables
regularization_losses
ѕ__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:@2
BN5_/gamma
:@2	BN5_/beta
 :@ (2BN5_/moving_mean
$:"@ (2BN5_/moving_variance
@
0
1
2
3"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
	variables
trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
non_trainable_variables
regularization_losses
ї__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
	variables
trainable_variables
 layers
Ёmetrics
 Ђlayer_regularization_losses
Ѓlayer_metrics
Єnon_trainable_variables
regularization_losses
љ__call__
+њ&call_and_return_all_conditional_losses
'њ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
	variables
trainable_variables
Ѕlayers
Іmetrics
 Їlayer_regularization_losses
Јlayer_metrics
Љnon_trainable_variables
regularization_losses
ћ__call__
+ќ&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses"
_generic_user_object
&:$@`2CNN6_/kernel
:`2
CNN6_/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
	variables
trainable_variables
Њlayers
Ћmetrics
 Ќlayer_regularization_losses
­layer_metrics
Ўnon_trainable_variables
regularization_losses
§__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:`2
BN6_/gamma
:`2	BN6_/beta
 :` (2BN6_/moving_mean
$:"` (2BN6_/moving_variance
@
0
 1
Ё2
Ђ3"
trackable_list_wrapper
0
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ѓ	variables
Єtrainable_variables
Џlayers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
Гnon_trainable_variables
Ѕregularization_losses
џ__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ї	variables
Јtrainable_variables
Дlayers
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
Иnon_trainable_variables
Љregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ћ	variables
Ќtrainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
Нnon_trainable_variables
­regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Џ	variables
Аtrainable_variables
Оlayers
Пmetrics
 Рlayer_regularization_losses
Сlayer_metrics
Тnon_trainable_variables
Бregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:`2FC1_/kernel
:2	FC1_/bias
0
Г0
Д1"
trackable_list_wrapper
0
Г0
Д1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Е	variables
Жtrainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
Чnon_trainable_variables
Зregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Й	variables
Кtrainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
Ьnon_trainable_variables
Лregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Н	variables
Оtrainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
бnon_trainable_variables
Пregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
z
.0
/1
E2
F3
\4
]5
s6
t7
8
9
Ё10
Ђ11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
.
s0
t1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
0
Ё0
Ђ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
х2т
__inference__wrapped_model_696П
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ */Ђ,
*'
input_1џџџџџџџџџ
о2л
$__inference_model_layer_call_fn_3183
$__inference_model_layer_call_fn_2468
$__inference_model_layer_call_fn_2657
$__inference_model_layer_call_fn_3264Р
ЗВГ
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

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ъ2Ч
?__inference_model_layer_call_and_return_conditional_losses_2278
?__inference_model_layer_call_and_return_conditional_losses_3102
?__inference_model_layer_call_and_return_conditional_losses_2927
?__inference_model_layer_call_and_return_conditional_losses_2170Р
ЗВГ
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

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ю2Ы
$__inference_CNN1__layer_call_fn_3283Ђ
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
щ2ц
?__inference_CNN1__layer_call_and_return_conditional_losses_3274Ђ
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
Ю2Ы
#__inference_BN1__layer_call_fn_3334
#__inference_BN1__layer_call_fn_3347
#__inference_BN1__layer_call_fn_3398
#__inference_BN1__layer_call_fn_3411Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
К2З
>__inference_BN1__layer_call_and_return_conditional_losses_3385
>__inference_BN1__layer_call_and_return_conditional_losses_3303
>__inference_BN1__layer_call_and_return_conditional_losses_3367
>__inference_BN1__layer_call_and_return_conditional_losses_3321Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ю2Ы
$__inference_re_lu_layer_call_fn_3421Ђ
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
щ2ц
?__inference_re_lu_layer_call_and_return_conditional_losses_3416Ђ
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
2
+__inference_max_pooling2d_layer_call_fn_812р
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ў2Ћ
F__inference_max_pooling2d_layer_call_and_return_conditional_losses_806р
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ю2Ы
$__inference_CNN2__layer_call_fn_3440Ђ
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
щ2ц
?__inference_CNN2__layer_call_and_return_conditional_losses_3431Ђ
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
Ю2Ы
#__inference_BN2__layer_call_fn_3555
#__inference_BN2__layer_call_fn_3568
#__inference_BN2__layer_call_fn_3491
#__inference_BN2__layer_call_fn_3504Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
К2З
>__inference_BN2__layer_call_and_return_conditional_losses_3524
>__inference_BN2__layer_call_and_return_conditional_losses_3542
>__inference_BN2__layer_call_and_return_conditional_losses_3460
>__inference_BN2__layer_call_and_return_conditional_losses_3478Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
а2Э
&__inference_re_lu_1_layer_call_fn_3578Ђ
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
ы2ш
A__inference_re_lu_1_layer_call_and_return_conditional_losses_3573Ђ
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
2
-__inference_max_pooling2d_1_layer_call_fn_928р
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
А2­
H__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_922р
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ю2Ы
$__inference_CNN3__layer_call_fn_3597Ђ
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
щ2ц
?__inference_CNN3__layer_call_and_return_conditional_losses_3588Ђ
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
Ю2Ы
#__inference_BN3__layer_call_fn_3712
#__inference_BN3__layer_call_fn_3661
#__inference_BN3__layer_call_fn_3648
#__inference_BN3__layer_call_fn_3725Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
К2З
>__inference_BN3__layer_call_and_return_conditional_losses_3617
>__inference_BN3__layer_call_and_return_conditional_losses_3699
>__inference_BN3__layer_call_and_return_conditional_losses_3681
>__inference_BN3__layer_call_and_return_conditional_losses_3635Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
а2Э
&__inference_re_lu_2_layer_call_fn_3735Ђ
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
ы2ш
A__inference_re_lu_2_layer_call_and_return_conditional_losses_3730Ђ
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
2
.__inference_max_pooling2d_2_layer_call_fn_1044р
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Б2Ў
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1038р
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ю2Ы
$__inference_CNN4__layer_call_fn_3754Ђ
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
щ2ц
?__inference_CNN4__layer_call_and_return_conditional_losses_3745Ђ
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
Ю2Ы
#__inference_BN4__layer_call_fn_3818
#__inference_BN4__layer_call_fn_3805
#__inference_BN4__layer_call_fn_3882
#__inference_BN4__layer_call_fn_3869Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
К2З
>__inference_BN4__layer_call_and_return_conditional_losses_3856
>__inference_BN4__layer_call_and_return_conditional_losses_3792
>__inference_BN4__layer_call_and_return_conditional_losses_3774
>__inference_BN4__layer_call_and_return_conditional_losses_3838Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
а2Э
&__inference_re_lu_3_layer_call_fn_3892Ђ
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
ы2ш
A__inference_re_lu_3_layer_call_and_return_conditional_losses_3887Ђ
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
2
.__inference_max_pooling2d_3_layer_call_fn_1160р
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Б2Ў
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1154р
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ю2Ы
$__inference_CNN5__layer_call_fn_3911Ђ
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
щ2ц
?__inference_CNN5__layer_call_and_return_conditional_losses_3902Ђ
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
Ю2Ы
#__inference_BN5__layer_call_fn_3962
#__inference_BN5__layer_call_fn_4026
#__inference_BN5__layer_call_fn_3975
#__inference_BN5__layer_call_fn_4039Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
К2З
>__inference_BN5__layer_call_and_return_conditional_losses_3949
>__inference_BN5__layer_call_and_return_conditional_losses_3931
>__inference_BN5__layer_call_and_return_conditional_losses_4013
>__inference_BN5__layer_call_and_return_conditional_losses_3995Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
а2Э
&__inference_re_lu_4_layer_call_fn_4049Ђ
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
ы2ш
A__inference_re_lu_4_layer_call_and_return_conditional_losses_4044Ђ
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
2
.__inference_max_pooling2d_4_layer_call_fn_1276р
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Б2Ў
I__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1270р
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ю2Ы
$__inference_CNN6__layer_call_fn_4068Ђ
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
щ2ц
?__inference_CNN6__layer_call_and_return_conditional_losses_4059Ђ
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
Ю2Ы
#__inference_BN6__layer_call_fn_4132
#__inference_BN6__layer_call_fn_4196
#__inference_BN6__layer_call_fn_4119
#__inference_BN6__layer_call_fn_4183Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
К2З
>__inference_BN6__layer_call_and_return_conditional_losses_4088
>__inference_BN6__layer_call_and_return_conditional_losses_4106
>__inference_BN6__layer_call_and_return_conditional_losses_4152
>__inference_BN6__layer_call_and_return_conditional_losses_4170Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
а2Э
&__inference_re_lu_5_layer_call_fn_4206Ђ
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
ы2ш
A__inference_re_lu_5_layer_call_and_return_conditional_losses_4201Ђ
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
2
0__inference_average_pooling2d_layer_call_fn_1392р
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Г2А
K__inference_average_pooling2d_layer_call_and_return_conditional_losses_1386р
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
и2е
.__inference_FC1_preFlatten1_layer_call_fn_4225Ђ
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
ѓ2№
I__inference_FC1_preFlatten1_layer_call_and_return_conditional_losses_4220Ђ
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
Э2Ъ
#__inference_FC1__layer_call_fn_4264Ђ
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
ш2х
>__inference_FC1__layer_call_and_return_conditional_losses_4255Ђ
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
н2к
&__inference_softmax_layer_call_fn_4274Џ
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
ј2ѕ
A__inference_softmax_layer_call_and_return_conditional_losses_4269Џ
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
а2Э
&__inference_flatten_layer_call_fn_4285Ђ
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
ы2ш
A__inference_flatten_layer_call_and_return_conditional_losses_4280Ђ
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
ЩBЦ
"__inference_signature_wrapper_2740input_1"
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
 й
>__inference_BN1__layer_call_and_return_conditional_losses_3303,-./MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 й
>__inference_BN1__layer_call_and_return_conditional_losses_3321,-./MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ж
>__inference_BN1__layer_call_and_return_conditional_losses_3367t,-./<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ
p
Њ ".Ђ+
$!
0џџџџџџџџџ
 Ж
>__inference_BN1__layer_call_and_return_conditional_losses_3385t,-./<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ
p 
Њ ".Ђ+
$!
0џџџџџџџџџ
 Б
#__inference_BN1__layer_call_fn_3334,-./MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџБ
#__inference_BN1__layer_call_fn_3347,-./MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
#__inference_BN1__layer_call_fn_3398g,-./<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ
p
Њ "!џџџџџџџџџ
#__inference_BN1__layer_call_fn_3411g,-./<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ
p 
Њ "!џџџџџџџџџЖ
>__inference_BN2__layer_call_and_return_conditional_losses_3460tCDEF<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ
p
Њ ".Ђ+
$!
0џџџџџџџџџ
 Ж
>__inference_BN2__layer_call_and_return_conditional_losses_3478tCDEF<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ
p 
Њ ".Ђ+
$!
0џџџџџџџџџ
 й
>__inference_BN2__layer_call_and_return_conditional_losses_3524CDEFMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 й
>__inference_BN2__layer_call_and_return_conditional_losses_3542CDEFMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
#__inference_BN2__layer_call_fn_3491gCDEF<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ
p
Њ "!џџџџџџџџџ
#__inference_BN2__layer_call_fn_3504gCDEF<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ
p 
Њ "!џџџџџџџџџБ
#__inference_BN2__layer_call_fn_3555CDEFMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџБ
#__inference_BN2__layer_call_fn_3568CDEFMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџЖ
>__inference_BN3__layer_call_and_return_conditional_losses_3617tZ[\]<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ 
p
Њ ".Ђ+
$!
0џџџџџџџџџ 
 Ж
>__inference_BN3__layer_call_and_return_conditional_losses_3635tZ[\]<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ 
p 
Њ ".Ђ+
$!
0џџџџџџџџџ 
 й
>__inference_BN3__layer_call_and_return_conditional_losses_3681Z[\]MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 й
>__inference_BN3__layer_call_and_return_conditional_losses_3699Z[\]MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
#__inference_BN3__layer_call_fn_3648gZ[\]<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ 
p
Њ "!џџџџџџџџџ 
#__inference_BN3__layer_call_fn_3661gZ[\]<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ 
p 
Њ "!џџџџџџџџџ Б
#__inference_BN3__layer_call_fn_3712Z[\]MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ Б
#__inference_BN3__layer_call_fn_3725Z[\]MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ й
>__inference_BN4__layer_call_and_return_conditional_losses_3774qrstMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0
 й
>__inference_BN4__layer_call_and_return_conditional_losses_3792qrstMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0
 Ж
>__inference_BN4__layer_call_and_return_conditional_losses_3838tqrst<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ0
p
Њ ".Ђ+
$!
0џџџџџџџџџ0
 Ж
>__inference_BN4__layer_call_and_return_conditional_losses_3856tqrst<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ0
p 
Њ ".Ђ+
$!
0џџџџџџџџџ0
 Б
#__inference_BN4__layer_call_fn_3805qrstMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0Б
#__inference_BN4__layer_call_fn_3818qrstMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0
#__inference_BN4__layer_call_fn_3869gqrst<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ0
p
Њ "!џџџџџџџџџ0
#__inference_BN4__layer_call_fn_3882gqrst<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ0
p 
Њ "!џџџџџџџџџ0н
>__inference_BN5__layer_call_and_return_conditional_losses_3931MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 н
>__inference_BN5__layer_call_and_return_conditional_losses_3949MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 И
>__inference_BN5__layer_call_and_return_conditional_losses_3995v;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ@@
p
Њ "-Ђ*
# 
0џџџџџџџџџ@@
 И
>__inference_BN5__layer_call_and_return_conditional_losses_4013v;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ@@
p 
Њ "-Ђ*
# 
0џџџџџџџџџ@@
 Е
#__inference_BN5__layer_call_fn_3962MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@Е
#__inference_BN5__layer_call_fn_3975MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
#__inference_BN5__layer_call_fn_4026i;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ@@
p
Њ " џџџџџџџџџ@@
#__inference_BN5__layer_call_fn_4039i;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ@@
p 
Њ " џџџџџџџџџ@@н
>__inference_BN6__layer_call_and_return_conditional_losses_4088 ЁЂMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
 н
>__inference_BN6__layer_call_and_return_conditional_losses_4106 ЁЂMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
 И
>__inference_BN6__layer_call_and_return_conditional_losses_4152v ЁЂ;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ `
p
Њ "-Ђ*
# 
0џџџџџџџџџ `
 И
>__inference_BN6__layer_call_and_return_conditional_losses_4170v ЁЂ;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ `
p 
Њ "-Ђ*
# 
0џџџџџџџџџ `
 Е
#__inference_BN6__layer_call_fn_4119 ЁЂMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`Е
#__inference_BN6__layer_call_fn_4132 ЁЂMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
#__inference_BN6__layer_call_fn_4183i ЁЂ;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ `
p
Њ " џџџџџџџџџ `
#__inference_BN6__layer_call_fn_4196i ЁЂ;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ `
p 
Њ " џџџџџџџџџ `Б
?__inference_CNN1__layer_call_and_return_conditional_losses_3274n%&8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ ".Ђ+
$!
0џџџџџџџџџ
 
$__inference_CNN1__layer_call_fn_3283a%&8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "!џџџџџџџџџБ
?__inference_CNN2__layer_call_and_return_conditional_losses_3431n<=8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ ".Ђ+
$!
0џџџџџџџџџ
 
$__inference_CNN2__layer_call_fn_3440a<=8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "!џџџџџџџџџБ
?__inference_CNN3__layer_call_and_return_conditional_losses_3588nST8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ ".Ђ+
$!
0џџџџџџџџџ 
 
$__inference_CNN3__layer_call_fn_3597aST8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "!џџџџџџџџџ Б
?__inference_CNN4__layer_call_and_return_conditional_losses_3745njk8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ 
Њ ".Ђ+
$!
0џџџџџџџџџ0
 
$__inference_CNN4__layer_call_fn_3754ajk8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ 
Њ "!џџџџџџџџџ0Б
?__inference_CNN5__layer_call_and_return_conditional_losses_3902n7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@0
Њ "-Ђ*
# 
0џџџџџџџџџ@@
 
$__inference_CNN5__layer_call_fn_3911a7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@0
Њ " џџџџџџџџџ@@Б
?__inference_CNN6__layer_call_and_return_conditional_losses_4059n7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ @
Њ "-Ђ*
# 
0џџџџџџџџџ `
 
$__inference_CNN6__layer_call_fn_4068a7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ @
Њ " џџџџџџџџџ `А
>__inference_FC1__layer_call_and_return_conditional_losses_4255nГД7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ`
Њ "-Ђ*
# 
0џџџџџџџџџ
 
#__inference_FC1__layer_call_fn_4264aГД7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ`
Њ " џџџџџџџџџЕ
I__inference_FC1_preFlatten1_layer_call_and_return_conditional_losses_4220h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ`
Њ "-Ђ*
# 
0џџџџџџџџџ`
 
.__inference_FC1_preFlatten1_layer_call_fn_4225[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ`
Њ " џџџџџџџџџ`Ч
__inference__wrapped_model_696Є4%&,-./<=CDEFSTZ[\]jkqrst ЁЂГД9Ђ6
/Ђ,
*'
input_1џџџџџџџџџ
Њ "1Њ.
,
flatten!
flattenџџџџџџџџџю
K__inference_average_pooling2d_layer_call_and_return_conditional_losses_1386RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ц
0__inference_average_pooling2d_layer_call_fn_1392RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЅ
A__inference_flatten_layer_call_and_return_conditional_losses_4280`7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 }
&__inference_flatten_layer_call_fn_4285S7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "џџџџџџџџџы
H__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_922RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 У
-__inference_max_pooling2d_1_layer_call_fn_928RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџь
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1038RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ф
.__inference_max_pooling2d_2_layer_call_fn_1044RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџь
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1154RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ф
.__inference_max_pooling2d_3_layer_call_fn_1160RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџь
I__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1270RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ф
.__inference_max_pooling2d_4_layer_call_fn_1276RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџщ
F__inference_max_pooling2d_layer_call_and_return_conditional_losses_806RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 С
+__inference_max_pooling2d_layer_call_fn_812RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџф
?__inference_model_layer_call_and_return_conditional_losses_2170 4%&,-./<=CDEFSTZ[\]jkqrst ЁЂГДAЂ>
7Ђ4
*'
input_1џџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 ф
?__inference_model_layer_call_and_return_conditional_losses_2278 4%&,-./<=CDEFSTZ[\]jkqrst ЁЂГДAЂ>
7Ђ4
*'
input_1џџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 у
?__inference_model_layer_call_and_return_conditional_losses_29274%&,-./<=CDEFSTZ[\]jkqrst ЁЂГД@Ђ=
6Ђ3
)&
inputsџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 у
?__inference_model_layer_call_and_return_conditional_losses_31024%&,-./<=CDEFSTZ[\]jkqrst ЁЂГД@Ђ=
6Ђ3
)&
inputsџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 М
$__inference_model_layer_call_fn_24684%&,-./<=CDEFSTZ[\]jkqrst ЁЂГДAЂ>
7Ђ4
*'
input_1џџџџџџџџџ
p

 
Њ "џџџџџџџџџМ
$__inference_model_layer_call_fn_26574%&,-./<=CDEFSTZ[\]jkqrst ЁЂГДAЂ>
7Ђ4
*'
input_1џџџџџџџџџ
p 

 
Њ "џџџџџџџџџЛ
$__inference_model_layer_call_fn_31834%&,-./<=CDEFSTZ[\]jkqrst ЁЂГД@Ђ=
6Ђ3
)&
inputsџџџџџџџџџ
p

 
Њ "џџџџџџџџџЛ
$__inference_model_layer_call_fn_32644%&,-./<=CDEFSTZ[\]jkqrst ЁЂГД@Ђ=
6Ђ3
)&
inputsџџџџџџџџџ
p 

 
Њ "џџџџџџџџџЏ
A__inference_re_lu_1_layer_call_and_return_conditional_losses_3573j8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ ".Ђ+
$!
0џџџџџџџџџ
 
&__inference_re_lu_1_layer_call_fn_3578]8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "!џџџџџџџџџЏ
A__inference_re_lu_2_layer_call_and_return_conditional_losses_3730j8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ 
Њ ".Ђ+
$!
0џџџџџџџџџ 
 
&__inference_re_lu_2_layer_call_fn_3735]8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ 
Њ "!џџџџџџџџџ Џ
A__inference_re_lu_3_layer_call_and_return_conditional_losses_3887j8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ0
Њ ".Ђ+
$!
0џџџџџџџџџ0
 
&__inference_re_lu_3_layer_call_fn_3892]8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ0
Њ "!џџџџџџџџџ0­
A__inference_re_lu_4_layer_call_and_return_conditional_losses_4044h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@@
Њ "-Ђ*
# 
0џџџџџџџџџ@@
 
&__inference_re_lu_4_layer_call_fn_4049[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@@
Њ " џџџџџџџџџ@@­
A__inference_re_lu_5_layer_call_and_return_conditional_losses_4201h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ `
Њ "-Ђ*
# 
0џџџџџџџџџ `
 
&__inference_re_lu_5_layer_call_fn_4206[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ `
Њ " џџџџџџџџџ `­
?__inference_re_lu_layer_call_and_return_conditional_losses_3416j8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ ".Ђ+
$!
0џџџџџџџџџ
 
$__inference_re_lu_layer_call_fn_3421]8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "!џџџџџџџџџж
"__inference_signature_wrapper_2740Џ4%&,-./<=CDEFSTZ[\]jkqrst ЁЂГДDЂA
Ђ 
:Њ7
5
input_1*'
input_1џџџџџџџџџ"1Њ.
,
flatten!
flattenџџџџџџџџџБ
A__inference_softmax_layer_call_and_return_conditional_losses_4269l;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ

 
Њ "-Ђ*
# 
0џџџџџџџџџ
 
&__inference_softmax_layer_call_fn_4274_;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ

 
Њ " џџџџџџџџџ