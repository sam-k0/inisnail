///scr_saveItems(item,levelname);
var itemObj = argument0
var name = argument1
var file = ini_open(string(name))
var iNumber;



iNumber = instance_number(itemObj);
    
var inst;

if(iNumber != 0)
{
    ini_write_real(object_get_name(itemObj),"count_"+object_get_name(itemObj),iNumber)
    
  
    
    
    for(var i = 0;i<iNumber;i++)
    {
        
        inst = instance_find(itemObj,i)// get the id
        // Write the x and y pos:
        /*
        [obj_mushroom_red]
        xinst0 = val
        yinst0 = val
        xinst1 = val
        yinst1 = val
        */
        ini_write_real(object_get_name(itemObj),"xinst"+object_get_name(itemObj)+string(i),inst.x);
        ini_write_real(object_get_name(itemObj),"yinst"+object_get_name(itemObj)+string(i),inst.y);
       
    }
    

}

ini_close()

