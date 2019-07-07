# Compare_FC_parameters_infos
Tools to compare the parameters of custom flight controllers. 

In 2.0 two all new tools for faster and easier use. 

***compareSTOCK.bat***
- compareSTOCK.bat allows you to compare any file the flyc_param_infos of a stock flight controller for the specified aircraft 
	
	- First enter the number that corresponds to the aircraft that you would like to compare the stock parameters of 

			-------------------------------------------------------------------------------------------
			Compare FC Parameters_infos
			Compare to stock
			By Brett8883
			-------------------------------------------------------------------------------------------
			[1] Mavic Pro 1 / Mavic Platinum / Mavic Artic White
			[2] Spark
			[3] Phantom 4 Standard
			[4] Phantom 4 Advanced
			[5] Phantom 4 Pro
			[6] Phantom 4 Pro v2
			[7] Inspire 2
			Please select factory parameters to compare [1,2,3,4,5,6,7]?1

- You will then be prompted to type in the path to the file you'd like to compare with stock parameters you seleted previously. You can instead do this by dragging said file into the cmd line 
- then press [ENTER]			
			
***compare2files.bat***
compare2files.bat will allow you to compare any two files.

	- NOTE: The two files you want to compare cannot be outrageously different from eachother. It will try to compare any two files and can rearrange them if out of order but will eventually give up if there are simply too many differences 

You will first be prompted to enter the path to the first file you want to compare. You can instead drag the file into the command line 

	- Then Press [ENTER]

		------------------------------------------------------------------
		Enter path to first file or drag it into cmd window [ENTER]

You will then be promted to enter the path to the second file you want to compare. You can instead drag the file into the command line 
	
	- Then Press [ENTER]

Both batch files will output the differences between the two files parameter by parameter.
 


Example:
Comparison of Factory default parameters and flyc param infos:

 Factory_default_parameters
 
                "maxValue" : 255,
                
                "defaultValue" : 0,
                
                "name" : "g_config.airport_limit_cfg.cfg_disable_airport_fly_limit"
                
FLYC_PARAM_INFOS

                "maxValue" : 255,
                
                "defaultValue" : 1,
                
                "name" : "g_config.airport_limit_cfg.cfg_disable_airport_fly_limit"
                

Factory_default_parameters

                "maxValue" : 4294967295,
                
                "defaultValue" : 20150910,
                
                "name" : "g_config.airport_limit_cfg.cfg_limit_data"
                
 FLYC_PARAM_INFOS
 
                "maxValue" : 4294967295,
                
                "defaultValue" : 20250910,
                
                "name" : "g_config.airport_limit_cfg.cfg_limit_data


COMING SOON!

  Simply type the name of the Aircraft and the default firmware version youd like to compare to the custom FC.
  
  Add the ability to extract flyc_param_infos file from already compiled custom_FC.bin and automatically compare flyc_param_infos file to stock. 
