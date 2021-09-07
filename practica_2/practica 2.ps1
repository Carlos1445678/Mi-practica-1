$Path = "C:\practica 2"

for ($i-1;$i -lt 6;$i++) {
   
    if ($i - 1) { 
        
        New-item -path "$Path\Carpeta 1" -ItemType Directory

       
    } if ($i - 2) { 
        
        New-item -path "$Path\Carpeta 2" -ItemType Directory 

       
    } if ($i - 3) { 
        
        New-item -path "$Path\Carpeta 3" -ItemType Directory 

      
    } if ($i - 4) { 
        
        New-item -path "$Path\Carpeta 4" -ItemType Directory 

       
    } if ($i - 5) { 
        
        New-item -path "$Path\Carpeta 5" -ItemType Directory 

    } 
}