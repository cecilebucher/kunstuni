/*
*  Kunstuni TIME team
*  Cécile - 2024
*
*  Useful methods
*
*/


String getOsPath(){

    String path = "";

    String OS = System.getProperty("os.name");
    //println(OS); // for debug
        
    if(OS.contains("Linux") || OS.contains("Mac")) path = sketchPath() + "/data/";
    else path = sketchPath() + "\\data\\";

    return path;

}
