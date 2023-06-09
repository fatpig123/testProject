/// <reference path="../Scripts/typings/jquery/jquery.d.ts" />
/// <reference path="../Scripts/typings/jqueryui/jqueryui.d.ts" />
var ZoomData = /** @class */ (function () {
    function ZoomData() {
    }
    return ZoomData;
}());
var ZoomableOptions = /** @class */ (function () {
    function ZoomableOptions() {
    }
    return ZoomableOptions;
}());
(function ($) {
    $.fn.zoomable = function (options) {
        return this.each(function (index, value) {
            // restore data, if there is any for this element
            var zoomData;
            if ($(this).data("zoomData") === undefined) {
                zoomData = {
                    busy: false,
                    currentX: 0,
                    currentY: 0,
                    currentZoom: 1,
                    originalHeight: 0,
                    originalMap: null,
                    originalWidth: 0,
                    xFact: 1.2
                };
                $(this).data("zoomData", zoomData);
            }
            else {
                zoomData = $(this).data("zoomData");
            }
            var left = function () { return parseInt($(value).css("left"), 10); };
            var top = function () { return parseInt($(value).css("top"), 10); };
            var zoomMap = function () {
                // resize image map
                var map = document.getElementById(value.useMap.substring(1));
                if (map != null) {
                    for (var i = 0; i < map.areas.length; i++) {
                        var area = map.areas[i];
                        var originalArea = zoomData.originalMap.areas[i];
                        var coords = originalArea.coords.split(",");
                        for (var j = 0; j < coords.length; j++) {
                            coords[j] = Math.round(parseInt(coords[j], 10) * zoomData.currentZoom).toString();
                        }
                        var coordsString = "";
                        for (var k = 0; k < coords.length; k++) {
                            if (k > 0) {
                                coordsString += ",";
                            }
                            coordsString += coords[k];
                        }
                        area.coords = coordsString;
                    }
                }
            };
            var zoomXY = function (fact, xi, yi) {
                if (!zoomData.busy) {
                    zoomData.busy = true;
                    var newH = (value.height * fact);
                    var newW = (value.width * fact);
                    zoomData.currentZoom = zoomData.currentZoom * fact;
                    $(value).animate({
                        height: newH,
                        left: xi,
                        top: yi,
                        width: newW
                    }, 100, function () {
                        zoomData.busy = false;
                    });
                    zoomMap();
                }
            };
            var zoom = function (fact, mouseX, mouseY) {
                var xi = left();
                var yi = top();
                // calculate new X and y based on mouse position
                var parent = $(value).parent()[0];
                mouseX = mouseX - parent.offsetLeft;
                var newImageX = (mouseX - xi) * fact;
                xi = mouseX - newImageX;
                mouseY = mouseY - parent.offsetTop;
                var newImageY = (mouseY - yi) * fact;
                yi = mouseY - newImageY;
                zoomXY(fact, xi, yi);
            };
            var zoomCentre = function (fact) {
                var parent = $(value).parent()[0];
                zoom(fact, left() + parent.offsetLeft + (value.width / 2), top() + parent.offsetTop + (value.height / 2));
            };
            var zoomIn = function () {
                // zoom as if mouse is in centre of image
                zoomCentre(zoomData.xFact);
            };
            var zoomOut = function () {
                // zoom as if mouse is in centre of image
                zoomCentre(1 / zoomData.xFact);
            };
            var zoomMouse = function (delta) {
                if (delta < 0) {
                    // zoom out ---------------
                    zoom(1 / zoomData.xFact, zoomData.currentX, zoomData.currentY);
                }
                else if (delta > 0) {
                    // zoom in -----------
                    zoom(zoomData.xFact, zoomData.currentX, zoomData.currentY);
                }
            };
            var init = function () {
                if (value.useMap !== "") {
                    var tempOriginalMap = document.getElementById(value.useMap.substring(1));
                    if (tempOriginalMap !== null) {
                        zoomData.originalMap = tempOriginalMap.cloneNode(true);
                        for (var i = 0; i < zoomData.originalMap.areas.length; i++) {
                            zoomData.originalMap.areas[i].coords = tempOriginalMap.areas[i]
                                .coords;
                        }
                    }
                }
                zoomData.originalHeight = $(value).height();
                zoomData.originalWidth = $(value).width();
                $(value).css("position", "relative").css("left", 0).css("top", 0).css("margin", 0);
                if (options != null && options.draggableOptions != null) {
                    $(value).draggable(options.draggableOptions);
                }
                else {
                    $(value).draggable();
                }
                if (options != null) {
                    if (options.zoom != null) {
                        var startLeft = 0;
                        if (options.left != null) {
                            startLeft = options.left;
                        }
                        var startTop = 0;
                        if (options.top != null) {
                            startTop = options.top;
                        }
                        zoomXY(options.zoom, startLeft, startTop);
                        zoomData.currentZoom = options.zoom;
                    }
                    if (options.left != null) {
                        $(value).css("left", options.left);
                    }
                    if (options.top != null) {
                        $(value).css("top", options.top);
                    }
                }
                if (options == null || options.mouseWheel == null || options.mouseWheel) {
                    var isFireFox = (navigator.userAgent.indexOf("Firefox") !== -1);
                    // jquery mousewheel not working in FireFox for some reason
                    if (isFireFox) {
                        value.addEventListener("DOMMouseScroll", function (e) {
                            e.preventDefault();
                            zoomMouse(-e.detail);
                        }, false);
                        if (value.useMap !== "") {
                            $(value.useMap)[0].addEventListener("DOMMouseScroll", function (e) {
                                e.preventDefault();
                                zoomMouse(-e.detail);
                            }, false);
                        }
                    }
                    else {
                        $(value).bind("mousewheel", function (e) {
                            e.preventDefault();
                            zoomMouse(e.originalEvent.wheelDelta);
                        });
                        if (value.useMap !== "") {
                            $(value.useMap).bind("mousewheel", function (e) {
                                e.preventDefault();
                                zoomMouse(e.originalEvent.wheelDelta);
                            });
                        }
                    }
                }
                $(value).bind("mousemove", function (e) {
                    zoomData.currentX = e.pageX;
                    zoomData.currentY = e.pageY;
                });
            };
            var reset = function () {
                // reset position
                $(value).css("position", "relative").css("left", 0).css("top", 0).css("margin", 0);
                if (zoomData.originalHeight === 0) {
                    $(value).css("height", "");
                }
                else {
                    $(value).css("height", zoomData.originalHeight);
                }
                if (zoomData.originalWidth === 0) {
                    $(value).css("width", "");
                }
                else {
                    $(value).css("width", zoomData.originalWidth);
                }
                // reset map
                var map = document.getElementById(value.useMap.substring(1));
                if (zoomData.originalMap !== null) {
                    for (var i = 0; i < zoomData.originalMap.areas.length; i++) {
                        map.areas[i].coords = zoomData.originalMap.areas[i].coords;
                    }
                }
                zoomData.currentZoom = 1;
                zoomData.currentX = 0;
                zoomData.currentY = 0;
            };
            var method = "";
            if (options != null && options.method != null) {
                method = options.method;
            }
            
            switch (method) {
                case "zoomIn":
                    zoomIn();
                    break;
                case "zoomOut":
                    zoomOut();
                    break;
                case "reset":
                    reset();
                    break;
                default:
                    init();
                    break;
            }
            console.log("method", method);
        });
    };
})(jQuery);