package box2d;


typedef Native = haxe.macro.MacroType<[
	idl.Module.build({
		idlFile: "box2d.idl",
		target: #if hl "hl" #elseif (java || jvm) "jvm" #else "Unsupported target host" #end,
		packageName: "box2d",
		autoGC: true,
		nativeLib: "box2d"
	})
]>;

