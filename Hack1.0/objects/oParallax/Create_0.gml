
var _layerID = layer_get_id("CloseGravesBackground");
var _backgroundID = layer_background_get_id(_layerID);
layer_background_blend(_backgroundID, closeGray);

_layerID = layer_get_id("FarGravesBackground");
_backgroundID = layer_background_get_id(_layerID);
layer_background_blend(_backgroundID, farGray);