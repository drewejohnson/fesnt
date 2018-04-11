
% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.30' ;
COMPILE_DATE              (idx, [1: 20])  = 'Feb 15 2018 08:24:03' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1:  8])  = 'Untitled' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1:  8])  = 'fp_1D_1G' ;
WORKING_DIRECTORY         (idx, [1: 38])  = '/home/ajohnson400/classes/models-fesnt' ;
HOSTNAME                  (idx, [1: 14])  = 'ME04L0358GRD04' ;
CPU_TYPE                  (idx, [1: 40])  = 'Intel(R) Core(TM) i7-6700T CPU @ 2.80GHz' ;
CPU_MHZ                   (idx, 1)        = 194.0 ;
START_DATE                (idx, [1: 24])  = 'Wed Apr 11 09:24:12 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Wed Apr 11 09:28:02 2018' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 1000 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1523453052 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 4 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:   4]) = [  1.01198E+00  9.87640E-01  1.01490E+00  9.85481E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 22])  = '/xs/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1: 18])  = '/xs/sss_endfb7.nfy' ;
NFY_DATA_FILE_PATH        (idx, [1: 18])  = '/xs/sss_endfb7.nfy' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 3.6E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  5.12730E-03 0.00080  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.94873E-01 4.1E-06  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  6.20919E-01 5.5E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  6.21192E-01 5.5E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  2.83553E+00 0.00016  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.85457E+01 0.00017  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  2.85457E+01 0.00017  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  1.74077E+01 0.00025  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.03494E-01 0.00086  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 1000 ;
SOURCE_POPULATION         (idx, 1)        = 10001448 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00014E+04 0.00057 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00014E+04 0.00057 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  1.52653E+01 ;
RUNNING_TIME              (idx, 1)        =  3.83247E+00 ;
INIT_TIME                 (idx, [1:  2])  = [  2.08167E-02  2.08167E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  2.83335E-04  2.83335E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  3.81135E+00  3.81135E+00  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  3.83242E+00  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 3.98315 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.99957E+00 6.9E-05 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.79682E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 15935.15 ;
ALLOC_MEMSIZE             (idx, 1)        = 275.68;
MEMSIZE                   (idx, 1)        = 205.32;
XS_MEMSIZE                (idx, 1)        = 122.17;
MAT_MEMSIZE               (idx, 1)        = 15.35;
RES_MEMSIZE               (idx, 1)        = 2.37;
MISC_MEMSIZE              (idx, 1)        = 65.43;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 70.36;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 7 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 125480 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 5 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 15 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 15 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 472 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 0 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, 1)        =  0.00000E+00 ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  0.00000E+00 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  9.98022E-05 0.00029  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  1.09473E+00 0.00066 ];
U235_FISS                 (idx, [1:   4]) = [  3.31846E-01 0.00046  8.57001E-01 0.00021 ];
U238_FISS                 (idx, [1:   4]) = [  5.52670E-02 0.00143  1.42711E-01 0.00128 ];
U235_CAPT                 (idx, [1:   4]) = [  1.03827E-01 0.00095  1.69300E-01 0.00088 ];
U238_CAPT                 (idx, [1:   4]) = [  4.74448E-01 0.00048  7.73610E-01 0.00022 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 10001448 1.00000E+07 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 2.49512E+04 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 10001448 1.00250E+07 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 6129786 6.14496E+06 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 3871662 3.87999E+06 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 10001448 1.00250E+07 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -1.28523E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.25861E-11 0.00023 ];
TOT_POWDENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.63516E-01 0.00023 ];
TOT_FISSRATE              (idx, [1:   2]) = [  3.87078E-01 0.00023 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.12922E-01 0.00015 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98022E-01 0.00029 ];
TOT_FLUX                  (idx, [1:   2]) = [  5.96097E+01 0.00022 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.85570E+01 0.00019 ];
INI_FMASS                 (idx, 1)        =  0.00000E+00 ;
TOT_FMASS                 (idx, 1)        =  0.00000E+00 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.80565E+00 0.00040 ];
SIX_FF_F                  (idx, [1:   2]) = [  9.68557E-01 0.00012 ];
SIX_FF_P                  (idx, [1:   2]) = [  2.43886E-01 0.00057 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  2.26517E+00 0.00060 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  9.65819E-01 0.00040 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  9.65819E-01 0.00040 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.48921E+00 1.6E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02948E+02 1.9E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  9.65889E-01 0.00041  9.58928E-01 0.00040  6.89052E-03 0.00582 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.65921E-01 0.00023 ];
COL_KEFF                  (idx, [1:   2]) = [  9.65526E-01 0.00042 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.65921E-01 0.00023 ];
ABS_KINF                  (idx, [1:   2]) = [  9.65921E-01 0.00023 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.37057E+01 0.00024 ];
IMP_ALF                   (idx, [1:   2]) = [  1.37083E+01 0.00016 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.24438E-05 0.00331 ];
IMP_EALF                  (idx, [1:   2]) = [  2.23174E-05 0.00220 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  4.75085E-01 0.00134 ];
IMP_AFGE                  (idx, [1:   2]) = [  4.74879E-01 0.00070 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  8.29076E-03 0.00376  2.09778E-04 0.02252  1.24404E-03 0.00912  1.25031E-03 0.00908  3.79773E-03 0.00534  1.35926E-03 0.00878  4.29639E-04 0.01562 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.62273E-01 0.00807  1.07548E-02 0.01271  3.14453E-02 0.00021  1.11039E-01 0.00024  3.24381E-01 0.00019  1.33839E+00 0.00012  9.00092E+00 0.00412 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.28232E-03 0.00613  1.86158E-04 0.03979  1.08254E-03 0.01554  1.09581E-03 0.01551  3.32935E-03 0.00911  1.20999E-03 0.01465  3.78473E-04 0.02740 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.69455E-01 0.01428  1.24910E-02 3.0E-06  3.14572E-02 0.00032  1.11036E-01 0.00039  3.24412E-01 0.00030  1.33824E+00 0.00019  9.15091E+00 0.00164 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  1.09039E-05 0.00098  1.08882E-05 0.00099  1.30920E-05 0.00973 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  1.05302E-05 0.00090  1.05151E-05 0.00091  1.26438E-05 0.00971 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.13492E-03 0.00588  1.74211E-04 0.03880  1.06331E-03 0.01537  1.07418E-03 0.01606  3.27771E-03 0.00904  1.17299E-03 0.01549  3.72526E-04 0.02617 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.65628E-01 0.01370  1.24910E-02 3.8E-06  3.14459E-02 0.00038  1.11005E-01 0.00046  3.24425E-01 0.00031  1.33850E+00 0.00023  9.15218E+00 0.00212 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  1.09090E-05 0.00252  1.08960E-05 0.00254  1.23887E-05 0.02589 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  1.05350E-05 0.00248  1.05224E-05 0.00250  1.19687E-05 0.02589 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  7.07882E-03 0.01954  1.63714E-04 0.12576  1.13418E-03 0.05197  1.09278E-03 0.05237  3.10205E-03 0.02929  1.19134E-03 0.04749  3.94764E-04 0.08530 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  9.02244E-01 0.04683  1.24909E-02 7.7E-06  3.14359E-02 0.00092  1.11223E-01 0.00112  3.24512E-01 0.00096  1.33825E+00 0.00052  9.19061E+00 0.00485 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.08084E-03 0.01914  1.71110E-04 0.12389  1.13762E-03 0.05136  1.08806E-03 0.05091  3.10471E-03 0.02894  1.19455E-03 0.04688  3.84792E-04 0.08153 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  9.05104E-01 0.04604  1.24909E-02 7.7E-06  3.14388E-02 0.00092  1.11227E-01 0.00112  3.24578E-01 0.00096  1.33806E+00 0.00052  9.18524E+00 0.00484 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -6.54746E+02 0.01981 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  1.09355E-05 0.00059 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  1.05608E-05 0.00043 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.07308E-03 0.00388 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -6.46993E+02 0.00391 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.03581E-07 0.00058 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  5.62069E-06 0.00050  5.62022E-06 0.00050  5.67321E-06 0.00564 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  1.64093E-05 0.00061  1.64096E-05 0.00061  1.63622E-05 0.00690 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  2.44766E-01 0.00057  2.44684E-01 0.00057  2.58638E-01 0.00826 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  9.70927E+00 0.00912 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  2.85457E+01 0.00017  3.02695E+01 0.00030 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  2])  = '10' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 1 ;
MACRO_E                   (idx, [1:   2]) = [  1.00000E+37  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  3.70248E+04 0.00281  1.59888E+05 0.00137  3.62595E+05 0.00083  4.20206E+05 0.00077  4.50984E+05 0.00074  6.78899E+05 0.00045  4.66651E+05 0.00053  4.79344E+05 0.00058  3.73049E+05 0.00064  3.00558E+05 0.00066  2.54829E+05 0.00071  2.29695E+05 0.00068  2.06539E+05 0.00071  1.92982E+05 0.00067  1.83112E+05 0.00088  1.56026E+05 0.00081  1.49055E+05 0.00102  1.46183E+05 0.00080  1.38718E+05 0.00093  2.56218E+05 0.00065  2.26924E+05 0.00075  1.48811E+05 0.00091  8.86187E+04 0.00078  9.06375E+04 0.00117  7.57879E+04 0.00107  7.15239E+04 0.00136  9.17557E+04 0.00116  2.27877E+04 0.00229  2.88128E+04 0.00188  2.66068E+04 0.00209  1.49801E+04 0.00252  2.62863E+04 0.00210  1.76221E+04 0.00205  1.41735E+04 0.00220  2.55656E+03 0.00457  2.53538E+03 0.00362  2.60782E+03 0.00428  2.68184E+03 0.00388  2.67377E+03 0.00491  2.63635E+03 0.00412  2.72839E+03 0.00423  2.58121E+03 0.00448  4.87229E+03 0.00365  7.75147E+03 0.00304  9.76301E+03 0.00244  2.53696E+04 0.00163  2.53095E+04 0.00178  2.43319E+04 0.00221  1.38104E+04 0.00231  8.90421E+03 0.00219  6.24868E+03 0.00288  6.62930E+03 0.00270  1.09071E+04 0.00203  1.26160E+04 0.00230  1.99856E+04 0.00224  2.41913E+04 0.00167  2.80450E+04 0.00155  1.49681E+04 0.00171  9.60298E+03 0.00219  6.35058E+03 0.00222  5.37540E+03 0.00262  4.99382E+03 0.00239  3.98499E+03 0.00251  2.55497E+03 0.00309  2.28882E+03 0.00380  1.91979E+03 0.00336  1.53050E+03 0.00374  1.14834E+03 0.00460  6.98737E+02 0.00411  2.17508E+02 0.00865 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  9.94502E-01 0.00039 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   2]) = [  3.43980E+01 0.00022 ];
INF_FISS_FLX              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   2]) = [  4.22827E-01 4.9E-05 ];
INF_CAPT                  (idx, [1:   2]) = [  1.69716E-02 0.00026 ];
INF_ABS                   (idx, [1:   2]) = [  2.82257E-02 0.00022 ];
INF_FISS                  (idx, [1:   2]) = [  1.12540E-02 0.00029 ];
INF_NSF                   (idx, [1:   2]) = [  2.80136E-02 0.00029 ];
INF_NUBAR                 (idx, [1:   2]) = [  2.48920E+00 1.6E-05 ];
INF_KAPPA                 (idx, [1:   2]) = [  2.02948E+02 1.8E-06 ];
INF_INVV                  (idx, [1:   2]) = [  1.01115E-07 0.00041 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   2]) = [  3.94590E-01 5.1E-05 ];
INF_SCATT1                (idx, [1:   2]) = [  3.88492E-02 0.00052 ];
INF_SCATT2                (idx, [1:   2]) = [  1.77534E-02 0.00100 ];
INF_SCATT3                (idx, [1:   2]) = [  8.56946E-03 0.00188 ];
INF_SCATT4                (idx, [1:   2]) = [  5.15402E-03 0.00219 ];
INF_SCATT5                (idx, [1:   2]) = [  2.51253E-03 0.00341 ];
INF_SCATT6                (idx, [1:   2]) = [  1.26785E-03 0.00727 ];
INF_SCATT7                (idx, [1:   2]) = [  4.97530E-04 0.01646 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   2]) = [  3.94659E-01 5.1E-05 ];
INF_SCATTP1               (idx, [1:   2]) = [  3.88501E-02 0.00052 ];
INF_SCATTP2               (idx, [1:   2]) = [  1.77533E-02 0.00100 ];
INF_SCATTP3               (idx, [1:   2]) = [  8.56930E-03 0.00188 ];
INF_SCATTP4               (idx, [1:   2]) = [  5.15399E-03 0.00219 ];
INF_SCATTP5               (idx, [1:   2]) = [  2.51255E-03 0.00341 ];
INF_SCATTP6               (idx, [1:   2]) = [  1.26780E-03 0.00731 ];
INF_SCATTP7               (idx, [1:   2]) = [  4.97498E-04 0.01648 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   2]) = [  3.23452E-01 0.00016 ];
INF_DIFFCOEF              (idx, [1:   2]) = [  1.03055E+00 0.00016 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   2]) = [  2.81567E-02 0.00022 ];
INF_REMXS                 (idx, [1:   2]) = [  2.82375E-02 0.00021 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission spectra:

INF_CHIT                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   2]) = [  3.94590E-01 5.1E-05 ];
INF_S1                    (idx, [1:   2]) = [  3.88492E-02 0.00052 ];
INF_S2                    (idx, [1:   2]) = [  1.77534E-02 0.00100 ];
INF_S3                    (idx, [1:   2]) = [  8.56946E-03 0.00188 ];
INF_S4                    (idx, [1:   2]) = [  5.15402E-03 0.00219 ];
INF_S5                    (idx, [1:   2]) = [  2.51253E-03 0.00341 ];
INF_S6                    (idx, [1:   2]) = [  1.26785E-03 0.00727 ];
INF_S7                    (idx, [1:   2]) = [  4.97530E-04 0.01646 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   2]) = [  3.94659E-01 5.1E-05 ];
INF_SP1                   (idx, [1:   2]) = [  3.88501E-02 0.00052 ];
INF_SP2                   (idx, [1:   2]) = [  1.77533E-02 0.00100 ];
INF_SP3                   (idx, [1:   2]) = [  8.56930E-03 0.00188 ];
INF_SP4                   (idx, [1:   2]) = [  5.15399E-03 0.00219 ];
INF_SP5                   (idx, [1:   2]) = [  2.51255E-03 0.00341 ];
INF_SP6                   (idx, [1:   2]) = [  1.26780E-03 0.00731 ];
INF_SP7                   (idx, [1:   2]) = [  4.97498E-04 0.01648 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   2]) = [  1.71382E-01 0.00050 ];
CMM_TRANSPXS_X            (idx, [1:   2]) = [  1.71795E-01 0.00067 ];
CMM_TRANSPXS_Y            (idx, [1:   2]) = [  1.71347E-01 0.00071 ];
CMM_TRANSPXS_Z            (idx, [1:   2]) = [  1.71011E-01 0.00065 ];
CMM_DIFFCOEF              (idx, [1:   2]) = [  1.94500E+00 0.00050 ];
CMM_DIFFCOEF_X            (idx, [1:   2]) = [  1.94034E+00 0.00067 ];
CMM_DIFFCOEF_Y            (idx, [1:   2]) = [  1.94542E+00 0.00071 ];
CMM_DIFFCOEF_Z            (idx, [1:   2]) = [  1.94923E+00 0.00065 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  7.28232E-03 0.00613  1.86158E-04 0.03979  1.08254E-03 0.01554  1.09581E-03 0.01551  3.32935E-03 0.00911  1.20999E-03 0.01465  3.78473E-04 0.02740 ];
LAMBDA                    (idx, [1:  14]) = [  8.69455E-01 0.01428  1.24910E-02 3.0E-06  3.14572E-02 0.00032  1.11036E-01 0.00039  3.24412E-01 0.00030  1.33824E+00 0.00019  9.15091E+00 0.00164 ];


% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.30' ;
COMPILE_DATE              (idx, [1: 20])  = 'Feb 15 2018 08:24:03' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1:  8])  = 'Untitled' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1:  8])  = 'fp_1D_1G' ;
WORKING_DIRECTORY         (idx, [1: 38])  = '/home/ajohnson400/classes/models-fesnt' ;
HOSTNAME                  (idx, [1: 14])  = 'ME04L0358GRD04' ;
CPU_TYPE                  (idx, [1: 40])  = 'Intel(R) Core(TM) i7-6700T CPU @ 2.80GHz' ;
CPU_MHZ                   (idx, 1)        = 194.0 ;
START_DATE                (idx, [1: 24])  = 'Wed Apr 11 09:24:12 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Wed Apr 11 09:28:02 2018' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 1000 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1523453052 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 4 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:   4]) = [  1.01198E+00  9.87640E-01  1.01490E+00  9.85481E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 22])  = '/xs/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1: 18])  = '/xs/sss_endfb7.nfy' ;
NFY_DATA_FILE_PATH        (idx, [1: 18])  = '/xs/sss_endfb7.nfy' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 3.6E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  5.12730E-03 0.00080  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.94873E-01 4.1E-06  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  6.20919E-01 5.5E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  6.21192E-01 5.5E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  2.83553E+00 0.00016  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.85457E+01 0.00017  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  2.85457E+01 0.00017  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  1.74077E+01 0.00025  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.03494E-01 0.00086  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 1000 ;
SOURCE_POPULATION         (idx, 1)        = 10001448 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00014E+04 0.00057 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00014E+04 0.00057 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  1.52653E+01 ;
RUNNING_TIME              (idx, 1)        =  3.83247E+00 ;
INIT_TIME                 (idx, [1:  2])  = [  2.08167E-02  2.08167E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  2.83335E-04  2.83335E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  3.81135E+00  3.81135E+00  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  3.83242E+00  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 3.98315 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.99957E+00 6.9E-05 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.79682E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 15935.15 ;
ALLOC_MEMSIZE             (idx, 1)        = 275.68;
MEMSIZE                   (idx, 1)        = 205.32;
XS_MEMSIZE                (idx, 1)        = 122.17;
MAT_MEMSIZE               (idx, 1)        = 15.35;
RES_MEMSIZE               (idx, 1)        = 2.37;
MISC_MEMSIZE              (idx, 1)        = 65.43;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 70.36;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 7 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 125480 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 5 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 15 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 15 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 472 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 0 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, 1)        =  0.00000E+00 ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  0.00000E+00 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  9.98022E-05 0.00029  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  1.09473E+00 0.00066 ];
U235_FISS                 (idx, [1:   4]) = [  3.31846E-01 0.00046  8.57001E-01 0.00021 ];
U238_FISS                 (idx, [1:   4]) = [  5.52670E-02 0.00143  1.42711E-01 0.00128 ];
U235_CAPT                 (idx, [1:   4]) = [  1.03827E-01 0.00095  1.69300E-01 0.00088 ];
U238_CAPT                 (idx, [1:   4]) = [  4.74448E-01 0.00048  7.73610E-01 0.00022 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 10001448 1.00000E+07 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 2.49512E+04 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 10001448 1.00250E+07 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 6129786 6.14496E+06 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 3871662 3.87999E+06 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 10001448 1.00250E+07 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -1.28523E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.25861E-11 0.00023 ];
TOT_POWDENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.63516E-01 0.00023 ];
TOT_FISSRATE              (idx, [1:   2]) = [  3.87078E-01 0.00023 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.12922E-01 0.00015 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98022E-01 0.00029 ];
TOT_FLUX                  (idx, [1:   2]) = [  5.96097E+01 0.00022 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.85570E+01 0.00019 ];
INI_FMASS                 (idx, 1)        =  0.00000E+00 ;
TOT_FMASS                 (idx, 1)        =  0.00000E+00 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.80565E+00 0.00040 ];
SIX_FF_F                  (idx, [1:   2]) = [  9.68557E-01 0.00012 ];
SIX_FF_P                  (idx, [1:   2]) = [  2.43886E-01 0.00057 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  2.26517E+00 0.00060 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  9.65819E-01 0.00040 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  9.65819E-01 0.00040 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.48921E+00 1.6E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02948E+02 1.9E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  9.65889E-01 0.00041  9.58928E-01 0.00040  6.89052E-03 0.00582 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.65921E-01 0.00023 ];
COL_KEFF                  (idx, [1:   2]) = [  9.65526E-01 0.00042 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.65921E-01 0.00023 ];
ABS_KINF                  (idx, [1:   2]) = [  9.65921E-01 0.00023 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.37057E+01 0.00024 ];
IMP_ALF                   (idx, [1:   2]) = [  1.37083E+01 0.00016 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.24438E-05 0.00331 ];
IMP_EALF                  (idx, [1:   2]) = [  2.23174E-05 0.00220 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  4.75085E-01 0.00134 ];
IMP_AFGE                  (idx, [1:   2]) = [  4.74879E-01 0.00070 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  8.29076E-03 0.00376  2.09778E-04 0.02252  1.24404E-03 0.00912  1.25031E-03 0.00908  3.79773E-03 0.00534  1.35926E-03 0.00878  4.29639E-04 0.01562 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.62273E-01 0.00807  1.07548E-02 0.01271  3.14453E-02 0.00021  1.11039E-01 0.00024  3.24381E-01 0.00019  1.33839E+00 0.00012  9.00092E+00 0.00412 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.28232E-03 0.00613  1.86158E-04 0.03979  1.08254E-03 0.01554  1.09581E-03 0.01551  3.32935E-03 0.00911  1.20999E-03 0.01465  3.78473E-04 0.02740 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.69455E-01 0.01428  1.24910E-02 3.0E-06  3.14572E-02 0.00032  1.11036E-01 0.00039  3.24412E-01 0.00030  1.33824E+00 0.00019  9.15091E+00 0.00164 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  1.09039E-05 0.00098  1.08882E-05 0.00099  1.30920E-05 0.00973 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  1.05302E-05 0.00090  1.05151E-05 0.00091  1.26438E-05 0.00971 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.13492E-03 0.00588  1.74211E-04 0.03880  1.06331E-03 0.01537  1.07418E-03 0.01606  3.27771E-03 0.00904  1.17299E-03 0.01549  3.72526E-04 0.02617 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.65628E-01 0.01370  1.24910E-02 3.8E-06  3.14459E-02 0.00038  1.11005E-01 0.00046  3.24425E-01 0.00031  1.33850E+00 0.00023  9.15218E+00 0.00212 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  1.09090E-05 0.00252  1.08960E-05 0.00254  1.23887E-05 0.02589 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  1.05350E-05 0.00248  1.05224E-05 0.00250  1.19687E-05 0.02589 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  7.07882E-03 0.01954  1.63714E-04 0.12576  1.13418E-03 0.05197  1.09278E-03 0.05237  3.10205E-03 0.02929  1.19134E-03 0.04749  3.94764E-04 0.08530 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  9.02244E-01 0.04683  1.24909E-02 7.7E-06  3.14359E-02 0.00092  1.11223E-01 0.00112  3.24512E-01 0.00096  1.33825E+00 0.00052  9.19061E+00 0.00485 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.08084E-03 0.01914  1.71110E-04 0.12389  1.13762E-03 0.05136  1.08806E-03 0.05091  3.10471E-03 0.02894  1.19455E-03 0.04688  3.84792E-04 0.08153 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  9.05104E-01 0.04604  1.24909E-02 7.7E-06  3.14388E-02 0.00092  1.11227E-01 0.00112  3.24578E-01 0.00096  1.33806E+00 0.00052  9.18524E+00 0.00484 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -6.54746E+02 0.01981 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  1.09355E-05 0.00059 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  1.05608E-05 0.00043 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.07308E-03 0.00388 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -6.46993E+02 0.00391 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.03581E-07 0.00058 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  5.62069E-06 0.00050  5.62022E-06 0.00050  5.67321E-06 0.00564 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  1.64093E-05 0.00061  1.64096E-05 0.00061  1.63622E-05 0.00690 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  2.44766E-01 0.00057  2.44684E-01 0.00057  2.58638E-01 0.00826 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  9.70927E+00 0.00912 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  2.85457E+01 0.00017  3.02695E+01 0.00030 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  2])  = '11' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 1 ;
MACRO_E                   (idx, [1:   2]) = [  1.00000E+37  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  1.19169E+04 0.00367  5.18191E+04 0.00213  1.17558E+05 0.00118  1.36960E+05 0.00103  1.47382E+05 0.00097  2.21465E+05 0.00077  1.52631E+05 0.00070  1.56388E+05 0.00079  1.22041E+05 0.00080  9.85838E+04 0.00087  8.37908E+04 0.00096  7.59002E+04 0.00103  6.83164E+04 0.00123  6.39243E+04 0.00140  6.07600E+04 0.00105  5.18632E+04 0.00135  4.95229E+04 0.00149  4.87113E+04 0.00150  4.61624E+04 0.00161  8.53242E+04 0.00111  7.59207E+04 0.00110  5.00143E+04 0.00138  2.97902E+04 0.00211  3.08824E+04 0.00212  2.59315E+04 0.00209  2.39269E+04 0.00186  3.16594E+04 0.00197  7.55129E+03 0.00359  9.49844E+03 0.00311  8.80742E+03 0.00407  4.97331E+03 0.00382  8.69317E+03 0.00389  5.86865E+03 0.00422  4.71993E+03 0.00413  8.60051E+02 0.00885  8.38135E+02 0.01046  8.67989E+02 0.00996  9.03040E+02 0.01020  8.72566E+02 0.01025  8.73751E+02 0.00950  9.13766E+02 0.01026  8.56430E+02 0.00817  1.62813E+03 0.00697  2.57123E+03 0.00471  3.28337E+03 0.00523  8.46806E+03 0.00373  8.43549E+03 0.00366  8.16124E+03 0.00324  4.64758E+03 0.00377  2.99258E+03 0.00442  2.11256E+03 0.00648  2.25735E+03 0.00588  3.71153E+03 0.00373  4.26990E+03 0.00414  6.77158E+03 0.00374  8.22014E+03 0.00289  9.59902E+03 0.00300  5.13762E+03 0.00377  3.33107E+03 0.00548  2.24506E+03 0.00572  1.87386E+03 0.00636  1.77049E+03 0.00628  1.41372E+03 0.00621  8.97869E+02 0.00875  8.24682E+02 0.00760  6.98912E+02 0.01087  5.65987E+02 0.01293  4.30722E+02 0.01160  2.74339E+02 0.01691  8.91522E+01 0.02271 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   2]) = [  1.13421E+01 0.00023 ];
INF_FISS_FLX              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   2]) = [  3.23365E-01 6.0E-05 ];
INF_CAPT                  (idx, [1:   2]) = [  1.71964E-03 0.00071 ];
INF_ABS                   (idx, [1:   2]) = [  1.71964E-03 0.00071 ];
INF_FISS                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_NSF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_NUBAR                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_INVV                  (idx, [1:   2]) = [  1.04755E-07 0.00090 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   2]) = [  3.21644E-01 6.1E-05 ];
INF_SCATT1                (idx, [1:   2]) = [  3.50548E-02 0.00093 ];
INF_SCATT2                (idx, [1:   2]) = [  1.85061E-02 0.00150 ];
INF_SCATT3                (idx, [1:   2]) = [  4.18988E-03 0.00436 ];
INF_SCATT4                (idx, [1:   2]) = [  3.12864E-03 0.00576 ];
INF_SCATT5                (idx, [1:   2]) = [  1.12206E-03 0.01583 ];
INF_SCATT6                (idx, [1:   2]) = [  6.16996E-04 0.02709 ];
INF_SCATT7                (idx, [1:   2]) = [  1.47017E-04 0.09943 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   2]) = [  3.21654E-01 6.1E-05 ];
INF_SCATTP1               (idx, [1:   2]) = [  3.50548E-02 0.00093 ];
INF_SCATTP2               (idx, [1:   2]) = [  1.85061E-02 0.00150 ];
INF_SCATTP3               (idx, [1:   2]) = [  4.18984E-03 0.00437 ];
INF_SCATTP4               (idx, [1:   2]) = [  3.12872E-03 0.00576 ];
INF_SCATTP5               (idx, [1:   2]) = [  1.12215E-03 0.01583 ];
INF_SCATTP6               (idx, [1:   2]) = [  6.16950E-04 0.02713 ];
INF_SCATTP7               (idx, [1:   2]) = [  1.47007E-04 0.09946 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   2]) = [  2.51729E-01 0.00024 ];
INF_DIFFCOEF              (idx, [1:   2]) = [  1.32418E+00 0.00024 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   2]) = [  1.70920E-03 0.00075 ];
INF_REMXS                 (idx, [1:   2]) = [  1.72185E-03 0.00225 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission spectra:

INF_CHIT                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   2]) = [  3.21644E-01 6.1E-05 ];
INF_S1                    (idx, [1:   2]) = [  3.50548E-02 0.00093 ];
INF_S2                    (idx, [1:   2]) = [  1.85061E-02 0.00150 ];
INF_S3                    (idx, [1:   2]) = [  4.18988E-03 0.00436 ];
INF_S4                    (idx, [1:   2]) = [  3.12864E-03 0.00576 ];
INF_S5                    (idx, [1:   2]) = [  1.12206E-03 0.01583 ];
INF_S6                    (idx, [1:   2]) = [  6.16996E-04 0.02709 ];
INF_S7                    (idx, [1:   2]) = [  1.47017E-04 0.09943 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   2]) = [  3.21654E-01 6.1E-05 ];
INF_SP1                   (idx, [1:   2]) = [  3.50548E-02 0.00093 ];
INF_SP2                   (idx, [1:   2]) = [  1.85061E-02 0.00150 ];
INF_SP3                   (idx, [1:   2]) = [  4.18984E-03 0.00437 ];
INF_SP4                   (idx, [1:   2]) = [  3.12872E-03 0.00576 ];
INF_SP5                   (idx, [1:   2]) = [  1.12215E-03 0.01583 ];
INF_SP6                   (idx, [1:   2]) = [  6.16950E-04 0.02713 ];
INF_SP7                   (idx, [1:   2]) = [  1.47007E-04 0.09946 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   2]) = [  2.81829E+00 0.00085 ];
CMM_TRANSPXS_X            (idx, [1:   2]) = [  2.82516E+00 0.00097 ];
CMM_TRANSPXS_Y            (idx, [1:   2]) = [  2.81755E+00 0.00087 ];
CMM_TRANSPXS_Z            (idx, [1:   2]) = [  2.81228E+00 0.00102 ];
CMM_DIFFCOEF              (idx, [1:   2]) = [  1.18279E-01 0.00084 ];
CMM_DIFFCOEF_X            (idx, [1:   2]) = [  1.17993E-01 0.00097 ];
CMM_DIFFCOEF_Y            (idx, [1:   2]) = [  1.18311E-01 0.00086 ];
CMM_DIFFCOEF_Z            (idx, [1:   2]) = [  1.18534E-01 0.00102 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
LAMBDA                    (idx, [1:  14]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];


% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.30' ;
COMPILE_DATE              (idx, [1: 20])  = 'Feb 15 2018 08:24:03' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1:  8])  = 'Untitled' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1:  8])  = 'fp_1D_1G' ;
WORKING_DIRECTORY         (idx, [1: 38])  = '/home/ajohnson400/classes/models-fesnt' ;
HOSTNAME                  (idx, [1: 14])  = 'ME04L0358GRD04' ;
CPU_TYPE                  (idx, [1: 40])  = 'Intel(R) Core(TM) i7-6700T CPU @ 2.80GHz' ;
CPU_MHZ                   (idx, 1)        = 194.0 ;
START_DATE                (idx, [1: 24])  = 'Wed Apr 11 09:24:12 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Wed Apr 11 09:28:02 2018' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 1000 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1523453052 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 4 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:   4]) = [  1.01198E+00  9.87640E-01  1.01490E+00  9.85481E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 22])  = '/xs/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1: 18])  = '/xs/sss_endfb7.nfy' ;
NFY_DATA_FILE_PATH        (idx, [1: 18])  = '/xs/sss_endfb7.nfy' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 3.6E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  5.12730E-03 0.00080  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.94873E-01 4.1E-06  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  6.20919E-01 5.5E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  6.21192E-01 5.5E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  2.83553E+00 0.00016  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.85457E+01 0.00017  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  2.85457E+01 0.00017  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  1.74077E+01 0.00025  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.03494E-01 0.00086  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 1000 ;
SOURCE_POPULATION         (idx, 1)        = 10001448 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00014E+04 0.00057 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00014E+04 0.00057 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  1.52653E+01 ;
RUNNING_TIME              (idx, 1)        =  3.83247E+00 ;
INIT_TIME                 (idx, [1:  2])  = [  2.08167E-02  2.08167E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  2.83335E-04  2.83335E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  3.81135E+00  3.81135E+00  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  3.83242E+00  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 3.98316 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.99957E+00 6.9E-05 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.79682E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 15935.15 ;
ALLOC_MEMSIZE             (idx, 1)        = 275.68;
MEMSIZE                   (idx, 1)        = 205.32;
XS_MEMSIZE                (idx, 1)        = 122.17;
MAT_MEMSIZE               (idx, 1)        = 15.35;
RES_MEMSIZE               (idx, 1)        = 2.37;
MISC_MEMSIZE              (idx, 1)        = 65.43;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 70.36;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 7 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 125480 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 5 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 15 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 15 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 472 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 0 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, 1)        =  0.00000E+00 ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  0.00000E+00 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  9.98022E-05 0.00029  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  1.09473E+00 0.00066 ];
U235_FISS                 (idx, [1:   4]) = [  3.31846E-01 0.00046  8.57001E-01 0.00021 ];
U238_FISS                 (idx, [1:   4]) = [  5.52670E-02 0.00143  1.42711E-01 0.00128 ];
U235_CAPT                 (idx, [1:   4]) = [  1.03827E-01 0.00095  1.69300E-01 0.00088 ];
U238_CAPT                 (idx, [1:   4]) = [  4.74448E-01 0.00048  7.73610E-01 0.00022 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 10001448 1.00000E+07 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 2.49512E+04 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 10001448 1.00250E+07 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 6129786 6.14496E+06 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 3871662 3.87999E+06 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 10001448 1.00250E+07 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -1.28523E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.25861E-11 0.00023 ];
TOT_POWDENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.63516E-01 0.00023 ];
TOT_FISSRATE              (idx, [1:   2]) = [  3.87078E-01 0.00023 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.12922E-01 0.00015 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98022E-01 0.00029 ];
TOT_FLUX                  (idx, [1:   2]) = [  5.96097E+01 0.00022 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.85570E+01 0.00019 ];
INI_FMASS                 (idx, 1)        =  0.00000E+00 ;
TOT_FMASS                 (idx, 1)        =  0.00000E+00 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.80565E+00 0.00040 ];
SIX_FF_F                  (idx, [1:   2]) = [  9.68557E-01 0.00012 ];
SIX_FF_P                  (idx, [1:   2]) = [  2.43886E-01 0.00057 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  2.26517E+00 0.00060 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  9.65819E-01 0.00040 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  9.65819E-01 0.00040 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.48921E+00 1.6E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02948E+02 1.9E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  9.65889E-01 0.00041  9.58928E-01 0.00040  6.89052E-03 0.00582 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.65921E-01 0.00023 ];
COL_KEFF                  (idx, [1:   2]) = [  9.65526E-01 0.00042 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.65921E-01 0.00023 ];
ABS_KINF                  (idx, [1:   2]) = [  9.65921E-01 0.00023 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.37057E+01 0.00024 ];
IMP_ALF                   (idx, [1:   2]) = [  1.37083E+01 0.00016 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.24438E-05 0.00331 ];
IMP_EALF                  (idx, [1:   2]) = [  2.23174E-05 0.00220 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  4.75085E-01 0.00134 ];
IMP_AFGE                  (idx, [1:   2]) = [  4.74879E-01 0.00070 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  8.29076E-03 0.00376  2.09778E-04 0.02252  1.24404E-03 0.00912  1.25031E-03 0.00908  3.79773E-03 0.00534  1.35926E-03 0.00878  4.29639E-04 0.01562 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.62273E-01 0.00807  1.07548E-02 0.01271  3.14453E-02 0.00021  1.11039E-01 0.00024  3.24381E-01 0.00019  1.33839E+00 0.00012  9.00092E+00 0.00412 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.28232E-03 0.00613  1.86158E-04 0.03979  1.08254E-03 0.01554  1.09581E-03 0.01551  3.32935E-03 0.00911  1.20999E-03 0.01465  3.78473E-04 0.02740 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.69455E-01 0.01428  1.24910E-02 3.0E-06  3.14572E-02 0.00032  1.11036E-01 0.00039  3.24412E-01 0.00030  1.33824E+00 0.00019  9.15091E+00 0.00164 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  1.09039E-05 0.00098  1.08882E-05 0.00099  1.30920E-05 0.00973 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  1.05302E-05 0.00090  1.05151E-05 0.00091  1.26438E-05 0.00971 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.13492E-03 0.00588  1.74211E-04 0.03880  1.06331E-03 0.01537  1.07418E-03 0.01606  3.27771E-03 0.00904  1.17299E-03 0.01549  3.72526E-04 0.02617 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.65628E-01 0.01370  1.24910E-02 3.8E-06  3.14459E-02 0.00038  1.11005E-01 0.00046  3.24425E-01 0.00031  1.33850E+00 0.00023  9.15218E+00 0.00212 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  1.09090E-05 0.00252  1.08960E-05 0.00254  1.23887E-05 0.02589 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  1.05350E-05 0.00248  1.05224E-05 0.00250  1.19687E-05 0.02589 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  7.07882E-03 0.01954  1.63714E-04 0.12576  1.13418E-03 0.05197  1.09278E-03 0.05237  3.10205E-03 0.02929  1.19134E-03 0.04749  3.94764E-04 0.08530 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  9.02244E-01 0.04683  1.24909E-02 7.7E-06  3.14359E-02 0.00092  1.11223E-01 0.00112  3.24512E-01 0.00096  1.33825E+00 0.00052  9.19061E+00 0.00485 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.08084E-03 0.01914  1.71110E-04 0.12389  1.13762E-03 0.05136  1.08806E-03 0.05091  3.10471E-03 0.02894  1.19455E-03 0.04688  3.84792E-04 0.08153 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  9.05104E-01 0.04604  1.24909E-02 7.7E-06  3.14388E-02 0.00092  1.11227E-01 0.00112  3.24578E-01 0.00096  1.33806E+00 0.00052  9.18524E+00 0.00484 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -6.54746E+02 0.01981 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  1.09355E-05 0.00059 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  1.05608E-05 0.00043 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.07308E-03 0.00388 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -6.46993E+02 0.00391 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.03581E-07 0.00058 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  5.62069E-06 0.00050  5.62022E-06 0.00050  5.67321E-06 0.00564 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  1.64093E-05 0.00061  1.64096E-05 0.00061  1.63622E-05 0.00690 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  2.44766E-01 0.00057  2.44684E-01 0.00057  2.58638E-01 0.00826 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  9.70927E+00 0.00912 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  2.85457E+01 0.00017  3.02695E+01 0.00030 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  2])  = '12' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 1 ;
MACRO_E                   (idx, [1:   2]) = [  1.00000E+37  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  1.45306E+04 0.00465  6.31444E+04 0.00143  1.43415E+05 0.00090  1.66534E+05 0.00091  1.78438E+05 0.00068  2.67520E+05 0.00048  1.85062E+05 0.00045  1.89300E+05 0.00045  1.48120E+05 0.00048  1.20132E+05 0.00047  1.02373E+05 0.00054  9.25463E+04 0.00052  8.34841E+04 0.00052  7.82588E+04 0.00047  7.44473E+04 0.00038  6.34346E+04 0.00059  6.09703E+04 0.00048  5.96860E+04 0.00060  5.68052E+04 0.00060  1.05110E+05 0.00049  9.38043E+04 0.00048  6.19978E+04 0.00057  3.70681E+04 0.00066  3.86792E+04 0.00075  3.27275E+04 0.00076  2.96229E+04 0.00079  3.98870E+04 0.00102  9.34864E+03 0.00136  1.17876E+04 0.00130  1.07835E+04 0.00165  6.12415E+03 0.00186  1.07029E+04 0.00149  7.18547E+03 0.00181  5.83486E+03 0.00194  1.05529E+03 0.00463  1.05002E+03 0.00408  1.08306E+03 0.00359  1.11593E+03 0.00418  1.10204E+03 0.00434  1.09027E+03 0.00410  1.12744E+03 0.00340  1.06405E+03 0.00373  2.01090E+03 0.00337  3.18407E+03 0.00249  4.02715E+03 0.00227  1.04431E+04 0.00127  1.04430E+04 0.00146  1.01379E+04 0.00160  5.82134E+03 0.00215  3.78110E+03 0.00202  2.66316E+03 0.00251  2.85859E+03 0.00231  4.70344E+03 0.00221  5.41897E+03 0.00210  8.54576E+03 0.00154  1.04043E+04 0.00128  1.22186E+04 0.00135  6.59219E+03 0.00198  4.27014E+03 0.00182  2.88539E+03 0.00211  2.45228E+03 0.00194  2.30550E+03 0.00268  1.85868E+03 0.00260  1.20632E+03 0.00318  1.10407E+03 0.00270  9.41330E+02 0.00277  7.75656E+02 0.00354  5.99614E+02 0.00403  3.96194E+02 0.00356  1.45325E+02 0.00602 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   2]) = [  1.38712E+01 0.00021 ];
INF_FISS_FLX              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   2]) = [  7.45857E-01 7.8E-05 ];
INF_CAPT                  (idx, [1:   2]) = [  6.97039E-04 0.00053 ];
INF_ABS                   (idx, [1:   2]) = [  6.97039E-04 0.00053 ];
INF_FISS                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_NSF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_NUBAR                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_INVV                  (idx, [1:   2]) = [  1.08743E-07 0.00053 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   2]) = [  7.45160E-01 7.7E-05 ];
INF_SCATT1                (idx, [1:   2]) = [  4.22094E-01 0.00011 ];
INF_SCATT2                (idx, [1:   2]) = [  1.58597E-01 0.00024 ];
INF_SCATT3                (idx, [1:   2]) = [  4.98319E-03 0.00614 ];
INF_SCATT4                (idx, [1:   2]) = [ -2.41822E-02 0.00111 ];
INF_SCATT5                (idx, [1:   2]) = [ -1.13705E-03 0.02272 ];
INF_SCATT6                (idx, [1:   2]) = [  7.94599E-03 0.00317 ];
INF_SCATT7                (idx, [1:   2]) = [  5.77660E-04 0.03971 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   2]) = [  7.45160E-01 7.7E-05 ];
INF_SCATTP1               (idx, [1:   2]) = [  4.22094E-01 0.00011 ];
INF_SCATTP2               (idx, [1:   2]) = [  1.58597E-01 0.00024 ];
INF_SCATTP3               (idx, [1:   2]) = [  4.98319E-03 0.00614 ];
INF_SCATTP4               (idx, [1:   2]) = [ -2.41822E-02 0.00111 ];
INF_SCATTP5               (idx, [1:   2]) = [ -1.13705E-03 0.02272 ];
INF_SCATTP6               (idx, [1:   2]) = [  7.94599E-03 0.00317 ];
INF_SCATTP7               (idx, [1:   2]) = [  5.77660E-04 0.03971 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   2]) = [  2.06486E-01 0.00026 ];
INF_DIFFCOEF              (idx, [1:   2]) = [  1.61432E+00 0.00026 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   2]) = [  6.97039E-04 0.00053 ];
INF_REMXS                 (idx, [1:   2]) = [  6.96969E-04 0.00298 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission spectra:

INF_CHIT                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   2]) = [  7.45160E-01 7.7E-05 ];
INF_S1                    (idx, [1:   2]) = [  4.22094E-01 0.00011 ];
INF_S2                    (idx, [1:   2]) = [  1.58597E-01 0.00024 ];
INF_S3                    (idx, [1:   2]) = [  4.98319E-03 0.00614 ];
INF_S4                    (idx, [1:   2]) = [ -2.41822E-02 0.00111 ];
INF_S5                    (idx, [1:   2]) = [ -1.13705E-03 0.02272 ];
INF_S6                    (idx, [1:   2]) = [  7.94599E-03 0.00317 ];
INF_S7                    (idx, [1:   2]) = [  5.77660E-04 0.03971 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   2]) = [  7.45160E-01 7.7E-05 ];
INF_SP1                   (idx, [1:   2]) = [  4.22094E-01 0.00011 ];
INF_SP2                   (idx, [1:   2]) = [  1.58597E-01 0.00024 ];
INF_SP3                   (idx, [1:   2]) = [  4.98319E-03 0.00614 ];
INF_SP4                   (idx, [1:   2]) = [ -2.41822E-02 0.00111 ];
INF_SP5                   (idx, [1:   2]) = [ -1.13705E-03 0.02272 ];
INF_SP6                   (idx, [1:   2]) = [  7.94599E-03 0.00317 ];
INF_SP7                   (idx, [1:   2]) = [  5.77660E-04 0.03971 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   2]) = [  6.94315E+00 0.00076 ];
CMM_TRANSPXS_X            (idx, [1:   2]) = [  6.96004E+00 0.00089 ];
CMM_TRANSPXS_Y            (idx, [1:   2]) = [  6.94053E+00 0.00088 ];
CMM_TRANSPXS_Z            (idx, [1:   2]) = [  6.92916E+00 0.00089 ];
CMM_DIFFCOEF              (idx, [1:   2]) = [  4.80103E-02 0.00076 ];
CMM_DIFFCOEF_X            (idx, [1:   2]) = [  4.78943E-02 0.00089 ];
CMM_DIFFCOEF_Y            (idx, [1:   2]) = [  4.80289E-02 0.00088 ];
CMM_DIFFCOEF_Z            (idx, [1:   2]) = [  4.81077E-02 0.00088 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
LAMBDA                    (idx, [1:  14]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

