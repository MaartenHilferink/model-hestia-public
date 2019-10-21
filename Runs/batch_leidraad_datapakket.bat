REM GeoDmsRun.exe [/PProjName] [/LLogFileName] ConfigFileName ItemNames
REM [] betekent optioneel
REM Sluit GUI-variant(GeoDmsGui.exe) af bij aanroepen van GeoDmsRun.exe (indien dit dezelfde is)
REM Resultaten worden weggeschreven in: n:/LD/%confignaam%/results/...
REM Bij nogmaals runnen worden bestanden gewoon overschreven

REM aanpassingen voor machine specifieke paden
set prj_dir=D:\prj\Vesta35beta
set log_dir=D:\tmp\log_vesta
set exe_dir=C:\Program Files\ObjectVision\GeoDms7182
REM einde aanpassingen voor machine specifieke paden

set exe_path=%exe_dir%\GeoDMSRun.exe

set CUR_YYYY=%date:~10,4%
set CUR_MM=%date:~4,2%
set CUR_DD=%date:~7,2%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)
set CUR_NN=%time:~3,2%
set CUR_SS=%time:~6,2%
set CUR_MS=%time:~9,2%
set SUBFILENAME=%CUR_YYYY%%CUR_MM%%CUR_DD%-%CUR_HH%%CUR_NN%%CUR_SS%

if not exist %prj_dir% goto error



"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S0_Referentie_StartJaar_DataPakketExport_NL.txt" "%prj_dir%\Runs\S0_Referentie.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/export_csv_nl/result
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S0_Referentie_R2_2030_DataPakketExport_NL.txt" "%prj_dir%\Runs\S0_Referentie.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/export_csv_nl/result
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S1a_AllElectric_lucht_R2_2030_DataPakketExport_NL.txt" "%prj_dir%\Runs\S1a_AllElectric_lucht.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/export_csv_nl/result
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S1b_AllElectric_bodem_R2_2030_DataPakketExport_NL.txt" "%prj_dir%\Runs\S1b_AllElectric_bodem.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/export_csv_nl/result
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S2a_restwarmte_R1_2030_DataPakketExport_NL.txt" "%prj_dir%\Runs\S2a_restwarmte.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/export_csv_nl/result
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S2b_Geothermie-metcontour_R1_2030_DataPakketExport_NL.txt" "%prj_dir%\Runs\S2b_Geothermie-metcontour.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/export_csv_nl/result
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S2c_Geothermie-zondercontour_R1_2030_DataPakketExport_NL.txt" "%prj_dir%\Runs\S2c_Geothermie-zondercontour.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/export_csv_nl/result
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S2d_BioWKK_R1_2030_DataPakketExport_NL.txt" "%prj_dir%\Runs\S2d_BioWKK.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/export_csv_nl/result
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S3a_LT3030_R2_2030_DataPakketExport_NL.txt" "%prj_dir%\Runs\S3a_LT3030.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/export_csv_nl/result
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S3b_LT3070_R2_2030_DataPakketExport_NL.txt" "%prj_dir%\Runs\S3b_LT3070.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/export_csv_nl/result
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S3c_LT3050_R2_2030_DataPakketExport_NL.txt" "%prj_dir%\Runs\S3c_LT3050.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/export_csv_nl/result
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S3d_WKO_R2_2030_DataPakketExport_NL.txt" "%prj_dir%\Runs\S3d_WKO.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/export_csv_nl/result
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S3e_TEO_R2_2030_DataPakketExport_NL.txt" "%prj_dir%\Runs\S3e_TEO.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/export_csv_nl/result
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S4_hwp_GG_R1_2030_DataPakketExport_NL.txt" "%prj_dir%\Runs\S4_hwp_GG.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/export_csv_nl/result
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S5_HR_GG_R1_2030_DataPakketExport_NL.txt" "%prj_dir%\Runs\S5_HR_GG.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/export_csv_nl/result


"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S0_Referentie_StartJaar_DataPakketExport.txt" "%prj_dir%\Runs\S0_Referentie.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/generate_all
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S0_Referentie_R2_2030_DataPakketExport.txt" "%prj_dir%\Runs\S0_Referentie.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/generate_all
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S1a_AllElectric_lucht_R2_2030_DataPakketExport.txt" "%prj_dir%\Runs\S1a_AllElectric_lucht.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/generate_all
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S1b_AllElectric_bodem_R2_2030_DataPakketExport.txt" "%prj_dir%\Runs\S1b_AllElectric_bodem.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/generate_all
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S2a_restwarmte_R1_2030_DataPakketExport.txt" "%prj_dir%\Runs\S2a_restwarmte.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/generate_all
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S2b_Geothermie-metcontour_R1_2030_DataPakketExport.txt" "%prj_dir%\Runs\S2b_Geothermie-metcontour.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/generate_all
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S2c_Geothermie-zondercontour_R1_2030_DataPakketExport.txt" "%prj_dir%\Runs\S2c_Geothermie-zondercontour.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/generate_all
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S2d_BioWKK_R1_2030_DataPakketExport.txt" "%prj_dir%\Runs\S2d_BioWKK.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/generate_all
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S3a_LT3030_R2_2030_DataPakketExport.txt" "%prj_dir%\Runs\S3a_LT3030.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/generate_all
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S3b_LT3070_R2_2030_DataPakketExport.txt" "%prj_dir%\Runs\S3b_LT3070.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/generate_all
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S3c_LT3050_R2_2030_DataPakketExport.txt" "%prj_dir%\Runs\S3c_LT3050.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/generate_all
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S3d_WKO_R2_2030_DataPakketExport.txt" "%prj_dir%\Runs\S3d_WKO.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/generate_all
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S3e_TEO_R2_2030_DataPakketExport.txt" "%prj_dir%\Runs\S3e_TEO.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/generate_all
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S4_hwp_GG_R1_2030_DataPakketExport.txt" "%prj_dir%\Runs\S4_hwp_GG.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/generate_all
"%exe_path%" /L"%log_dir%\%SUBFILENAME%_S5_HR_GG_R1_2030_DataPakketExport.txt" "%prj_dir%\Runs\S5_HR_GG.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/generate_all


