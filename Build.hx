package;

import idl.Options;

class Build extends idl.BuildBase {
	// Put any necessary includes in this string and they will be added to the generated files
	inline static final packageName = "box2c";

	var options = {
		idlFile: 'lib/${packageName}.idl',
		target: null,
		packageName: '${packageName}',
		nativeLib: '${packageName}',
		outputDir: "src",
		includeCode: null,
		autoGC: true,
		defaultConfig: "Release",
		architecture: ArchAll
	};

	function new() {
		super(options);
	}

	override function getJVMInclude()
		return "";

	override function getHLInclude()
		return "
#ifdef _WIN32
#pragma warning(disable:4305)
#pragma warning(disable:4244)
#pragma warning(disable:4316)
#endif

#include \"h-box2c.h\"
";

	public static function main() {
		var b = new Build();

		b.parseArgs();
	}
}
