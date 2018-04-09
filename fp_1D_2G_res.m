
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
INPUT_FILE_NAME           (idx, [1:  8])  = 'fp_1D_2G' ;
WORKING_DIRECTORY         (idx, [1: 54])  = '/home/ajohnson400/classes/math6641/multiGrid-Sn/models' ;
HOSTNAME                  (idx, [1: 14])  = 'ME04L0358GRD04' ;
CPU_TYPE                  (idx, [1: 40])  = 'Intel(R) Core(TM) i7-6700T CPU @ 2.80GHz' ;
CPU_MHZ                   (idx, 1)        = 194.0 ;
START_DATE                (idx, [1: 24])  = 'Tue Mar 27 16:40:38 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Tue Mar 27 16:41:14 2018' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1522183238 ;
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
OMP_HISTORY_PROFILE       (idx, [1:   4]) = [  1.05709E+00  1.02898E+00  9.73797E-01  9.40126E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 22])  = '/xs/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1: 18])  = '/xs/sss_endfb7.nfy' ;
NFY_DATA_FILE_PATH        (idx, [1: 18])  = '/xs/sss_endfb7.nfy' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 0.0E+00  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  5.12443E-03 0.00237  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.94876E-01 1.2E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  6.20918E-01 0.00016  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  6.21191E-01 0.00016  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  2.83428E+00 0.00047  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.85566E+01 0.00054  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  2.85566E+01 0.00054  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  1.74143E+01 0.00076  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.03428E-01 0.00255  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SOURCE_POPULATION         (idx, 1)        = 1000063 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00006E+04 0.00196 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00006E+04 0.00196 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  2.32703E+00 ;
RUNNING_TIME              (idx, 1)        =  5.98333E-01 ;
INIT_TIME                 (idx, [1:  2])  = [  2.08833E-02  2.08833E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  2.83333E-04  2.83333E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  5.77167E-01  5.77167E-01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  5.98283E-01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 3.88918 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.99281E+00 0.00032 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.51866E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 15935.16 ;
ALLOC_MEMSIZE             (idx, 1)        = 275.67;
MEMSIZE                   (idx, 1)        = 205.16;
XS_MEMSIZE                (idx, 1)        = 122.17;
MAT_MEMSIZE               (idx, 1)        = 15.35;
RES_MEMSIZE               (idx, 1)        = 2.21;
MISC_MEMSIZE              (idx, 1)        = 65.43;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 70.52;

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

NORM_COEF                 (idx, [1:   4]) = [  9.96786E-05 0.00094  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  1.09623E+00 0.00236 ];
U235_FISS                 (idx, [1:   4]) = [  3.31325E-01 0.00144  8.57087E-01 0.00062 ];
U238_FISS                 (idx, [1:   4]) = [  5.51479E-02 0.00423  1.42643E-01 0.00375 ];
U235_CAPT                 (idx, [1:   4]) = [  1.03705E-01 0.00334  1.69231E-01 0.00313 ];
U238_CAPT                 (idx, [1:   4]) = [  4.74373E-01 0.00158  7.74087E-01 0.00076 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 1000063 1.00000E+06 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 2.61118E+03 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 1000063 1.00261E+06 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 613158 6.14779E+05 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 386905 3.87832E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 1000063 1.00261E+06 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 2.79397E-09 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.25776E-11 0.00075 ];
TOT_POWDENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.62860E-01 0.00074 ];
TOT_FISSRATE              (idx, [1:   2]) = [  3.86816E-01 0.00076 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.13184E-01 0.00048 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.96786E-01 0.00094 ];
TOT_FLUX                  (idx, [1:   2]) = [  5.95597E+01 0.00074 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.85358E+01 0.00063 ];
INI_FMASS                 (idx, 1)        =  0.00000E+00 ;
TOT_FMASS                 (idx, 1)        =  0.00000E+00 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.80516E+00 0.00111 ];
SIX_FF_F                  (idx, [1:   2]) = [  9.68646E-01 0.00037 ];
SIX_FF_P                  (idx, [1:   2]) = [  2.44358E-01 0.00183 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  2.26030E+00 0.00195 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  9.65437E-01 0.00123 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  9.65437E-01 0.00123 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.48920E+00 5.5E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02947E+02 6.4E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  9.65213E-01 0.00130  9.58573E-01 0.00122  6.86419E-03 0.01898 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.65253E-01 0.00074 ];
COL_KEFF                  (idx, [1:   2]) = [  9.66068E-01 0.00135 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.65253E-01 0.00074 ];
ABS_KINF                  (idx, [1:   2]) = [  9.65253E-01 0.00074 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.37126E+01 0.00077 ];
IMP_ALF                   (idx, [1:   2]) = [  1.37103E+01 0.00053 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.22902E-05 0.01053 ];
IMP_EALF                  (idx, [1:   2]) = [  2.22780E-05 0.00736 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  4.75695E-01 0.00408 ];
IMP_AFGE                  (idx, [1:   2]) = [  4.74737E-01 0.00232 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  8.18982E-03 0.01207  2.10122E-04 0.06852  1.27999E-03 0.02744  1.22545E-03 0.02747  3.69053E-03 0.01714  1.35275E-03 0.03129  4.30973E-04 0.04891 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.71900E-01 0.02655  1.07424E-02 0.04055  3.14682E-02 0.00061  1.11208E-01 0.00080  3.24370E-01 0.00059  1.33867E+00 0.00039  8.82635E+00 0.02095 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.10760E-03 0.01811  2.00957E-04 0.12703  1.12502E-03 0.05605  1.00330E-03 0.05412  3.28439E-03 0.02780  1.12959E-03 0.04740  3.64345E-04 0.07765 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.60487E-01 0.04183  1.24911E-02 1.0E-05  3.14507E-02 0.00104  1.11265E-01 0.00132  3.24199E-01 0.00092  1.33858E+00 0.00060  9.18011E+00 0.00530 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  1.09222E-05 0.00352  1.09065E-05 0.00358  1.30235E-05 0.03333 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  1.05399E-05 0.00309  1.05247E-05 0.00315  1.25729E-05 0.03342 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.07872E-03 0.01964  2.11633E-04 0.10782  1.05196E-03 0.04842  1.03077E-03 0.05234  3.28626E-03 0.02600  1.14119E-03 0.05440  3.56902E-04 0.08581 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.56495E-01 0.04747  1.24913E-02 1.5E-05  3.14452E-02 0.00108  1.11215E-01 0.00151  3.24762E-01 0.00099  1.33870E+00 0.00077  9.15562E+00 0.00680 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  1.08036E-05 0.00800  1.07982E-05 0.00807  1.23114E-05 0.09556 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  1.04240E-05 0.00764  1.04189E-05 0.00773  1.18663E-05 0.09574 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.89681E-03 0.05739  1.52188E-04 0.39029  9.89529E-04 0.17360  1.24518E-03 0.16025  2.99402E-03 0.08967  1.13222E-03 0.16219  3.83679E-04 0.29394 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  9.15146E-01 0.16777  1.24913E-02 3.9E-05  3.14965E-02 0.00274  1.11434E-01 0.00363  3.23115E-01 0.00291  1.34367E+00 0.00150  9.25132E+00 0.01569 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.03611E-03 0.05643  1.49083E-04 0.39785  1.00771E-03 0.17873  1.30109E-03 0.15367  3.04241E-03 0.08777  1.12836E-03 0.16065  4.07454E-04 0.28791 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  9.28058E-01 0.16630  1.24913E-02 3.9E-05  3.14816E-02 0.00279  1.11454E-01 0.00364  3.23204E-01 0.00286  1.34408E+00 0.00145  9.24879E+00 0.01565 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -6.37516E+02 0.05643 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  1.09250E-05 0.00177 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  1.05435E-05 0.00139 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.01629E-03 0.00915 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -6.42401E+02 0.00926 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.03566E-07 0.00184 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  5.62437E-06 0.00178  5.62507E-06 0.00178  5.51565E-06 0.01783 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  1.63678E-05 0.00201  1.63663E-05 0.00202  1.65220E-05 0.02083 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  2.45270E-01 0.00183  2.45212E-01 0.00184  2.56310E-01 0.02642 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.04114E+01 0.02612 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  2.85566E+01 0.00054  3.02782E+01 0.00091 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  2])  = '10' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  6.25000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-01  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  3.71443E+04 0.00295  1.60190E+05 0.00384  3.62458E+05 0.00279  4.19790E+05 0.00202  4.51853E+05 0.00074  3.85169E+05 0.00130  7.61981E+05 0.00207  4.79134E+05 0.00087  3.72393E+05 0.00304  2.99074E+05 0.00073  2.55022E+05 0.00112  2.29552E+05 0.00147  2.06421E+05 0.00261  1.93273E+05 0.00144  1.83875E+05 0.00226  1.56871E+05 0.00141  1.50262E+05 0.00167  1.46026E+05 0.00420  1.38702E+05 0.00143  2.55788E+05 0.00209  2.26033E+05 0.00194  1.49294E+05 0.00286  8.85884E+04 0.00428  9.14631E+04 0.00168  7.60809E+04 0.00376  7.18840E+04 0.00476  9.20536E+04 0.00153  2.27908E+04 0.00524  2.87474E+04 0.00117  2.64916E+04 0.00531  1.48095E+04 0.00756  2.61940E+04 0.00544  1.76490E+04 0.00600  1.43170E+04 0.00711  2.59847E+03 0.01107  2.55026E+03 0.02038  2.63135E+03 0.01479  2.71973E+03 0.00525  2.72544E+03 0.01283  2.65210E+03 0.01088  2.76536E+03 0.01298  2.54671E+03 0.01647  4.86656E+03 0.01455  7.80531E+03 0.01287  9.73176E+03 0.01111  2.51784E+04 0.00474  2.51656E+04 0.00674  2.42986E+04 0.00515  1.38211E+04 0.00438  8.95033E+03 0.00919  6.33983E+03 0.00387  6.59516E+03 0.00439  1.08051E+04 0.00295  1.24665E+04 0.00518  1.99928E+04 0.00456  2.42808E+04 0.00404  2.80275E+04 0.00409  1.49505E+04 0.00364  9.60283E+03 0.01321  6.41562E+03 0.00851  5.40035E+03 0.00174  4.99100E+03 0.00831  3.97338E+03 0.01175  2.56687E+03 0.01061  2.27766E+03 0.01256  1.92488E+03 0.00503  1.55372E+03 0.00711  1.14797E+03 0.00573  7.07716E+02 0.01888  2.16038E+02 0.01398 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  9.94811E-01 0.00090 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  9.05381E+00 0.00075  2.53184E+01 0.00059 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  2.76060E-01 9.5E-05  4.75402E-01 6.8E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  1.91735E-03 0.00059  2.23829E-02 0.00084 ];
INF_ABS                   (idx, [1:   4]) = [  8.82731E-03 0.00035  3.51916E-02 0.00059 ];
INF_FISS                  (idx, [1:   4]) = [  6.90996E-03 0.00047  1.28087E-02 0.00084 ];
INF_NSF                   (idx, [1:   4]) = [  1.90800E-02 0.00047  3.12111E-02 0.00084 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.76123E+00 0.00010  2.43671E+00 3.0E-07 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.06450E+02 1.4E-06  2.02271E+02 2.4E-08 ];
INF_INVV                  (idx, [1:   4]) = [  6.08456E-10 0.00024  1.37052E-07 0.00127 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  2.67211E-01 0.00019  4.40236E-01 8.7E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  7.19662E-02 0.00056  2.70704E-02 0.00349 ];
INF_SCATT2                (idx, [1:   4]) = [  5.03364E-02 0.00114  6.14884E-03 0.00923 ];
INF_SCATT3                (idx, [1:   4]) = [  2.97535E-02 0.00176  9.71218E-04 0.05637 ];
INF_SCATT4                (idx, [1:   4]) = [  1.93318E-02 0.00352  1.25830E-04 0.39477 ];
INF_SCATT5                (idx, [1:   4]) = [  9.63144E-03 0.00732  6.03197E-05 0.84528 ];
INF_SCATT6                (idx, [1:   4]) = [  4.79071E-03 0.01300 -2.32699E-05 1.00000 ];
INF_SCATT7                (idx, [1:   4]) = [  1.88924E-03 0.02956 -1.91397E-05 1.00000 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  2.67485E-01 0.00020  4.40236E-01 8.7E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  7.19673E-02 0.00055  2.70704E-02 0.00349 ];
INF_SCATTP2               (idx, [1:   4]) = [  5.03383E-02 0.00115  6.14884E-03 0.00923 ];
INF_SCATTP3               (idx, [1:   4]) = [  2.97511E-02 0.00179  9.71218E-04 0.05637 ];
INF_SCATTP4               (idx, [1:   4]) = [  1.93327E-02 0.00349  1.25830E-04 0.39477 ];
INF_SCATTP5               (idx, [1:   4]) = [  9.63032E-03 0.00741  6.03197E-05 0.84528 ];
INF_SCATTP6               (idx, [1:   4]) = [  4.78818E-03 0.01308 -2.32699E-05 1.00000 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.88813E-03 0.02978 -1.91397E-05 1.00000 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  1.92275E-01 0.00027  4.32823E-01 0.00022 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.73363E+00 0.00027  7.70139E-01 0.00022 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  8.55356E-03 0.00092  3.51916E-02 0.00059 ];
INF_REMXS                 (idx, [1:   4]) = [  4.50602E-02 0.00130  3.51661E-02 0.00028 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

INF_CHIT                  (idx, [1:   4]) = [  8.28393E-01 0.00042  1.71607E-01 0.00202 ];
INF_CHIP                  (idx, [1:   4]) = [  8.32632E-01 0.00047  1.67368E-01 0.00232 ];
INF_CHID                  (idx, [1:   4]) = [  2.93626E-01 0.01865  7.06374E-01 0.00775 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   8]) = [  2.31000E-01 0.00025  3.62114E-02 0.00108  0.00000E+00 0.0E+00  4.40236E-01 8.7E-05 ];
INF_S1                    (idx, [1:   8]) = [  7.35968E-02 0.00076 -1.63059E-03 0.01667  0.00000E+00 0.0E+00  2.70704E-02 0.00349 ];
INF_S2                    (idx, [1:   8]) = [  5.11904E-02 0.00079 -8.53934E-04 0.03564  0.00000E+00 0.0E+00  6.14884E-03 0.00923 ];
INF_S3                    (idx, [1:   8]) = [  2.99209E-02 0.00141 -1.67456E-04 0.06602  0.00000E+00 0.0E+00  9.71218E-04 0.05637 ];
INF_S4                    (idx, [1:   8]) = [  1.93265E-02 0.00304  5.23216E-06 1.00000  0.00000E+00 0.0E+00  1.25830E-04 0.39477 ];
INF_S5                    (idx, [1:   8]) = [  9.62985E-03 0.00634  1.59356E-06 1.00000  0.00000E+00 0.0E+00  6.03197E-05 0.84528 ];
INF_S6                    (idx, [1:   8]) = [  4.80881E-03 0.01110 -1.80946E-05 1.00000  0.00000E+00 0.0E+00 -2.32699E-05 1.00000 ];
INF_S7                    (idx, [1:   8]) = [  1.88872E-03 0.02729  5.15978E-07 1.00000  0.00000E+00 0.0E+00 -1.91397E-05 1.00000 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  2.31111E-01 0.00025  3.63745E-02 0.00109  0.00000E+00 0.0E+00  4.40236E-01 8.7E-05 ];
INF_SP1                   (idx, [1:   8]) = [  7.35980E-02 0.00075 -1.63072E-03 0.01582  0.00000E+00 0.0E+00  2.70704E-02 0.00349 ];
INF_SP2                   (idx, [1:   8]) = [  5.11925E-02 0.00079 -8.54186E-04 0.03688  0.00000E+00 0.0E+00  6.14884E-03 0.00923 ];
INF_SP3                   (idx, [1:   8]) = [  2.99205E-02 0.00142 -1.69417E-04 0.06721  0.00000E+00 0.0E+00  9.71218E-04 0.05637 ];
INF_SP4                   (idx, [1:   8]) = [  1.93279E-02 0.00307  4.87944E-06 1.00000  0.00000E+00 0.0E+00  1.25830E-04 0.39477 ];
INF_SP5                   (idx, [1:   8]) = [  9.62891E-03 0.00638  1.40669E-06 1.00000  0.00000E+00 0.0E+00  6.03197E-05 0.84528 ];
INF_SP6                   (idx, [1:   8]) = [  4.80830E-03 0.01105 -2.01196E-05 1.00000  0.00000E+00 0.0E+00 -2.32699E-05 1.00000 ];
INF_SP7                   (idx, [1:   8]) = [  1.88805E-03 0.02729  7.63681E-08 1.00000  0.00000E+00 0.0E+00 -1.91397E-05 1.00000 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   4]) = [  2.04124E-01 0.00303  1.61509E-01 0.00158 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.03778E-01 0.00325  1.61937E-01 0.00335 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.04567E-01 0.00303  1.61381E-01 0.00328 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.04051E-01 0.00609  1.61222E-01 0.00192 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.63306E+00 0.00303  2.06389E+00 0.00158 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.63584E+00 0.00327  2.05851E+00 0.00335 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.62952E+00 0.00304  2.06559E+00 0.00328 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.63382E+00 0.00600  2.06757E+00 0.00191 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  7.10760E-03 0.01811  2.00957E-04 0.12703  1.12502E-03 0.05605  1.00330E-03 0.05412  3.28439E-03 0.02780  1.12959E-03 0.04740  3.64345E-04 0.07765 ];
LAMBDA                    (idx, [1:  14]) = [  8.60487E-01 0.04183  1.24911E-02 1.0E-05  3.14507E-02 0.00104  1.11265E-01 0.00132  3.24199E-01 0.00092  1.33858E+00 0.00060  9.18011E+00 0.00530 ];


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
INPUT_FILE_NAME           (idx, [1:  8])  = 'fp_1D_2G' ;
WORKING_DIRECTORY         (idx, [1: 54])  = '/home/ajohnson400/classes/math6641/multiGrid-Sn/models' ;
HOSTNAME                  (idx, [1: 14])  = 'ME04L0358GRD04' ;
CPU_TYPE                  (idx, [1: 40])  = 'Intel(R) Core(TM) i7-6700T CPU @ 2.80GHz' ;
CPU_MHZ                   (idx, 1)        = 194.0 ;
START_DATE                (idx, [1: 24])  = 'Tue Mar 27 16:40:38 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Tue Mar 27 16:41:14 2018' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1522183238 ;
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
OMP_HISTORY_PROFILE       (idx, [1:   4]) = [  1.05709E+00  1.02898E+00  9.73797E-01  9.40126E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 22])  = '/xs/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1: 18])  = '/xs/sss_endfb7.nfy' ;
NFY_DATA_FILE_PATH        (idx, [1: 18])  = '/xs/sss_endfb7.nfy' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 0.0E+00  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  5.12443E-03 0.00237  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.94876E-01 1.2E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  6.20918E-01 0.00016  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  6.21191E-01 0.00016  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  2.83428E+00 0.00047  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.85566E+01 0.00054  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  2.85566E+01 0.00054  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  1.74143E+01 0.00076  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.03428E-01 0.00255  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SOURCE_POPULATION         (idx, 1)        = 1000063 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00006E+04 0.00196 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00006E+04 0.00196 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  2.32706E+00 ;
RUNNING_TIME              (idx, 1)        =  5.98333E-01 ;
INIT_TIME                 (idx, [1:  2])  = [  2.08833E-02  2.08833E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  2.83333E-04  2.83333E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  5.77167E-01  5.77167E-01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  5.98283E-01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 3.88923 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.99281E+00 0.00032 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.51866E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 15935.16 ;
ALLOC_MEMSIZE             (idx, 1)        = 275.67;
MEMSIZE                   (idx, 1)        = 205.16;
XS_MEMSIZE                (idx, 1)        = 122.17;
MAT_MEMSIZE               (idx, 1)        = 15.35;
RES_MEMSIZE               (idx, 1)        = 2.21;
MISC_MEMSIZE              (idx, 1)        = 65.43;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 70.52;

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

NORM_COEF                 (idx, [1:   4]) = [  9.96786E-05 0.00094  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  1.09623E+00 0.00236 ];
U235_FISS                 (idx, [1:   4]) = [  3.31325E-01 0.00144  8.57087E-01 0.00062 ];
U238_FISS                 (idx, [1:   4]) = [  5.51479E-02 0.00423  1.42643E-01 0.00375 ];
U235_CAPT                 (idx, [1:   4]) = [  1.03705E-01 0.00334  1.69231E-01 0.00313 ];
U238_CAPT                 (idx, [1:   4]) = [  4.74373E-01 0.00158  7.74087E-01 0.00076 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 1000063 1.00000E+06 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 2.61118E+03 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 1000063 1.00261E+06 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 613158 6.14779E+05 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 386905 3.87832E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 1000063 1.00261E+06 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 2.79397E-09 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.25776E-11 0.00075 ];
TOT_POWDENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.62860E-01 0.00074 ];
TOT_FISSRATE              (idx, [1:   2]) = [  3.86816E-01 0.00076 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.13184E-01 0.00048 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.96786E-01 0.00094 ];
TOT_FLUX                  (idx, [1:   2]) = [  5.95597E+01 0.00074 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.85358E+01 0.00063 ];
INI_FMASS                 (idx, 1)        =  0.00000E+00 ;
TOT_FMASS                 (idx, 1)        =  0.00000E+00 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.80516E+00 0.00111 ];
SIX_FF_F                  (idx, [1:   2]) = [  9.68646E-01 0.00037 ];
SIX_FF_P                  (idx, [1:   2]) = [  2.44358E-01 0.00183 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  2.26030E+00 0.00195 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  9.65437E-01 0.00123 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  9.65437E-01 0.00123 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.48920E+00 5.5E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02947E+02 6.4E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  9.65213E-01 0.00130  9.58573E-01 0.00122  6.86419E-03 0.01898 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.65253E-01 0.00074 ];
COL_KEFF                  (idx, [1:   2]) = [  9.66068E-01 0.00135 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.65253E-01 0.00074 ];
ABS_KINF                  (idx, [1:   2]) = [  9.65253E-01 0.00074 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.37126E+01 0.00077 ];
IMP_ALF                   (idx, [1:   2]) = [  1.37103E+01 0.00053 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.22902E-05 0.01053 ];
IMP_EALF                  (idx, [1:   2]) = [  2.22780E-05 0.00736 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  4.75695E-01 0.00408 ];
IMP_AFGE                  (idx, [1:   2]) = [  4.74737E-01 0.00232 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  8.18982E-03 0.01207  2.10122E-04 0.06852  1.27999E-03 0.02744  1.22545E-03 0.02747  3.69053E-03 0.01714  1.35275E-03 0.03129  4.30973E-04 0.04891 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.71900E-01 0.02655  1.07424E-02 0.04055  3.14682E-02 0.00061  1.11208E-01 0.00080  3.24370E-01 0.00059  1.33867E+00 0.00039  8.82635E+00 0.02095 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.10760E-03 0.01811  2.00957E-04 0.12703  1.12502E-03 0.05605  1.00330E-03 0.05412  3.28439E-03 0.02780  1.12959E-03 0.04740  3.64345E-04 0.07765 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.60487E-01 0.04183  1.24911E-02 1.0E-05  3.14507E-02 0.00104  1.11265E-01 0.00132  3.24199E-01 0.00092  1.33858E+00 0.00060  9.18011E+00 0.00530 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  1.09222E-05 0.00352  1.09065E-05 0.00358  1.30235E-05 0.03333 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  1.05399E-05 0.00309  1.05247E-05 0.00315  1.25729E-05 0.03342 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.07872E-03 0.01964  2.11633E-04 0.10782  1.05196E-03 0.04842  1.03077E-03 0.05234  3.28626E-03 0.02600  1.14119E-03 0.05440  3.56902E-04 0.08581 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.56495E-01 0.04747  1.24913E-02 1.5E-05  3.14452E-02 0.00108  1.11215E-01 0.00151  3.24762E-01 0.00099  1.33870E+00 0.00077  9.15562E+00 0.00680 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  1.08036E-05 0.00800  1.07982E-05 0.00807  1.23114E-05 0.09556 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  1.04240E-05 0.00764  1.04189E-05 0.00773  1.18663E-05 0.09574 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.89681E-03 0.05739  1.52188E-04 0.39029  9.89529E-04 0.17360  1.24518E-03 0.16025  2.99402E-03 0.08967  1.13222E-03 0.16219  3.83679E-04 0.29394 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  9.15146E-01 0.16777  1.24913E-02 3.9E-05  3.14965E-02 0.00274  1.11434E-01 0.00363  3.23115E-01 0.00291  1.34367E+00 0.00150  9.25132E+00 0.01569 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.03611E-03 0.05643  1.49083E-04 0.39785  1.00771E-03 0.17873  1.30109E-03 0.15367  3.04241E-03 0.08777  1.12836E-03 0.16065  4.07454E-04 0.28791 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  9.28058E-01 0.16630  1.24913E-02 3.9E-05  3.14816E-02 0.00279  1.11454E-01 0.00364  3.23204E-01 0.00286  1.34408E+00 0.00145  9.24879E+00 0.01565 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -6.37516E+02 0.05643 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  1.09250E-05 0.00177 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  1.05435E-05 0.00139 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.01629E-03 0.00915 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -6.42401E+02 0.00926 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.03566E-07 0.00184 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  5.62437E-06 0.00178  5.62507E-06 0.00178  5.51565E-06 0.01783 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  1.63678E-05 0.00201  1.63663E-05 0.00202  1.65220E-05 0.02083 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  2.45270E-01 0.00183  2.45212E-01 0.00184  2.56310E-01 0.02642 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.04114E+01 0.02612 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  2.85566E+01 0.00054  3.02782E+01 0.00091 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  2])  = '11' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  6.25000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-01  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  1.20997E+04 0.00294  5.18597E+04 0.00683  1.17893E+05 0.00405  1.37071E+05 0.00512  1.47283E+05 0.00195  1.25753E+05 0.00096  2.48829E+05 0.00116  1.56330E+05 0.00052  1.21712E+05 0.00231  9.81022E+04 0.00151  8.39310E+04 0.00201  7.55948E+04 0.00193  6.84942E+04 0.00322  6.37550E+04 0.00302  6.09690E+04 0.00162  5.20422E+04 0.00449  4.95226E+04 0.00333  4.87860E+04 0.00421  4.62075E+04 0.00352  8.55038E+04 0.00154  7.58052E+04 0.00527  5.00474E+04 0.00564  2.99053E+04 0.00277  3.10966E+04 0.00288  2.60653E+04 0.00559  2.38789E+04 0.00787  3.17036E+04 0.00241  7.56510E+03 0.01051  9.56982E+03 0.00671  8.69772E+03 0.00970  5.06653E+03 0.02273  8.73072E+03 0.00422  5.81892E+03 0.02200  4.71038E+03 0.01984  8.72715E+02 0.03204  8.90371E+02 0.02443  8.81667E+02 0.02107  9.57256E+02 0.02954  8.88096E+02 0.01857  9.20612E+02 0.03645  9.36254E+02 0.03535  8.52961E+02 0.01579  1.58399E+03 0.03580  2.60962E+03 0.00629  3.23516E+03 0.01929  8.30652E+03 0.00800  8.30684E+03 0.01127  8.07368E+03 0.01205  4.72958E+03 0.00775  3.03094E+03 0.00892  2.12295E+03 0.01307  2.28933E+03 0.00760  3.72729E+03 0.00608  4.28100E+03 0.00757  6.67459E+03 0.00550  8.13917E+03 0.00540  9.74529E+03 0.01108  5.16285E+03 0.01023  3.32643E+03 0.01619  2.17850E+03 0.01798  1.90100E+03 0.01562  1.78135E+03 0.02170  1.40745E+03 0.01913  8.89230E+02 0.02122  8.22466E+02 0.01070  6.91808E+02 0.03614  5.89416E+02 0.04378  4.38247E+02 0.03651  2.74280E+02 0.04244  9.08645E+01 0.05532 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  2.95028E+00 0.00123  8.38321E+00 0.00105 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  2.42128E-01 0.00011  3.51857E-01 0.00024 ];
INF_CAPT                  (idx, [1:   4]) = [  4.43647E-04 0.00085  2.17219E-03 0.00505 ];
INF_ABS                   (idx, [1:   4]) = [  4.43647E-04 0.00085  2.17219E-03 0.00505 ];
INF_FISS                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_NSF                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_NUBAR                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  6.08708E-10 0.00018  1.41420E-07 0.00176 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  2.41699E-01 0.00015  3.49703E-01 0.00021 ];
INF_SCATT1                (idx, [1:   4]) = [  7.57644E-02 0.00089  2.07668E-02 0.00661 ];
INF_SCATT2                (idx, [1:   4]) = [  4.58818E-02 0.00169  8.86164E-03 0.01359 ];
INF_SCATT3                (idx, [1:   4]) = [  1.51058E-02 0.00836  4.62251E-04 0.18289 ];
INF_SCATT4                (idx, [1:   4]) = [  1.17403E-02 0.00302  4.34460E-05 1.00000 ];
INF_SCATT5                (idx, [1:   4]) = [  4.51795E-03 0.01535  1.02924E-04 0.38466 ];
INF_SCATT6                (idx, [1:   4]) = [  2.47327E-03 0.01895 -1.90338E-05 1.00000 ];
INF_SCATT7                (idx, [1:   4]) = [  3.63384E-04 0.32504  7.39687E-05 0.69946 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  2.41741E-01 0.00016  3.49703E-01 0.00021 ];
INF_SCATTP1               (idx, [1:   4]) = [  7.57607E-02 0.00089  2.07668E-02 0.00661 ];
INF_SCATTP2               (idx, [1:   4]) = [  4.58819E-02 0.00167  8.86164E-03 0.01359 ];
INF_SCATTP3               (idx, [1:   4]) = [  1.51042E-02 0.00838  4.62251E-04 0.18289 ];
INF_SCATTP4               (idx, [1:   4]) = [  1.17389E-02 0.00299  4.34460E-05 1.00000 ];
INF_SCATTP5               (idx, [1:   4]) = [  4.51795E-03 0.01540  1.02924E-04 0.38466 ];
INF_SCATTP6               (idx, [1:   4]) = [  2.47435E-03 0.01877 -1.90338E-05 1.00000 ];
INF_SCATTP7               (idx, [1:   4]) = [  3.64733E-04 0.32478  7.39687E-05 0.69946 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  1.56642E-01 0.00101  3.19698E-01 0.00046 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  2.12800E+00 0.00101  1.04265E+00 0.00046 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  4.01490E-04 0.00525  2.17219E-03 0.00505 ];
INF_REMXS                 (idx, [1:   4]) = [  1.32113E-02 0.00583  2.15324E-03 0.00859 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

INF_CHIT                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   8]) = [  2.28917E-01 0.00032  1.27817E-02 0.00663  0.00000E+00 0.0E+00  3.49703E-01 0.00021 ];
INF_S1                    (idx, [1:   8]) = [  7.65644E-02 0.00055 -8.00012E-04 0.03719  0.00000E+00 0.0E+00  2.07668E-02 0.00661 ];
INF_S2                    (idx, [1:   8]) = [  4.58592E-02 0.00162  2.25927E-05 0.53294  0.00000E+00 0.0E+00  8.86164E-03 0.01359 ];
INF_S3                    (idx, [1:   8]) = [  1.53494E-02 0.00843 -2.43601E-04 0.07720  0.00000E+00 0.0E+00  4.62251E-04 0.18289 ];
INF_S4                    (idx, [1:   8]) = [  1.17647E-02 0.00422 -2.43834E-05 0.77962  0.00000E+00 0.0E+00  4.34460E-05 1.00000 ];
INF_S5                    (idx, [1:   8]) = [  4.53931E-03 0.01568 -2.13629E-05 0.64542  0.00000E+00 0.0E+00  1.02924E-04 0.38466 ];
INF_S6                    (idx, [1:   8]) = [  2.45962E-03 0.01765  1.36411E-05 0.70833  0.00000E+00 0.0E+00 -1.90338E-05 1.00000 ];
INF_S7                    (idx, [1:   8]) = [  3.72760E-04 0.30141 -9.37583E-06 1.00000  0.00000E+00 0.0E+00  7.39687E-05 0.69946 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  2.28952E-01 0.00031  1.27887E-02 0.00648  0.00000E+00 0.0E+00  3.49703E-01 0.00021 ];
INF_SP1                   (idx, [1:   8]) = [  7.65625E-02 0.00056 -8.01876E-04 0.03696  0.00000E+00 0.0E+00  2.07668E-02 0.00661 ];
INF_SP2                   (idx, [1:   8]) = [  4.58598E-02 0.00160  2.21145E-05 0.54975  0.00000E+00 0.0E+00  8.86164E-03 0.01359 ];
INF_SP3                   (idx, [1:   8]) = [  1.53478E-02 0.00849 -2.43539E-04 0.07695  0.00000E+00 0.0E+00  4.62251E-04 0.18289 ];
INF_SP4                   (idx, [1:   8]) = [  1.17639E-02 0.00415 -2.49469E-05 0.75878  0.00000E+00 0.0E+00  4.34460E-05 1.00000 ];
INF_SP5                   (idx, [1:   8]) = [  4.53902E-03 0.01575 -2.10735E-05 0.66185  0.00000E+00 0.0E+00  1.02924E-04 0.38466 ];
INF_SP6                   (idx, [1:   8]) = [  2.45993E-03 0.01754  1.44198E-05 0.65019  0.00000E+00 0.0E+00 -1.90338E-05 1.00000 ];
INF_SP7                   (idx, [1:   8]) = [  3.74490E-04 0.30165 -9.75637E-06 1.00000  0.00000E+00 0.0E+00  7.39687E-05 0.69946 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   4]) = [  6.93534E-01 0.00726 -4.32295E+01 0.18087 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  6.91791E-01 0.00760 -3.97288E+01 0.17961 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  6.95397E-01 0.00687 -4.92879E+01 0.23248 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  6.93477E-01 0.00850 -4.30862E+01 0.15390 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  4.80732E-01 0.00730 -8.66970E-03 0.16234 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  4.81954E-01 0.00769 -9.32292E-03 0.14645 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  4.79433E-01 0.00691 -8.19047E-03 0.20622 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  4.80808E-01 0.00844 -8.49573E-03 0.14865 ];

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
INPUT_FILE_NAME           (idx, [1:  8])  = 'fp_1D_2G' ;
WORKING_DIRECTORY         (idx, [1: 54])  = '/home/ajohnson400/classes/math6641/multiGrid-Sn/models' ;
HOSTNAME                  (idx, [1: 14])  = 'ME04L0358GRD04' ;
CPU_TYPE                  (idx, [1: 40])  = 'Intel(R) Core(TM) i7-6700T CPU @ 2.80GHz' ;
CPU_MHZ                   (idx, 1)        = 194.0 ;
START_DATE                (idx, [1: 24])  = 'Tue Mar 27 16:40:38 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Tue Mar 27 16:41:14 2018' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1522183238 ;
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
OMP_HISTORY_PROFILE       (idx, [1:   4]) = [  1.05709E+00  1.02898E+00  9.73797E-01  9.40126E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 22])  = '/xs/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1: 18])  = '/xs/sss_endfb7.nfy' ;
NFY_DATA_FILE_PATH        (idx, [1: 18])  = '/xs/sss_endfb7.nfy' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 0.0E+00  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  5.12443E-03 0.00237  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.94876E-01 1.2E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  6.20918E-01 0.00016  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  6.21191E-01 0.00016  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  2.83428E+00 0.00047  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.85566E+01 0.00054  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  2.85566E+01 0.00054  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  1.74143E+01 0.00076  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.03428E-01 0.00255  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SOURCE_POPULATION         (idx, 1)        = 1000063 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00006E+04 0.00196 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00006E+04 0.00196 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  2.32709E+00 ;
RUNNING_TIME              (idx, 1)        =  5.98350E-01 ;
INIT_TIME                 (idx, [1:  2])  = [  2.08833E-02  2.08833E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  2.83333E-04  2.83333E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  5.77167E-01  5.77167E-01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  5.98283E-01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 3.88917 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.99281E+00 0.00032 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.51840E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 15935.16 ;
ALLOC_MEMSIZE             (idx, 1)        = 275.67;
MEMSIZE                   (idx, 1)        = 205.16;
XS_MEMSIZE                (idx, 1)        = 122.17;
MAT_MEMSIZE               (idx, 1)        = 15.35;
RES_MEMSIZE               (idx, 1)        = 2.21;
MISC_MEMSIZE              (idx, 1)        = 65.43;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 70.52;

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

NORM_COEF                 (idx, [1:   4]) = [  9.96786E-05 0.00094  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  1.09623E+00 0.00236 ];
U235_FISS                 (idx, [1:   4]) = [  3.31325E-01 0.00144  8.57087E-01 0.00062 ];
U238_FISS                 (idx, [1:   4]) = [  5.51479E-02 0.00423  1.42643E-01 0.00375 ];
U235_CAPT                 (idx, [1:   4]) = [  1.03705E-01 0.00334  1.69231E-01 0.00313 ];
U238_CAPT                 (idx, [1:   4]) = [  4.74373E-01 0.00158  7.74087E-01 0.00076 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 1000063 1.00000E+06 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 2.61118E+03 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 1000063 1.00261E+06 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 613158 6.14779E+05 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 386905 3.87832E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 1000063 1.00261E+06 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 2.79397E-09 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.25776E-11 0.00075 ];
TOT_POWDENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.62860E-01 0.00074 ];
TOT_FISSRATE              (idx, [1:   2]) = [  3.86816E-01 0.00076 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.13184E-01 0.00048 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.96786E-01 0.00094 ];
TOT_FLUX                  (idx, [1:   2]) = [  5.95597E+01 0.00074 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.85358E+01 0.00063 ];
INI_FMASS                 (idx, 1)        =  0.00000E+00 ;
TOT_FMASS                 (idx, 1)        =  0.00000E+00 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.80516E+00 0.00111 ];
SIX_FF_F                  (idx, [1:   2]) = [  9.68646E-01 0.00037 ];
SIX_FF_P                  (idx, [1:   2]) = [  2.44358E-01 0.00183 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  2.26030E+00 0.00195 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  9.65437E-01 0.00123 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  9.65437E-01 0.00123 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.48920E+00 5.5E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02947E+02 6.4E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  9.65213E-01 0.00130  9.58573E-01 0.00122  6.86419E-03 0.01898 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.65253E-01 0.00074 ];
COL_KEFF                  (idx, [1:   2]) = [  9.66068E-01 0.00135 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.65253E-01 0.00074 ];
ABS_KINF                  (idx, [1:   2]) = [  9.65253E-01 0.00074 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.37126E+01 0.00077 ];
IMP_ALF                   (idx, [1:   2]) = [  1.37103E+01 0.00053 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.22902E-05 0.01053 ];
IMP_EALF                  (idx, [1:   2]) = [  2.22780E-05 0.00736 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  4.75695E-01 0.00408 ];
IMP_AFGE                  (idx, [1:   2]) = [  4.74737E-01 0.00232 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  8.18982E-03 0.01207  2.10122E-04 0.06852  1.27999E-03 0.02744  1.22545E-03 0.02747  3.69053E-03 0.01714  1.35275E-03 0.03129  4.30973E-04 0.04891 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.71900E-01 0.02655  1.07424E-02 0.04055  3.14682E-02 0.00061  1.11208E-01 0.00080  3.24370E-01 0.00059  1.33867E+00 0.00039  8.82635E+00 0.02095 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.10760E-03 0.01811  2.00957E-04 0.12703  1.12502E-03 0.05605  1.00330E-03 0.05412  3.28439E-03 0.02780  1.12959E-03 0.04740  3.64345E-04 0.07765 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.60487E-01 0.04183  1.24911E-02 1.0E-05  3.14507E-02 0.00104  1.11265E-01 0.00132  3.24199E-01 0.00092  1.33858E+00 0.00060  9.18011E+00 0.00530 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  1.09222E-05 0.00352  1.09065E-05 0.00358  1.30235E-05 0.03333 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  1.05399E-05 0.00309  1.05247E-05 0.00315  1.25729E-05 0.03342 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.07872E-03 0.01964  2.11633E-04 0.10782  1.05196E-03 0.04842  1.03077E-03 0.05234  3.28626E-03 0.02600  1.14119E-03 0.05440  3.56902E-04 0.08581 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.56495E-01 0.04747  1.24913E-02 1.5E-05  3.14452E-02 0.00108  1.11215E-01 0.00151  3.24762E-01 0.00099  1.33870E+00 0.00077  9.15562E+00 0.00680 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  1.08036E-05 0.00800  1.07982E-05 0.00807  1.23114E-05 0.09556 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  1.04240E-05 0.00764  1.04189E-05 0.00773  1.18663E-05 0.09574 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.89681E-03 0.05739  1.52188E-04 0.39029  9.89529E-04 0.17360  1.24518E-03 0.16025  2.99402E-03 0.08967  1.13222E-03 0.16219  3.83679E-04 0.29394 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  9.15146E-01 0.16777  1.24913E-02 3.9E-05  3.14965E-02 0.00274  1.11434E-01 0.00363  3.23115E-01 0.00291  1.34367E+00 0.00150  9.25132E+00 0.01569 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.03611E-03 0.05643  1.49083E-04 0.39785  1.00771E-03 0.17873  1.30109E-03 0.15367  3.04241E-03 0.08777  1.12836E-03 0.16065  4.07454E-04 0.28791 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  9.28058E-01 0.16630  1.24913E-02 3.9E-05  3.14816E-02 0.00279  1.11454E-01 0.00364  3.23204E-01 0.00286  1.34408E+00 0.00145  9.24879E+00 0.01565 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -6.37516E+02 0.05643 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  1.09250E-05 0.00177 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  1.05435E-05 0.00139 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.01629E-03 0.00915 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -6.42401E+02 0.00926 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.03566E-07 0.00184 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  5.62437E-06 0.00178  5.62507E-06 0.00178  5.51565E-06 0.01783 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  1.63678E-05 0.00201  1.63663E-05 0.00202  1.65220E-05 0.02083 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  2.45270E-01 0.00183  2.45212E-01 0.00184  2.56310E-01 0.02642 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.04114E+01 0.02612 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  2.85566E+01 0.00054  3.02782E+01 0.00091 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  2])  = '12' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  6.25000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-01  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  1.44319E+04 0.01440  6.34408E+04 0.00475  1.43410E+05 0.00230  1.66428E+05 0.00145  1.78345E+05 0.00257  1.51142E+05 0.00199  3.00883E+05 0.00158  1.89506E+05 0.00134  1.48050E+05 0.00117  1.20015E+05 0.00122  1.02320E+05 0.00140  9.23714E+04 0.00256  8.35157E+04 0.00051  7.85146E+04 0.00268  7.46932E+04 0.00043  6.34969E+04 0.00218  6.11272E+04 0.00191  5.96406E+04 0.00217  5.69386E+04 0.00122  1.05203E+05 0.00137  9.38488E+04 0.00163  6.20497E+04 0.00232  3.71109E+04 0.00209  3.86338E+04 0.00232  3.27481E+04 0.00258  2.96281E+04 0.00311  3.99437E+04 0.00157  9.40574E+03 0.00320  1.17633E+04 0.00170  1.07072E+04 0.00426  6.10738E+03 0.00674  1.06678E+04 0.00417  7.25135E+03 0.00539  5.88120E+03 0.00596  1.06390E+03 0.01405  1.06978E+03 0.01438  1.07354E+03 0.00942  1.12926E+03 0.01365  1.10841E+03 0.00605  1.12114E+03 0.01816  1.15155E+03 0.01698  1.05254E+03 0.01166  2.02074E+03 0.01048  3.14983E+03 0.01359  4.07332E+03 0.00201  1.04348E+04 0.00632  1.04059E+04 0.00358  1.01176E+04 0.00364  5.84139E+03 0.00754  3.81440E+03 0.00484  2.66098E+03 0.00900  2.84067E+03 0.00568  4.65188E+03 0.00480  5.38798E+03 0.00733  8.52623E+03 0.00435  1.03998E+04 0.00197  1.22251E+04 0.00367  6.63689E+03 0.00383  4.26014E+03 0.00453  2.88402E+03 0.01050  2.46058E+03 0.00522  2.29166E+03 0.00866  1.85885E+03 0.00359  1.20994E+03 0.01163  1.10399E+03 0.00821  9.49285E+02 0.00617  7.63869E+02 0.00844  5.96339E+02 0.00591  3.89382E+02 0.00643  1.41609E+02 0.01525 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.57446E+00 0.00124  1.02813E+01 0.00065 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  2.39652E-01 0.00030  9.22106E-01 0.00021 ];
INF_CAPT                  (idx, [1:   4]) = [  1.65030E-04 0.00696  8.81306E-04 0.00134 ];
INF_ABS                   (idx, [1:   4]) = [  1.65030E-04 0.00696  8.81306E-04 0.00134 ];
INF_FISS                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_NSF                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_NUBAR                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  6.08000E-10 0.00028  1.46254E-07 0.00134 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  2.39483E-01 0.00030  9.21230E-01 0.00021 ];
INF_SCATT1                (idx, [1:   4]) = [  1.26852E-01 0.00122  5.24865E-01 0.00032 ];
INF_SCATT2                (idx, [1:   4]) = [  5.23873E-02 0.00311  1.95530E-01 0.00091 ];
INF_SCATT3                (idx, [1:   4]) = [  1.27328E-03 0.09558  6.17829E-03 0.02204 ];
INF_SCATT4                (idx, [1:   4]) = [ -6.99584E-03 0.00735 -3.01866E-02 0.00588 ];
INF_SCATT5                (idx, [1:   4]) = [ -4.36044E-06 1.00000 -1.54669E-03 0.08109 ];
INF_SCATT6                (idx, [1:   4]) = [  2.77942E-03 0.03342  9.83854E-03 0.00630 ];
INF_SCATT7                (idx, [1:   4]) = [ -4.17110E-05 1.00000  7.93895E-04 0.04390 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  2.39483E-01 0.00030  9.21230E-01 0.00021 ];
INF_SCATTP1               (idx, [1:   4]) = [  1.26852E-01 0.00122  5.24865E-01 0.00032 ];
INF_SCATTP2               (idx, [1:   4]) = [  5.23873E-02 0.00311  1.95530E-01 0.00091 ];
INF_SCATTP3               (idx, [1:   4]) = [  1.27328E-03 0.09558  6.17829E-03 0.02204 ];
INF_SCATTP4               (idx, [1:   4]) = [ -6.99584E-03 0.00735 -3.01866E-02 0.00588 ];
INF_SCATTP5               (idx, [1:   4]) = [ -4.36044E-06 1.00000 -1.54669E-03 0.08109 ];
INF_SCATTP6               (idx, [1:   4]) = [  2.77942E-03 0.03342  9.83854E-03 0.00630 ];
INF_SCATTP7               (idx, [1:   4]) = [ -4.17110E-05 1.00000  7.93895E-04 0.04390 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  9.75064E-02 0.00167  3.43399E-01 0.00025 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  3.41862E+00 0.00167  9.70689E-01 0.00025 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.65030E-04 0.00696  8.81306E-04 0.00134 ];
INF_REMXS                 (idx, [1:   4]) = [  1.06300E-01 0.00134  8.75400E-04 0.01626 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

INF_CHIT                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   8]) = [  1.33352E-01 0.00094  1.06130E-01 0.00137  0.00000E+00 0.0E+00  9.21230E-01 0.00021 ];
INF_S1                    (idx, [1:   8]) = [  7.32912E-02 0.00234  5.35604E-02 0.00084  0.00000E+00 0.0E+00  5.24865E-01 0.00032 ];
INF_S2                    (idx, [1:   8]) = [  5.13779E-02 0.00272  1.00935E-03 0.06518  0.00000E+00 0.0E+00  1.95530E-01 0.00091 ];
INF_S3                    (idx, [1:   8]) = [  2.35612E-02 0.00500 -2.22880E-02 0.00361  0.00000E+00 0.0E+00  6.17829E-03 0.02204 ];
INF_S4                    (idx, [1:   8]) = [  7.92455E-03 0.00909 -1.49204E-02 0.00345  0.00000E+00 0.0E+00 -3.01866E-02 0.00588 ];
INF_S5                    (idx, [1:   8]) = [  5.39436E-04 0.11050 -5.43796E-04 0.10635  0.00000E+00 0.0E+00 -1.54669E-03 0.08109 ];
INF_S6                    (idx, [1:   8]) = [ -8.02686E-04 0.08195  3.58211E-03 0.01722  0.00000E+00 0.0E+00  9.83854E-03 0.00630 ];
INF_S7                    (idx, [1:   8]) = [  8.92479E-05 0.63942 -1.30959E-04 0.38762  0.00000E+00 0.0E+00  7.93895E-04 0.04390 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  1.33352E-01 0.00094  1.06130E-01 0.00137  0.00000E+00 0.0E+00  9.21230E-01 0.00021 ];
INF_SP1                   (idx, [1:   8]) = [  7.32912E-02 0.00234  5.35604E-02 0.00084  0.00000E+00 0.0E+00  5.24865E-01 0.00032 ];
INF_SP2                   (idx, [1:   8]) = [  5.13779E-02 0.00272  1.00935E-03 0.06518  0.00000E+00 0.0E+00  1.95530E-01 0.00091 ];
INF_SP3                   (idx, [1:   8]) = [  2.35612E-02 0.00500 -2.22880E-02 0.00361  0.00000E+00 0.0E+00  6.17829E-03 0.02204 ];
INF_SP4                   (idx, [1:   8]) = [  7.92455E-03 0.00909 -1.49204E-02 0.00345  0.00000E+00 0.0E+00 -3.01866E-02 0.00588 ];
INF_SP5                   (idx, [1:   8]) = [  5.39436E-04 0.11050 -5.43796E-04 0.10635  0.00000E+00 0.0E+00 -1.54669E-03 0.08109 ];
INF_SP6                   (idx, [1:   8]) = [ -8.02686E-04 0.08195  3.58211E-03 0.01722  0.00000E+00 0.0E+00  9.83854E-03 0.00630 ];
INF_SP7                   (idx, [1:   8]) = [  8.92479E-05 0.63942 -1.30959E-04 0.38762  0.00000E+00 0.0E+00  7.93895E-04 0.04390 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   4]) = [  8.56952E-02 0.00294 -2.58895E-01 0.00335 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  8.55707E-02 0.00448 -2.58483E-01 0.00516 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  8.59409E-02 0.00278 -2.59677E-01 0.00322 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  8.55792E-02 0.00320 -2.58541E-01 0.00303 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  3.88989E+00 0.00294 -1.28758E+00 0.00335 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  3.89573E+00 0.00450 -1.28971E+00 0.00517 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  3.87876E+00 0.00278 -1.28370E+00 0.00323 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  3.89518E+00 0.00317 -1.28933E+00 0.00300 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
LAMBDA                    (idx, [1:  14]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

