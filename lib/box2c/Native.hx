package box2c;


typedef Native = haxe.macro.MacroType<[
	idl.Module.build({
		idlFile: "box2c.idl",
		target: #if hl "hl" #elseif (java || jvm) "jvm" #else "Unsupported target host" #end,
		packageName: "box2c",
		autoGC: true,
		nativeLib: "box2c"
	})
]>;

