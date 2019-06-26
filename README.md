# Compare_FC_parameters_infos
Tool to compare the parameters of custom_FC.bin to stock via flyc_param_infos file
Place the flc_param_infos file you'd like to compare to stock in folder and double click "compare_to_stock.bat" 
Spits out the parameters and values that are different parameter by parameter. Included default parameters list is for Mavic Pro running stock 01.04.0300 but the "Factory_default_parameters" file can be swapped and renamed with any flyc_param_infos file named as such.

Example:
Comparison of Factory default parameters and flyc param infos:

***** Factory_default_parameters
                "maxValue" : 255,
                "defaultValue" : 0,
                "name" : "g_config.airport_limit_cfg.cfg_disable_airport_fly_limit"
***** FLYC_PARAM_INFOS
                "maxValue" : 255,
                "defaultValue" : 1,
                "name" : "g_config.airport_limit_cfg.cfg_disable_airport_fly_limit"
*****
***** Factory_default_parameters
                "maxValue" : 4294967295,
                "defaultValue" : 20150910,
                "name" : "g_config.airport_limit_cfg.cfg_limit_data"
***** FLYC_PARAM_INFOS
                "maxValue" : 4294967295,
                "defaultValue" : 20250910,
                "name" : "g_config.airport_limit_cfg.cfg_limit_data
*****

COMING SOON!
  Simply type the name of the Aircraft and the default firmware version youd like to compare to the custom FC.
  Add the ability to extract flyc_param_infos file from already compiled custom_FC.bin and automatically compare flyc_param_infos file to stock. 
