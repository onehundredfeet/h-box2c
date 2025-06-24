package;

import idl.Options;


class Box2DCustomCode extends idl.CustomCode {
    public override function getHLInclude() {
		return "
        #ifdef _WIN32
#pragma warning(disable:4305)
#pragma warning(disable:4244)
#pragma warning(disable:4316)
#endif
#include <h-box2d-helpers.h>
        ";
	}

	public override function getJVMInclude() {
		return "";
	}

	public override function getEmscriptenInclude() {
		return "";
	}

	public override function getJSInclude() {
		return "";
	}

	public override function getHXCPPInclude() {
		return "#include <h-box2d-helpers.h>
		";
	}

}
class Generator {
	// Put any necessary includes in this string and they will be added to the generated files
	
	public static function main() {
        trace('Building...');
        var sampleCode : idl.CustomCode = new Box2DCustomCode();
        var options = {
            idlFile: "hx/box2d.idl",
            target: null,
            packageName: "box2d",
            nativeLib: "Box2d",
            glueDir: null,
            autoGC: true,
            defaultConfig: "Release",
            architecture: ArchAll,
			hxDir:"hx",
            customCode: sampleCode,
			includes: ["h-box2d-helpers.h"], 
			libs:[]
        };

		new idl.Cmd(options).run();
	}
}
