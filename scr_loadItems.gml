/// scr_loadItems(itemObj, fname)

var itemObj = argument0, fname = argument1;
var file = ini_open(fname);
var objName = object_get_name(itemObj);


var instCount = real(ini_read_string(objName,"count_"+string(object_get_name(itemObj)),0))

if(instCount != 0)
{
    for(var i = 0;i<instCount;i++)
    {
        var _x = real(ini_read_string(objName,"xinst"+object_get_name(itemObj)+string(i),0))
        var _y = real(ini_read_string(objName,"yinst"+object_get_name(itemObj)+string(i),0))
        
        instance_create(_x,_y,itemObj)
    }
}
ini_close();
