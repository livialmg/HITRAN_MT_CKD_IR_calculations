#!/bin/bash

# Create a list
profiles=("tro" "saw" "mlw" "mls" "sas")
versions=("2016" "2020")
#profiles=("mlw")
#versions=("2020")
#profiles=("mls" "sas")

for version in "${versions[@]}"; do
# Iterate over each string in the list
for pro in "${profiles[@]}"; do


echo Running RFM to "$pro" profile, using HITRAN "$version"
echo Using MT_CKD 4.1 water vapor continuum for upward fluxes
  
#Will create the upward fluxes with MT_CKD 4.1
cat << EOF > rfm.drv
!DATE 05/01/2024 - DRIVER TABLE
!PRIMARY SECTIONS
*HDR		     !Header text for output files
OLR - comparison of hitran 2016 and 2020
*FLG		     !Flags (Apendice B)
RAD FLX SFC NAD BFX CTM AVG
*SPC                 !Spectral range & resolution
10 3000 0.1
*GAS                 !List of absorbers
H2O O3 N2O CH4 CO O2
*ATM                 !Atmospheric profiles
../atm/$pro.atm
*LEV
1 2 3 4 5 6 7 8 9 0 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 27.5 30 32.5 35 37.5 40 42.5 45 47.5 50 55 60 65 70 75 80 85 90 95                       
*HIT                 !HITRAN data file
../hit/hitran${version}-spectralcalc.bin
*OUT
  OUTDIR=../output/comparison/r0.1/
!COOFIL=coo_${pro}_${version}_lev_*.txt
  RADFIL=olr_${pro}_${version}_lev_*_4.1_woCO2.txt
*END
EOF

/home/livia-gava/rfm_v5.13_15MAR23/SOURCE/rfm


echo Running RFM to "$pro" profile, using HITRAN "$version"
echo Using MT_CKD 3.2 water vapor continuum for upward fluxes

#Will create the upward fluxes with MT_CKD 3.2
cat << EOF > rfm.drv
!DATE 05/02/2024 - DRIVER TABLE
!PRIMARY SECTIONS
*HDR		     !Header text for output files
OLR - comparison of hitran 2016 and 2020
*FLG		     !Flags (Apendice B)
RAD FLX SFC NAD BFX CTM AVG C32
*SPC                 !Spectral range & resolution
10 3000 0.1
*GAS                 !List of absorbers
H2O O3 N2O CH4 CO O2
*ATM                 !Atmospheric profiles
../atm/$pro.atm
*LEV
1 2 3 4 5 6 7 8 9 0 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 27.5 30 32.5 35 37.5 40 42.5 45 47.5 50 55 60 65 70 75 80 85 90 95                       
*HIT                 !HITRAN data file
../hit/hitran${version}-spectralcalc.bin
*OUT
  OUTDIR=../output/comparison/r0.1/
!COOFIL=coo_${pro}_${version}_lev_*.txt
  RADFIL=olr_${pro}_${version}_lev_*_3.2_woCO2.txt
*END
EOF

/home/livia-gava/rfm_v5.13_15MAR23/SOURCE/rfm


echo Running RFM to "$pro" profile, using HITRAN "$version"
echo Using MT_CKD 4.1 water vapor continuum for downward fluxes

#Will create the downward fluxes with MT_CKD 4.1
cat << EOF > rfm.drv
!DATE 05/02/2024 - DRIVER TABLE
!PRIMARY SECTIONS
*HDR		     !Header text for output files
DLR - comparison of hitran 2016 and 2020
*FLG		     !Flags (Apendice B)
RAD FLX ZEN BFX CTM AVG
*SPC                 !Spectral range & resolution
10 3000 0.1
*GAS                 !List of absorbers
H2O O3 N2O CH4 CO O2
*ATM                 !Atmospheric profiles
../atm/$pro.atm
*LEV
1 2 3 4 5 6 7 8 9 0 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 27.5 30 32.5 35 37.5 40 42.5 45 47.5 50 55 60 65 70 75 80 85 90 95                       
*HIT                 !HITRAN data file
../hit/hitran${version}-spectralcalc.bin
*OUT
  OUTDIR=../output/comparison/r0.1/
!COOFIL=coo_${pro}_${version}_lev_*.txt
  RADFIL=dlr_${pro}_${version}_lev_*_4.1_woCO2.txt
*END
EOF

/home/livia-gava/rfm_v5.13_15MAR23/SOURCE/rfm

echo Running RFM to "$pro" profile, using HITRAN "$version"
echo Using MT_CKD 3.2 water vapor continuum for downward fluxes

#Will create the downward fluxes with MT_CKD 3.2
cat << EOF > rfm.drv
!DATE 05/02/2024 - DRIVER TABLE
!PRIMARY SECTIONS
*HDR		     !Header text for output files
OLR - comparison of hitran 2016 and 2020
*FLG		     !Flags (Apendice B)
RAD FLX ZEN BFX CTM AVG C32
*SPC                 !Spectral range & resolution
10 3000 0.1
*GAS                 !List of absorbers
H2O O3 N2O CH4 CO O2
*ATM                 !Atmospheric profiles
../atm/$pro.atm
*LEV
1 2 3 4 5 6 7 8 9 0 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 27.5 30 32.5 35 37.5 40 42.5 45 47.5 50 55 60 65 70 75 80 85 90 95                       
*HIT                 !HITRAN data file
../hit/hitran${version}-spectralcalc.bin
*OUT
  OUTDIR=../output/comparison/r0.1/
!COOFIL=coo_${pro}_${version}_lev_*.txt
  RADFIL=dlr_${pro}_${version}_lev_*_3.2_woCO2.txt
*END
EOF

/home/livia-gava/rfm_v5.13_15MAR23/SOURCE/rfm

echo Running RFM to "$pro" profile, using HITRAN "$version"
echo Using MT_CKD 4.1 water vapor continuum for upward fluxes
  
#Will create the upward fluxes with MT_CKD 4.1
cat << EOF > rfm.drv
!DATE 05/01/2024 - DRIVER TABLE
!PRIMARY SECTIONS
*HDR		     !Header text for output files
OLR - comparison of hitran 2016 and 2020
*FLG		     !Flags (Apendice B)
RAD FLX SFC NAD BFX CTM AVG
*SPC                 !Spectral range & resolution
10 3000 0.1
*GAS                 !List of absorbers
H2O CO2 N2O CH4 CO O2
*ATM                 !Atmospheric profiles
../atm/$pro.atm
*LEV
1 2 3 4 5 6 7 8 9 0 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 27.5 30 32.5 35 37.5 40 42.5 45 47.5 50 55 60 65 70 75 80 85 90 95                       
*HIT                 !HITRAN data file
../hit/hitran${version}-spectralcalc.bin
*OUT
  OUTDIR=../output/comparison/r0.1/
!COOFIL=coo_${pro}_${version}_lev_*.txt
  RADFIL=olr_${pro}_${version}_lev_*_4.1_woO3.txt
*END
EOF

/home/livia-gava/rfm_v5.13_15MAR23/SOURCE/rfm


echo Running RFM to "$pro" profile, using HITRAN "$version"
echo Using MT_CKD 3.2 water vapor continuum for upward fluxes

#Will create the upward fluxes with MT_CKD 3.2
cat << EOF > rfm.drv
!DATE 05/02/2024 - DRIVER TABLE
!PRIMARY SECTIONS
*HDR		     !Header text for output files
OLR - comparison of hitran 2016 and 2020
*FLG		     !Flags (Apendice B)
RAD FLX SFC NAD BFX CTM AVG C32
*SPC                 !Spectral range & resolution
10 3000 0.1
*GAS                 !List of absorbers
H2O CO2 N2O CH4 CO O2
*ATM                 !Atmospheric profiles
../atm/$pro.atm
*LEV
1 2 3 4 5 6 7 8 9 0 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 27.5 30 32.5 35 37.5 40 42.5 45 47.5 50 55 60 65 70 75 80 85 90 95                       
*HIT                 !HITRAN data file
../hit/hitran${version}-spectralcalc.bin
*OUT
  OUTDIR=../output/comparison/r0.1/
!COOFIL=coo_${pro}_${version}_lev_*.txt
  RADFIL=olr_${pro}_${version}_lev_*_3.2_woO3.txt
*END
EOF

/home/livia-gava/rfm_v5.13_15MAR23/SOURCE/rfm


echo Running RFM to "$pro" profile, using HITRAN "$version"
echo Using MT_CKD 4.1 water vapor continuum for downward fluxes

#Will create the downward fluxes with MT_CKD 4.1
cat << EOF > rfm.drv
!DATE 05/02/2024 - DRIVER TABLE
!PRIMARY SECTIONS
*HDR		     !Header text for output files
DLR - comparison of hitran 2016 and 2020
*FLG		     !Flags (Apendice B)
RAD FLX ZEN BFX CTM AVG
*SPC                 !Spectral range & resolution
10 3000 0.1
*GAS                 !List of absorbers
H2O CO2 N2O CH4 CO O2
*ATM                 !Atmospheric profiles
../atm/$pro.atm
*LEV
1 2 3 4 5 6 7 8 9 0 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 27.5 30 32.5 35 37.5 40 42.5 45 47.5 50 55 60 65 70 75 80 85 90 95                       
*HIT                 !HITRAN data file
../hit/hitran${version}-spectralcalc.bin
*OUT
  OUTDIR=../output/comparison/r0.1/
!COOFIL=coo_${pro}_${version}_lev_*.txt
  RADFIL=dlr_${pro}_${version}_lev_*_4.1_woO3.txt
*END
EOF

/home/livia-gava/rfm_v5.13_15MAR23/SOURCE/rfm

echo Running RFM to "$pro" profile, using HITRAN "$version"
echo Using MT_CKD 3.2 water vapor continuum for downward fluxes

#Will create the downward fluxes with MT_CKD 3.2
cat << EOF > rfm.drv
!DATE 05/02/2024 - DRIVER TABLE
!PRIMARY SECTIONS
*HDR		     !Header text for output files
OLR - comparison of hitran 2016 and 2020
*FLG		     !Flags (Apendice B)
RAD FLX ZEN BFX CTM AVG C32
*SPC                 !Spectral range & resolution
10 3000 0.1
*GAS                 !List of absorbers
H2O CO2 N2O CH4 CO O2
*ATM                 !Atmospheric profiles
../atm/$pro.atm
*LEV
1 2 3 4 5 6 7 8 9 0 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 27.5 30 32.5 35 37.5 40 42.5 45 47.5 50 55 60 65 70 75 80 85 90 95                       
*HIT                 !HITRAN data file
../hit/hitran${version}-spectralcalc.bin
*OUT
  OUTDIR=../output/comparison/r0.1/
!COOFIL=coo_${pro}_${version}_lev_*.txt
  RADFIL=dlr_${pro}_${version}_lev_*_3.2_woO3.txt
*END
EOF

/home/livia-gava/rfm_v5.13_15MAR23/SOURCE/rfm

echo Running RFM to "$pro" profile, using HITRAN "$version"
echo Using MT_CKD 4.1 water vapor continuum for upward fluxes
  
#Will create the upward fluxes with MT_CKD 4.1
cat << EOF > rfm.drv
!DATE 05/01/2024 - DRIVER TABLE
!PRIMARY SECTIONS
*HDR		     !Header text for output files
OLR - comparison of hitran 2016 and 2020
*FLG		     !Flags (Apendice B)
RAD FLX SFC NAD BFX CTM AVG
*SPC                 !Spectral range & resolution
10 3000 0.1
*GAS                 !List of absorbers
CO2 O3 N2O CH4 CO O2
*ATM                 !Atmospheric profiles
../atm/$pro.atm
*LEV
1 2 3 4 5 6 7 8 9 0 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 27.5 30 32.5 35 37.5 40 42.5 45 47.5 50 55 60 65 70 75 80 85 90 95                       
*HIT                 !HITRAN data file
../hit/hitran${version}-spectralcalc.bin
*OUT
  OUTDIR=../output/comparison/r0.1/
!COOFIL=coo_${pro}_${version}_lev_*.txt
  RADFIL=olr_${pro}_${version}_lev_*_4.1_woH2O.txt
*END
EOF

/home/livia-gava/rfm_v5.13_15MAR23/SOURCE/rfm


echo Running RFM to "$pro" profile, using HITRAN "$version"
echo Using MT_CKD 3.2 water vapor continuum for upward fluxes

#Will create the upward fluxes with MT_CKD 3.2
cat << EOF > rfm.drv
!DATE 05/02/2024 - DRIVER TABLE
!PRIMARY SECTIONS
*HDR		     !Header text for output files
OLR - comparison of hitran 2016 and 2020
*FLG		     !Flags (Apendice B)
RAD FLX SFC NAD BFX CTM AVG C32
*SPC                 !Spectral range & resolution
10 3000 0.1
*GAS                 !List of absorbers
CO2 O3 N2O CH4 CO O2
*ATM                 !Atmospheric profiles
../atm/$pro.atm
*LEV
1 2 3 4 5 6 7 8 9 0 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 27.5 30 32.5 35 37.5 40 42.5 45 47.5 50 55 60 65 70 75 80 85 90 95                       
*HIT                 !HITRAN data file
../hit/hitran${version}-spectralcalc.bin
*OUT
  OUTDIR=../output/comparison/r0.1/
!COOFIL=coo_${pro}_${version}_lev_*.txt
  RADFIL=olr_${pro}_${version}_lev_*_3.2_woH2O.txt
*END
EOF

/home/livia-gava/rfm_v5.13_15MAR23/SOURCE/rfm


echo Running RFM to "$pro" profile, using HITRAN "$version"
echo Using MT_CKD 4.1 water vapor continuum for downward fluxes

#Will create the downward fluxes with MT_CKD 4.1
cat << EOF > rfm.drv
!DATE 05/02/2024 - DRIVER TABLE
!PRIMARY SECTIONS
*HDR		     !Header text for output files
DLR - comparison of hitran 2016 and 2020
*FLG		     !Flags (Apendice B)
RAD FLX ZEN BFX CTM AVG
*SPC                 !Spectral range & resolution
10 3000 0.1
*GAS                 !List of absorbers
CO2 O3 N2O CH4 CO O2
*ATM                 !Atmospheric profiles
../atm/$pro.atm
*LEV
1 2 3 4 5 6 7 8 9 0 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 27.5 30 32.5 35 37.5 40 42.5 45 47.5 50 55 60 65 70 75 80 85 90 95                       
*HIT                 !HITRAN data file
../hit/hitran${version}-spectralcalc.bin
*OUT
  OUTDIR=../output/comparison/r0.1/
!COOFIL=coo_${pro}_${version}_lev_*.txt
  RADFIL=dlr_${pro}_${version}_lev_*_4.1_woH2O.txt
*END
EOF

/home/livia-gava/rfm_v5.13_15MAR23/SOURCE/rfm

echo Running RFM to "$pro" profile, using HITRAN "$version"
echo Using MT_CKD 3.2 water vapor continuum for downward fluxes

#Will create the downward fluxes with MT_CKD 3.2
cat << EOF > rfm.drv
!DATE 05/02/2024 - DRIVER TABLE
!PRIMARY SECTIONS
*HDR		     !Header text for output files
OLR - comparison of hitran 2016 and 2020
*FLG		     !Flags (Apendice B)
RAD FLX ZEN BFX CTM AVG C32
*SPC                 !Spectral range & resolution
10 3000 0.1
*GAS                 !List of absorbers
CO2 O3 N2O CH4 CO O2
*ATM                 !Atmospheric profiles
../atm/$pro.atm
*LEV
1 2 3 4 5 6 7 8 9 0 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 27.5 30 32.5 35 37.5 40 42.5 45 47.5 50 55 60 65 70 75 80 85 90 95                       
*HIT                 !HITRAN data file
../hit/hitran${version}-spectralcalc.bin
*OUT
  OUTDIR=../output/comparison/r0.1/
!COOFIL=coo_${pro}_${version}_lev_*.txt
  RADFIL=dlr_${pro}_${version}_lev_*_3.2_woH2O.txt
*END
EOF

/home/livia-gava/rfm_v5.13_15MAR23/SOURCE/rfm

done

done

