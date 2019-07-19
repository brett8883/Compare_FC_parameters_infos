# Compare_FC_parameters_infos
Tools to compare the parameters of custom flight controllers. 

In 2.0 two all new tools for faster and easier use. 

***ExtractCOMPAREtoStock.cmd***

- Extracts the flyc_param_infos file from any custom FC bin. File must end with ".bin". 

	- Place the already compiled flight controller .bin file in the "Compare_FC_parameters_infos" along side the batch files and double click the .bat file. 

	- The flyc_param_infos file will be extracted and you will be asked to choose your aircraft. extractCOMPAREstock.cmd will then compare the extracted file to the stock file of the aircraft you have indicated. Simple as dat.

***compare2STOCK.bat***

- compare2STOCK.bat allows you to compare any file the flyc_param_infos of a stock flight controller for the specified aircraft 
	
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
			
***compareANY2files.bat***
compare2files.bat will allow you to compare any two files.

	- NOTE: The two files you want to compare cannot be outrageously different from eachother. It will try to compare any two files and can rearrange them if out of order but will eventually give up if there are simply too many differences 

You will first be prompted to enter the path to the first file you want to compare. You can instead drag the file into the command line 

	- Then Press [ENTER]

	- Enter path to first file or drag it into cmd window [ENTER]

You will then be promted to enter the path to the second file you want to compare. You can instead drag the file into the command line 
	
	- Then Press [ENTER]

BOOM!
 


Example:
Comparison of Factory default parameters and flyc param infos:

 Factory_default_parameters
 
                "maxValue" : 255,
                
                "defaultValue" : 0,
                
                "name" : "g_config.airport_limit_cfg.cfg_disable_airport_fly_limit"
                
FLYC_PARAM_INFOS

                "maxValue" : 255,
                
                "defaultValue" : 1,
                
                "name" : "g_config.airport_limit_cfg.cfg_disable_airport_fly_limit”



**Acknowlegment**
The extractCOMPAREtostock.bat uses tools from https://github.com/o-gs/dji-firmware-tools by mefistotelis
