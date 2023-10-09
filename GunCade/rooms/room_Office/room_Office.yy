{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "room_Office",
  "creationCodeFile": "",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_7D2DE55_1","path":"rooms/room_Office/room_Office.yy",},
    {"name":"inst_19B8C354_1","path":"rooms/room_Office/room_Office.yy",},
    {"name":"inst_13599327","path":"rooms/room_Office/room_Office.yy",},
    {"name":"inst_485DB04A","path":"rooms/room_Office/room_Office.yy",},
    {"name":"inst_6359AF69","path":"rooms/room_Office/room_Office.yy",},
    {"name":"inst_27089CF2","path":"rooms/room_Office/room_Office.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"Effect_Vignette","depth":0,"effectEnabled":true,"effectType":"_filter_vignette","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_VignetteEdges","type":0,"value":"0.5",},
        {"name":"g_VignetteEdges","type":0,"value":"1.2",},
        {"name":"g_VignetteSharpness","type":0,"value":"2",},
        {"name":"g_VignetteTexture","type":2,"value":"_filter_vignette_texture",},
      ],"userdefinedDepth":false,"visible":false,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"Effect_Glow","depth":100,"effectEnabled":true,"effectType":"_effect_glow","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_GlowRadius","type":0,"value":"60",},
        {"name":"g_GlowQuality","type":0,"value":"3",},
        {"name":"g_GlowIntensity","type":0,"value":"0.1",},
        {"name":"g_GlowGamma","type":0,"value":"0",},
        {"name":"g_GlowAlpha","type":0,"value":"0.8",},
      ],"userdefinedDepth":false,"visible":false,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances_Top","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_19B8C354_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_Transition_FadeIn","path":"objects/obj_Transition_FadeIn/obj_Transition_FadeIn.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":-160.0,"y":-32.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_485DB04A","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_CameraDummy","path":"objects/obj_CameraDummy/obj_CameraDummy.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":992.0,"y":128.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances_Buttons","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6359AF69","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_Test","path":"objects/obj_Test/obj_Test.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":-96.0,"y":64.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_27089CF2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_Office_Control","path":"objects/obj_Office_Control/obj_Office_Control.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":-96.0,"y":-64.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances_ColorShift","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7D2DE55_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_ColorShift_Start","path":"objects/obj_ColorShift_Start/obj_ColorShift_Start.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":-64.0,"y":-32.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":500,"effectEnabled":true,"effectType":"_filter_underwater","gridX":2,"gridY":2,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_13599327","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_Office_Bgr","path":"objects/obj_Office_Bgr/obj_Office_Bgr.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1022.0,"y":-6.0,},
      ],"layers":[],"properties":[
        {"name":"g_Distort1Speed","type":0,"value":"0.006",},
        {"name":"g_Distort2Speed","type":0,"value":"0.009",},
        {"name":"g_Distort1Scale","type":0,"value":"11",},
        {"name":"g_Distort1Scale","type":0,"value":"2",},
        {"name":"g_Distort2Scale","type":0,"value":"86",},
        {"name":"g_Distort2Scale","type":0,"value":"10",},
        {"name":"g_Distort1Amount","type":0,"value":"1",},
        {"name":"g_Distort2Amount","type":0,"value":"1",},
        {"name":"g_ChromaSpreadAmount","type":0,"value":"0.3",},
        {"name":"g_CamOffsetScale","type":0,"value":"1",},
        {"name":"g_GlintCol","type":1,"value":"#FF000000",},
        {"name":"g_TintCol","type":1,"value":"#FFFFFFFF",},
        {"name":"g_AddCol","type":1,"value":"#FF140014",},
        {"name":"g_DistortTexture","type":2,"value":"_filter_underwater_noise_sprite",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4278190080,"depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 4000,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 4000,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":100,"hspeed":-1,"hview":100,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":100,"wview":100,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": false,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}