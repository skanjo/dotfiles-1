//
// basic config
//
slate.configAll({
	"defaultToCurrentScreen": true,
	"nudgePercentOf": "screenSize",
	"resizePercetOf": "screenSize",
	"orderScreensLeftToRight": true
});
slate.bindAll({
	"f19:ctrl": slate.op("relaunch"),
	"space:alt;space": slate.op("grid")
});

//
// quarter-screen movements
//
var quarter = function(dir, screen) {
	var op = {
		"direction": dir,
		"width": "screenSizeX/2",
		"height": "screenSizeY/2"
	};
	if (screen) {
		op.screen = screen;
	}
	return slate.op("corner", op);
};

slate.bindAll({
	"q:alt;space": quarter("top-left"),
	"e:alt;space": quarter("top-right"),
	"z:alt;space": quarter("bottom-left"),
	"c:alt;space": quarter("bottom-right")
});

//
// half-screen movements
//
var half = function(side, screen) {
	var xy = side == "left" || side == "right" ? "X" : "Y";
	var op = {
		"direction": side, 
		"style": "bar-resize:screenSize" + xy + "/2"
	};
	if (screen) {
		op.screen = screen;
	}
	return slate.op("push", op);
};

slate.bindAll({
	"a:alt;space": half("left"),
	"w:alt;space": half("top"),
	"d:alt;space": half("right"),
	"x:alt;space": half("bottom")
});

//
// centering and full screen
// "c": center with a 1/8th margin
// "f": full screen
//
slate.bind("s:alt;space", slate.op("move", {
	"x": "screenOriginX + screenSizeX/8",
	"y": "0",
	"width": "screenSizeX * 0.75",
	"height": "screenSizeY"
}));
slate.bind("f:alt;space", slate.op("move", {
	"x": "screenOriginX",
	"y": "screenOriginY",
	"width": "screenSizeX",
	"height": "screenSizeY"
}));

//
// layouts!
//
var mainScreenRef = "2560x1600";
var leftScreenRef = "1440x2560";
// var laptopScreenRef = xxxfixme;

var dualMonitorLayout = slate.layout("dualMonitor", {
	"HipChat": {
		"operations": [
			slate.operation("push", {
				"direction": "top",
				"style": "bar-resize:screenSizeY/4",
				"screen": leftScreenRef,
			})
		],
		"ignore-fail": true,
	},
	"LimeChat": {
		"operations": [
			slate.operation("move", {
				"x": "screenOriginX",
				"y": "screenSizeY*1/4",
				"width": "screenSizeX",
				"height": "screenSizeY/4",
				"screen": leftScreenRef
			})
		],
		"ignore-fail": true,
	},
	"Google Chrome": {
		"operations": [quarter("bottom-left", mainScreenRef)],
		"repeat": true,
		"ignore-fail": true
	},
	"iTerm": {
		"operations": [quarter("top-left", mainScreenRef)],
		"repeat": true,
		"ignore-fail": true
	},
	"Sublime Text": {
		"operations": [half("right", mainScreenRef)],
		"repeat": true,
		"ignore-fail": true
	},
	"Mailplane 3": {
		"operations": [quarter("bottom-right", mainScreenRef)],
		"ignore-fail": true,
	}
});

slate.bind("padEnter:ctrl", slate.operation("layout", {"name": dualMonitorLayout}));

// TODO: nudge/resize?

// slate.js has to end in a statement (https://github.com/jigish/slate/issues/319)
// so this makes sure I don't forget that.
slate.log("js load finished");