t= 0;
image_yscale= 5;
donotcall= 0;
if(room == 88 && global.plot > 106) instance_destroy();
if(room == 97 && global.flag[354] > 0) instance_destroy();
if(room == 136 && global.flag[354] > 1) instance_destroy();
if(room == 145 && global.plot > 129) instance_destroy();
if(room == 147 && global.plot > 130) instance_destroy();
if(room == 148 && global.plot > 131) instance_destroy();
if(room == 149 && global.flag[373] == 1) {
    obj_bluelaser_o.active= 2;
    instance_destroy();
}
if(room == 162 && global.plot > 138) instance_destroy();
if(room == 153 && global.plot >= 133.5) instance_destroy();
if(room == 155 && global.plot >= 137) instance_destroy();
if(room == 188 && global.plot > 175) instance_destroy();
if(room == 189 && global.plot > 176) instance_destroy();
if(room == 190 && global.flag[415] == 1) instance_destroy();
if(room == 190 && global.plot > 180) instance_destroy();
if(room == 192 && global.plot >= 180) instance_destroy();
if(room == 193 && global.plot > 181) instance_destroy();
if(room == 195 && global.plot > 182) instance_destroy();
if(room == 196 && global.plot > 184) instance_destroy();
if(room == 171 && global.plot >= 163) instance_destroy();
if(room == 115) {
    image_yscale= 1;
    if(global.flag[493] != 10) instance_destroy();
}

