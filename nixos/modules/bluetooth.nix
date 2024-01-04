#Bluetooth
{
 hardware.enableAllFirmware = true; # Enables all Firmware
 hardware.bluetooth = {
   enable = true;
   settings = {
     General = {
       Enable = "Source,Sink,Media,Socket";
      };
   };
 }; 
}
