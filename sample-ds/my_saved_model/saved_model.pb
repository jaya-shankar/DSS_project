¹Ò
¦ü
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
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
³
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
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
f
SimpleMLCreateModelResource
model_handle"
	containerstring "
shared_namestring 
á
SimpleMLInferenceOpWithHandle
numerical_features
boolean_features
categorical_int_features'
#categorical_set_int_features_values1
-categorical_set_int_features_row_splits_dim_1	1
-categorical_set_int_features_row_splits_dim_2	
model_handle
dense_predictions
dense_col_representation"
dense_output_dimint(0
f
#SimpleMLLoadModelFromPathWithHandle
model_handle
path" 
output_typeslist(string)
 
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
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
 
9
VarIsInitializedOp
resource
is_initialized
"serve*2.8.02v2.8.0-0-g3f878cff5b68
h

is_trainedVarHandleOp*
_output_shapes
: *
dtype0
*
shape: *
shared_name
is_trained
a
is_trained/Read/ReadVariableOpReadVariableOp
is_trained*
_output_shapes
: *
dtype0


SimpleMLCreateModelResourceSimpleMLCreateModelResource*
_output_shapes
: *E
shared_name64simple_ml_model_db1bdd4f-ad6c-4d2b-b3ee-05ffddc8fe60
W
asset_path_initializerPlaceholder*
_output_shapes
: *
dtype0*
shape: 

VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
R
Variable/AssignAssignVariableOpVariableasset_path_initializer*
dtype0
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0
Y
asset_path_initializer_1Placeholder*
_output_shapes
: *
dtype0*
shape: 


Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
X
Variable_1/AssignAssignVariableOp
Variable_1asset_path_initializer_1*
dtype0
a
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
: *
dtype0
Y
asset_path_initializer_2Placeholder*
_output_shapes
: *
dtype0*
shape: 


Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
X
Variable_2/AssignAssignVariableOp
Variable_2asset_path_initializer_2*
dtype0
a
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
: *
dtype0
Y
asset_path_initializer_3Placeholder*
_output_shapes
: *
dtype0*
shape: 


Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
X
Variable_3/AssignAssignVariableOp
Variable_3asset_path_initializer_3*
dtype0
a
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes
: *
dtype0
Y
asset_path_initializer_4Placeholder*
_output_shapes
: *
dtype0*
shape: 


Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
X
Variable_4/AssignAssignVariableOp
Variable_4asset_path_initializer_4*
dtype0
a
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes
: *
dtype0
a
ReadVariableOpReadVariableOpVariable^Variable/Assign*
_output_shapes
: *
dtype0
©
StatefulPartitionedCallStatefulPartitionedCallReadVariableOpSimpleMLCreateModelResource*
Tin
2*
Tout
2*
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
GPU 2J 8 *"
fR
__inference_<lambda>_2508

NoOpNoOp^StatefulPartitionedCall^Variable/Assign^Variable_1/Assign^Variable_2/Assign^Variable_3/Assign^Variable_4/Assign
­

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*è	
valueÞ	BÛ	 BÔ	
õ
_learner_params
	_features
_is_trained
	optimizer
loss

_model
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
_build_normalized_inputs
call
call_get_leaves
yggdrasil_model_path_tensor

signatures*
* 
* 
JD
VARIABLE_VALUE
is_trained&_is_trained/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
+
_input_builder
_compiled_model* 

0*
* 
* 
°
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 

serving_default* 
P
_feature_name_to_idx
	_init_ops
#categorical_str_to_int_hashmaps* 
S
_model_loader
_create_resource
 _initialize
!_destroy_resource* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
5
"_output_types
#
_all_files
$
_done_file* 
* 
* 
* 
* 
%
$0
%1
&2
'3
(4* 
* 
* 
* 
* 
* 

'serving_default_CurrentHospitalizationsPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
y
serving_default_CurrentlyInICUPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

%serving_default_CurrentlyOnVentilatorPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
s
serving_default_above_65Placeholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
u
serving_default_avg_incomePlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
s
serving_default_avg_tempPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
y
serving_default_avg_wind_speedPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
p
serving_default_casesPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
q
serving_default_deathsPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
{
 serving_default_mean_travel_timePlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
x
serving_default_miles_of_roadPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
z
serving_default_no_of_hospitalsPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

'serving_default_people_fully_vaccinatedPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
{
 serving_default_percent_democratPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
}
"serving_default_percent_in_povertyPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
x
serving_default_percent_whitePlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

%serving_default_persons_per_householdPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
u
serving_default_populationPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCall_1StatefulPartitionedCall'serving_default_CurrentHospitalizationsserving_default_CurrentlyInICU%serving_default_CurrentlyOnVentilatorserving_default_above_65serving_default_avg_incomeserving_default_avg_tempserving_default_avg_wind_speedserving_default_casesserving_default_deaths serving_default_mean_travel_timeserving_default_miles_of_roadserving_default_no_of_hospitals'serving_default_people_fully_vaccinated serving_default_percent_democrat"serving_default_percent_in_povertyserving_default_percent_white%serving_default_persons_per_householdserving_default_populationSimpleMLCreateModelResource*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_2482
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
º
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameis_trained/Read/ReadVariableOpConst*
Tin
2
*
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
__inference__traced_save_2574
¡
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filename
is_trained*
Tin
2*
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
 __inference__traced_restore_2587×Ì
¾"
Ó
)__inference__build_normalized_inputs_1896

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17J
IdentityIdentityinputs*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿN

Identity_1Identityinputs_1*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿN

Identity_2Identityinputs_2*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿN

Identity_3Identityinputs_3*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿN

Identity_4Identityinputs_4*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿN

Identity_5Identityinputs_5*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿN

Identity_6Identityinputs_6*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿN

Identity_7Identityinputs_7*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿN

Identity_8Identityinputs_8*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿN

Identity_9Identityinputs_9*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
Identity_10Identity	inputs_10*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
Identity_11Identity	inputs_11*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
Identity_12Identity	inputs_12*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
Identity_13Identity	inputs_13*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
Identity_14Identity	inputs_14*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
Identity_15Identity	inputs_15*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
Identity_16Identity	inputs_16*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
Identity_17Identity	inputs_17*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*£
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:K	G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:K
G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬
Z
,__inference_yggdrasil_model_path_tensor_2456
staticregexreplace_input
identity|
StaticRegexReplaceStaticRegexReplacestaticregexreplace_input*
_output_shapes
: *
patterndone*
rewrite R
IdentityIdentityStaticRegexReplace:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 

_output_shapes
: 

+
__inference__destroyer_2500
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
(
¹
)__inference__build_normalized_inputs_2402"
inputs_currenthospitalizations
inputs_currentlyinicu 
inputs_currentlyonventilator
inputs_above_65
inputs_avg_income
inputs_avg_temp
inputs_avg_wind_speed
inputs_cases
inputs_deaths
inputs_mean_travel_time
inputs_miles_of_road
inputs_no_of_hospitals"
inputs_people_fully_vaccinated
inputs_percent_democrat
inputs_percent_in_poverty
inputs_percent_white 
inputs_persons_per_household
inputs_population
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17b
IdentityIdentityinputs_currenthospitalizations*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1Identityinputs_currentlyinicu*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿb

Identity_2Identityinputs_currentlyonventilator*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿU

Identity_3Identityinputs_above_65*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿW

Identity_4Identityinputs_avg_income*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿU

Identity_5Identityinputs_avg_temp*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_6Identityinputs_avg_wind_speed*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿR

Identity_7Identityinputs_cases*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿS

Identity_8Identityinputs_deaths*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]

Identity_9Identityinputs_mean_travel_time*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
Identity_10Identityinputs_miles_of_road*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
Identity_11Identityinputs_no_of_hospitals*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
Identity_12Identityinputs_people_fully_vaccinated*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
Identity_13Identityinputs_percent_democrat*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
Identity_14Identityinputs_percent_in_poverty*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
Identity_15Identityinputs_percent_white*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
Identity_16Identityinputs_persons_per_household*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
Identity_17Identityinputs_population*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*£
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:c _
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
8
_user_specified_name inputs/CurrentHospitalizations:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/CurrentlyInICU:a]
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6
_user_specified_nameinputs/CurrentlyOnVentilator:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameinputs/above_65:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/avg_income:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameinputs/avg_temp:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/avg_wind_speed:QM
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_nameinputs/cases:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameinputs/deaths:\	X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/mean_travel_time:Y
U
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/miles_of_road:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_nameinputs/no_of_hospitals:c_
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
8
_user_specified_name inputs/people_fully_vaccinated:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/percent_democrat:^Z
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
3
_user_specified_nameinputs/percent_in_poverty:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/percent_white:a]
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6
_user_specified_nameinputs/persons_per_household:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/population
Ð
J
__inference__creator_2487
identity¢SimpleMLCreateModelResource
SimpleMLCreateModelResourceSimpleMLCreateModelResource*
_output_shapes
: *E
shared_name64simple_ml_model_db1bdd4f-ad6c-4d2b-b3ee-05ffddc8fe60h
IdentityIdentity*SimpleMLCreateModelResource:model_handle:0^NoOp*
T0*
_output_shapes
: d
NoOpNoOp^SimpleMLCreateModelResource*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2:
SimpleMLCreateModelResourceSimpleMLCreateModelResource
Ð"

O__inference_random_forest_model_3_layer_call_and_return_conditional_losses_1999

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
inference_op_model_handle
identity¢inference_opæ
PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17*
Tin
2*
Tout
2*
_collective_manager_ids
 *¤
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *2
f-R+
)__inference__build_normalized_inputs_1896°
stackPackPartitionedCall:output:0PartitionedCall:output:1PartitionedCall:output:2PartitionedCall:output:3PartitionedCall:output:4PartitionedCall:output:5PartitionedCall:output:6PartitionedCall:output:7PartitionedCall:output:8PartitionedCall:output:9PartitionedCall:output:10PartitionedCall:output:11PartitionedCall:output:12PartitionedCall:output:13PartitionedCall:output:14PartitionedCall:output:15PartitionedCall:output:16PartitionedCall:output:17*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

axisL
ConstConst*
_output_shapes
:  *
dtype0*
value
B  N
Const_1Const*
_output_shapes
:  *
dtype0*
value
B  X
RaggedConstant/valuesConst*
_output_shapes
: *
dtype0*
valueB ^
RaggedConstant/ConstConst*
_output_shapes
:*
dtype0	*
valueB	R `
RaggedConstant/Const_1Const*
_output_shapes
:*
dtype0	*
valueB	R ¡
inference_opSimpleMLInferenceOpWithHandlestack:output:0Const:output:0Const_1:output:0RaggedConstant/values:output:0RaggedConstant/Const:output:0RaggedConstant/Const_1:output:0inference_op_model_handle*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:*
dense_output_dimo
IdentityIdentity inference_op:dense_predictions:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
NoOpNoOp^inference_op*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¥
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 2
inference_opinference_op:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:K	G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:K
G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
º
__inference_<lambda>_2508
staticregexreplace_input>
:simple_ml_simplemlloadmodelfrompathwithhandle_model_handle
identity¢-simple_ml/SimpleMLLoadModelFromPathWithHandle|
StaticRegexReplaceStaticRegexReplacestaticregexreplace_input*
_output_shapes
: *
patterndone*
rewrite Ã
-simple_ml/SimpleMLLoadModelFromPathWithHandle#SimpleMLLoadModelFromPathWithHandle:simple_ml_simplemlloadmodelfrompathwithhandle_model_handleStaticRegexReplace:output:0*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: v
NoOpNoOp.^simple_ml/SimpleMLLoadModelFromPathWithHandle*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2^
-simple_ml/SimpleMLLoadModelFromPathWithHandle-simple_ml/SimpleMLLoadModelFromPathWithHandle: 

_output_shapes
: 
ª

__inference__traced_save_2574
file_prefix)
%savev2_is_trained_read_readvariableop

savev2_const

identity_1¢MergeV2Checkpointsw
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
: ¯
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Y
valuePBNB&_is_trained/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHq
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B Ø
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0%savev2_is_trained_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2

&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
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

identity_1Identity_1:output:0*
_input_shapes
: : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: 
¬(
ø
O__inference_random_forest_model_3_layer_call_and_return_conditional_losses_2316"
inputs_currenthospitalizations
inputs_currentlyinicu 
inputs_currentlyonventilator
inputs_above_65
inputs_avg_income
inputs_avg_temp
inputs_avg_wind_speed
inputs_cases
inputs_deaths
inputs_mean_travel_time
inputs_miles_of_road
inputs_no_of_hospitals"
inputs_people_fully_vaccinated
inputs_percent_democrat
inputs_percent_in_poverty
inputs_percent_white 
inputs_persons_per_household
inputs_population
inference_op_model_handle
identity¢inference_opÌ
PartitionedCallPartitionedCallinputs_currenthospitalizationsinputs_currentlyinicuinputs_currentlyonventilatorinputs_above_65inputs_avg_incomeinputs_avg_tempinputs_avg_wind_speedinputs_casesinputs_deathsinputs_mean_travel_timeinputs_miles_of_roadinputs_no_of_hospitalsinputs_people_fully_vaccinatedinputs_percent_democratinputs_percent_in_povertyinputs_percent_whiteinputs_persons_per_householdinputs_population*
Tin
2*
Tout
2*
_collective_manager_ids
 *¤
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *2
f-R+
)__inference__build_normalized_inputs_1896°
stackPackPartitionedCall:output:0PartitionedCall:output:1PartitionedCall:output:2PartitionedCall:output:3PartitionedCall:output:4PartitionedCall:output:5PartitionedCall:output:6PartitionedCall:output:7PartitionedCall:output:8PartitionedCall:output:9PartitionedCall:output:10PartitionedCall:output:11PartitionedCall:output:12PartitionedCall:output:13PartitionedCall:output:14PartitionedCall:output:15PartitionedCall:output:16PartitionedCall:output:17*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

axisL
ConstConst*
_output_shapes
:  *
dtype0*
value
B  N
Const_1Const*
_output_shapes
:  *
dtype0*
value
B  X
RaggedConstant/valuesConst*
_output_shapes
: *
dtype0*
valueB ^
RaggedConstant/ConstConst*
_output_shapes
:*
dtype0	*
valueB	R `
RaggedConstant/Const_1Const*
_output_shapes
:*
dtype0	*
valueB	R ¡
inference_opSimpleMLInferenceOpWithHandlestack:output:0Const:output:0Const_1:output:0RaggedConstant/values:output:0RaggedConstant/Const:output:0RaggedConstant/Const_1:output:0inference_op_model_handle*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:*
dense_output_dimo
IdentityIdentity inference_op:dense_predictions:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
NoOpNoOp^inference_op*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¥
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 2
inference_opinference_op:c _
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
8
_user_specified_name inputs/CurrentHospitalizations:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/CurrentlyInICU:a]
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6
_user_specified_nameinputs/CurrentlyOnVentilator:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameinputs/above_65:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/avg_income:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameinputs/avg_temp:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/avg_wind_speed:QM
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_nameinputs/cases:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameinputs/deaths:\	X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/mean_travel_time:Y
U
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/miles_of_road:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_nameinputs/no_of_hospitals:c_
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
8
_user_specified_name inputs/people_fully_vaccinated:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/percent_democrat:^Z
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
3
_user_specified_nameinputs/percent_in_poverty:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/percent_white:a]
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6
_user_specified_nameinputs/persons_per_household:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/population
²%
ú
O__inference_random_forest_model_3_layer_call_and_return_conditional_losses_2172
currenthospitalizations
currentlyinicu
currentlyonventilator
above_65

avg_income
avg_temp
avg_wind_speed	
cases

deaths
mean_travel_time
miles_of_road
no_of_hospitals
people_fully_vaccinated
percent_democrat
percent_in_poverty
percent_white
persons_per_household

population
inference_op_model_handle
identity¢inference_opÎ
PartitionedCallPartitionedCallcurrenthospitalizationscurrentlyinicucurrentlyonventilatorabove_65
avg_incomeavg_tempavg_wind_speedcasesdeathsmean_travel_timemiles_of_roadno_of_hospitalspeople_fully_vaccinatedpercent_democratpercent_in_povertypercent_whitepersons_per_household
population*
Tin
2*
Tout
2*
_collective_manager_ids
 *¤
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *2
f-R+
)__inference__build_normalized_inputs_1896°
stackPackPartitionedCall:output:0PartitionedCall:output:1PartitionedCall:output:2PartitionedCall:output:3PartitionedCall:output:4PartitionedCall:output:5PartitionedCall:output:6PartitionedCall:output:7PartitionedCall:output:8PartitionedCall:output:9PartitionedCall:output:10PartitionedCall:output:11PartitionedCall:output:12PartitionedCall:output:13PartitionedCall:output:14PartitionedCall:output:15PartitionedCall:output:16PartitionedCall:output:17*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

axisL
ConstConst*
_output_shapes
:  *
dtype0*
value
B  N
Const_1Const*
_output_shapes
:  *
dtype0*
value
B  X
RaggedConstant/valuesConst*
_output_shapes
: *
dtype0*
valueB ^
RaggedConstant/ConstConst*
_output_shapes
:*
dtype0	*
valueB	R `
RaggedConstant/Const_1Const*
_output_shapes
:*
dtype0	*
valueB	R ¡
inference_opSimpleMLInferenceOpWithHandlestack:output:0Const:output:0Const_1:output:0RaggedConstant/values:output:0RaggedConstant/Const:output:0RaggedConstant/Const_1:output:0inference_op_model_handle*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:*
dense_output_dimo
IdentityIdentity inference_op:dense_predictions:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
NoOpNoOp^inference_op*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¥
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 2
inference_opinference_op:\ X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameCurrentHospitalizations:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameCurrentlyInICU:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameCurrentlyOnVentilator:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
above_65:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
avg_income:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
avg_temp:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameavg_wind_speed:JF
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namecases:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namedeaths:U	Q
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namemean_travel_time:R
N
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namemiles_of_road:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameno_of_hospitals:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_namepeople_fully_vaccinated:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namepercent_democrat:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namepercent_in_poverty:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namepercent_white:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_namepersons_per_household:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
population
ò'
¾
__inference_call_2450"
inputs_currenthospitalizations
inputs_currentlyinicu 
inputs_currentlyonventilator
inputs_above_65
inputs_avg_income
inputs_avg_temp
inputs_avg_wind_speed
inputs_cases
inputs_deaths
inputs_mean_travel_time
inputs_miles_of_road
inputs_no_of_hospitals"
inputs_people_fully_vaccinated
inputs_percent_democrat
inputs_percent_in_poverty
inputs_percent_white 
inputs_persons_per_household
inputs_population
inference_op_model_handle
identity¢inference_opÌ
PartitionedCallPartitionedCallinputs_currenthospitalizationsinputs_currentlyinicuinputs_currentlyonventilatorinputs_above_65inputs_avg_incomeinputs_avg_tempinputs_avg_wind_speedinputs_casesinputs_deathsinputs_mean_travel_timeinputs_miles_of_roadinputs_no_of_hospitalsinputs_people_fully_vaccinatedinputs_percent_democratinputs_percent_in_povertyinputs_percent_whiteinputs_persons_per_householdinputs_population*
Tin
2*
Tout
2*
_collective_manager_ids
 *¤
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *2
f-R+
)__inference__build_normalized_inputs_1896°
stackPackPartitionedCall:output:0PartitionedCall:output:1PartitionedCall:output:2PartitionedCall:output:3PartitionedCall:output:4PartitionedCall:output:5PartitionedCall:output:6PartitionedCall:output:7PartitionedCall:output:8PartitionedCall:output:9PartitionedCall:output:10PartitionedCall:output:11PartitionedCall:output:12PartitionedCall:output:13PartitionedCall:output:14PartitionedCall:output:15PartitionedCall:output:16PartitionedCall:output:17*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

axisL
ConstConst*
_output_shapes
:  *
dtype0*
value
B  N
Const_1Const*
_output_shapes
:  *
dtype0*
value
B  X
RaggedConstant/valuesConst*
_output_shapes
: *
dtype0*
valueB ^
RaggedConstant/ConstConst*
_output_shapes
:*
dtype0	*
valueB	R `
RaggedConstant/Const_1Const*
_output_shapes
:*
dtype0	*
valueB	R ¡
inference_opSimpleMLInferenceOpWithHandlestack:output:0Const:output:0Const_1:output:0RaggedConstant/values:output:0RaggedConstant/Const:output:0RaggedConstant/Const_1:output:0inference_op_model_handle*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:*
dense_output_dimo
IdentityIdentity inference_op:dense_predictions:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
NoOpNoOp^inference_op*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¥
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 2
inference_opinference_op:c _
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
8
_user_specified_name inputs/CurrentHospitalizations:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/CurrentlyInICU:a]
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6
_user_specified_nameinputs/CurrentlyOnVentilator:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameinputs/above_65:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/avg_income:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameinputs/avg_temp:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/avg_wind_speed:QM
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_nameinputs/cases:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameinputs/deaths:\	X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/mean_travel_time:Y
U
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/miles_of_road:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_nameinputs/no_of_hospitals:c_
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
8
_user_specified_name inputs/people_fully_vaccinated:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/percent_democrat:^Z
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
3
_user_specified_nameinputs/percent_in_poverty:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/percent_white:a]
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6
_user_specified_nameinputs/persons_per_household:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/population
Ñ
Ø
4__inference_random_forest_model_3_layer_call_fn_2004
currenthospitalizations
currentlyinicu
currentlyonventilator
above_65

avg_income
avg_temp
avg_wind_speed	
cases

deaths
mean_travel_time
miles_of_road
no_of_hospitals
people_fully_vaccinated
percent_democrat
percent_in_poverty
percent_white
persons_per_household

population
unknown
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallcurrenthospitalizationscurrentlyinicucurrentlyonventilatorabove_65
avg_incomeavg_tempavg_wind_speedcasesdeathsmean_travel_timemiles_of_roadno_of_hospitalspeople_fully_vaccinatedpercent_democratpercent_in_povertypercent_whitepersons_per_household
populationunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_random_forest_model_3_layer_call_and_return_conditional_losses_1999o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¥
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameCurrentHospitalizations:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameCurrentlyInICU:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameCurrentlyOnVentilator:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
above_65:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
avg_income:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
avg_temp:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameavg_wind_speed:JF
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namecases:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namedeaths:U	Q
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namemean_travel_time:R
N
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namemiles_of_road:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameno_of_hospitals:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_namepeople_fully_vaccinated:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namepercent_democrat:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namepercent_in_poverty:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namepercent_white:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_namepersons_per_household:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
population
Ð"

O__inference_random_forest_model_3_layer_call_and_return_conditional_losses_2095

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
inference_op_model_handle
identity¢inference_opæ
PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17*
Tin
2*
Tout
2*
_collective_manager_ids
 *¤
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *2
f-R+
)__inference__build_normalized_inputs_1896°
stackPackPartitionedCall:output:0PartitionedCall:output:1PartitionedCall:output:2PartitionedCall:output:3PartitionedCall:output:4PartitionedCall:output:5PartitionedCall:output:6PartitionedCall:output:7PartitionedCall:output:8PartitionedCall:output:9PartitionedCall:output:10PartitionedCall:output:11PartitionedCall:output:12PartitionedCall:output:13PartitionedCall:output:14PartitionedCall:output:15PartitionedCall:output:16PartitionedCall:output:17*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

axisL
ConstConst*
_output_shapes
:  *
dtype0*
value
B  N
Const_1Const*
_output_shapes
:  *
dtype0*
value
B  X
RaggedConstant/valuesConst*
_output_shapes
: *
dtype0*
valueB ^
RaggedConstant/ConstConst*
_output_shapes
:*
dtype0	*
valueB	R `
RaggedConstant/Const_1Const*
_output_shapes
:*
dtype0	*
valueB	R ¡
inference_opSimpleMLInferenceOpWithHandlestack:output:0Const:output:0Const_1:output:0RaggedConstant/values:output:0RaggedConstant/Const:output:0RaggedConstant/Const_1:output:0inference_op_model_handle*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:*
dense_output_dimo
IdentityIdentity inference_op:dense_predictions:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
NoOpNoOp^inference_op*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¥
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 2
inference_opinference_op:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:K	G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:K
G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬(
ø
O__inference_random_forest_model_3_layer_call_and_return_conditional_losses_2364"
inputs_currenthospitalizations
inputs_currentlyinicu 
inputs_currentlyonventilator
inputs_above_65
inputs_avg_income
inputs_avg_temp
inputs_avg_wind_speed
inputs_cases
inputs_deaths
inputs_mean_travel_time
inputs_miles_of_road
inputs_no_of_hospitals"
inputs_people_fully_vaccinated
inputs_percent_democrat
inputs_percent_in_poverty
inputs_percent_white 
inputs_persons_per_household
inputs_population
inference_op_model_handle
identity¢inference_opÌ
PartitionedCallPartitionedCallinputs_currenthospitalizationsinputs_currentlyinicuinputs_currentlyonventilatorinputs_above_65inputs_avg_incomeinputs_avg_tempinputs_avg_wind_speedinputs_casesinputs_deathsinputs_mean_travel_timeinputs_miles_of_roadinputs_no_of_hospitalsinputs_people_fully_vaccinatedinputs_percent_democratinputs_percent_in_povertyinputs_percent_whiteinputs_persons_per_householdinputs_population*
Tin
2*
Tout
2*
_collective_manager_ids
 *¤
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *2
f-R+
)__inference__build_normalized_inputs_1896°
stackPackPartitionedCall:output:0PartitionedCall:output:1PartitionedCall:output:2PartitionedCall:output:3PartitionedCall:output:4PartitionedCall:output:5PartitionedCall:output:6PartitionedCall:output:7PartitionedCall:output:8PartitionedCall:output:9PartitionedCall:output:10PartitionedCall:output:11PartitionedCall:output:12PartitionedCall:output:13PartitionedCall:output:14PartitionedCall:output:15PartitionedCall:output:16PartitionedCall:output:17*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

axisL
ConstConst*
_output_shapes
:  *
dtype0*
value
B  N
Const_1Const*
_output_shapes
:  *
dtype0*
value
B  X
RaggedConstant/valuesConst*
_output_shapes
: *
dtype0*
valueB ^
RaggedConstant/ConstConst*
_output_shapes
:*
dtype0	*
valueB	R `
RaggedConstant/Const_1Const*
_output_shapes
:*
dtype0	*
valueB	R ¡
inference_opSimpleMLInferenceOpWithHandlestack:output:0Const:output:0Const_1:output:0RaggedConstant/values:output:0RaggedConstant/Const:output:0RaggedConstant/Const_1:output:0inference_op_model_handle*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:*
dense_output_dimo
IdentityIdentity inference_op:dense_predictions:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
NoOpNoOp^inference_op*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¥
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 2
inference_opinference_op:c _
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
8
_user_specified_name inputs/CurrentHospitalizations:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/CurrentlyInICU:a]
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6
_user_specified_nameinputs/CurrentlyOnVentilator:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameinputs/above_65:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/avg_income:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameinputs/avg_temp:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/avg_wind_speed:QM
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_nameinputs/cases:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameinputs/deaths:\	X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/mean_travel_time:Y
U
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/miles_of_road:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_nameinputs/no_of_hospitals:c_
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
8
_user_specified_name inputs/people_fully_vaccinated:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/percent_democrat:^Z
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
3
_user_specified_nameinputs/percent_in_poverty:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/percent_white:a]
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6
_user_specified_nameinputs/persons_per_household:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/population
²%
ú
O__inference_random_forest_model_3_layer_call_and_return_conditional_losses_2220
currenthospitalizations
currentlyinicu
currentlyonventilator
above_65

avg_income
avg_temp
avg_wind_speed	
cases

deaths
mean_travel_time
miles_of_road
no_of_hospitals
people_fully_vaccinated
percent_democrat
percent_in_poverty
percent_white
persons_per_household

population
inference_op_model_handle
identity¢inference_opÎ
PartitionedCallPartitionedCallcurrenthospitalizationscurrentlyinicucurrentlyonventilatorabove_65
avg_incomeavg_tempavg_wind_speedcasesdeathsmean_travel_timemiles_of_roadno_of_hospitalspeople_fully_vaccinatedpercent_democratpercent_in_povertypercent_whitepersons_per_household
population*
Tin
2*
Tout
2*
_collective_manager_ids
 *¤
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *2
f-R+
)__inference__build_normalized_inputs_1896°
stackPackPartitionedCall:output:0PartitionedCall:output:1PartitionedCall:output:2PartitionedCall:output:3PartitionedCall:output:4PartitionedCall:output:5PartitionedCall:output:6PartitionedCall:output:7PartitionedCall:output:8PartitionedCall:output:9PartitionedCall:output:10PartitionedCall:output:11PartitionedCall:output:12PartitionedCall:output:13PartitionedCall:output:14PartitionedCall:output:15PartitionedCall:output:16PartitionedCall:output:17*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

axisL
ConstConst*
_output_shapes
:  *
dtype0*
value
B  N
Const_1Const*
_output_shapes
:  *
dtype0*
value
B  X
RaggedConstant/valuesConst*
_output_shapes
: *
dtype0*
valueB ^
RaggedConstant/ConstConst*
_output_shapes
:*
dtype0	*
valueB	R `
RaggedConstant/Const_1Const*
_output_shapes
:*
dtype0	*
valueB	R ¡
inference_opSimpleMLInferenceOpWithHandlestack:output:0Const:output:0Const_1:output:0RaggedConstant/values:output:0RaggedConstant/Const:output:0RaggedConstant/Const_1:output:0inference_op_model_handle*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:*
dense_output_dimo
IdentityIdentity inference_op:dense_predictions:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
NoOpNoOp^inference_op*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¥
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 2
inference_opinference_op:\ X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameCurrentHospitalizations:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameCurrentlyInICU:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameCurrentlyOnVentilator:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
above_65:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
avg_income:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
avg_temp:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameavg_wind_speed:JF
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namecases:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namedeaths:U	Q
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namemean_travel_time:R
N
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namemiles_of_road:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameno_of_hospitals:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_namepeople_fully_vaccinated:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namepercent_democrat:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namepercent_in_poverty:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namepercent_white:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_namepersons_per_household:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
population
¼


 __inference__traced_restore_2587
file_prefix%
assignvariableop_is_trained:
 

identity_2¢AssignVariableOp²
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Y
valuePBNB&_is_trained/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHt
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B ¨
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes

::*
dtypes
2
[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0
*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_is_trainedIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0
1
NoOpNoOp"/device:CPU:0*
_output_shapes
 m

Identity_1Identityfile_prefix^AssignVariableOp^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_2IdentityIdentity_1:output:0^NoOp_1*
T0*
_output_shapes
: [
NoOp_1NoOp^AssignVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_2Identity_2:output:0*
_input_shapes
: : 2$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ë
Ö
4__inference_random_forest_model_3_layer_call_fn_2268"
inputs_currenthospitalizations
inputs_currentlyinicu 
inputs_currentlyonventilator
inputs_above_65
inputs_avg_income
inputs_avg_temp
inputs_avg_wind_speed
inputs_cases
inputs_deaths
inputs_mean_travel_time
inputs_miles_of_road
inputs_no_of_hospitals"
inputs_people_fully_vaccinated
inputs_percent_democrat
inputs_percent_in_poverty
inputs_percent_white 
inputs_persons_per_household
inputs_population
unknown
identity¢StatefulPartitionedCallý
StatefulPartitionedCallStatefulPartitionedCallinputs_currenthospitalizationsinputs_currentlyinicuinputs_currentlyonventilatorinputs_above_65inputs_avg_incomeinputs_avg_tempinputs_avg_wind_speedinputs_casesinputs_deathsinputs_mean_travel_timeinputs_miles_of_roadinputs_no_of_hospitalsinputs_people_fully_vaccinatedinputs_percent_democratinputs_percent_in_povertyinputs_percent_whiteinputs_persons_per_householdinputs_populationunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_random_forest_model_3_layer_call_and_return_conditional_losses_2095o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¥
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:c _
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
8
_user_specified_name inputs/CurrentHospitalizations:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/CurrentlyInICU:a]
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6
_user_specified_nameinputs/CurrentlyOnVentilator:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameinputs/above_65:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/avg_income:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameinputs/avg_temp:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/avg_wind_speed:QM
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_nameinputs/cases:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameinputs/deaths:\	X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/mean_travel_time:Y
U
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/miles_of_road:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_nameinputs/no_of_hospitals:c_
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
8
_user_specified_name inputs/people_fully_vaccinated:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/percent_democrat:^Z
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
3
_user_specified_nameinputs/percent_in_poverty:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/percent_white:a]
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6
_user_specified_nameinputs/persons_per_household:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/population
Ë
Ö
4__inference_random_forest_model_3_layer_call_fn_2244"
inputs_currenthospitalizations
inputs_currentlyinicu 
inputs_currentlyonventilator
inputs_above_65
inputs_avg_income
inputs_avg_temp
inputs_avg_wind_speed
inputs_cases
inputs_deaths
inputs_mean_travel_time
inputs_miles_of_road
inputs_no_of_hospitals"
inputs_people_fully_vaccinated
inputs_percent_democrat
inputs_percent_in_poverty
inputs_percent_white 
inputs_persons_per_household
inputs_population
unknown
identity¢StatefulPartitionedCallý
StatefulPartitionedCallStatefulPartitionedCallinputs_currenthospitalizationsinputs_currentlyinicuinputs_currentlyonventilatorinputs_above_65inputs_avg_incomeinputs_avg_tempinputs_avg_wind_speedinputs_casesinputs_deathsinputs_mean_travel_timeinputs_miles_of_roadinputs_no_of_hospitalsinputs_people_fully_vaccinatedinputs_percent_democratinputs_percent_in_povertyinputs_percent_whiteinputs_persons_per_householdinputs_populationunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_random_forest_model_3_layer_call_and_return_conditional_losses_1999o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¥
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:c _
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
8
_user_specified_name inputs/CurrentHospitalizations:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/CurrentlyInICU:a]
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6
_user_specified_nameinputs/CurrentlyOnVentilator:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameinputs/above_65:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/avg_income:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameinputs/avg_temp:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/avg_wind_speed:QM
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_nameinputs/cases:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameinputs/deaths:\	X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/mean_travel_time:Y
U
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/miles_of_road:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_nameinputs/no_of_hospitals:c_
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
8
_user_specified_name inputs/people_fully_vaccinated:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/percent_democrat:^Z
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
3
_user_specified_nameinputs/percent_in_poverty:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/percent_white:a]
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6
_user_specified_nameinputs/persons_per_household:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/population

Æ
"__inference_signature_wrapper_2482
currenthospitalizations
currentlyinicu
currentlyonventilator
above_65

avg_income
avg_temp
avg_wind_speed	
cases

deaths
mean_travel_time
miles_of_road
no_of_hospitals
people_fully_vaccinated
percent_democrat
percent_in_poverty
percent_white
persons_per_household

population
unknown
identity¢StatefulPartitionedCallÏ
StatefulPartitionedCallStatefulPartitionedCallcurrenthospitalizationscurrentlyinicucurrentlyonventilatorabove_65
avg_incomeavg_tempavg_wind_speedcasesdeathsmean_travel_timemiles_of_roadno_of_hospitalspeople_fully_vaccinatedpercent_democratpercent_in_povertypercent_whitepersons_per_household
populationunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_1930o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¥
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameCurrentHospitalizations:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameCurrentlyInICU:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameCurrentlyOnVentilator:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
above_65:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
avg_income:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
avg_temp:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameavg_wind_speed:JF
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namecases:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namedeaths:U	Q
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namemean_travel_time:R
N
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namemiles_of_road:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameno_of_hospitals:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_namepeople_fully_vaccinated:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namepercent_democrat:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namepercent_in_poverty:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namepercent_white:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_namepersons_per_household:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
population
"
Ø
__inference_call_1925

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
inference_op_model_handle
identity¢inference_opæ
PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17*
Tin
2*
Tout
2*
_collective_manager_ids
 *¤
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *2
f-R+
)__inference__build_normalized_inputs_1896°
stackPackPartitionedCall:output:0PartitionedCall:output:1PartitionedCall:output:2PartitionedCall:output:3PartitionedCall:output:4PartitionedCall:output:5PartitionedCall:output:6PartitionedCall:output:7PartitionedCall:output:8PartitionedCall:output:9PartitionedCall:output:10PartitionedCall:output:11PartitionedCall:output:12PartitionedCall:output:13PartitionedCall:output:14PartitionedCall:output:15PartitionedCall:output:16PartitionedCall:output:17*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

axisL
ConstConst*
_output_shapes
:  *
dtype0*
value
B  N
Const_1Const*
_output_shapes
:  *
dtype0*
value
B  X
RaggedConstant/valuesConst*
_output_shapes
: *
dtype0*
valueB ^
RaggedConstant/ConstConst*
_output_shapes
:*
dtype0	*
valueB	R `
RaggedConstant/Const_1Const*
_output_shapes
:*
dtype0	*
valueB	R ¡
inference_opSimpleMLInferenceOpWithHandlestack:output:0Const:output:0Const_1:output:0RaggedConstant/values:output:0RaggedConstant/Const:output:0RaggedConstant/Const_1:output:0inference_op_model_handle*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:*
dense_output_dimo
IdentityIdentity inference_op:dense_predictions:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
NoOpNoOp^inference_op*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¥
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 2
inference_opinference_op:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:K	G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:K
G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­
ì
__inference__wrapped_model_1930
currenthospitalizations
currentlyinicu
currentlyonventilator
above_65

avg_income
avg_temp
avg_wind_speed	
cases

deaths
mean_travel_time
miles_of_road
no_of_hospitals
people_fully_vaccinated
percent_democrat
percent_in_poverty
percent_white
persons_per_household

population
random_forest_model_3_1926
identity¢-random_forest_model_3/StatefulPartitionedCallî
-random_forest_model_3/StatefulPartitionedCallStatefulPartitionedCallcurrenthospitalizationscurrentlyinicucurrentlyonventilatorabove_65
avg_incomeavg_tempavg_wind_speedcasesdeathsmean_travel_timemiles_of_roadno_of_hospitalspeople_fully_vaccinatedpercent_democratpercent_in_povertypercent_whitepersons_per_household
populationrandom_forest_model_3_1926*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *
fR
__inference_call_1925
IdentityIdentity6random_forest_model_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
NoOpNoOp.^random_forest_model_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¥
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 2^
-random_forest_model_3/StatefulPartitionedCall-random_forest_model_3/StatefulPartitionedCall:\ X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameCurrentHospitalizations:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameCurrentlyInICU:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameCurrentlyOnVentilator:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
above_65:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
avg_income:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
avg_temp:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameavg_wind_speed:JF
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namecases:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namedeaths:U	Q
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namemean_travel_time:R
N
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namemiles_of_road:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameno_of_hospitals:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_namepeople_fully_vaccinated:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namepercent_democrat:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namepercent_in_poverty:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namepercent_white:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_namepersons_per_household:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
population
Ñ
Ø
4__inference_random_forest_model_3_layer_call_fn_2124
currenthospitalizations
currentlyinicu
currentlyonventilator
above_65

avg_income
avg_temp
avg_wind_speed	
cases

deaths
mean_travel_time
miles_of_road
no_of_hospitals
people_fully_vaccinated
percent_democrat
percent_in_poverty
percent_white
persons_per_household

population
unknown
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallcurrenthospitalizationscurrentlyinicucurrentlyonventilatorabove_65
avg_incomeavg_tempavg_wind_speedcasesdeathsmean_travel_timemiles_of_roadno_of_hospitalspeople_fully_vaccinatedpercent_democratpercent_in_povertypercent_whitepersons_per_household
populationunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_random_forest_model_3_layer_call_and_return_conditional_losses_2095o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¥
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameCurrentHospitalizations:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameCurrentlyInICU:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameCurrentlyOnVentilator:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
above_65:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
avg_income:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
avg_temp:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameavg_wind_speed:JF
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namecases:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namedeaths:U	Q
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namemean_travel_time:R
N
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namemiles_of_road:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameno_of_hospitals:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_namepeople_fully_vaccinated:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namepercent_democrat:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namepercent_in_poverty:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namepercent_white:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_namepersons_per_household:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
population
ô
¾
__inference__initializer_2495
staticregexreplace_input>
:simple_ml_simplemlloadmodelfrompathwithhandle_model_handle
identity¢-simple_ml/SimpleMLLoadModelFromPathWithHandle|
StaticRegexReplaceStaticRegexReplacestaticregexreplace_input*
_output_shapes
: *
patterndone*
rewrite Ã
-simple_ml/SimpleMLLoadModelFromPathWithHandle#SimpleMLLoadModelFromPathWithHandle:simple_ml_simplemlloadmodelfrompathwithhandle_model_handleStaticRegexReplace:output:0*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: v
NoOpNoOp.^simple_ml/SimpleMLLoadModelFromPathWithHandle*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2^
-simple_ml/SimpleMLLoadModelFromPathWithHandle-simple_ml/SimpleMLLoadModelFromPathWithHandle: 

_output_shapes
: "ÛL
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ò

serving_defaultÞ

W
CurrentHospitalizations<
)serving_default_CurrentHospitalizations:0ÿÿÿÿÿÿÿÿÿ
E
CurrentlyInICU3
 serving_default_CurrentlyInICU:0ÿÿÿÿÿÿÿÿÿ
S
CurrentlyOnVentilator:
'serving_default_CurrentlyOnVentilator:0ÿÿÿÿÿÿÿÿÿ
9
above_65-
serving_default_above_65:0ÿÿÿÿÿÿÿÿÿ
=

avg_income/
serving_default_avg_income:0ÿÿÿÿÿÿÿÿÿ
9
avg_temp-
serving_default_avg_temp:0ÿÿÿÿÿÿÿÿÿ
E
avg_wind_speed3
 serving_default_avg_wind_speed:0ÿÿÿÿÿÿÿÿÿ
3
cases*
serving_default_cases:0ÿÿÿÿÿÿÿÿÿ
5
deaths+
serving_default_deaths:0ÿÿÿÿÿÿÿÿÿ
I
mean_travel_time5
"serving_default_mean_travel_time:0ÿÿÿÿÿÿÿÿÿ
C
miles_of_road2
serving_default_miles_of_road:0ÿÿÿÿÿÿÿÿÿ
G
no_of_hospitals4
!serving_default_no_of_hospitals:0ÿÿÿÿÿÿÿÿÿ
W
people_fully_vaccinated<
)serving_default_people_fully_vaccinated:0ÿÿÿÿÿÿÿÿÿ
I
percent_democrat5
"serving_default_percent_democrat:0ÿÿÿÿÿÿÿÿÿ
M
percent_in_poverty7
$serving_default_percent_in_poverty:0ÿÿÿÿÿÿÿÿÿ
C
percent_white2
serving_default_percent_white:0ÿÿÿÿÿÿÿÿÿ
S
persons_per_household:
'serving_default_persons_per_household:0ÿÿÿÿÿÿÿÿÿ
=

population/
serving_default_population:0ÿÿÿÿÿÿÿÿÿ>
output_12
StatefulPartitionedCall_1:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict2"

asset_path_initializer:0done2,

asset_path_initializer_1:0data_spec.pb27

asset_path_initializer_2:0random_forest_header.pb2)

asset_path_initializer_3:0	header.pb24

asset_path_initializer_4:0nodes-00000-of-00001:ã¡

_learner_params
	_features
_is_trained
	optimizer
loss

_model
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
_build_normalized_inputs
call
call_get_leaves
yggdrasil_model_path_tensor

signatures"
_tf_keras_model
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
:
 2
is_trained
"
	optimizer
 "
trackable_dict_wrapper
G
_input_builder
_compiled_model"
_generic_user_object
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
4__inference_random_forest_model_3_layer_call_fn_2004
4__inference_random_forest_model_3_layer_call_fn_2244
4__inference_random_forest_model_3_layer_call_fn_2268
4__inference_random_forest_model_3_layer_call_fn_2124´
«²§
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
kwonlydefaultsª 
annotationsª *
 
þ2û
O__inference_random_forest_model_3_layer_call_and_return_conditional_losses_2316
O__inference_random_forest_model_3_layer_call_and_return_conditional_losses_2364
O__inference_random_forest_model_3_layer_call_and_return_conditional_losses_2172
O__inference_random_forest_model_3_layer_call_and_return_conditional_losses_2220´
«²§
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
kwonlydefaultsª 
annotationsª *
 
ãBà
__inference__wrapped_model_1930CurrentHospitalizationsCurrentlyInICUCurrentlyOnVentilatorabove_65
avg_incomeavg_tempavg_wind_speedcasesdeathsmean_travel_timemiles_of_roadno_of_hospitalspeople_fully_vaccinatedpercent_democratpercent_in_povertypercent_whitepersons_per_household
population"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference__build_normalized_inputs_2402¢
²
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
annotationsª *
 
Ð2Í
__inference_call_2450³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults¢
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
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
annotationsª *
 
Í2Ê
,__inference_yggdrasil_model_path_tensor_2456
²
FullArgSpec
args
jself
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
,
serving_default"
signature_map
l
_feature_name_to_idx
	_init_ops
#categorical_str_to_int_hashmaps"
_generic_user_object
S
_model_loader
_create_resource
 _initialize
!_destroy_resourceR 
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
àBÝ
"__inference_signature_wrapper_2482CurrentHospitalizationsCurrentlyInICUCurrentlyOnVentilatorabove_65
avg_incomeavg_tempavg_wind_speedcasesdeathsmean_travel_timemiles_of_roadno_of_hospitalspeople_fully_vaccinatedpercent_democratpercent_in_povertypercent_whitepersons_per_household
population"
²
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
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Q
"_output_types
#
_all_files
$
_done_file"
_generic_user_object
°2­
__inference__creator_2487
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
´2±
__inference__initializer_2495
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
²2¯
__inference__destroyer_2500
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
 "
trackable_list_wrapper
C
$0
%1
&2
'3
(4"
trackable_list_wrapper
* 
*
*
*
*µ
)__inference__build_normalized_inputs_2402	¢	
ý¢ù
öªò
O
CurrentHospitalizations41
inputs/CurrentHospitalizationsÿÿÿÿÿÿÿÿÿ
=
CurrentlyInICU+(
inputs/CurrentlyInICUÿÿÿÿÿÿÿÿÿ
K
CurrentlyOnVentilator2/
inputs/CurrentlyOnVentilatorÿÿÿÿÿÿÿÿÿ
1
above_65%"
inputs/above_65ÿÿÿÿÿÿÿÿÿ
5

avg_income'$
inputs/avg_incomeÿÿÿÿÿÿÿÿÿ
1
avg_temp%"
inputs/avg_tempÿÿÿÿÿÿÿÿÿ
=
avg_wind_speed+(
inputs/avg_wind_speedÿÿÿÿÿÿÿÿÿ
+
cases"
inputs/casesÿÿÿÿÿÿÿÿÿ
-
deaths# 
inputs/deathsÿÿÿÿÿÿÿÿÿ
A
mean_travel_time-*
inputs/mean_travel_timeÿÿÿÿÿÿÿÿÿ
;
miles_of_road*'
inputs/miles_of_roadÿÿÿÿÿÿÿÿÿ
?
no_of_hospitals,)
inputs/no_of_hospitalsÿÿÿÿÿÿÿÿÿ
O
people_fully_vaccinated41
inputs/people_fully_vaccinatedÿÿÿÿÿÿÿÿÿ
A
percent_democrat-*
inputs/percent_democratÿÿÿÿÿÿÿÿÿ
E
percent_in_poverty/,
inputs/percent_in_povertyÿÿÿÿÿÿÿÿÿ
;
percent_white*'
inputs/percent_whiteÿÿÿÿÿÿÿÿÿ
K
persons_per_household2/
inputs/persons_per_householdÿÿÿÿÿÿÿÿÿ
5

population'$
inputs/populationÿÿÿÿÿÿÿÿÿ
ª "øªô
H
CurrentHospitalizations-*
CurrentHospitalizationsÿÿÿÿÿÿÿÿÿ
6
CurrentlyInICU$!
CurrentlyInICUÿÿÿÿÿÿÿÿÿ
D
CurrentlyOnVentilator+(
CurrentlyOnVentilatorÿÿÿÿÿÿÿÿÿ
*
above_65
above_65ÿÿÿÿÿÿÿÿÿ
.

avg_income 

avg_incomeÿÿÿÿÿÿÿÿÿ
*
avg_temp
avg_tempÿÿÿÿÿÿÿÿÿ
6
avg_wind_speed$!
avg_wind_speedÿÿÿÿÿÿÿÿÿ
$
cases
casesÿÿÿÿÿÿÿÿÿ
&
deaths
deathsÿÿÿÿÿÿÿÿÿ
:
mean_travel_time&#
mean_travel_timeÿÿÿÿÿÿÿÿÿ
4
miles_of_road# 
miles_of_roadÿÿÿÿÿÿÿÿÿ
8
no_of_hospitals%"
no_of_hospitalsÿÿÿÿÿÿÿÿÿ
H
people_fully_vaccinated-*
people_fully_vaccinatedÿÿÿÿÿÿÿÿÿ
:
percent_democrat&#
percent_democratÿÿÿÿÿÿÿÿÿ
>
percent_in_poverty(%
percent_in_povertyÿÿÿÿÿÿÿÿÿ
4
percent_white# 
percent_whiteÿÿÿÿÿÿÿÿÿ
D
persons_per_household+(
persons_per_householdÿÿÿÿÿÿÿÿÿ
.

population 

populationÿÿÿÿÿÿÿÿÿ5
__inference__creator_2487¢

¢ 
ª " 7
__inference__destroyer_2500¢

¢ 
ª " =
__inference__initializer_2495$¢

¢ 
ª " ê
__inference__wrapped_model_1930Æ¢
ÿ¢û
øªô
H
CurrentHospitalizations-*
CurrentHospitalizationsÿÿÿÿÿÿÿÿÿ
6
CurrentlyInICU$!
CurrentlyInICUÿÿÿÿÿÿÿÿÿ
D
CurrentlyOnVentilator+(
CurrentlyOnVentilatorÿÿÿÿÿÿÿÿÿ
*
above_65
above_65ÿÿÿÿÿÿÿÿÿ
.

avg_income 

avg_incomeÿÿÿÿÿÿÿÿÿ
*
avg_temp
avg_tempÿÿÿÿÿÿÿÿÿ
6
avg_wind_speed$!
avg_wind_speedÿÿÿÿÿÿÿÿÿ
$
cases
casesÿÿÿÿÿÿÿÿÿ
&
deaths
deathsÿÿÿÿÿÿÿÿÿ
:
mean_travel_time&#
mean_travel_timeÿÿÿÿÿÿÿÿÿ
4
miles_of_road# 
miles_of_roadÿÿÿÿÿÿÿÿÿ
8
no_of_hospitals%"
no_of_hospitalsÿÿÿÿÿÿÿÿÿ
H
people_fully_vaccinated-*
people_fully_vaccinatedÿÿÿÿÿÿÿÿÿ
:
percent_democrat&#
percent_democratÿÿÿÿÿÿÿÿÿ
>
percent_in_poverty(%
percent_in_povertyÿÿÿÿÿÿÿÿÿ
4
percent_white# 
percent_whiteÿÿÿÿÿÿÿÿÿ
D
persons_per_household+(
persons_per_householdÿÿÿÿÿÿÿÿÿ
.

population 

populationÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿÇ	
__inference_call_2450­		¢	
	¢ý
öªò
O
CurrentHospitalizations41
inputs/CurrentHospitalizationsÿÿÿÿÿÿÿÿÿ
=
CurrentlyInICU+(
inputs/CurrentlyInICUÿÿÿÿÿÿÿÿÿ
K
CurrentlyOnVentilator2/
inputs/CurrentlyOnVentilatorÿÿÿÿÿÿÿÿÿ
1
above_65%"
inputs/above_65ÿÿÿÿÿÿÿÿÿ
5

avg_income'$
inputs/avg_incomeÿÿÿÿÿÿÿÿÿ
1
avg_temp%"
inputs/avg_tempÿÿÿÿÿÿÿÿÿ
=
avg_wind_speed+(
inputs/avg_wind_speedÿÿÿÿÿÿÿÿÿ
+
cases"
inputs/casesÿÿÿÿÿÿÿÿÿ
-
deaths# 
inputs/deathsÿÿÿÿÿÿÿÿÿ
A
mean_travel_time-*
inputs/mean_travel_timeÿÿÿÿÿÿÿÿÿ
;
miles_of_road*'
inputs/miles_of_roadÿÿÿÿÿÿÿÿÿ
?
no_of_hospitals,)
inputs/no_of_hospitalsÿÿÿÿÿÿÿÿÿ
O
people_fully_vaccinated41
inputs/people_fully_vaccinatedÿÿÿÿÿÿÿÿÿ
A
percent_democrat-*
inputs/percent_democratÿÿÿÿÿÿÿÿÿ
E
percent_in_poverty/,
inputs/percent_in_povertyÿÿÿÿÿÿÿÿÿ
;
percent_white*'
inputs/percent_whiteÿÿÿÿÿÿÿÿÿ
K
persons_per_household2/
inputs/persons_per_householdÿÿÿÿÿÿÿÿÿ
5

population'$
inputs/populationÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ	
O__inference_random_forest_model_3_layer_call_and_return_conditional_losses_2172¼¢
¢ÿ
øªô
H
CurrentHospitalizations-*
CurrentHospitalizationsÿÿÿÿÿÿÿÿÿ
6
CurrentlyInICU$!
CurrentlyInICUÿÿÿÿÿÿÿÿÿ
D
CurrentlyOnVentilator+(
CurrentlyOnVentilatorÿÿÿÿÿÿÿÿÿ
*
above_65
above_65ÿÿÿÿÿÿÿÿÿ
.

avg_income 

avg_incomeÿÿÿÿÿÿÿÿÿ
*
avg_temp
avg_tempÿÿÿÿÿÿÿÿÿ
6
avg_wind_speed$!
avg_wind_speedÿÿÿÿÿÿÿÿÿ
$
cases
casesÿÿÿÿÿÿÿÿÿ
&
deaths
deathsÿÿÿÿÿÿÿÿÿ
:
mean_travel_time&#
mean_travel_timeÿÿÿÿÿÿÿÿÿ
4
miles_of_road# 
miles_of_roadÿÿÿÿÿÿÿÿÿ
8
no_of_hospitals%"
no_of_hospitalsÿÿÿÿÿÿÿÿÿ
H
people_fully_vaccinated-*
people_fully_vaccinatedÿÿÿÿÿÿÿÿÿ
:
percent_democrat&#
percent_democratÿÿÿÿÿÿÿÿÿ
>
percent_in_poverty(%
percent_in_povertyÿÿÿÿÿÿÿÿÿ
4
percent_white# 
percent_whiteÿÿÿÿÿÿÿÿÿ
D
persons_per_household+(
persons_per_householdÿÿÿÿÿÿÿÿÿ
.

population 

populationÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 	
O__inference_random_forest_model_3_layer_call_and_return_conditional_losses_2220¼¢
¢ÿ
øªô
H
CurrentHospitalizations-*
CurrentHospitalizationsÿÿÿÿÿÿÿÿÿ
6
CurrentlyInICU$!
CurrentlyInICUÿÿÿÿÿÿÿÿÿ
D
CurrentlyOnVentilator+(
CurrentlyOnVentilatorÿÿÿÿÿÿÿÿÿ
*
above_65
above_65ÿÿÿÿÿÿÿÿÿ
.

avg_income 

avg_incomeÿÿÿÿÿÿÿÿÿ
*
avg_temp
avg_tempÿÿÿÿÿÿÿÿÿ
6
avg_wind_speed$!
avg_wind_speedÿÿÿÿÿÿÿÿÿ
$
cases
casesÿÿÿÿÿÿÿÿÿ
&
deaths
deathsÿÿÿÿÿÿÿÿÿ
:
mean_travel_time&#
mean_travel_timeÿÿÿÿÿÿÿÿÿ
4
miles_of_road# 
miles_of_roadÿÿÿÿÿÿÿÿÿ
8
no_of_hospitals%"
no_of_hospitalsÿÿÿÿÿÿÿÿÿ
H
people_fully_vaccinated-*
people_fully_vaccinatedÿÿÿÿÿÿÿÿÿ
:
percent_democrat&#
percent_democratÿÿÿÿÿÿÿÿÿ
>
percent_in_poverty(%
percent_in_povertyÿÿÿÿÿÿÿÿÿ
4
percent_white# 
percent_whiteÿÿÿÿÿÿÿÿÿ
D
persons_per_household+(
persons_per_householdÿÿÿÿÿÿÿÿÿ
.

population 

populationÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 

O__inference_random_forest_model_3_layer_call_and_return_conditional_losses_2316º		¢	
	¢ý
öªò
O
CurrentHospitalizations41
inputs/CurrentHospitalizationsÿÿÿÿÿÿÿÿÿ
=
CurrentlyInICU+(
inputs/CurrentlyInICUÿÿÿÿÿÿÿÿÿ
K
CurrentlyOnVentilator2/
inputs/CurrentlyOnVentilatorÿÿÿÿÿÿÿÿÿ
1
above_65%"
inputs/above_65ÿÿÿÿÿÿÿÿÿ
5

avg_income'$
inputs/avg_incomeÿÿÿÿÿÿÿÿÿ
1
avg_temp%"
inputs/avg_tempÿÿÿÿÿÿÿÿÿ
=
avg_wind_speed+(
inputs/avg_wind_speedÿÿÿÿÿÿÿÿÿ
+
cases"
inputs/casesÿÿÿÿÿÿÿÿÿ
-
deaths# 
inputs/deathsÿÿÿÿÿÿÿÿÿ
A
mean_travel_time-*
inputs/mean_travel_timeÿÿÿÿÿÿÿÿÿ
;
miles_of_road*'
inputs/miles_of_roadÿÿÿÿÿÿÿÿÿ
?
no_of_hospitals,)
inputs/no_of_hospitalsÿÿÿÿÿÿÿÿÿ
O
people_fully_vaccinated41
inputs/people_fully_vaccinatedÿÿÿÿÿÿÿÿÿ
A
percent_democrat-*
inputs/percent_democratÿÿÿÿÿÿÿÿÿ
E
percent_in_poverty/,
inputs/percent_in_povertyÿÿÿÿÿÿÿÿÿ
;
percent_white*'
inputs/percent_whiteÿÿÿÿÿÿÿÿÿ
K
persons_per_household2/
inputs/persons_per_householdÿÿÿÿÿÿÿÿÿ
5

population'$
inputs/populationÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 

O__inference_random_forest_model_3_layer_call_and_return_conditional_losses_2364º		¢	
	¢ý
öªò
O
CurrentHospitalizations41
inputs/CurrentHospitalizationsÿÿÿÿÿÿÿÿÿ
=
CurrentlyInICU+(
inputs/CurrentlyInICUÿÿÿÿÿÿÿÿÿ
K
CurrentlyOnVentilator2/
inputs/CurrentlyOnVentilatorÿÿÿÿÿÿÿÿÿ
1
above_65%"
inputs/above_65ÿÿÿÿÿÿÿÿÿ
5

avg_income'$
inputs/avg_incomeÿÿÿÿÿÿÿÿÿ
1
avg_temp%"
inputs/avg_tempÿÿÿÿÿÿÿÿÿ
=
avg_wind_speed+(
inputs/avg_wind_speedÿÿÿÿÿÿÿÿÿ
+
cases"
inputs/casesÿÿÿÿÿÿÿÿÿ
-
deaths# 
inputs/deathsÿÿÿÿÿÿÿÿÿ
A
mean_travel_time-*
inputs/mean_travel_timeÿÿÿÿÿÿÿÿÿ
;
miles_of_road*'
inputs/miles_of_roadÿÿÿÿÿÿÿÿÿ
?
no_of_hospitals,)
inputs/no_of_hospitalsÿÿÿÿÿÿÿÿÿ
O
people_fully_vaccinated41
inputs/people_fully_vaccinatedÿÿÿÿÿÿÿÿÿ
A
percent_democrat-*
inputs/percent_democratÿÿÿÿÿÿÿÿÿ
E
percent_in_poverty/,
inputs/percent_in_povertyÿÿÿÿÿÿÿÿÿ
;
percent_white*'
inputs/percent_whiteÿÿÿÿÿÿÿÿÿ
K
persons_per_household2/
inputs/persons_per_householdÿÿÿÿÿÿÿÿÿ
5

population'$
inputs/populationÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 è
4__inference_random_forest_model_3_layer_call_fn_2004¯¢
¢ÿ
øªô
H
CurrentHospitalizations-*
CurrentHospitalizationsÿÿÿÿÿÿÿÿÿ
6
CurrentlyInICU$!
CurrentlyInICUÿÿÿÿÿÿÿÿÿ
D
CurrentlyOnVentilator+(
CurrentlyOnVentilatorÿÿÿÿÿÿÿÿÿ
*
above_65
above_65ÿÿÿÿÿÿÿÿÿ
.

avg_income 

avg_incomeÿÿÿÿÿÿÿÿÿ
*
avg_temp
avg_tempÿÿÿÿÿÿÿÿÿ
6
avg_wind_speed$!
avg_wind_speedÿÿÿÿÿÿÿÿÿ
$
cases
casesÿÿÿÿÿÿÿÿÿ
&
deaths
deathsÿÿÿÿÿÿÿÿÿ
:
mean_travel_time&#
mean_travel_timeÿÿÿÿÿÿÿÿÿ
4
miles_of_road# 
miles_of_roadÿÿÿÿÿÿÿÿÿ
8
no_of_hospitals%"
no_of_hospitalsÿÿÿÿÿÿÿÿÿ
H
people_fully_vaccinated-*
people_fully_vaccinatedÿÿÿÿÿÿÿÿÿ
:
percent_democrat&#
percent_democratÿÿÿÿÿÿÿÿÿ
>
percent_in_poverty(%
percent_in_povertyÿÿÿÿÿÿÿÿÿ
4
percent_white# 
percent_whiteÿÿÿÿÿÿÿÿÿ
D
persons_per_household+(
persons_per_householdÿÿÿÿÿÿÿÿÿ
.

population 

populationÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿè
4__inference_random_forest_model_3_layer_call_fn_2124¯¢
¢ÿ
øªô
H
CurrentHospitalizations-*
CurrentHospitalizationsÿÿÿÿÿÿÿÿÿ
6
CurrentlyInICU$!
CurrentlyInICUÿÿÿÿÿÿÿÿÿ
D
CurrentlyOnVentilator+(
CurrentlyOnVentilatorÿÿÿÿÿÿÿÿÿ
*
above_65
above_65ÿÿÿÿÿÿÿÿÿ
.

avg_income 

avg_incomeÿÿÿÿÿÿÿÿÿ
*
avg_temp
avg_tempÿÿÿÿÿÿÿÿÿ
6
avg_wind_speed$!
avg_wind_speedÿÿÿÿÿÿÿÿÿ
$
cases
casesÿÿÿÿÿÿÿÿÿ
&
deaths
deathsÿÿÿÿÿÿÿÿÿ
:
mean_travel_time&#
mean_travel_timeÿÿÿÿÿÿÿÿÿ
4
miles_of_road# 
miles_of_roadÿÿÿÿÿÿÿÿÿ
8
no_of_hospitals%"
no_of_hospitalsÿÿÿÿÿÿÿÿÿ
H
people_fully_vaccinated-*
people_fully_vaccinatedÿÿÿÿÿÿÿÿÿ
:
percent_democrat&#
percent_democratÿÿÿÿÿÿÿÿÿ
>
percent_in_poverty(%
percent_in_povertyÿÿÿÿÿÿÿÿÿ
4
percent_white# 
percent_whiteÿÿÿÿÿÿÿÿÿ
D
persons_per_household+(
persons_per_householdÿÿÿÿÿÿÿÿÿ
.

population 

populationÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿæ	
4__inference_random_forest_model_3_layer_call_fn_2244­		¢	
	¢ý
öªò
O
CurrentHospitalizations41
inputs/CurrentHospitalizationsÿÿÿÿÿÿÿÿÿ
=
CurrentlyInICU+(
inputs/CurrentlyInICUÿÿÿÿÿÿÿÿÿ
K
CurrentlyOnVentilator2/
inputs/CurrentlyOnVentilatorÿÿÿÿÿÿÿÿÿ
1
above_65%"
inputs/above_65ÿÿÿÿÿÿÿÿÿ
5

avg_income'$
inputs/avg_incomeÿÿÿÿÿÿÿÿÿ
1
avg_temp%"
inputs/avg_tempÿÿÿÿÿÿÿÿÿ
=
avg_wind_speed+(
inputs/avg_wind_speedÿÿÿÿÿÿÿÿÿ
+
cases"
inputs/casesÿÿÿÿÿÿÿÿÿ
-
deaths# 
inputs/deathsÿÿÿÿÿÿÿÿÿ
A
mean_travel_time-*
inputs/mean_travel_timeÿÿÿÿÿÿÿÿÿ
;
miles_of_road*'
inputs/miles_of_roadÿÿÿÿÿÿÿÿÿ
?
no_of_hospitals,)
inputs/no_of_hospitalsÿÿÿÿÿÿÿÿÿ
O
people_fully_vaccinated41
inputs/people_fully_vaccinatedÿÿÿÿÿÿÿÿÿ
A
percent_democrat-*
inputs/percent_democratÿÿÿÿÿÿÿÿÿ
E
percent_in_poverty/,
inputs/percent_in_povertyÿÿÿÿÿÿÿÿÿ
;
percent_white*'
inputs/percent_whiteÿÿÿÿÿÿÿÿÿ
K
persons_per_household2/
inputs/persons_per_householdÿÿÿÿÿÿÿÿÿ
5

population'$
inputs/populationÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿæ	
4__inference_random_forest_model_3_layer_call_fn_2268­		¢	
	¢ý
öªò
O
CurrentHospitalizations41
inputs/CurrentHospitalizationsÿÿÿÿÿÿÿÿÿ
=
CurrentlyInICU+(
inputs/CurrentlyInICUÿÿÿÿÿÿÿÿÿ
K
CurrentlyOnVentilator2/
inputs/CurrentlyOnVentilatorÿÿÿÿÿÿÿÿÿ
1
above_65%"
inputs/above_65ÿÿÿÿÿÿÿÿÿ
5

avg_income'$
inputs/avg_incomeÿÿÿÿÿÿÿÿÿ
1
avg_temp%"
inputs/avg_tempÿÿÿÿÿÿÿÿÿ
=
avg_wind_speed+(
inputs/avg_wind_speedÿÿÿÿÿÿÿÿÿ
+
cases"
inputs/casesÿÿÿÿÿÿÿÿÿ
-
deaths# 
inputs/deathsÿÿÿÿÿÿÿÿÿ
A
mean_travel_time-*
inputs/mean_travel_timeÿÿÿÿÿÿÿÿÿ
;
miles_of_road*'
inputs/miles_of_roadÿÿÿÿÿÿÿÿÿ
?
no_of_hospitals,)
inputs/no_of_hospitalsÿÿÿÿÿÿÿÿÿ
O
people_fully_vaccinated41
inputs/people_fully_vaccinatedÿÿÿÿÿÿÿÿÿ
A
percent_democrat-*
inputs/percent_democratÿÿÿÿÿÿÿÿÿ
E
percent_in_poverty/,
inputs/percent_in_povertyÿÿÿÿÿÿÿÿÿ
;
percent_white*'
inputs/percent_whiteÿÿÿÿÿÿÿÿÿ
K
persons_per_household2/
inputs/persons_per_householdÿÿÿÿÿÿÿÿÿ
5

population'$
inputs/populationÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿæ
"__inference_signature_wrapper_2482¿¢
¢ 
øªô
H
CurrentHospitalizations-*
CurrentHospitalizationsÿÿÿÿÿÿÿÿÿ
6
CurrentlyInICU$!
CurrentlyInICUÿÿÿÿÿÿÿÿÿ
D
CurrentlyOnVentilator+(
CurrentlyOnVentilatorÿÿÿÿÿÿÿÿÿ
*
above_65
above_65ÿÿÿÿÿÿÿÿÿ
.

avg_income 

avg_incomeÿÿÿÿÿÿÿÿÿ
*
avg_temp
avg_tempÿÿÿÿÿÿÿÿÿ
6
avg_wind_speed$!
avg_wind_speedÿÿÿÿÿÿÿÿÿ
$
cases
casesÿÿÿÿÿÿÿÿÿ
&
deaths
deathsÿÿÿÿÿÿÿÿÿ
:
mean_travel_time&#
mean_travel_timeÿÿÿÿÿÿÿÿÿ
4
miles_of_road# 
miles_of_roadÿÿÿÿÿÿÿÿÿ
8
no_of_hospitals%"
no_of_hospitalsÿÿÿÿÿÿÿÿÿ
H
people_fully_vaccinated-*
people_fully_vaccinatedÿÿÿÿÿÿÿÿÿ
:
percent_democrat&#
percent_democratÿÿÿÿÿÿÿÿÿ
>
percent_in_poverty(%
percent_in_povertyÿÿÿÿÿÿÿÿÿ
4
percent_white# 
percent_whiteÿÿÿÿÿÿÿÿÿ
D
persons_per_household+(
persons_per_householdÿÿÿÿÿÿÿÿÿ
.

population 

populationÿÿÿÿÿÿÿÿÿ"3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿK
,__inference_yggdrasil_model_path_tensor_2456$¢

¢ 
ª " 