// (wrapper runtime-invoke) <Module>:runtime_invoke_void__this___object (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0037
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.0   
IL_001f: ldarg.1   
IL_0020: ldind.ref 
IL_0021: ldarg.3   
IL_0022: calli     <object>
IL_0027: leave     IL_0035
IL_002c: stloc.1   
IL_002d: ldarg.2   
IL_002e: ldloc.1   
IL_002f: stind.ref 
IL_0030: leave     IL_0035
IL_0035: ldloc.0   
IL_0036: ret       
IL_0037: mono_ldptr_int_req_flag
IL_0039: ldind.u4  
IL_003a: brfalse   IL_004f
IL_003f: mono_not_taken
IL_0041: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0047: dup       
IL_0048: brfalse   IL_004e
IL_004d: throw     
IL_004e: pop       
IL_004f: ldarg.0   
IL_0050: ldarg.1   
IL_0051: ldind.ref 
IL_0052: ldarg.3   
IL_0053: calli     <object>
IL_0058: ldloc.0   
IL_0059: ret       
// (wrapper runtime-invoke) object:runtime_invoke_void (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0034
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.3   
IL_001f: calli     <>
IL_0024: leave     IL_0032
IL_0029: stloc.1   
IL_002a: ldarg.2   
IL_002b: ldloc.1   
IL_002c: stind.ref 
IL_002d: leave     IL_0032
IL_0032: ldloc.0   
IL_0033: ret       
IL_0034: mono_ldptr_int_req_flag
IL_0036: ldind.u4  
IL_0037: brfalse   IL_004c
IL_003c: mono_not_taken
IL_003e: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0044: dup       
IL_0045: brfalse   IL_004b
IL_004a: throw     
IL_004b: pop       
IL_004c: ldarg.3   
IL_004d: calli     <>
IL_0052: ldloc.0   
IL_0053: ret       
// (wrapper alloc) object:AllocSmall (intptr,intptr)
IL_0000: mono_tls  3
IL_0006: stloc.0   
IL_0007: ldarg.1   
IL_0008: stloc.1   
IL_0009: ldloc.0   
IL_000a: ldc.i4    1192
IL_000f: add       
IL_0010: ldc.i4.1  
IL_0011: mono_atomic_store_i40
IL_0017: ldloc.1   
IL_0018: ldc.i4.7  
IL_0019: add       
IL_001a: ldc.i4.s  -8
IL_001c: and       
IL_001d: stloc.1   
IL_001e: ldloc.0   
IL_001f: ldc.i4    1640
IL_0024: add       
IL_0025: stloc.2   
IL_0026: ldloc.2   
IL_0027: ldind.i   
IL_0028: stloc.3   
IL_0029: ldloc.3   
IL_002a: ldloc.1   
IL_002b: conv.i    
IL_002c: add       
IL_002d: stloc.s   4
IL_002f: ldloc.s   4
IL_0031: ldloc.0   
IL_0032: ldc.i4    1648
IL_0037: add       
IL_0038: ldind.i   
IL_0039: blt.un.s  IL_0060
IL_003b: mono_not_taken
IL_003d: ldloc.0   
IL_003e: ldc.i4    1192
IL_0043: add       
IL_0044: ldc.i4.0  
IL_0045: mono_atomic_store_i40
IL_004b: ldarg.0   
IL_004c: ldloc.1   
IL_004d: mono_icall <mono_gc_alloc_obj>
IL_0053: dup       
IL_0054: brtrue    IL_005f
IL_0059: newobj    <System.OutOfMemoryException:.ctor ()>
IL_005e: throw     
IL_005f: ret       
IL_0060: ldloc.2   
IL_0061: ldloc.s   4
IL_0063: stind.i   
IL_0064: ldloc.3   
IL_0065: ldarg.0   
IL_0066: stind.i   
IL_0067: ldloc.0   
IL_0068: ldc.i4    1192
IL_006d: add       
IL_006e: ldc.i4.0  
IL_006f: mono_atomic_store_i42
IL_0075: ldloc.3   
IL_0076: ret       
// MlEco.Program:Main ()
IL_0000: ldc.i4.0  
IL_0001: call      <MlEco.Program:AppMain (bool)>
IL_0006: ret       
// (wrapper runtime-invoke) object:runtime_invoke_void (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0034
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.3   
IL_001f: calli     <>
IL_0024: leave     IL_0032
IL_0029: stloc.1   
IL_002a: ldarg.2   
IL_002b: ldloc.1   
IL_002c: stind.ref 
IL_002d: leave     IL_0032
IL_0032: ldloc.0   
IL_0033: ret       
IL_0034: mono_ldptr_int_req_flag
IL_0036: ldind.u4  
IL_0037: brfalse   IL_004c
IL_003c: mono_not_taken
IL_003e: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0044: dup       
IL_0045: brfalse   IL_004b
IL_004a: throw     
IL_004b: pop       
IL_004c: ldarg.3   
IL_004d: calli     <>
IL_0052: ldloc.0   
IL_0053: ret       
// MlEco.Program:AppMain (bool)
IL_0000: ldarg.0   
IL_0001: brfalse.s IL_0009
IL_0003: call      <MlEco.Diagnostics:Run ()>
IL_0008: ret       
IL_0009: call      <Gtk.Application:Init ()>
IL_000e: newobj    <MlEco.MlEcoApp:.ctor ()>
IL_0013: pop       
IL_0014: call      <Gtk.Application:Run ()>
IL_0019: ret       
// Gtk.Application:Init ()
IL_0000: call      <Gtk.Application:SetPrgname ()>
IL_0005: ldloca.s  0
IL_0007: ldc.i4.0  
IL_0008: call      <intptr:.ctor (int)>
IL_000d: ldc.i4.0  
IL_000e: stloc.1   
IL_000f: ldloca.s  1
IL_0011: ldloca.s  0
IL_0013: call      <Gtk.Application:gtk_init (int&,intptr&)>
IL_0018: ret       
// Gtk.Application:.cctor ()
IL_0000: call      <GLib.Thread:get_Supported ()>
IL_0005: brtrue    IL_000f
IL_000a: call      <GLib.Thread:Init ()>
IL_000f: call      <System.Environment:get_OSVersion ()>
IL_0014: callvirt  <System.OperatingSystem:get_Platform ()>
IL_0019: stloc.0   
IL_001a: ldloc.0   
IL_001b: switch    (IL_0035, IL_0035, IL_0035, IL_0035)
IL_0030: br        IL_0073
IL_0035: ldc.i4    128
IL_003a: ldstr     "static"
IL_003f: ldstr     "gtk-sharp visual styles window"
IL_0044: ldc.i4    13565952
IL_0049: ldc.i4.0  
IL_004a: ldc.i4.0  
IL_004b: ldc.i4.0  
IL_004c: ldc.i4.0  
IL_004d: ldsfld    <System.IntPtr:Zero>
IL_0052: ldsfld    <System.IntPtr:Zero>
IL_0057: ldsfld    <System.IntPtr:Zero>
IL_005c: ldsfld    <System.IntPtr:Zero>
IL_0061: call      <Gtk.Application:Win32CreateWindow (int,string,string,int,int,int,int,int,intptr,intptr,intptr,intptr)>
IL_0066: stloc.1   
IL_0067: ldloc.1   
IL_0068: call      <Gtk.Application:Win32DestroyWindow (intptr)>
IL_006d: pop       
IL_006e: br        IL_0078
IL_0073: br        IL_0078
IL_0078: ret       
// (wrapper runtime-invoke) object:runtime_invoke_void (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0034
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.3   
IL_001f: calli     <>
IL_0024: leave     IL_0032
IL_0029: stloc.1   
IL_002a: ldarg.2   
IL_002b: ldloc.1   
IL_002c: stind.ref 
IL_002d: leave     IL_0032
IL_0032: ldloc.0   
IL_0033: ret       
IL_0034: mono_ldptr_int_req_flag
IL_0036: ldind.u4  
IL_0037: brfalse   IL_004c
IL_003c: mono_not_taken
IL_003e: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0044: dup       
IL_0045: brfalse   IL_004b
IL_004a: throw     
IL_004b: pop       
IL_004c: ldarg.3   
IL_004d: calli     <>
IL_0052: ldloc.0   
IL_0053: ret       
// (wrapper managed-to-native) System.Environment:GetOSVersionString ()
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldloca.s  2
IL_000d: mono_ldptr3
IL_0013: calli     <intptr>
IL_0018: dup       
IL_0019: brfalse   IL_0021
IL_001e: mono_objaddr
IL_0020: ldind.ref 
IL_0021: ldloc.0   
IL_0022: ldloca.s  1
IL_0024: ldloca.s  2
IL_0026: mono_icall <mono_icall_end>
IL_002c: mono_ldptr_int_req_flag
IL_002e: ldind.u4  
IL_002f: brfalse   IL_0044
IL_0034: mono_not_taken
IL_0036: mono_icall <mono_thread_interruption_checkpoint>
IL_003c: dup       
IL_003d: brfalse   IL_0043
IL_0042: throw     
IL_0043: pop       
IL_0044: ret       
// (wrapper runtime-invoke) object:runtime_invoke_void (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0034
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.3   
IL_001f: calli     <>
IL_0024: leave     IL_0032
IL_0029: stloc.1   
IL_002a: ldarg.2   
IL_002b: ldloc.1   
IL_002c: stind.ref 
IL_002d: leave     IL_0032
IL_0032: ldloc.0   
IL_0033: ret       
IL_0034: mono_ldptr_int_req_flag
IL_0036: ldind.u4  
IL_0037: brfalse   IL_004c
IL_003c: mono_not_taken
IL_003e: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0044: dup       
IL_0045: brfalse   IL_004b
IL_004a: throw     
IL_004b: pop       
IL_004c: ldarg.3   
IL_004d: calli     <>
IL_0052: ldloc.0   
IL_0053: ret       
// (wrapper alloc) object:AllocVector (intptr,intptr)
IL_0000: mono_tls  3
IL_0006: stloc.0   
IL_0007: ldarg.1   
IL_0008: ldc.i4    2147483647
IL_000d: conv.u    
IL_000e: ble.un.s  IL_0022
IL_0010: mono_not_taken
IL_0012: ldarg.1   
IL_0013: ldc.i4.0  
IL_0014: blt.s     IL_001c
IL_0016: newobj    <System.OutOfMemoryException:.ctor ()>
IL_001b: throw     
IL_001c: newobj    <System.OverflowException:.ctor ()>
IL_0021: throw     
IL_0022: ldarg.0   
IL_0023: ldc.i4.0  
IL_0024: add       
IL_0025: ldind.i   
IL_0026: ldc.i4    136
IL_002b: add       
IL_002c: ldind.u4  
IL_002d: conv.i    
IL_002e: ldarg.1   
IL_002f: mul.ovf.un
IL_0030: ldc.i4.s  32
IL_0032: add.ovf.un
IL_0033: stloc.1   
IL_0034: leave     IL_0040
IL_0039: pop       
IL_003a: newobj    <System.OutOfMemoryException:.ctor ()>
IL_003f: throw     
IL_0040: ldloc.0   
IL_0041: ldc.i4    1192
IL_0046: add       
IL_0047: ldc.i4.1  
IL_0048: mono_atomic_store_i40
IL_004e: ldloc.1   
IL_004f: ldc.i4.7  
IL_0050: add       
IL_0051: ldc.i4.s  -8
IL_0053: and       
IL_0054: stloc.1   
IL_0055: ldloc.1   
IL_0056: ldc.i4    8000
IL_005b: bgt.un.s  IL_007a
IL_005d: ldloc.0   
IL_005e: ldc.i4    1640
IL_0063: add       
IL_0064: stloc.2   
IL_0065: ldloc.2   
IL_0066: ldind.i   
IL_0067: stloc.3   
IL_0068: ldloc.3   
IL_0069: ldloc.1   
IL_006a: conv.i    
IL_006b: add       
IL_006c: stloc.s   4
IL_006e: ldloc.s   4
IL_0070: ldloc.0   
IL_0071: ldc.i4    1648
IL_0076: add       
IL_0077: ldind.i   
IL_0078: blt.un.s  IL_00a0
IL_007a: mono_not_taken
IL_007c: ldloc.0   
IL_007d: ldc.i4    1192
IL_0082: add       
IL_0083: ldc.i4.0  
IL_0084: mono_atomic_store_i40
IL_008a: ldarg.0   
IL_008b: ldloc.1   
IL_008c: ldarg.1   
IL_008d: mono_icall <mono_gc_alloc_vector>
IL_0093: dup       
IL_0094: brtrue    IL_009f
IL_0099: newobj    <System.OutOfMemoryException:.ctor ()>
IL_009e: throw     
IL_009f: ret       
IL_00a0: ldloc.2   
IL_00a1: ldloc.s   4
IL_00a3: stind.i   
IL_00a4: ldloc.3   
IL_00a5: ldarg.0   
IL_00a6: stind.i   
IL_00a7: ldloc.3   
IL_00a8: mono_objaddr
IL_00aa: ldc.i4.s  24
IL_00ac: add       
IL_00ad: ldarg.1   
IL_00ae: stind.i4  
IL_00af: ldloc.0   
IL_00b0: ldc.i4    1192
IL_00b5: add       
IL_00b6: ldc.i4.0  
IL_00b7: mono_atomic_store_i42
IL_00bd: ldloc.3   
IL_00be: ret       
// (wrapper managed-to-native) System.Environment:get_Platform ()
IL_0000: mono_ldptr2
IL_0006: calli     <>
IL_000b: mono_ldptr_int_req_flag
IL_000d: ldind.u4  
IL_000e: brfalse   IL_0023
IL_0013: mono_not_taken
IL_0015: mono_icall <mono_thread_interruption_checkpoint>
IL_001b: dup       
IL_001c: brfalse   IL_0022
IL_0021: throw     
IL_0022: pop       
IL_0023: ret       
// Gtk.Application:SetPrgname ()
IL_0000: call      <System.Environment:GetCommandLineArgs ()>
IL_0005: ldc.i4.0  
IL_0006: ldelem.ref
IL_0007: call      <System.IO.Path:GetFileNameWithoutExtension (string)>
IL_000c: call      <GLib.Global:set_ProgramName (string)>
IL_0011: ret       
// (wrapper managed-to-native) System.Environment:GetCommandLineArgs ()
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldloca.s  2
IL_000d: mono_ldptr3
IL_0013: calli     <intptr>
IL_0018: dup       
IL_0019: brfalse   IL_0021
IL_001e: mono_objaddr
IL_0020: ldind.ref 
IL_0021: ldloc.0   
IL_0022: ldloca.s  1
IL_0024: ldloca.s  2
IL_0026: mono_icall <mono_icall_end>
IL_002c: mono_ldptr_int_req_flag
IL_002e: ldind.u4  
IL_002f: brfalse   IL_0044
IL_0034: mono_not_taken
IL_0036: mono_icall <mono_thread_interruption_checkpoint>
IL_003c: dup       
IL_003d: brfalse   IL_0043
IL_0042: throw     
IL_0043: pop       
IL_0044: ret       
// (wrapper managed-to-native) System.IO.MonoIO:get_VolumeSeparatorChar ()
IL_0000: mono_ldptr2
IL_0006: calli     <>
IL_000b: mono_ldptr_int_req_flag
IL_000d: ldind.u4  
IL_000e: brfalse   IL_0023
IL_0013: mono_not_taken
IL_0015: mono_icall <mono_thread_interruption_checkpoint>
IL_001b: dup       
IL_001c: brfalse   IL_0022
IL_0021: throw     
IL_0022: pop       
IL_0023: ret       
// (wrapper managed-to-native) Mono.SafeStringMarshal:StringToUtf8 (string)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldloca.s  2
IL_0014: mono_ldptr4
IL_001a: calli     <string&,intptr>
IL_001f: ldloc.0   
IL_0020: ldloca.s  1
IL_0022: ldloca.s  2
IL_0024: mono_icall <mono_icall_end>
IL_002a: mono_ldptr_int_req_flag
IL_002c: ldind.u4  
IL_002d: brfalse   IL_0042
IL_0032: mono_not_taken
IL_0034: mono_icall <mono_thread_interruption_checkpoint>
IL_003a: dup       
IL_003b: brfalse   IL_0041
IL_0040: throw     
IL_0041: pop       
IL_0042: ret       
// (wrapper managed-to-native) System.Environment:internalGetEnvironmentVariable_native (intptr)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: ldloca.s  2
IL_000e: mono_ldptr3
IL_0014: calli     <intptr,intptr>
IL_0019: dup       
IL_001a: brfalse   IL_0022
IL_001f: mono_objaddr
IL_0021: ldind.ref 
IL_0022: ldloc.0   
IL_0023: ldloca.s  1
IL_0025: ldloca.s  2
IL_0027: mono_icall <mono_icall_end>
IL_002d: mono_ldptr_int_req_flag
IL_002f: ldind.u4  
IL_0030: brfalse   IL_0045
IL_0035: mono_not_taken
IL_0037: mono_icall <mono_thread_interruption_checkpoint>
IL_003d: dup       
IL_003e: brfalse   IL_0044
IL_0043: throw     
IL_0044: pop       
IL_0045: ret       
// (wrapper managed-to-native) Mono.SafeStringMarshal:GFree (intptr)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: ldloca.s  2
IL_000e: mono_ldptr3
IL_0014: calli     <intptr,intptr>
IL_0019: ldloc.0   
IL_001a: ldloca.s  1
IL_001c: ldloca.s  2
IL_001e: mono_icall <mono_icall_end>
IL_0024: mono_ldptr_int_req_flag
IL_0026: ldind.u4  
IL_0027: brfalse   IL_003c
IL_002c: mono_not_taken
IL_002e: mono_icall <mono_thread_interruption_checkpoint>
IL_0034: dup       
IL_0035: brfalse   IL_003b
IL_003a: throw     
IL_003b: pop       
IL_003c: ret       
// (wrapper managed-to-native) System.IO.MonoIO:get_DirectorySeparatorChar ()
IL_0000: mono_ldptr2
IL_0006: calli     <>
IL_000b: mono_ldptr_int_req_flag
IL_000d: ldind.u4  
IL_000e: brfalse   IL_0023
IL_0013: mono_not_taken
IL_0015: mono_icall <mono_thread_interruption_checkpoint>
IL_001b: dup       
IL_001c: brfalse   IL_0022
IL_0021: throw     
IL_0022: pop       
IL_0023: ret       
// (wrapper managed-to-native) System.IO.MonoIO:get_AltDirectorySeparatorChar ()
IL_0000: mono_ldptr2
IL_0006: calli     <>
IL_000b: mono_ldptr_int_req_flag
IL_000d: ldind.u4  
IL_000e: brfalse   IL_0023
IL_0013: mono_not_taken
IL_0015: mono_icall <mono_thread_interruption_checkpoint>
IL_001b: dup       
IL_001c: brfalse   IL_0022
IL_0021: throw     
IL_0022: pop       
IL_0023: ret       
// (wrapper managed-to-native) System.IO.MonoIO:get_PathSeparator ()
IL_0000: mono_ldptr2
IL_0006: calli     <>
IL_000b: mono_ldptr_int_req_flag
IL_000d: ldind.u4  
IL_000e: brfalse   IL_0023
IL_0013: mono_not_taken
IL_0015: mono_icall <mono_thread_interruption_checkpoint>
IL_001b: dup       
IL_001c: brfalse   IL_0022
IL_0021: throw     
IL_0022: pop       
IL_0023: ret       
// (wrapper managed-to-native) string:FastAllocateString (int)
IL_0000: ldarg.0   
IL_0001: mono_ldptr2
IL_0007: calli     <int>
IL_000c: mono_ldptr_int_req_flag
IL_000e: ldind.u4  
IL_000f: brfalse   IL_0024
IL_0014: mono_not_taken
IL_0016: mono_icall <mono_thread_interruption_checkpoint>
IL_001c: dup       
IL_001d: brfalse   IL_0023
IL_0022: throw     
IL_0023: pop       
IL_0024: ret       
// (wrapper runtime-invoke) object:runtime_invoke_void (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0034
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.3   
IL_001f: calli     <>
IL_0024: leave     IL_0032
IL_0029: stloc.1   
IL_002a: ldarg.2   
IL_002b: ldloc.1   
IL_002c: stind.ref 
IL_002d: leave     IL_0032
IL_0032: ldloc.0   
IL_0033: ret       
IL_0034: mono_ldptr_int_req_flag
IL_0036: ldind.u4  
IL_0037: brfalse   IL_004c
IL_003c: mono_not_taken
IL_003e: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0044: dup       
IL_0045: brfalse   IL_004b
IL_004a: throw     
IL_004b: pop       
IL_004c: ldarg.3   
IL_004d: calli     <>
IL_0052: ldloc.0   
IL_0053: ret       
// GLib.Global:set_ProgramName (string)
IL_0000: ldarg.0   
IL_0001: call      <GLib.Marshaller:StringToPtrGStrdup (string)>
IL_0006: stloc.0   
IL_0007: ldloc.0   
IL_0008: call      <GLib.Global:g_set_prgname (intptr)>
IL_000d: ldloc.0   
IL_000e: call      <GLib.Marshaller:Free (intptr)>
IL_0013: ret       
// GLib.Marshaller:StringToPtrGStrdup (string)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: ldsfld    <System.IntPtr:Zero>
IL_000b: ret       
IL_000c: ldarg.0   
IL_000d: stloc.1   
IL_000e: ldloc.1   
IL_000f: conv.u    
IL_0010: stloc.0   
IL_0011: ldloc.0   
IL_0012: brfalse.s IL_001c
IL_0014: ldloc.0   
IL_0015: call      <System.Runtime.CompilerServices.RuntimeHelpers:get_OffsetToStringData ()>
IL_001a: add       
IL_001b: stloc.0   
IL_001c: ldloc.0   
IL_001d: ldarg.0   
IL_001e: callvirt  <string:get_Length ()>
IL_0023: newobj    <intptr:.ctor (int)>
IL_0028: ldsfld    <System.IntPtr:Zero>
IL_002d: ldsfld    <System.IntPtr:Zero>
IL_0032: ldloca.s  2
IL_0034: call      <GLib.Marshaller:g_utf16_to_utf8 (char*,intptr,intptr,intptr,intptr&)>
IL_0039: stloc.3   
IL_003a: ldloc.2   
IL_003b: ldsfld    <System.IntPtr:Zero>
IL_0040: call      <intptr:op_Inequality (intptr,intptr)>
IL_0045: brfalse   IL_0051
IL_004a: ldloc.2   
IL_004b: newobj    <GLib.GException:.ctor (intptr)>
IL_0050: throw     
IL_0051: ldloc.3   
IL_0052: ret       
// GLib.Marshaller:.cctor ()
IL_0000: ldc.i4    1970
IL_0005: ldc.i4.1  
IL_0006: ldc.i4.1  
IL_0007: ldc.i4.0  
IL_0008: ldc.i4.0  
IL_0009: ldc.i4.0  
IL_000a: newobj    <System.DateTime:.ctor (int,int,int,int,int,int)>
IL_000f: stsfld    <GLib.Marshaller:local_epoch>
IL_0014: call      <System.TimeZone:get_CurrentTimeZone ()>
IL_0019: call      <System.DateTime:get_Now ()>
IL_001e: callvirt  <System.TimeZone:GetUtcOffset (System.DateTime)>
IL_0023: stloc.0   
IL_0024: ldloca.s  0
IL_0026: call      <System.TimeSpan:get_TotalSeconds ()>
IL_002b: conv.i4   
IL_002c: stsfld    <GLib.Marshaller:utc_offset>
IL_0031: ret       
// (wrapper runtime-invoke) object:runtime_invoke_void (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0034
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.3   
IL_001f: calli     <>
IL_0024: leave     IL_0032
IL_0029: stloc.1   
IL_002a: ldarg.2   
IL_002b: ldloc.1   
IL_002c: stind.ref 
IL_002d: leave     IL_0032
IL_0032: ldloc.0   
IL_0033: ret       
IL_0034: mono_ldptr_int_req_flag
IL_0036: ldind.u4  
IL_0037: brfalse   IL_004c
IL_003c: mono_not_taken
IL_003e: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0044: dup       
IL_0045: brfalse   IL_004b
IL_004a: throw     
IL_004b: pop       
IL_004c: ldarg.3   
IL_004d: calli     <>
IL_0052: ldloc.0   
IL_0053: ret       
// (wrapper managed-to-native) System.DateTime:GetSystemTimeAsFileTime ()
IL_0000: mono_ldptr2
IL_0006: calli     <>
IL_000b: mono_ldptr_int_req_flag
IL_000d: ldind.u4  
IL_000e: brfalse   IL_0023
IL_0013: mono_not_taken
IL_0015: mono_icall <mono_thread_interruption_checkpoint>
IL_001b: dup       
IL_001c: brfalse   IL_0022
IL_0021: throw     
IL_0022: pop       
IL_0023: ret       
// (wrapper stelemref) object:virt_stelemref_sealed_class (intptr,object)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: ldelema   <Object>
IL_0007: stloc.2   
IL_0008: ldarg.2   
IL_0009: brfalse   IL_0028
IL_000e: ldarg.0   
IL_000f: mono_objaddr
IL_0011: ldind.i   
IL_0012: mono_objaddr
IL_0014: ldind.i   
IL_0015: mono_objaddr
IL_0017: ldind.i   
IL_0018: stloc.0   
IL_0019: ldarg.2   
IL_001a: mono_objaddr
IL_001c: ldind.i   
IL_001d: mono_objaddr
IL_001f: ldind.i   
IL_0020: stloc.1   
IL_0021: ldloc.0   
IL_0022: ldloc.1   
IL_0023: bne.un    IL_002c
IL_0028: ldloc.2   
IL_0029: ldarg.2   
IL_002a: stind.ref 
IL_002b: ret       
IL_002c: newobj    <System.ArrayTypeMismatchException:.ctor ()>
IL_0031: throw     
// (wrapper managed-to-native) object:__icall_wrapper_mono_gc_alloc_vector (intptr,intptr,intptr)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: ldarg.2   
IL_0003: mono_jit_icall_addr2
IL_0009: calli     <intptr,intptr,intptr>
IL_000e: mono_ldptr_int_req_flag
IL_0010: ldind.u4  
IL_0011: brfalse   IL_0026
IL_0016: mono_not_taken
IL_0018: mono_icall <mono_thread_interruption_checkpoint>
IL_001e: dup       
IL_001f: brfalse   IL_0025
IL_0024: throw     
IL_0025: pop       
IL_0026: ret       
// (wrapper managed-to-native) System.TimeZoneInfo:readlink (string,byte[],int)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldarg.0   
IL_0003: mono_icall <mono_string_to_utf8str>
IL_0009: stloc.s   6
IL_000b: ldarg.1   
IL_000c: mono_icall <mono_array_to_lparray>
IL_0012: stloc.s   7
IL_0014: ldloca.s  4
IL_0016: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_001c: stloc.s   5
IL_001e: ldloc.s   6
IL_0020: ldloc.s   7
IL_0022: ldarg.2   
IL_0023: mono_ldptr5
IL_0029: calli     <intptr,object,int>
IL_002e: ldloc.s   5
IL_0030: ldloca.s  4
IL_0032: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0038: stloc.3   
IL_0039: mono_ldptr_int_req_flag
IL_003b: ldind.u4  
IL_003c: brfalse   IL_0051
IL_0041: mono_not_taken
IL_0043: mono_icall <mono_thread_interruption_checkpoint>
IL_0049: dup       
IL_004a: brfalse   IL_0050
IL_004f: throw     
IL_0050: pop       
IL_0051: ldloc.s   6
IL_0053: mono_icall <mono_marshal_free>
IL_0059: ldarg.1   
IL_005a: ldloc.s   7
IL_005c: mono_icall <mono_free_lparray>
IL_0062: ldloc.3   
IL_0063: ret       
// (wrapper managed-to-native) object:__icall_wrapper_mono_string_to_utf8str (object)
IL_0000: ldarg.0   
IL_0001: mono_jit_icall_addr2
IL_0007: calli     <object>
IL_000c: mono_ldptr_int_req_flag
IL_000e: ldind.u4  
IL_000f: brfalse   IL_0024
IL_0014: mono_not_taken
IL_0016: mono_icall <mono_thread_interruption_checkpoint>
IL_001c: dup       
IL_001d: brfalse   IL_0023
IL_0022: throw     
IL_0023: pop       
IL_0024: ret       
// (wrapper managed-to-native) object:__icall_wrapper_mono_array_to_lparray (object)
IL_0000: ldarg.0   
IL_0001: mono_jit_icall_addr2
IL_0007: calli     <object>
IL_000c: mono_ldptr_int_req_flag
IL_000e: ldind.u4  
IL_000f: brfalse   IL_0024
IL_0014: mono_not_taken
IL_0016: mono_icall <mono_thread_interruption_checkpoint>
IL_001c: dup       
IL_001d: brfalse   IL_0023
IL_0022: throw     
IL_0023: pop       
IL_0024: ret       
// (wrapper managed-to-native) object:__icall_wrapper_mono_marshal_free (intptr)
IL_0000: ldarg.0   
IL_0001: mono_jit_icall_addr2
IL_0007: calli     <intptr>
IL_000c: mono_ldptr_int_req_flag
IL_000e: ldind.u4  
IL_000f: brfalse   IL_0024
IL_0014: mono_not_taken
IL_0016: mono_icall <mono_thread_interruption_checkpoint>
IL_001c: dup       
IL_001d: brfalse   IL_0023
IL_0022: throw     
IL_0023: pop       
IL_0024: ret       
// (wrapper managed-to-native) object:__icall_wrapper_mono_free_lparray (object,intptr)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: mono_jit_icall_addr2
IL_0008: calli     <object,intptr>
IL_000d: mono_ldptr_int_req_flag
IL_000f: ldind.u4  
IL_0010: brfalse   IL_0025
IL_0015: mono_not_taken
IL_0017: mono_icall <mono_thread_interruption_checkpoint>
IL_001d: dup       
IL_001e: brfalse   IL_0024
IL_0023: throw     
IL_0024: pop       
IL_0025: ret       
// (wrapper managed-to-native) System.Text.EncodingHelper:InternalCodePage (int&)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: dup       
IL_000d: mono_icall <mono_icall_handle_new_interior>
IL_0013: pop       
IL_0014: ldloca.s  2
IL_0016: mono_ldptr4
IL_001c: calli     <int&,intptr>
IL_0021: dup       
IL_0022: brfalse   IL_002a
IL_0027: mono_objaddr
IL_0029: ldind.ref 
IL_002a: ldloc.0   
IL_002b: ldloca.s  1
IL_002d: ldloca.s  2
IL_002f: mono_icall <mono_icall_end>
IL_0035: mono_ldptr_int_req_flag
IL_0037: ldind.u4  
IL_0038: brfalse   IL_004d
IL_003d: mono_not_taken
IL_003f: mono_icall <mono_thread_interruption_checkpoint>
IL_0045: dup       
IL_0046: brfalse   IL_004c
IL_004b: throw     
IL_004c: pop       
IL_004d: ret       
// (wrapper managed-to-native) System.Threading.Monitor:Exit (object)
IL_0000: ldarg.0   
IL_0001: mono_ldptr2
IL_0007: calli     <object>
IL_000c: mono_ldptr_int_req_flag
IL_000e: ldind.u4  
IL_000f: brfalse   IL_0024
IL_0014: mono_not_taken
IL_0016: mono_icall <mono_thread_interruption_checkpoint>
IL_001c: dup       
IL_001d: brfalse   IL_0023
IL_0022: throw     
IL_0023: pop       
IL_0024: ret       
// (wrapper managed-to-managed) string:.ctor (char[],int,int)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: ldarg.2   
IL_0003: ldarg.3   
IL_0004: call      <string:CreateString (char[],int,int)>
IL_0009: ret       
// (wrapper runtime-invoke) object:runtime_invoke_void (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0034
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.3   
IL_001f: calli     <>
IL_0024: leave     IL_0032
IL_0029: stloc.1   
IL_002a: ldarg.2   
IL_002b: ldloc.1   
IL_002c: stind.ref 
IL_002d: leave     IL_0032
IL_0032: ldloc.0   
IL_0033: ret       
IL_0034: mono_ldptr_int_req_flag
IL_0036: ldind.u4  
IL_0037: brfalse   IL_004c
IL_003c: mono_not_taken
IL_003e: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0044: dup       
IL_0045: brfalse   IL_004b
IL_004a: throw     
IL_004b: pop       
IL_004c: ldarg.3   
IL_004d: calli     <>
IL_0052: ldloc.0   
IL_0053: ret       
// (wrapper managed-to-native) object:__icall_wrapper_ves_icall_object_new_specific (intptr)
IL_0000: ldarg.0   
IL_0001: mono_jit_icall_addr2
IL_0007: calli     <intptr>
IL_000c: mono_ldptr_int_req_flag
IL_000e: ldind.u4  
IL_000f: brfalse   IL_0024
IL_0014: mono_not_taken
IL_0016: mono_icall <mono_thread_interruption_checkpoint>
IL_001c: dup       
IL_001d: brfalse   IL_0023
IL_0022: throw     
IL_0023: pop       
IL_0024: ret       
// (wrapper managed-to-native) System.GC:register_ephemeron_array (System.Runtime.CompilerServices.Ephemeron[])
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldloca.s  2
IL_0014: mono_ldptr4
IL_001a: calli     <Ephemeron[]&,intptr>
IL_001f: ldloc.0   
IL_0020: ldloca.s  1
IL_0022: ldloca.s  2
IL_0024: mono_icall <mono_icall_end>
IL_002a: mono_ldptr_int_req_flag
IL_002c: ldind.u4  
IL_002d: brfalse   IL_0042
IL_0032: mono_not_taken
IL_0034: mono_icall <mono_thread_interruption_checkpoint>
IL_003a: dup       
IL_003b: brfalse   IL_0041
IL_0040: throw     
IL_0041: pop       
IL_0042: ret       
// (wrapper managed-to-native) System.GC:get_ephemeron_tombstone ()
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldloca.s  2
IL_000d: mono_ldptr3
IL_0013: calli     <intptr>
IL_0018: dup       
IL_0019: brfalse   IL_0021
IL_001e: mono_objaddr
IL_0020: ldind.ref 
IL_0021: ldloc.0   
IL_0022: ldloca.s  1
IL_0024: ldloca.s  2
IL_0026: mono_icall <mono_icall_end>
IL_002c: mono_ldptr_int_req_flag
IL_002e: ldind.u4  
IL_002f: brfalse   IL_0044
IL_0034: mono_not_taken
IL_0036: mono_icall <mono_thread_interruption_checkpoint>
IL_003c: dup       
IL_003d: brfalse   IL_0043
IL_0042: throw     
IL_0043: pop       
IL_0044: ret       
// System.Buffers.ArrayPool`1<int>:.ctor ()
IL_0000: ldarg.0   
IL_0001: call      <object:.ctor ()>
IL_0006: ret       
// (wrapper stelemref) object:virt_stelemref_class_small_idepth (intptr,object)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: ldelema   <Object>
IL_0007: stloc.2   
IL_0008: ldarg.2   
IL_0009: brfalse   IL_003c
IL_000e: ldarg.0   
IL_000f: mono_objaddr
IL_0011: ldind.i   
IL_0012: mono_objaddr
IL_0014: ldind.i   
IL_0015: mono_objaddr
IL_0017: ldind.i   
IL_0018: stloc.0   
IL_0019: ldarg.2   
IL_001a: mono_objaddr
IL_001c: ldind.i   
IL_001d: mono_objaddr
IL_001f: ldind.i   
IL_0020: stloc.1   
IL_0021: ldloc.1   
IL_0022: mono_objaddr
IL_0024: ldc.i4.s  16
IL_0026: add       
IL_0027: ldind.i   
IL_0028: ldloc.0   
IL_0029: mono_objaddr
IL_002b: ldc.i4.s  24
IL_002d: add       
IL_002e: ldind.u2  
IL_002f: ldc.i4.1  
IL_0030: sub       
IL_0031: ldc.i4.s  8
IL_0033: mul       
IL_0034: add       
IL_0035: ldind.i   
IL_0036: ldloc.0   
IL_0037: bne.un    IL_0040
IL_003c: ldloc.2   
IL_003d: ldarg.2   
IL_003e: stind.ref 
IL_003f: ret       
IL_0040: newobj    <System.ArrayTypeMismatchException:.ctor ()>
IL_0045: throw     
// (wrapper remoting-invoke-with-check) object:MemberwiseClone ()
IL_0000: ldarg.0   
IL_0001: ldarg.0   
IL_0002: mono_objaddr
IL_0004: ldind.i   
IL_0005: ldc.i4.0  
IL_0006: add       
IL_0007: ldind.i   
IL_0008: mono_classconst <TransparentProxy>
IL_000e: bne.un    IL_0032
IL_0013: ldarg.0   
IL_0014: mono_objaddr
IL_0016: ldc.i4.s  16
IL_0018: add       
IL_0019: ldind.ref 
IL_001a: mono_objaddr
IL_001c: ldc.i4.s  40
IL_001e: add       
IL_001f: ldind.i4  
IL_0020: ldc.i4.m1 
IL_0021: beq       IL_002c
IL_0026: call      <(wrapper xdomain-invoke) object:MemberwiseClone ()>
IL_002b: ret       
IL_002c: call      <(wrapper remoting-invoke) object:MemberwiseClone ()>
IL_0031: ret       
IL_0032: call      <object:MemberwiseClone ()>
IL_0037: ret       
// (wrapper managed-to-native) object:MemberwiseClone (object)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldarg.0   
IL_000d: mono_ldptr3
IL_0013: calli     <object>
IL_0018: mono_ldptr_int_req_flag
IL_001a: ldind.u4  
IL_001b: brfalse   IL_0030
IL_0020: mono_not_taken
IL_0022: mono_icall <mono_thread_interruption_checkpoint>
IL_0028: dup       
IL_0029: brfalse   IL_002f
IL_002e: throw     
IL_002f: pop       
IL_0030: ret       
// (wrapper managed-to-native) System.Reflection.Assembly:GetExecutingAssembly ()
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldloca.s  2
IL_000d: mono_ldptr3
IL_0013: calli     <intptr>
IL_0018: dup       
IL_0019: brfalse   IL_0021
IL_001e: mono_objaddr
IL_0020: ldind.ref 
IL_0021: ldloc.0   
IL_0022: ldloca.s  1
IL_0024: ldloca.s  2
IL_0026: mono_icall <mono_icall_end>
IL_002c: mono_ldptr_int_req_flag
IL_002e: ldind.u4  
IL_002f: brfalse   IL_0044
IL_0034: mono_not_taken
IL_0036: mono_icall <mono_thread_interruption_checkpoint>
IL_003c: dup       
IL_003d: brfalse   IL_0043
IL_0042: throw     
IL_0043: pop       
IL_0044: ret       
// (wrapper managed-to-native) System.Reflection.Assembly:GetManifestResourceInternal (System.Reflection.Assembly,string,int&,System.Reflection.Module&)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldloca.s  1
IL_000e: ldloca.s  2
IL_0010: mono_icall <mono_icall_start>
IL_0016: stloc.0   
IL_0017: ldarg.0   
IL_0018: mono_icall <mono_icall_handle_new>
IL_001e: ldarg.1   
IL_001f: mono_icall <mono_icall_handle_new>
IL_0025: ldarg.2   
IL_0026: dup       
IL_0027: mono_icall <mono_icall_handle_new_interior>
IL_002d: pop       
IL_002e: ldnull    
IL_002f: mono_icall <mono_icall_handle_new>
IL_0035: dup       
IL_0036: stloc.3   
IL_0037: ldloca.s  2
IL_0039: mono_ldptr8
IL_003f: calli     <Assembly&,string&,int&,Module&,intptr>
IL_0044: ldarg.3   
IL_0045: ldloc.3   
IL_0046: mono_objaddr
IL_0048: ldind.ref 
IL_0049: stind.ref 
IL_004a: ldloc.0   
IL_004b: ldloca.s  1
IL_004d: ldloca.s  2
IL_004f: mono_icall <mono_icall_end>
IL_0055: mono_ldptr_int_req_flag
IL_0057: ldind.u4  
IL_0058: brfalse   IL_006d
IL_005d: mono_not_taken
IL_005f: mono_icall <mono_thread_interruption_checkpoint>
IL_0065: dup       
IL_0066: brfalse   IL_006c
IL_006b: throw     
IL_006c: pop       
IL_006d: ret       
// (wrapper managed-to-native) System.RuntimeTypeHandle:type_is_assignable_from (System.Type,System.Type)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldarg.1   
IL_0013: mono_icall <mono_icall_handle_new>
IL_0019: ldloca.s  2
IL_001b: mono_ldptr5
IL_0021: calli     <Type&,Type&,intptr>
IL_0026: ldloc.0   
IL_0027: ldloca.s  1
IL_0029: ldloca.s  2
IL_002b: mono_icall <mono_icall_end>
IL_0031: mono_ldptr_int_req_flag
IL_0033: ldind.u4  
IL_0034: brfalse   IL_0049
IL_0039: mono_not_taken
IL_003b: mono_icall <mono_thread_interruption_checkpoint>
IL_0041: dup       
IL_0042: brfalse   IL_0048
IL_0047: throw     
IL_0048: pop       
IL_0049: ret       
// (wrapper managed-to-native) System.RuntimeType:MakeGenericType (System.Type,System.Type[])
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldarg.1   
IL_0013: mono_icall <mono_icall_handle_new>
IL_0019: ldloca.s  2
IL_001b: mono_ldptr5
IL_0021: calli     <Type&,Type[]&,intptr>
IL_0026: dup       
IL_0027: brfalse   IL_002f
IL_002c: mono_objaddr
IL_002e: ldind.ref 
IL_002f: ldloc.0   
IL_0030: ldloca.s  1
IL_0032: ldloca.s  2
IL_0034: mono_icall <mono_icall_end>
IL_003a: mono_ldptr_int_req_flag
IL_003c: ldind.u4  
IL_003d: brfalse   IL_0052
IL_0042: mono_not_taken
IL_0044: mono_icall <mono_thread_interruption_checkpoint>
IL_004a: dup       
IL_004b: brfalse   IL_0051
IL_0050: throw     
IL_0051: pop       
IL_0052: ret       
// (wrapper managed-to-native) System.RuntimeType:GetConstructors_native (System.RuntimeType,System.Reflection.BindingFlags)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldloca.s  1
IL_000e: ldloca.s  2
IL_0010: mono_icall <mono_icall_start>
IL_0016: stloc.0   
IL_0017: ldarg.0   
IL_0018: mono_icall <mono_icall_handle_new>
IL_001e: ldarg.1   
IL_001f: ldloca.s  2
IL_0021: mono_ldptr5
IL_0027: calli     <RuntimeType&,BindingFlags,intptr>
IL_002c: ldloc.0   
IL_002d: ldloca.s  1
IL_002f: ldloca.s  2
IL_0031: mono_icall <mono_icall_end>
IL_0037: mono_ldptr_int_req_flag
IL_0039: ldind.u4  
IL_003a: brfalse   IL_004f
IL_003f: mono_not_taken
IL_0041: mono_icall <mono_thread_interruption_checkpoint>
IL_0047: dup       
IL_0048: brfalse   IL_004e
IL_004d: throw     
IL_004e: pop       
IL_004f: ret       
// (wrapper managed-to-native) System.Reflection.MethodBase:GetMethodFromHandleInternalType_native (intptr,intptr,bool)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: ldarg.1   
IL_000d: ldarg.2   
IL_000e: ldloca.s  2
IL_0010: mono_ldptr3
IL_0016: calli     <intptr,intptr,bool,intptr>
IL_001b: dup       
IL_001c: brfalse   IL_0024
IL_0021: mono_objaddr
IL_0023: ldind.ref 
IL_0024: ldloc.0   
IL_0025: ldloca.s  1
IL_0027: ldloca.s  2
IL_0029: mono_icall <mono_icall_end>
IL_002f: mono_ldptr_int_req_flag
IL_0031: ldind.u4  
IL_0032: brfalse   IL_0047
IL_0037: mono_not_taken
IL_0039: mono_icall <mono_thread_interruption_checkpoint>
IL_003f: dup       
IL_0040: brfalse   IL_0046
IL_0045: throw     
IL_0046: pop       
IL_0047: ret       
// (wrapper managed-to-native) Mono.RuntimeGPtrArrayHandle:GPtrArrayFree (Mono.RuntimeStructs/GPtrArray*)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: ldloca.s  2
IL_000e: mono_ldptr3
IL_0014: calli     <RuntimeStructs/GPtrArray*,intptr>
IL_0019: ldloc.0   
IL_001a: ldloca.s  1
IL_001c: ldloca.s  2
IL_001e: mono_icall <mono_icall_end>
IL_0024: mono_ldptr_int_req_flag
IL_0026: ldind.u4  
IL_0027: brfalse   IL_003c
IL_002c: mono_not_taken
IL_002e: mono_icall <mono_thread_interruption_checkpoint>
IL_0034: dup       
IL_0035: brfalse   IL_003b
IL_003a: throw     
IL_003b: pop       
IL_003c: ret       
// (wrapper managed-to-native) System.Reflection.MonoMethodInfo:get_parameter_info (intptr,System.Reflection.MemberInfo)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: ldarg.1   
IL_000d: mono_icall <mono_icall_handle_new>
IL_0013: ldloca.s  2
IL_0015: mono_ldptr4
IL_001b: calli     <intptr,MemberInfo&,intptr>
IL_0020: dup       
IL_0021: brfalse   IL_0029
IL_0026: mono_objaddr
IL_0028: ldind.ref 
IL_0029: ldloc.0   
IL_002a: ldloca.s  1
IL_002c: ldloca.s  2
IL_002e: mono_icall <mono_icall_end>
IL_0034: mono_ldptr_int_req_flag
IL_0036: ldind.u4  
IL_0037: brfalse   IL_004c
IL_003c: mono_not_taken
IL_003e: mono_icall <mono_thread_interruption_checkpoint>
IL_0044: dup       
IL_0045: brfalse   IL_004b
IL_004a: throw     
IL_004b: pop       
IL_004c: ret       
// (wrapper managed-to-native) System.Reflection.MonoCMethod:InternalInvoke (System.Reflection.MonoCMethod,object,object[],System.Exception&)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldarg.0   
IL_000d: ldarg.1   
IL_000e: ldarg.2   
IL_000f: ldarg.3   
IL_0010: mono_ldptr3
IL_0016: calli     <MonoCMethod,object,object[],Exception&>
IL_001b: mono_ldptr_int_req_flag
IL_001d: ldind.u4  
IL_001e: brfalse   IL_0033
IL_0023: mono_not_taken
IL_0025: mono_icall <mono_thread_interruption_checkpoint>
IL_002b: dup       
IL_002c: brfalse   IL_0032
IL_0031: throw     
IL_0032: pop       
IL_0033: ret       
// (wrapper runtime-invoke) object:runtime_invoke_void__this__ (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0035
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.0   
IL_001f: ldarg.3   
IL_0020: calli     <>
IL_0025: leave     IL_0033
IL_002a: stloc.1   
IL_002b: ldarg.2   
IL_002c: ldloc.1   
IL_002d: stind.ref 
IL_002e: leave     IL_0033
IL_0033: ldloc.0   
IL_0034: ret       
IL_0035: mono_ldptr_int_req_flag
IL_0037: ldind.u4  
IL_0038: brfalse   IL_004d
IL_003d: mono_not_taken
IL_003f: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0045: dup       
IL_0046: brfalse   IL_004c
IL_004b: throw     
IL_004c: pop       
IL_004d: ldarg.0   
IL_004e: ldarg.3   
IL_004f: calli     <>
IL_0054: ldloc.0   
IL_0055: ret       
// System.Collections.Generic.GenericEqualityComparer`1<int>:.ctor ()
IL_0000: ldarg.0   
IL_0001: call      <System.Collections.Generic.EqualityComparer`1<!0>:.ctor ()>
IL_0006: ret       
// (wrapper managed-to-native) System.Runtime.InteropServices.Marshal:copy_from_unmanaged_fixed (intptr,int,System.Array,int,void*)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: ldarg.1   
IL_000d: ldarg.2   
IL_000e: mono_icall <mono_icall_handle_new>
IL_0014: ldarg.3   
IL_0015: ldarg.s   4
IL_0017: ldloca.s  2
IL_0019: mono_ldptr4
IL_001f: calli     <intptr,int,Array&,int,void*,intptr>
IL_0024: ldloc.0   
IL_0025: ldloca.s  1
IL_0027: ldloca.s  2
IL_0029: mono_icall <mono_icall_end>
IL_002f: mono_ldptr_int_req_flag
IL_0031: ldind.u4  
IL_0032: brfalse   IL_0047
IL_0037: mono_not_taken
IL_0039: mono_icall <mono_thread_interruption_checkpoint>
IL_003f: dup       
IL_0040: brfalse   IL_0046
IL_0045: throw     
IL_0046: pop       
IL_0047: ret       
// (wrapper managed-to-managed) string:.ctor (char*,int,int)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: ldarg.2   
IL_0003: ldarg.3   
IL_0004: call      <string:CreateString (char*,int,int)>
IL_0009: ret       
// (wrapper managed-to-native) System.Array:FastCopy (System.Array,int,System.Array,int,int)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: ldarg.2   
IL_0003: ldarg.3   
IL_0004: ldarg.s   4
IL_0006: mono_ldptr2
IL_000c: calli     <Array,int,Array,int,int>
IL_0011: mono_ldptr_int_req_flag
IL_0013: ldind.u4  
IL_0014: brfalse   IL_0029
IL_0019: mono_not_taken
IL_001b: mono_icall <mono_thread_interruption_checkpoint>
IL_0021: dup       
IL_0022: brfalse   IL_0028
IL_0027: throw     
IL_0028: pop       
IL_0029: ret       
// (wrapper managed-to-native) object:__icall_wrapper_mono_gc_alloc_obj (intptr,intptr)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: mono_jit_icall_addr2
IL_0008: calli     <intptr,intptr>
IL_000d: mono_ldptr_int_req_flag
IL_000f: ldind.u4  
IL_0010: brfalse   IL_0025
IL_0015: mono_not_taken
IL_0017: mono_icall <mono_thread_interruption_checkpoint>
IL_001d: dup       
IL_001e: brfalse   IL_0024
IL_0023: throw     
IL_0024: pop       
IL_0025: ret       
// (wrapper managed-to-native) object:__icall_wrapper_mono_generic_class_init (intptr)
IL_0000: ldarg.0   
IL_0001: mono_jit_icall_addr2
IL_0007: calli     <intptr>
IL_000c: mono_ldptr_int_req_flag
IL_000e: ldind.u4  
IL_000f: brfalse   IL_0024
IL_0014: mono_not_taken
IL_0016: mono_icall <mono_thread_interruption_checkpoint>
IL_001c: dup       
IL_001d: brfalse   IL_0023
IL_0022: throw     
IL_0023: pop       
IL_0024: ret       
// (wrapper managed-to-native) object:__icall_wrapper_mono_ldvirtfn_gshared (object,intptr)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: mono_jit_icall_addr2
IL_0008: calli     <object,intptr>
IL_000d: mono_ldptr_int_req_flag
IL_000f: ldind.u4  
IL_0010: brfalse   IL_0025
IL_0015: mono_not_taken
IL_0017: mono_icall <mono_thread_interruption_checkpoint>
IL_001d: dup       
IL_001e: brfalse   IL_0024
IL_0023: throw     
IL_0024: pop       
IL_0025: ret       
// (wrapper managed-to-native) object:__icall_wrapper_ves_icall_mono_delegate_ctor (object,object,intptr)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: ldarg.2   
IL_0003: mono_jit_icall_addr2
IL_0009: calli     <object,object,intptr>
IL_000e: mono_ldptr_int_req_flag
IL_0010: ldind.u4  
IL_0011: brfalse   IL_0026
IL_0016: mono_not_taken
IL_0018: mono_icall <mono_thread_interruption_checkpoint>
IL_001e: dup       
IL_001f: brfalse   IL_0025
IL_0024: throw     
IL_0025: pop       
IL_0026: ret       
// (wrapper remoting-invoke-with-check) System.IO.FileStream:.ctor (string,System.IO.FileMode,System.IO.FileAccess,System.IO.FileShare)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: ldarg.2   
IL_0003: ldarg.3   
IL_0004: ldarg.s   4
IL_0006: ldarg.0   
IL_0007: mono_objaddr
IL_0009: ldind.i   
IL_000a: ldc.i4.0  
IL_000b: add       
IL_000c: ldind.i   
IL_000d: mono_classconst <TransparentProxy>
IL_0013: bne.un    IL_001e
IL_0018: call      <(wrapper remoting-invoke) System.IO.FileStream:.ctor (string,System.IO.FileMode,System.IO.FileAccess,System.IO.FileShare)>
IL_001d: ret       
IL_001e: call      <System.IO.FileStream:.ctor (string,System.IO.FileMode,System.IO.FileAccess,System.IO.FileShare)>
IL_0023: ret       
// (wrapper remoting-invoke-with-check) System.IO.Stream/NullStream:.ctor ()
IL_0000: ldarg.0   
IL_0001: ldarg.0   
IL_0002: mono_objaddr
IL_0004: ldind.i   
IL_0005: ldc.i4.0  
IL_0006: add       
IL_0007: ldind.i   
IL_0008: mono_classconst <TransparentProxy>
IL_000e: bne.un    IL_0019
IL_0013: call      <(wrapper remoting-invoke) System.IO.Stream/NullStream:.ctor ()>
IL_0018: ret       
IL_0019: call      <System.IO.Stream/NullStream:.ctor ()>
IL_001e: ret       
// (wrapper managed-to-native) System.IO.MonoIO:GetFileAttributes (char*,System.IO.MonoIOError&)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: mono_ldptr2
IL_0008: calli     <char*,MonoIOError&>
IL_000d: mono_ldptr_int_req_flag
IL_000f: ldind.u4  
IL_0010: brfalse   IL_0025
IL_0015: mono_not_taken
IL_0017: mono_icall <mono_thread_interruption_checkpoint>
IL_001d: dup       
IL_001e: brfalse   IL_0024
IL_0023: throw     
IL_0024: pop       
IL_0025: ret       
// (wrapper managed-to-native) System.IO.MonoIO:Open (char*,System.IO.FileMode,System.IO.FileAccess,System.IO.FileShare,System.IO.FileOptions,System.IO.MonoIOError&)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: ldarg.2   
IL_0003: ldarg.3   
IL_0004: ldarg.s   4
IL_0006: ldarg.s   5
IL_0008: mono_ldptr2
IL_000e: calli     <char*,FileMode,FileAccess,FileShare,FileOptions,MonoIOError&>
IL_0013: mono_ldptr_int_req_flag
IL_0015: ldind.u4  
IL_0016: brfalse   IL_002b
IL_001b: mono_not_taken
IL_001d: mono_icall <mono_thread_interruption_checkpoint>
IL_0023: dup       
IL_0024: brfalse   IL_002a
IL_0029: throw     
IL_002a: pop       
IL_002b: ret       
// (wrapper managed-to-native) System.GC:_SuppressFinalize (object)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldloca.s  2
IL_0014: mono_ldptr4
IL_001a: calli     <object&,intptr>
IL_001f: ldloc.0   
IL_0020: ldloca.s  1
IL_0022: ldloca.s  2
IL_0024: mono_icall <mono_icall_end>
IL_002a: mono_ldptr_int_req_flag
IL_002c: ldind.u4  
IL_002d: brfalse   IL_0042
IL_0032: mono_not_taken
IL_0034: mono_icall <mono_thread_interruption_checkpoint>
IL_003a: dup       
IL_003b: brfalse   IL_0041
IL_0040: throw     
IL_0041: pop       
IL_0042: ret       
// (wrapper managed-to-native) System.IO.MonoIO:GetFileType (intptr,System.IO.MonoIOError&)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: mono_ldptr2
IL_0008: calli     <intptr,MonoIOError&>
IL_000d: mono_ldptr_int_req_flag
IL_000f: ldind.u4  
IL_0010: brfalse   IL_0025
IL_0015: mono_not_taken
IL_0017: mono_icall <mono_thread_interruption_checkpoint>
IL_001d: dup       
IL_001e: brfalse   IL_0024
IL_0023: throw     
IL_0024: pop       
IL_0025: ret       
// (wrapper managed-to-native) System.IO.MonoIO:GetLength (intptr,System.IO.MonoIOError&)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: mono_ldptr2
IL_0008: calli     <intptr,MonoIOError&>
IL_000d: mono_ldptr_int_req_flag
IL_000f: ldind.u4  
IL_0010: brfalse   IL_0025
IL_0015: mono_not_taken
IL_0017: mono_icall <mono_thread_interruption_checkpoint>
IL_001d: dup       
IL_001e: brfalse   IL_0024
IL_0023: throw     
IL_0024: pop       
IL_0025: ret       
// (wrapper managed-to-native) System.IO.MonoIO:Read (intptr,byte[],int,int,System.IO.MonoIOError&)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: ldarg.1   
IL_000d: mono_icall <mono_icall_handle_new>
IL_0013: ldarg.2   
IL_0014: ldarg.3   
IL_0015: ldarg.s   4
IL_0017: dup       
IL_0018: mono_icall <mono_icall_handle_new_interior>
IL_001e: pop       
IL_001f: ldloca.s  2
IL_0021: mono_ldptr5
IL_0027: calli     <intptr,byte[]&,int,int,MonoIOError&,intptr>
IL_002c: ldloc.0   
IL_002d: ldloca.s  1
IL_002f: ldloca.s  2
IL_0031: mono_icall <mono_icall_end>
IL_0037: mono_ldptr_int_req_flag
IL_0039: ldind.u4  
IL_003a: brfalse   IL_004f
IL_003f: mono_not_taken
IL_0041: mono_icall <mono_thread_interruption_checkpoint>
IL_0047: dup       
IL_0048: brfalse   IL_004e
IL_004d: throw     
IL_004e: pop       
IL_004f: ret       
// (wrapper managed-to-native) object:__icall_wrapper___emul_fconv_to_ovf_i8 (double)
IL_0000: ldarg.0   
IL_0001: mono_jit_icall_addr2
IL_0007: calli     <double>
IL_000c: mono_ldptr_int_req_flag
IL_000e: ldind.u4  
IL_000f: brfalse   IL_0024
IL_0014: mono_not_taken
IL_0016: mono_icall <mono_thread_interruption_checkpoint>
IL_001c: dup       
IL_001d: brfalse   IL_0023
IL_0022: throw     
IL_0023: pop       
IL_0024: ret       
// (wrapper remoting-invoke-with-check) System.IO.Stream:Dispose ()
IL_0000: ldarg.0   
IL_0001: ldarg.0   
IL_0002: mono_objaddr
IL_0004: ldind.i   
IL_0005: ldc.i4.0  
IL_0006: add       
IL_0007: ldind.i   
IL_0008: mono_classconst <TransparentProxy>
IL_000e: bne.un    IL_0032
IL_0013: ldarg.0   
IL_0014: mono_objaddr
IL_0016: ldc.i4.s  16
IL_0018: add       
IL_0019: ldind.ref 
IL_001a: mono_objaddr
IL_001c: ldc.i4.s  40
IL_001e: add       
IL_001f: ldind.i4  
IL_0020: ldc.i4.m1 
IL_0021: beq       IL_002c
IL_0026: call      <(wrapper xdomain-invoke) System.IO.Stream:Dispose ()>
IL_002b: ret       
IL_002c: call      <(wrapper remoting-invoke) System.IO.Stream:Dispose ()>
IL_0031: ret       
IL_0032: call      <System.IO.Stream:Dispose ()>
IL_0037: ret       
// (wrapper managed-to-native) System.IO.MonoIO:Close (intptr,System.IO.MonoIOError&)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: mono_ldptr2
IL_0008: calli     <intptr,MonoIOError&>
IL_000d: mono_ldptr_int_req_flag
IL_000f: ldind.u4  
IL_0010: brfalse   IL_0025
IL_0015: mono_not_taken
IL_0017: mono_icall <mono_thread_interruption_checkpoint>
IL_001d: dup       
IL_001e: brfalse   IL_0024
IL_0023: throw     
IL_0024: pop       
IL_0025: ret       
// (wrapper managed-to-native) GLib.Marshaller:g_utf16_to_utf8 (char*,intptr,intptr,intptr,intptr&)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: ldarg.0   
IL_000d: ldarg.1   
IL_000e: ldarg.2   
IL_000f: ldarg.3   
IL_0010: ldarg.s   4
IL_0012: mono_ldptr3
IL_0018: calli     <char*,intptr,intptr,intptr,intptr&>
IL_001d: ldloc.s   5
IL_001f: ldloca.s  4
IL_0021: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0027: stloc.3   
IL_0028: mono_ldptr_int_req_flag
IL_002a: ldind.u4  
IL_002b: brfalse   IL_0040
IL_0030: mono_not_taken
IL_0032: mono_icall <mono_thread_interruption_checkpoint>
IL_0038: dup       
IL_0039: brfalse   IL_003f
IL_003e: throw     
IL_003f: pop       
IL_0040: ldloc.3   
IL_0041: ret       
// (wrapper managed-to-native) GLib.Global:g_set_prgname (intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: ldarg.0   
IL_000d: mono_ldptr3
IL_0013: calli     <intptr>
IL_0018: ldloc.s   4
IL_001a: ldloca.s  3
IL_001c: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ret       
// GLib.Marshaller:Free (intptr)
IL_0000: ldarg.0   
IL_0001: call      <GLib.Marshaller:g_free (intptr)>
IL_0006: ret       
// (wrapper managed-to-native) GLib.Marshaller:g_free (intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: ldarg.0   
IL_000d: mono_ldptr3
IL_0013: calli     <intptr>
IL_0018: ldloc.s   4
IL_001a: ldloca.s  3
IL_001c: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ret       
// (wrapper managed-to-native) Gtk.Application:gtk_init (int&,intptr&)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: ldarg.0   
IL_000d: ldarg.1   
IL_000e: mono_ldptr3
IL_0014: calli     <int&,intptr&>
IL_0019: ldloc.s   4
IL_001b: ldloca.s  3
IL_001d: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0023: mono_ldptr_int_req_flag
IL_0025: ldind.u4  
IL_0026: brfalse   IL_003b
IL_002b: mono_not_taken
IL_002d: mono_icall <mono_thread_interruption_checkpoint>
IL_0033: dup       
IL_0034: brfalse   IL_003a
IL_0039: throw     
IL_003a: pop       
IL_003b: ret       
// MlEco.MlEcoApp:.ctor ()
IL_0000: ldarg.0   
IL_0001: newobj    <Gtk.HBox:.ctor ()>
IL_0006: stfld     <MlEco.MlEcoApp:mainContainer>
IL_000b: ldarg.0   
IL_000c: newobj    <Gtk.VButtonBox:.ctor ()>
IL_0011: stfld     <MlEco.MlEcoApp:guiContainer>
IL_0016: ldarg.0   
IL_0017: ldc.i4.1  
IL_0018: stfld     <MlEco.MlEcoApp:showInfo>
IL_001d: ldarg.0   
IL_001e: ldstr     "mlEco"
IL_0023: call      <Gtk.Window:.ctor (string)>
IL_0028: ldarg.0   
IL_0029: call      <MlEco.MlEcoApp:InitWindow ()>
IL_002e: ldarg.0   
IL_002f: call      <MlEco.MlEcoApp:InitDrawables ()>
IL_0034: ldarg.0   
IL_0035: call      <MlEco.MlEcoApp:InitGui ()>
IL_003a: ldarg.0   
IL_003b: call      <Gtk.Widget:ShowAll ()>
IL_0040: ldarg.0   
IL_0041: call      <MlEco.MlEcoApp:StartNewThreads ()>
IL_0046: ldarg.0   
IL_0047: call      <MlEco.MlEcoApp:LoadSimulation ()>
IL_004c: ret       
// Gtk.HBox:.ctor ()
IL_0000: ldarg.0   
IL_0001: ldc.i4.0  
IL_0002: ldc.i4.0  
IL_0003: call      <Gtk.HBox:.ctor (bool,int)>
IL_0008: ret       
// Gtk.HBox:.cctor ()
IL_0000: call      <Gtk.HBox:gtk_hbox_get_type ()>
IL_0005: newobj    <GLib.GType:.ctor (intptr)>
IL_000a: stsfld    <Gtk.HBox:_gtype>
IL_000f: ret       
// (wrapper managed-to-native) Gtk.HBox:gtk_hbox_get_type ()
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: mono_ldptr3
IL_0012: calli     <>
IL_0017: ldloc.s   5
IL_0019: ldloca.s  4
IL_001b: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0021: stloc.3   
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ldloc.3   
IL_003b: ret       
// GLib.GType:.ctor (intptr)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: stfld     <GLib.GType:val>
IL_0007: ret       
// GLib.IntPtrEqualityComparer:.cctor ()
IL_0000: newobj    <GLib.IntPtrEqualityComparer:.ctor ()>
IL_0005: stsfld    <GLib.IntPtrEqualityComparer:Instance>
IL_000a: ret       
// GLib.IntPtrEqualityComparer:.ctor ()
IL_0000: ldarg.0   
IL_0001: call      <object:.ctor ()>
IL_0006: ret       
// GLib.GType:.cctor ()
IL_0000: ldc.i4.0  
IL_0001: call      <intptr:op_Explicit (int)>
IL_0006: newobj    <GLib.GType:.ctor (intptr)>
IL_000b: stsfld    <GLib.GType:Invalid>
IL_0010: ldc.i4.4  
IL_0011: call      <intptr:op_Explicit (int)>
IL_0016: newobj    <GLib.GType:.ctor (intptr)>
IL_001b: stsfld    <GLib.GType:None>
IL_0020: ldc.i4.8  
IL_0021: call      <intptr:op_Explicit (int)>
IL_0026: newobj    <GLib.GType:.ctor (intptr)>
IL_002b: stsfld    <GLib.GType:Interface>
IL_0030: ldc.i4.s  12
IL_0032: call      <intptr:op_Explicit (int)>
IL_0037: newobj    <GLib.GType:.ctor (intptr)>
IL_003c: stsfld    <GLib.GType:Char>
IL_0041: ldc.i4.s  16
IL_0043: call      <intptr:op_Explicit (int)>
IL_0048: newobj    <GLib.GType:.ctor (intptr)>
IL_004d: stsfld    <GLib.GType:UChar>
IL_0052: ldc.i4.s  20
IL_0054: call      <intptr:op_Explicit (int)>
IL_0059: newobj    <GLib.GType:.ctor (intptr)>
IL_005e: stsfld    <GLib.GType:Boolean>
IL_0063: ldc.i4.s  24
IL_0065: call      <intptr:op_Explicit (int)>
IL_006a: newobj    <GLib.GType:.ctor (intptr)>
IL_006f: stsfld    <GLib.GType:Int>
IL_0074: ldc.i4.s  28
IL_0076: call      <intptr:op_Explicit (int)>
IL_007b: newobj    <GLib.GType:.ctor (intptr)>
IL_0080: stsfld    <GLib.GType:UInt>
IL_0085: ldc.i4.s  32
IL_0087: call      <intptr:op_Explicit (int)>
IL_008c: newobj    <GLib.GType:.ctor (intptr)>
IL_0091: stsfld    <GLib.GType:Long>
IL_0096: ldc.i4.s  36
IL_0098: call      <intptr:op_Explicit (int)>
IL_009d: newobj    <GLib.GType:.ctor (intptr)>
IL_00a2: stsfld    <GLib.GType:ULong>
IL_00a7: ldc.i4.s  40
IL_00a9: call      <intptr:op_Explicit (int)>
IL_00ae: newobj    <GLib.GType:.ctor (intptr)>
IL_00b3: stsfld    <GLib.GType:Int64>
IL_00b8: ldc.i4.s  44
IL_00ba: call      <intptr:op_Explicit (int)>
IL_00bf: newobj    <GLib.GType:.ctor (intptr)>
IL_00c4: stsfld    <GLib.GType:UInt64>
IL_00c9: ldc.i4.s  48
IL_00cb: call      <intptr:op_Explicit (int)>
IL_00d0: newobj    <GLib.GType:.ctor (intptr)>
IL_00d5: stsfld    <GLib.GType:Enum>
IL_00da: ldc.i4.s  52
IL_00dc: call      <intptr:op_Explicit (int)>
IL_00e1: newobj    <GLib.GType:.ctor (intptr)>
IL_00e6: stsfld    <GLib.GType:Flags>
IL_00eb: ldc.i4.s  56
IL_00ed: call      <intptr:op_Explicit (int)>
IL_00f2: newobj    <GLib.GType:.ctor (intptr)>
IL_00f7: stsfld    <GLib.GType:Float>
IL_00fc: ldc.i4.s  60
IL_00fe: call      <intptr:op_Explicit (int)>
IL_0103: newobj    <GLib.GType:.ctor (intptr)>
IL_0108: stsfld    <GLib.GType:Double>
IL_010d: ldc.i4.s  64
IL_010f: call      <intptr:op_Explicit (int)>
IL_0114: newobj    <GLib.GType:.ctor (intptr)>
IL_0119: stsfld    <GLib.GType:String>
IL_011e: ldc.i4.s  68
IL_0120: call      <intptr:op_Explicit (int)>
IL_0125: newobj    <GLib.GType:.ctor (intptr)>
IL_012a: stsfld    <GLib.GType:Pointer>
IL_012f: ldc.i4.s  72
IL_0131: call      <intptr:op_Explicit (int)>
IL_0136: newobj    <GLib.GType:.ctor (intptr)>
IL_013b: stsfld    <GLib.GType:Boxed>
IL_0140: ldc.i4.s  76
IL_0142: call      <intptr:op_Explicit (int)>
IL_0147: newobj    <GLib.GType:.ctor (intptr)>
IL_014c: stsfld    <GLib.GType:Param>
IL_0151: ldc.i4.s  80
IL_0153: call      <intptr:op_Explicit (int)>
IL_0158: newobj    <GLib.GType:.ctor (intptr)>
IL_015d: stsfld    <GLib.GType:Object>
IL_0162: ldsfld    <GLib.IntPtrEqualityComparer:Instance>
IL_0167: newobj    <System.Collections.Generic.Dictionary`2<intptr, System.Type>:.ctor (System.Collections.Generic.IEqualityComparer`1<intptr>)>
IL_016c: stsfld    <GLib.GType:types>
IL_0171: newobj    <System.Collections.Generic.Dictionary`2<System.Type, GLib.GType>:.ctor ()>
IL_0176: stsfld    <GLib.GType:gtypes>
IL_017b: call      <GLib.Thread:get_Supported ()>
IL_0180: brtrue    IL_018a
IL_0185: call      <GLib.Thread:Init ()>
IL_018a: call      <GLib.GType:g_type_init ()>
IL_018f: ldsfld    <GLib.GType:Char>
IL_0194: ldtoken   <0x01000038>
IL_0199: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_019e: call      <GLib.GType:Register (GLib.GType,System.Type)>
IL_01a3: ldsfld    <GLib.GType:UChar>
IL_01a8: ldtoken   <0x01000039>
IL_01ad: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_01b2: call      <GLib.GType:Register (GLib.GType,System.Type)>
IL_01b7: ldsfld    <GLib.GType:Boolean>
IL_01bc: ldtoken   <0x0100003a>
IL_01c1: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_01c6: call      <GLib.GType:Register (GLib.GType,System.Type)>
IL_01cb: ldsfld    <GLib.GType:Int>
IL_01d0: ldtoken   <0x0100001e>
IL_01d5: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_01da: call      <GLib.GType:Register (GLib.GType,System.Type)>
IL_01df: ldsfld    <GLib.GType:UInt>
IL_01e4: ldtoken   <0x0100003b>
IL_01e9: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_01ee: call      <GLib.GType:Register (GLib.GType,System.Type)>
IL_01f3: ldsfld    <GLib.GType:Int64>
IL_01f8: ldtoken   <0x0100003c>
IL_01fd: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_0202: call      <GLib.GType:Register (GLib.GType,System.Type)>
IL_0207: ldsfld    <GLib.GType:UInt64>
IL_020c: ldtoken   <0x0100003d>
IL_0211: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_0216: call      <GLib.GType:Register (GLib.GType,System.Type)>
IL_021b: ldsfld    <GLib.GType:Float>
IL_0220: ldtoken   <0x0100003e>
IL_0225: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_022a: call      <GLib.GType:Register (GLib.GType,System.Type)>
IL_022f: ldsfld    <GLib.GType:Double>
IL_0234: ldtoken   <0x0100003f>
IL_0239: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_023e: call      <GLib.GType:Register (GLib.GType,System.Type)>
IL_0243: ldsfld    <GLib.GType:String>
IL_0248: ldtoken   <0x01000013>
IL_024d: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_0252: call      <GLib.GType:Register (GLib.GType,System.Type)>
IL_0257: ldsfld    <GLib.GType:Pointer>
IL_025c: ldtoken   <0x01000016>
IL_0261: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_0266: call      <GLib.GType:Register (GLib.GType,System.Type)>
IL_026b: ldsfld    <GLib.GType:Object>
IL_0270: ldtoken   <0x02000048>
IL_0275: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_027a: call      <GLib.GType:Register (GLib.GType,System.Type)>
IL_027f: ldsfld    <GLib.GType:gtypes>
IL_0284: ldtoken   <0x01000040>
IL_0289: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_028e: ldsfld    <GLib.GType:UInt>
IL_0293: callvirt  <System.Collections.Generic.Dictionary`2<System.Type, GLib.GType>:set_Item (System.Type,GLib.GType)>
IL_0298: ret       
// (wrapper runtime-invoke) object:runtime_invoke_void (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0034
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.3   
IL_001f: calli     <>
IL_0024: leave     IL_0032
IL_0029: stloc.1   
IL_002a: ldarg.2   
IL_002b: ldloc.1   
IL_002c: stind.ref 
IL_002d: leave     IL_0032
IL_0032: ldloc.0   
IL_0033: ret       
IL_0034: mono_ldptr_int_req_flag
IL_0036: ldind.u4  
IL_0037: brfalse   IL_004c
IL_003c: mono_not_taken
IL_003e: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0044: dup       
IL_0045: brfalse   IL_004b
IL_004a: throw     
IL_004b: pop       
IL_004c: ldarg.3   
IL_004d: calli     <>
IL_0052: ldloc.0   
IL_0053: ret       
// (wrapper managed-to-native) System.RuntimeTypeHandle:HasInstantiation (System.RuntimeType)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldloca.s  2
IL_0014: mono_ldptr4
IL_001a: calli     <RuntimeType&,intptr>
IL_001f: ldloc.0   
IL_0020: ldloca.s  1
IL_0022: ldloca.s  2
IL_0024: mono_icall <mono_icall_end>
IL_002a: mono_ldptr_int_req_flag
IL_002c: ldind.u4  
IL_002d: brfalse   IL_0042
IL_0032: mono_not_taken
IL_0034: mono_icall <mono_thread_interruption_checkpoint>
IL_003a: dup       
IL_003b: brfalse   IL_0041
IL_0040: throw     
IL_0041: pop       
IL_0042: ret       
// (wrapper managed-to-native) System.RuntimeTypeHandle:GetAttributes (System.RuntimeType)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldloca.s  2
IL_0014: mono_ldptr4
IL_001a: calli     <RuntimeType&,intptr>
IL_001f: ldloc.0   
IL_0020: ldloca.s  1
IL_0022: ldloca.s  2
IL_0024: mono_icall <mono_icall_end>
IL_002a: mono_ldptr_int_req_flag
IL_002c: ldind.u4  
IL_002d: brfalse   IL_0042
IL_0032: mono_not_taken
IL_0034: mono_icall <mono_thread_interruption_checkpoint>
IL_003a: dup       
IL_003b: brfalse   IL_0041
IL_0040: throw     
IL_0041: pop       
IL_0042: ret       
// (wrapper managed-to-native) System.RuntimeTypeHandle:IsGenericVariable (System.RuntimeType)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldloca.s  2
IL_0014: mono_ldptr4
IL_001a: calli     <RuntimeType&,intptr>
IL_001f: ldloc.0   
IL_0020: ldloca.s  1
IL_0022: ldloca.s  2
IL_0024: mono_icall <mono_icall_end>
IL_002a: mono_ldptr_int_req_flag
IL_002c: ldind.u4  
IL_002d: brfalse   IL_0042
IL_0032: mono_not_taken
IL_0034: mono_icall <mono_thread_interruption_checkpoint>
IL_003a: dup       
IL_003b: brfalse   IL_0041
IL_0040: throw     
IL_0041: pop       
IL_0042: ret       
// (wrapper managed-to-native) System.RuntimeTypeHandle:GetBaseType (System.RuntimeType)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldloca.s  2
IL_0014: mono_ldptr4
IL_001a: calli     <RuntimeType&,intptr>
IL_001f: dup       
IL_0020: brfalse   IL_0028
IL_0025: mono_objaddr
IL_0027: ldind.ref 
IL_0028: ldloc.0   
IL_0029: ldloca.s  1
IL_002b: ldloca.s  2
IL_002d: mono_icall <mono_icall_end>
IL_0033: mono_ldptr_int_req_flag
IL_0035: ldind.u4  
IL_0036: brfalse   IL_004b
IL_003b: mono_not_taken
IL_003d: mono_icall <mono_thread_interruption_checkpoint>
IL_0043: dup       
IL_0044: brfalse   IL_004a
IL_0049: throw     
IL_004a: pop       
IL_004b: ret       
// (wrapper managed-to-native) GLib.GType:g_type_init ()
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: mono_ldptr3
IL_0012: calli     <>
IL_0017: ldloc.s   4
IL_0019: ldloca.s  3
IL_001b: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0021: mono_ldptr_int_req_flag
IL_0023: ldind.u4  
IL_0024: brfalse   IL_0039
IL_0029: mono_not_taken
IL_002b: mono_icall <mono_thread_interruption_checkpoint>
IL_0031: dup       
IL_0032: brfalse   IL_0038
IL_0037: throw     
IL_0038: pop       
IL_0039: ret       
// GLib.GType:Register (GLib.GType,System.Type)
IL_0000: ldarg.0   
IL_0001: ldsfld    <GLib.GType:Pointer>
IL_0006: call      <GLib.GType:op_Inequality (GLib.GType,GLib.GType)>
IL_000b: brfalse   IL_0042
IL_0010: ldarg.0   
IL_0011: ldsfld    <GLib.GType:Boxed>
IL_0016: call      <GLib.GType:op_Inequality (GLib.GType,GLib.GType)>
IL_001b: brfalse   IL_0042
IL_0020: ldarg.0   
IL_0021: call      <GLib.ManagedValue:get_GType ()>
IL_0026: call      <GLib.GType:op_Inequality (GLib.GType,GLib.GType)>
IL_002b: brfalse   IL_0042
IL_0030: ldsfld    <GLib.GType:types>
IL_0035: ldarga.s  0
IL_0037: call      <GLib.GType:get_Val ()>
IL_003c: ldarg.1   
IL_003d: callvirt  <System.Collections.Generic.Dictionary`2<intptr, System.Type>:set_Item (intptr,System.Type)>
IL_0042: ldarg.1   
IL_0043: ldnull    
IL_0044: call      <System.Type:op_Inequality (System.Type,System.Type)>
IL_0049: brfalse   IL_005a
IL_004e: ldsfld    <GLib.GType:gtypes>
IL_0053: ldarg.1   
IL_0054: ldarg.0   
IL_0055: callvirt  <System.Collections.Generic.Dictionary`2<System.Type, GLib.GType>:set_Item (System.Type,GLib.GType)>
IL_005a: ret       
// GLib.GType:op_Inequality (GLib.GType,GLib.GType)
IL_0000: ldarga.s  0
IL_0002: call      <GLib.GType:get_Val ()>
IL_0007: ldarga.s  1
IL_0009: call      <GLib.GType:get_Val ()>
IL_000e: call      <intptr:op_Inequality (intptr,intptr)>
IL_0013: ret       
// GLib.GType:get_Val ()
IL_0000: ldarg.0   
IL_0001: ldfld     <GLib.GType:val>
IL_0006: ret       
// GLib.ManagedValue:.cctor ()
IL_0000: ldsfld    <GLib.GType:Invalid>
IL_0005: stsfld    <GLib.ManagedValue:boxed_type>
IL_000a: ret       
// GLib.ManagedValue:get_GType ()
IL_0000: ldsfld    <GLib.ManagedValue:boxed_type>
IL_0005: ldsfld    <GLib.GType:Invalid>
IL_000a: call      <GLib.GType:op_Equality (GLib.GType,GLib.GType)>
IL_000f: brfalse   IL_0061
IL_0014: ldnull    
IL_0015: ldftn     <0x06000170>
IL_001b: newobj    <GLib.ManagedValue/CopyFunc:.ctor (object,intptr)>
IL_0020: stsfld    <GLib.ManagedValue:copy>
IL_0025: ldnull    
IL_0026: ldftn     <0x06000171>
IL_002c: newobj    <GLib.ManagedValue/FreeFunc:.ctor (object,intptr)>
IL_0031: stsfld    <GLib.ManagedValue:free>
IL_0036: ldstr     "GtkSharpValue"
IL_003b: call      <GLib.Marshaller:StringToPtrGStrdup (string)>
IL_0040: stloc.0   
IL_0041: ldloc.0   
IL_0042: ldsfld    <GLib.ManagedValue:copy>
IL_0047: ldsfld    <GLib.ManagedValue:free>
IL_004c: call      <GLib.ManagedValue:g_boxed_type_register_static (intptr,GLib.ManagedValue/CopyFunc,GLib.ManagedValue/FreeFunc)>
IL_0051: newobj    <GLib.GType:.ctor (intptr)>
IL_0056: stsfld    <GLib.ManagedValue:boxed_type>
IL_005b: ldloc.0   
IL_005c: call      <GLib.Marshaller:Free (intptr)>
IL_0061: ldsfld    <GLib.ManagedValue:boxed_type>
IL_0066: ret       
// GLib.GType:op_Equality (GLib.GType,GLib.GType)
IL_0000: ldarga.s  0
IL_0002: call      <GLib.GType:get_Val ()>
IL_0007: ldarga.s  1
IL_0009: call      <GLib.GType:get_Val ()>
IL_000e: call      <intptr:op_Equality (intptr,intptr)>
IL_0013: ret       
// (wrapper managed-to-native) GLib.ManagedValue:g_boxed_type_register_static (intptr,GLib.ManagedValue/CopyFunc,GLib.ManagedValue/FreeFunc)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldarg.1   
IL_0003: mono_icall <mono_delegate_to_ftnptr>
IL_0009: stloc.s   6
IL_000b: ldarg.2   
IL_000c: mono_icall <mono_delegate_to_ftnptr>
IL_0012: stloc.s   7
IL_0014: ldloca.s  4
IL_0016: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_001c: stloc.s   5
IL_001e: ldarg.0   
IL_001f: ldloc.s   6
IL_0021: ldloc.s   7
IL_0023: mono_ldptr5
IL_0029: calli     <intptr,intptr,intptr>
IL_002e: ldloc.s   5
IL_0030: ldloca.s  4
IL_0032: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0038: stloc.3   
IL_0039: mono_ldptr_int_req_flag
IL_003b: ldind.u4  
IL_003c: brfalse   IL_0051
IL_0041: mono_not_taken
IL_0043: mono_icall <mono_thread_interruption_checkpoint>
IL_0049: dup       
IL_004a: brfalse   IL_0050
IL_004f: throw     
IL_0050: pop       
IL_0051: ldloc.3   
IL_0052: ret       
// (wrapper managed-to-native) object:__icall_wrapper_mono_delegate_to_ftnptr (object)
IL_0000: ldarg.0   
IL_0001: mono_jit_icall_addr2
IL_0007: calli     <object>
IL_000c: mono_ldptr_int_req_flag
IL_000e: ldind.u4  
IL_000f: brfalse   IL_0024
IL_0014: mono_not_taken
IL_0016: mono_icall <mono_thread_interruption_checkpoint>
IL_001c: dup       
IL_001d: brfalse   IL_0023
IL_0022: throw     
IL_0023: pop       
IL_0024: ret       
// (wrapper native-to-managed) GLib.ManagedValue:Copy (intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldc.i4.m1 
IL_0003: conv.u4   
IL_0004: stloc.s   4
IL_0006: mono_lddomain
IL_0008: ldloca.s  7
IL_000a: mono_icall <mono_threads_attach_coop>
IL_0010: stloc.s   6
IL_0012: mono_ldptr_int_req_flag
IL_0014: ldind.u4  
IL_0015: brfalse   IL_002a
IL_001a: mono_not_taken
IL_001c: mono_icall <mono_thread_interruption_checkpoint>
IL_0022: dup       
IL_0023: brfalse   IL_0029
IL_0028: throw     
IL_0029: pop       
IL_002a: ldarg.0   
IL_002b: call      <GLib.ManagedValue:Copy (intptr)>
IL_0030: stloc.3   
IL_0031: ldloc.s   6
IL_0033: ldloca.s  7
IL_0035: mono_icall <mono_threads_detach_coop>
IL_003b: ldloc.3   
IL_003c: ret       
// (wrapper native-to-managed) GLib.ManagedValue:Free (intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldc.i4.m1 
IL_0003: conv.u4   
IL_0004: stloc.3   
IL_0005: mono_lddomain
IL_0007: ldloca.s  6
IL_0009: mono_icall <mono_threads_attach_coop>
IL_000f: stloc.s   5
IL_0011: mono_ldptr_int_req_flag
IL_0013: ldind.u4  
IL_0014: brfalse   IL_0029
IL_0019: mono_not_taken
IL_001b: mono_icall <mono_thread_interruption_checkpoint>
IL_0021: dup       
IL_0022: brfalse   IL_0028
IL_0027: throw     
IL_0028: pop       
IL_0029: ldarg.0   
IL_002a: call      <GLib.ManagedValue:Free (intptr)>
IL_002f: ldloc.s   5
IL_0031: ldloca.s  6
IL_0033: mono_icall <mono_threads_detach_coop>
IL_0039: ret       
// GLib.IntPtrEqualityComparer:GetHashCode (intptr)
IL_0000: ldarga.s  1
IL_0002: constrained.<0x01000016>
IL_0008: callvirt  <object:GetHashCode ()>
IL_000d: ret       
// Gtk.HBox:.ctor (bool,int)
IL_0000: ldarg.0   
IL_0001: ldsfld    <System.IntPtr:Zero>
IL_0006: call      <Gtk.Box:.ctor (intptr)>
IL_000b: ldarg.0   
IL_000c: call      <object:GetType ()>
IL_0011: ldtoken   <0x0200028e>
IL_0016: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_001b: call      <System.Type:op_Inequality (System.Type,System.Type)>
IL_0020: brfalse   IL_008a
IL_0025: call      <Gtk.Application:AssertMainThread ()>
IL_002a: ldc.i4.2  
IL_002b: newarr    <0x0100000e>
IL_0030: stloc.0   
IL_0031: ldc.i4.2  
IL_0032: newarr    <0x0100001a>
IL_0037: stloc.1   
IL_0038: ldloc.1   
IL_0039: ldc.i4.0  
IL_003a: ldelema   <IntPtr>
IL_003f: ldstr     "homogeneous"
IL_0044: call      <GLib.Marshaller:StringToPtrGStrdup (string)>
IL_0049: stind.i   
IL_004a: ldloc.0   
IL_004b: ldc.i4.0  
IL_004c: ldelema   <Value>
IL_0051: ldarg.1   
IL_0052: newobj    <GLib.Value:.ctor (bool)>
IL_0057: stobj     <0x0100000e>
IL_005c: ldloc.1   
IL_005d: ldc.i4.1  
IL_005e: ldelema   <IntPtr>
IL_0063: ldstr     "spacing"
IL_0068: call      <GLib.Marshaller:StringToPtrGStrdup (string)>
IL_006d: stind.i   
IL_006e: ldloc.0   
IL_006f: ldc.i4.1  
IL_0070: ldelema   <Value>
IL_0075: ldarg.2   
IL_0076: newobj    <GLib.Value:.ctor (int)>
IL_007b: stobj     <0x0100000e>
IL_0080: ldarg.0   
IL_0081: ldloc.1   
IL_0082: ldloc.0   
IL_0083: ldc.i4.2  
IL_0084: call      <GLib.Object:CreateNativeObject (intptr[],GLib.Value[],int)>
IL_0089: ret       
IL_008a: call      <Gtk.Application:AssertMainThread ()>
IL_008f: ldarg.0   
IL_0090: ldc.i4.1  
IL_0091: stfld     <GLib.Object:owned>
IL_0096: ldarg.0   
IL_0097: ldarg.1   
IL_0098: ldarg.2   
IL_0099: call      <Gtk.HBox:gtk_hbox_new (bool,int)>
IL_009e: callvirt  <GLib.Object:set_Raw (intptr)>
IL_00a3: ret       
// Gtk.Box:.ctor (intptr)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: call      <Gtk.Container:.ctor (intptr)>
IL_0007: ret       
// Gtk.Box:.cctor ()
IL_0000: call      <Gtk.Box:gtk_box_get_type ()>
IL_0005: newobj    <GLib.GType:.ctor (intptr)>
IL_000a: stsfld    <Gtk.Box:_gtype>
IL_000f: ret       
// (wrapper managed-to-native) Gtk.Box:gtk_box_get_type ()
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: mono_ldptr3
IL_0012: calli     <>
IL_0017: ldloc.s   5
IL_0019: ldloca.s  4
IL_001b: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0021: stloc.3   
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ldloc.3   
IL_003b: ret       
// Gtk.Container:.ctor (intptr)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: call      <Gtk.Widget:.ctor (intptr)>
IL_0007: ret       
// Gtk.Container:.cctor ()
IL_0000: call      <Gtk.Container:gtksharp_gtk_container_get_focus_child_offset ()>
IL_0005: stsfld    <Gtk.Container:focus_child_offset>
IL_000a: call      <Gtk.Container:gtk_container_get_type ()>
IL_000f: newobj    <GLib.GType:.ctor (intptr)>
IL_0014: stsfld    <Gtk.Container:_gtype>
IL_0019: ret       
// (wrapper managed-to-native) Gtk.Container:gtksharp_gtk_container_get_focus_child_offset ()
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: mono_ldptr3
IL_0012: calli     <>
IL_0017: ldloc.s   5
IL_0019: ldloca.s  4
IL_001b: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0021: stloc.3   
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ldloc.3   
IL_003b: ret       
// (wrapper managed-to-native) Gtk.Container:gtk_container_get_type ()
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: mono_ldptr3
IL_0012: calli     <>
IL_0017: ldloc.s   5
IL_0019: ldloca.s  4
IL_001b: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0021: stloc.3   
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ldloc.3   
IL_003b: ret       
// Gtk.Widget:.ctor (intptr)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: call      <Gtk.Object:.ctor (intptr)>
IL_0007: ret       
// Gtk.Widget:.cctor ()
IL_0000: call      <Gtk.Widget:gtksharp_gtk_widget_get_requisition_offset ()>
IL_0005: stsfld    <Gtk.Widget:requisition_offset>
IL_000a: call      <Gtk.Widget:gtk_widget_get_type ()>
IL_000f: newobj    <GLib.GType:.ctor (intptr)>
IL_0014: stsfld    <Gtk.Widget:_gtype>
IL_0019: ret       
// (wrapper managed-to-native) Gtk.Widget:gtksharp_gtk_widget_get_requisition_offset ()
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: mono_ldptr3
IL_0012: calli     <>
IL_0017: ldloc.s   5
IL_0019: ldloca.s  4
IL_001b: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0021: stloc.3   
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ldloc.3   
IL_003b: ret       
// (wrapper managed-to-native) Gtk.Widget:gtk_widget_get_type ()
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: mono_ldptr3
IL_0012: calli     <>
IL_0017: ldloc.s   5
IL_0019: ldloca.s  4
IL_001b: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0021: stloc.3   
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ldloc.3   
IL_003b: ret       
// Gtk.Object:.ctor (intptr)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: call      <GLib.InitiallyUnowned:.ctor (intptr)>
IL_0007: ret       
// Gtk.Object:.cctor ()
IL_0000: call      <Gtk.Object:gtk_object_get_type ()>
IL_0005: newobj    <GLib.GType:.ctor (intptr)>
IL_000a: stsfld    <Gtk.Object:_gtype>
IL_000f: ret       
// (wrapper managed-to-native) Gtk.Object:gtk_object_get_type ()
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: mono_ldptr3
IL_0012: calli     <>
IL_0017: ldloc.s   5
IL_0019: ldloca.s  4
IL_001b: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0021: stloc.3   
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ldloc.3   
IL_003b: ret       
// GLib.InitiallyUnowned:.ctor (intptr)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: call      <GLib.Object:.ctor (intptr)>
IL_0007: ret       
// GLib.Object:.ctor (intptr)
IL_0000: ldarg.0   
IL_0001: ldc.i4.0  
IL_0002: stfld     <GLib.Object:owned>
IL_0007: ldarg.0   
IL_0008: call      <object:.ctor ()>
IL_000d: ldarg.0   
IL_000e: ldarg.1   
IL_000f: callvirt  <GLib.Object:set_Raw (intptr)>
IL_0014: ret       
// GLib.Object:.cctor ()
IL_0000: ldsfld    <GLib.IntPtrEqualityComparer:Instance>
IL_0005: newobj    <System.Collections.Generic.Dictionary`2<intptr, GLib.ToggleRef>:.ctor (System.Collections.Generic.IEqualityComparer`1<intptr>)>
IL_000a: stsfld    <GLib.Object:Objects>
IL_000f: newobj    <object:.ctor ()>
IL_0014: stsfld    <GLib.Object:lockObject>
IL_0019: newobj    <System.Collections.Generic.List`1<GLib.ToggleRef>:.ctor ()>
IL_001e: stsfld    <GLib.Object:PendingDestroys>
IL_0023: newobj    <System.Collections.Generic.Dictionary`2<System.Type, GLib.GType>:.ctor ()>
IL_0028: stsfld    <GLib.Object:g_types>
IL_002d: ldstr     "GTK_SHARP_DEBUG"
IL_0032: call      <System.Environment:GetEnvironmentVariable (string)>
IL_0037: brfalse   IL_0058
IL_003c: ldstr     "GLib-GObject"
IL_0041: ldc.i4    255
IL_0046: ldnull    
IL_0047: ldftn     <0x06000153>
IL_004d: newobj    <GLib.LogFunc:.ctor (object,intptr)>
IL_0052: call      <GLib.Log:SetLogHandler (string,GLib.LogLevelFlags,GLib.LogFunc)>
IL_0057: pop       
IL_0058: ret       
// (wrapper runtime-invoke) object:runtime_invoke_void (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0034
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.3   
IL_001f: calli     <>
IL_0024: leave     IL_0032
IL_0029: stloc.1   
IL_002a: ldarg.2   
IL_002b: ldloc.1   
IL_002c: stind.ref 
IL_002d: leave     IL_0032
IL_0032: ldloc.0   
IL_0033: ret       
IL_0034: mono_ldptr_int_req_flag
IL_0036: ldind.u4  
IL_0037: brfalse   IL_004c
IL_003c: mono_not_taken
IL_003e: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0044: dup       
IL_0045: brfalse   IL_004b
IL_004a: throw     
IL_004b: pop       
IL_004c: ldarg.3   
IL_004d: calli     <>
IL_0052: ldloc.0   
IL_0053: ret       
// Gtk.Object:set_Raw (intptr)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: call      <GLib.Object:set_Raw (intptr)>
IL_0007: ldarg.1   
IL_0008: ldsfld    <System.IntPtr:Zero>
IL_000d: call      <intptr:op_Inequality (intptr,intptr)>
IL_0012: brfalse   IL_0022
IL_0017: ldarg.0   
IL_0018: call      <Gtk.Object:get_NativeDestroyHandler ()>
IL_001d: call      <Gtk.Object:add_InternalDestroyed (System.EventHandler)>
IL_0022: ret       
// GLib.Object:set_Raw (intptr)
IL_0000: ldarg.0   
IL_0001: ldfld     <GLib.Object:handle>
IL_0006: ldarg.1   
IL_0007: call      <intptr:op_Equality (intptr,intptr)>
IL_000c: brfalse   IL_0012
IL_0011: ret       
IL_0012: ldsfld    <GLib.Object:Objects>
IL_0017: stloc.0   
IL_0018: ldc.i4.0  
IL_0019: stloc.1   
IL_001a: ldloc.0   
IL_001b: ldloca.s  1
IL_001d: call      <System.Threading.Monitor:Enter (object,bool&)>
IL_0022: ldarg.0   
IL_0023: ldfld     <GLib.Object:handle>
IL_0028: ldsfld    <System.IntPtr:Zero>
IL_002d: call      <intptr:op_Inequality (intptr,intptr)>
IL_0032: brfalse   IL_0065
IL_0037: ldsfld    <GLib.Object:Objects>
IL_003c: ldarg.0   
IL_003d: ldfld     <GLib.Object:handle>
IL_0042: callvirt  <System.Collections.Generic.Dictionary`2<intptr, GLib.ToggleRef>:Remove (intptr)>
IL_0047: pop       
IL_0048: ldarg.0   
IL_0049: ldfld     <GLib.Object:tref>
IL_004e: brfalse   IL_0065
IL_0053: ldarg.0   
IL_0054: ldfld     <GLib.Object:tref>
IL_0059: callvirt  <GLib.ToggleRef:Free ()>
IL_005e: ldarg.0   
IL_005f: ldnull    
IL_0060: stfld     <GLib.Object:tref>
IL_0065: ldarg.0   
IL_0066: ldarg.1   
IL_0067: stfld     <GLib.Object:handle>
IL_006c: ldarg.1   
IL_006d: ldsfld    <System.IntPtr:Zero>
IL_0072: call      <intptr:op_Inequality (intptr,intptr)>
IL_0077: brfalse   IL_0099
IL_007c: ldarg.0   
IL_007d: ldarg.0   
IL_007e: newobj    <GLib.ToggleRef:.ctor (GLib.Object)>
IL_0083: stfld     <GLib.Object:tref>
IL_0088: ldsfld    <GLib.Object:Objects>
IL_008d: ldarg.1   
IL_008e: ldarg.0   
IL_008f: ldfld     <GLib.Object:tref>
IL_0094: callvirt  <System.Collections.Generic.Dictionary`2<intptr, GLib.ToggleRef>:set_Item (intptr,GLib.ToggleRef)>
IL_0099: leave     IL_00a8
IL_009e: ldloc.1   
IL_009f: brfalse.s IL_00a7
IL_00a1: ldloc.0   
IL_00a2: call      <System.Threading.Monitor:Exit (object)>
IL_00a7: endfinally
IL_00a8: ret       
// Gtk.Application:AssertMainThread ()
IL_0000: ldsfld    <Gtk.Application:MainThread>
IL_0005: brfalse   IL_0035
IL_000a: call      <System.Threading.Thread:get_CurrentThread ()>
IL_000f: ldsfld    <Gtk.Application:MainThread>
IL_0014: beq       IL_0035
IL_0019: ldnull    
IL_001a: ldc.i4.s  16
IL_001c: ldstr     "Gtk operations should be done on the main Thread
"
IL_0021: call      <System.Environment:get_StackTrace ()>
IL_0026: call      <string:Concat (string,string)>
IL_002b: call      <System.Array:Empty<object> ()>
IL_0030: call      <GLib.Log:Write (string,GLib.LogLevelFlags,string,object[])>
IL_0035: ret       
// (wrapper managed-to-native) Gtk.HBox:gtk_hbox_new (bool,int)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldarg.0   
IL_0003: brfalse   IL_000b
IL_0008: ldc.i4.1  
IL_0009: stloc.s   6
IL_000b: ldloca.s  4
IL_000d: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_0013: stloc.s   5
IL_0015: ldloc.s   6
IL_0017: ldarg.1   
IL_0018: mono_ldptr3
IL_001e: calli     <int,int>
IL_0023: ldloc.s   5
IL_0025: ldloca.s  4
IL_0027: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_002d: stloc.3   
IL_002e: mono_ldptr_int_req_flag
IL_0030: ldind.u4  
IL_0031: brfalse   IL_0046
IL_0036: mono_not_taken
IL_0038: mono_icall <mono_thread_interruption_checkpoint>
IL_003e: dup       
IL_003f: brfalse   IL_0045
IL_0044: throw     
IL_0045: pop       
IL_0046: ldloc.3   
IL_0047: ret       
// GLib.ToggleRef:.ctor (GLib.Object)
IL_0000: ldarg.0   
IL_0001: call      <object:.ctor ()>
IL_0006: ldarg.0   
IL_0007: ldarg.1   
IL_0008: callvirt  <GLib.Object:get_Handle ()>
IL_000d: stfld     <GLib.ToggleRef:handle>
IL_0012: ldarg.0   
IL_0013: ldarg.0   
IL_0014: call      <System.Runtime.InteropServices.GCHandle:Alloc (object)>
IL_0019: stfld     <GLib.ToggleRef:gch>
IL_001e: ldarg.0   
IL_001f: ldarg.1   
IL_0020: stfld     <GLib.ToggleRef:reference>
IL_0025: ldarg.1   
IL_0026: callvirt  <GLib.Object:get_Handle ()>
IL_002b: call      <GLib.ToggleRef:get_ToggleNotifyCallback ()>
IL_0030: ldarg.0   
IL_0031: ldfld     <GLib.ToggleRef:gch>
IL_0036: call      <System.Runtime.InteropServices.GCHandle:op_Explicit (System.Runtime.InteropServices.GCHandle)>
IL_003b: call      <GLib.ToggleRef:g_object_add_toggle_ref (intptr,GLib.ToggleRef/ToggleNotifyHandler,intptr)>
IL_0040: ldarg.1   
IL_0041: ldfld     <GLib.Object:owned>
IL_0046: brfalse   IL_0061
IL_004b: ldarg.1   
IL_004c: isinst    <InitiallyUnowned>
IL_0051: brtrue    IL_0061
IL_0056: ldarg.1   
IL_0057: callvirt  <GLib.Object:get_Handle ()>
IL_005c: call      <GLib.ToggleRef:g_object_unref (intptr)>
IL_0061: ret       
// (wrapper managed-to-native) System.Runtime.InteropServices.GCHandle:GetTargetHandle (object,int,System.Runtime.InteropServices.GCHandleType)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldarg.1   
IL_0013: ldarg.2   
IL_0014: ldloca.s  2
IL_0016: mono_ldptr4
IL_001c: calli     <object&,int,GCHandleType,intptr>
IL_0021: ldloc.0   
IL_0022: ldloca.s  1
IL_0024: ldloca.s  2
IL_0026: mono_icall <mono_icall_end>
IL_002c: mono_ldptr_int_req_flag
IL_002e: ldind.u4  
IL_002f: brfalse   IL_0044
IL_0034: mono_not_taken
IL_0036: mono_icall <mono_thread_interruption_checkpoint>
IL_003c: dup       
IL_003d: brfalse   IL_0043
IL_0042: throw     
IL_0043: pop       
IL_0044: ret       
// GLib.ToggleRef:get_ToggleNotifyCallback ()
IL_0000: ldsfld    <GLib.ToggleRef:toggle_notify_callback>
IL_0005: brtrue    IL_001b
IL_000a: ldnull    
IL_000b: ldftn     <0x06000312>
IL_0011: newobj    <GLib.ToggleRef/ToggleNotifyHandler:.ctor (object,intptr)>
IL_0016: stsfld    <GLib.ToggleRef:toggle_notify_callback>
IL_001b: ldsfld    <GLib.ToggleRef:toggle_notify_callback>
IL_0020: ret       
// (wrapper managed-to-native) GLib.ToggleRef:g_object_add_toggle_ref (intptr,GLib.ToggleRef/ToggleNotifyHandler,intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldarg.1   
IL_0003: mono_icall <mono_delegate_to_ftnptr>
IL_0009: stloc.s   5
IL_000b: ldloca.s  3
IL_000d: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_0013: stloc.s   4
IL_0015: ldarg.0   
IL_0016: ldloc.s   5
IL_0018: ldarg.2   
IL_0019: mono_ldptr4
IL_001f: calli     <intptr,intptr,intptr>
IL_0024: ldloc.s   4
IL_0026: ldloca.s  3
IL_0028: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_002e: mono_ldptr_int_req_flag
IL_0030: ldind.u4  
IL_0031: brfalse   IL_0046
IL_0036: mono_not_taken
IL_0038: mono_icall <mono_thread_interruption_checkpoint>
IL_003e: dup       
IL_003f: brfalse   IL_0045
IL_0044: throw     
IL_0045: pop       
IL_0046: ret       
// (wrapper native-to-managed) GLib.ToggleRef:RefToggled (intptr,intptr,int)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldc.i4.m1 
IL_0003: conv.u4   
IL_0004: stloc.3   
IL_0005: mono_lddomain
IL_0007: ldloca.s  6
IL_0009: mono_icall <mono_threads_attach_coop>
IL_000f: stloc.s   5
IL_0011: mono_ldptr_int_req_flag
IL_0013: ldind.u4  
IL_0014: brfalse   IL_0029
IL_0019: mono_not_taken
IL_001b: mono_icall <mono_thread_interruption_checkpoint>
IL_0021: dup       
IL_0022: brfalse   IL_0028
IL_0027: throw     
IL_0028: pop       
IL_0029: ldarg.2   
IL_002a: brfalse   IL_0032
IL_002f: ldc.i4.1  
IL_0030: stloc.s   7
IL_0032: ldarg.0   
IL_0033: ldarg.1   
IL_0034: ldloc.s   7
IL_0036: call      <GLib.ToggleRef:RefToggled (intptr,intptr,bool)>
IL_003b: ldloc.s   5
IL_003d: ldloca.s  6
IL_003f: mono_icall <mono_threads_detach_coop>
IL_0045: ret       
// Gtk.Object:get_NativeDestroyHandler ()
IL_0000: ldsfld    <Gtk.Object:native_destroy_handler>
IL_0005: brtrue    IL_001b
IL_000a: ldnull    
IL_000b: ldftn     <0x06001ebd>
IL_0011: newobj    <System.EventHandler:.ctor (object,intptr)>
IL_0016: stsfld    <Gtk.Object:native_destroy_handler>
IL_001b: ldsfld    <Gtk.Object:native_destroy_handler>
IL_0020: ret       
// Gtk.Object:add_InternalDestroyed (System.EventHandler)
IL_0000: ldarg.0   
IL_0001: ldstr     "destroy"
IL_0006: call      <GLib.Signal:Lookup (GLib.Object,string)>
IL_000b: stloc.0   
IL_000c: ldloc.0   
IL_000d: ldarg.1   
IL_000e: callvirt  <GLib.Signal:AddDelegate (System.Delegate)>
IL_0013: ret       
// GLib.Signal:Lookup (GLib.Object,string)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: ldtoken   <0x01000010>
IL_0007: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_000c: call      <GLib.Signal:Lookup (GLib.Object,string,System.Type)>
IL_0011: ret       
// GLib.Signal:Lookup (GLib.Object,string,System.Type)
IL_0000: ldarg.0   
IL_0001: callvirt  <GLib.Object:get_ToggleRef ()>
IL_0006: callvirt  <GLib.ToggleRef:get_Signals ()>
IL_000b: ldarg.1   
IL_000c: callvirt  <System.Collections.Hashtable:get_Item (object)>
IL_0011: isinst    <Signal>
IL_0016: stloc.0   
IL_0017: ldloc.0   
IL_0018: brtrue    IL_0026
IL_001d: ldarg.0   
IL_001e: ldarg.1   
IL_001f: ldarg.2   
IL_0020: newobj    <GLib.Signal:.ctor (GLib.Object,string,System.Type)>
IL_0025: stloc.0   
IL_0026: ldloc.0   
IL_0027: ret       
// GLib.ToggleRef:get_Signals ()
IL_0000: ldarg.0   
IL_0001: ldfld     <GLib.ToggleRef:signals>
IL_0006: brtrue    IL_0016
IL_000b: ldarg.0   
IL_000c: newobj    <System.Collections.Hashtable:.ctor ()>
IL_0011: stfld     <GLib.ToggleRef:signals>
IL_0016: ldarg.0   
IL_0017: ldfld     <GLib.ToggleRef:signals>
IL_001c: ret       
// GLib.Signal:.ctor (GLib.Object,string,System.Type)
IL_0000: ldarg.0   
IL_0001: call      <object:.ctor ()>
IL_0006: ldarg.0   
IL_0007: ldarg.1   
IL_0008: callvirt  <GLib.Object:get_ToggleRef ()>
IL_000d: stfld     <GLib.Signal:tref>
IL_0012: ldarg.0   
IL_0013: ldarg.2   
IL_0014: stfld     <GLib.Signal:name>
IL_0019: ldarg.0   
IL_001a: ldarg.3   
IL_001b: stfld     <GLib.Signal:args_type>
IL_0020: ldarg.0   
IL_0021: ldfld     <GLib.Signal:tref>
IL_0026: callvirt  <GLib.ToggleRef:get_Signals ()>
IL_002b: ldarg.0   
IL_002c: ldfld     <GLib.Signal:name>
IL_0031: ldarg.0   
IL_0032: callvirt  <System.Collections.Hashtable:set_Item (object,object)>
IL_0037: ret       
// GLib.Signal:AddDelegate (System.Delegate)
IL_0000: ldarg.0   
IL_0001: ldfld     <GLib.Signal:args_type>
IL_0006: ldnull    
IL_0007: call      <System.Type:op_Equality (System.Type,System.Type)>
IL_000c: brfalse   IL_0029
IL_0011: ldarg.0   
IL_0012: ldarg.1   
IL_0013: callvirt  <System.Delegate:get_Method ()>
IL_0018: callvirt  <System.Reflection.MethodBase:GetParameters ()>
IL_001d: ldc.i4.1  
IL_001e: ldelem.ref
IL_001f: callvirt  <System.Reflection.ParameterInfo:get_ParameterType ()>
IL_0024: stfld     <GLib.Signal:args_type>
IL_0029: ldarg.1   
IL_002a: callvirt  <System.Delegate:get_Method ()>
IL_002f: ldtoken   <0x02000006>
IL_0034: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_0039: ldc.i4.0  
IL_003a: callvirt  <System.Reflection.MemberInfo:IsDefined (System.Type,bool)>
IL_003f: brfalse   IL_00f5
IL_0044: ldarg.0   
IL_0045: ldfld     <GLib.Signal:tref>
IL_004a: callvirt  <GLib.ToggleRef:get_Target ()>
IL_004f: callvirt  <GLib.Object:get_BeforeSignals ()>
IL_0054: ldarg.0   
IL_0055: ldfld     <GLib.Signal:name>
IL_005a: ldarg.0   
IL_005b: ldfld     <GLib.Signal:tref>
IL_0060: callvirt  <GLib.ToggleRef:get_Target ()>
IL_0065: callvirt  <GLib.Object:get_BeforeSignals ()>
IL_006a: ldarg.0   
IL_006b: ldfld     <GLib.Signal:name>
IL_0070: callvirt  <System.Collections.Hashtable:get_Item (object)>
IL_0075: isinst    <Delegate>
IL_007a: ldarg.1   
IL_007b: call      <System.Delegate:Combine (System.Delegate,System.Delegate)>
IL_0080: callvirt  <System.Collections.Hashtable:set_Item (object,object)>
IL_0085: ldarg.0   
IL_0086: ldfld     <GLib.Signal:before_closure>
IL_008b: brtrue    IL_00f0
IL_0090: ldarg.0   
IL_0091: ldfld     <GLib.Signal:marshaler>
IL_0096: brtrue    IL_00b2
IL_009b: ldarg.0   
IL_009c: ldarg.0   
IL_009d: ldarg.0   
IL_009e: ldfld     <GLib.Signal:args_type>
IL_00a3: newobj    <GLib.Signal/SignalClosure:.ctor (GLib.Signal,System.Type)>
IL_00a8: stfld     <GLib.Signal:before_closure>
IL_00ad: br        IL_00c4
IL_00b2: ldarg.0   
IL_00b3: ldarg.0   
IL_00b4: ldarg.0   
IL_00b5: ldfld     <GLib.Signal:marshaler>
IL_00ba: newobj    <GLib.Signal/SignalClosure:.ctor (GLib.Signal,System.Delegate)>
IL_00bf: stfld     <GLib.Signal:before_closure>
IL_00c4: ldarg.0   
IL_00c5: ldfld     <GLib.Signal:before_closure>
IL_00ca: call      <GLib.Signal:get_ClosureDisposedHandler ()>
IL_00cf: callvirt  <GLib.Signal/SignalClosure:add_Disposed (System.EventHandler)>
IL_00d4: ldarg.0   
IL_00d5: ldfld     <GLib.Signal:before_closure>
IL_00da: call      <GLib.Signal:get_ClosureInvokedHandler ()>
IL_00df: callvirt  <GLib.Signal/SignalClosure:add_Invoked (GLib.ClosureInvokedHandler)>
IL_00e4: ldarg.0   
IL_00e5: ldfld     <GLib.Signal:before_closure>
IL_00ea: ldc.i4.0  
IL_00eb: callvirt  <GLib.Signal/SignalClosure:Connect (bool)>
IL_00f0: br        IL_01a1
IL_00f5: ldarg.0   
IL_00f6: ldfld     <GLib.Signal:tref>
IL_00fb: callvirt  <GLib.ToggleRef:get_Target ()>
IL_0100: callvirt  <GLib.Object:get_AfterSignals ()>
IL_0105: ldarg.0   
IL_0106: ldfld     <GLib.Signal:name>
IL_010b: ldarg.0   
IL_010c: ldfld     <GLib.Signal:tref>
IL_0111: callvirt  <GLib.ToggleRef:get_Target ()>
IL_0116: callvirt  <GLib.Object:get_AfterSignals ()>
IL_011b: ldarg.0   
IL_011c: ldfld     <GLib.Signal:name>
IL_0121: callvirt  <System.Collections.Hashtable:get_Item (object)>
IL_0126: isinst    <Delegate>
IL_012b: ldarg.1   
IL_012c: call      <System.Delegate:Combine (System.Delegate,System.Delegate)>
IL_0131: callvirt  <System.Collections.Hashtable:set_Item (object,object)>
IL_0136: ldarg.0   
IL_0137: ldfld     <GLib.Signal:after_closure>
IL_013c: brtrue    IL_01a1
IL_0141: ldarg.0   
IL_0142: ldfld     <GLib.Signal:marshaler>
IL_0147: brtrue    IL_0163
IL_014c: ldarg.0   
IL_014d: ldarg.0   
IL_014e: ldarg.0   
IL_014f: ldfld     <GLib.Signal:args_type>
IL_0154: newobj    <GLib.Signal/SignalClosure:.ctor (GLib.Signal,System.Type)>
IL_0159: stfld     <GLib.Signal:after_closure>
IL_015e: br        IL_0175
IL_0163: ldarg.0   
IL_0164: ldarg.0   
IL_0165: ldarg.0   
IL_0166: ldfld     <GLib.Signal:marshaler>
IL_016b: newobj    <GLib.Signal/SignalClosure:.ctor (GLib.Signal,System.Delegate)>
IL_0170: stfld     <GLib.Signal:after_closure>
IL_0175: ldarg.0   
IL_0176: ldfld     <GLib.Signal:after_closure>
IL_017b: call      <GLib.Signal:get_ClosureDisposedHandler ()>
IL_0180: callvirt  <GLib.Signal/SignalClosure:add_Disposed (System.EventHandler)>
IL_0185: ldarg.0   
IL_0186: ldfld     <GLib.Signal:after_closure>
IL_018b: call      <GLib.Signal:get_ClosureInvokedHandler ()>
IL_0190: callvirt  <GLib.Signal/SignalClosure:add_Invoked (GLib.ClosureInvokedHandler)>
IL_0195: ldarg.0   
IL_0196: ldfld     <GLib.Signal:after_closure>
IL_019b: ldc.i4.1  
IL_019c: callvirt  <GLib.Signal/SignalClosure:Connect (bool)>
IL_01a1: ret       
// (wrapper managed-to-native) System.RuntimeTypeHandle:GetAssembly (System.RuntimeType)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldloca.s  2
IL_0014: mono_ldptr4
IL_001a: calli     <RuntimeType&,intptr>
IL_001f: dup       
IL_0020: brfalse   IL_0028
IL_0025: mono_objaddr
IL_0027: ldind.ref 
IL_0028: ldloc.0   
IL_0029: ldloca.s  1
IL_002b: ldloca.s  2
IL_002d: mono_icall <mono_icall_end>
IL_0033: mono_ldptr_int_req_flag
IL_0035: ldind.u4  
IL_0036: brfalse   IL_004b
IL_003b: mono_not_taken
IL_003d: mono_icall <mono_thread_interruption_checkpoint>
IL_0043: dup       
IL_0044: brfalse   IL_004a
IL_0049: throw     
IL_004a: pop       
IL_004b: ret       
// (wrapper managed-to-native) System.MonoCustomAttrs:IsDefinedInternal (System.Reflection.ICustomAttributeProvider,System.Type)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldarg.1   
IL_0013: mono_icall <mono_icall_handle_new>
IL_0019: ldloca.s  2
IL_001b: mono_ldptr5
IL_0021: calli     <ICustomAttributeProvider&,Type&,intptr>
IL_0026: ldloc.0   
IL_0027: ldloca.s  1
IL_0029: ldloca.s  2
IL_002b: mono_icall <mono_icall_end>
IL_0031: mono_ldptr_int_req_flag
IL_0033: ldind.u4  
IL_0034: brfalse   IL_0049
IL_0039: mono_not_taken
IL_003b: mono_icall <mono_thread_interruption_checkpoint>
IL_0041: dup       
IL_0042: brfalse   IL_0048
IL_0047: throw     
IL_0048: pop       
IL_0049: ret       
// (wrapper managed-to-native) System.Reflection.MonoMethodInfo:get_method_info (intptr,System.Reflection.MonoMethodInfo&)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: ldarg.1   
IL_000d: dup       
IL_000e: mono_icall <mono_icall_handle_new_interior>
IL_0014: pop       
IL_0015: ldloca.s  2
IL_0017: mono_ldptr4
IL_001d: calli     <intptr,MonoMethodInfo&,intptr>
IL_0022: ldloc.0   
IL_0023: ldloca.s  1
IL_0025: ldloca.s  2
IL_0027: mono_icall <mono_icall_end>
IL_002d: mono_ldptr_int_req_flag
IL_002f: ldind.u4  
IL_0030: brfalse   IL_0045
IL_0035: mono_not_taken
IL_0037: mono_icall <mono_thread_interruption_checkpoint>
IL_003d: dup       
IL_003e: brfalse   IL_0044
IL_0043: throw     
IL_0044: pop       
IL_0045: ret       
// GLib.ToggleRef:get_Target ()
IL_0000: ldarg.0   
IL_0001: ldfld     <GLib.ToggleRef:reference>
IL_0006: brtrue    IL_000d
IL_000b: ldnull    
IL_000c: ret       
IL_000d: ldarg.0   
IL_000e: ldfld     <GLib.ToggleRef:reference>
IL_0013: isinst    <Object>
IL_0018: brfalse   IL_0029
IL_001d: ldarg.0   
IL_001e: ldfld     <GLib.ToggleRef:reference>
IL_0023: isinst    <Object>
IL_0028: ret       
IL_0029: ldarg.0   
IL_002a: ldfld     <GLib.ToggleRef:reference>
IL_002f: isinst    <WeakReference>
IL_0034: stloc.0   
IL_0035: ldloc.0   
IL_0036: callvirt  <System.WeakReference:get_Target ()>
IL_003b: isinst    <Object>
IL_0040: ret       
// GLib.Object:get_AfterSignals ()
IL_0000: ldarg.0   
IL_0001: ldfld     <GLib.Object:after_signals>
IL_0006: brtrue    IL_0016
IL_000b: ldarg.0   
IL_000c: newobj    <System.Collections.Hashtable:.ctor ()>
IL_0011: stfld     <GLib.Object:after_signals>
IL_0016: ldarg.0   
IL_0017: ldfld     <GLib.Object:after_signals>
IL_001c: ret       
// GLib.Signal/SignalClosure:.cctor ()
IL_0000: ldsfld    <GLib.IntPtrEqualityComparer:Instance>
IL_0005: newobj    <System.Collections.Generic.Dictionary`2<intptr, GLib.Signal/SignalClosure>:.ctor (System.Collections.Generic.IEqualityComparer`1<intptr>)>
IL_000a: stsfld    <SignalClosure:closures>
IL_000f: ret       
// GLib.Signal/SignalClosure:.ctor (GLib.Signal,System.Type)
IL_0000: ldarg.0   
IL_0001: ldc.i4.m1 
IL_0002: stfld     <SignalClosure:id>
IL_0007: ldarg.0   
IL_0008: call      <object:.ctor ()>
IL_000d: ldarg.0   
IL_000e: call      <GLib.Signal/SignalClosure:get_Marshaler ()>
IL_0013: call      <GLib.Signal/SignalClosure:get_Notify ()>
IL_0018: ldsfld    <System.IntPtr:Zero>
IL_001d: call      <GLib.Signal/SignalClosure:glibsharp_closure_new (GLib.Signal/SignalClosure/ClosureMarshal,GLib.Signal/SignalClosure/ClosureNotify,intptr)>
IL_0022: stfld     <SignalClosure:raw_closure>
IL_0027: ldsfld    <SignalClosure:closures>
IL_002c: ldarg.0   
IL_002d: ldfld     <SignalClosure:raw_closure>
IL_0032: ldarg.0   
IL_0033: callvirt  <System.Collections.Generic.Dictionary`2<intptr, GLib.Signal/SignalClosure>:set_Item (intptr,GLib.Signal/SignalClosure)>
IL_0038: ldarg.0   
IL_0039: ldarg.1   
IL_003a: stfld     <SignalClosure:signal>
IL_003f: ret       
// GLib.Signal/SignalClosure:get_Marshaler ()
IL_0000: ldsfld    <SignalClosure:marshaler>
IL_0005: brtrue    IL_001b
IL_000a: ldnull    
IL_000b: ldftn     <0x060002ac>
IL_0011: newobj    <GLib.Signal/SignalClosure/ClosureMarshal:.ctor (object,intptr)>
IL_0016: stsfld    <SignalClosure:marshaler>
IL_001b: ldsfld    <SignalClosure:marshaler>
IL_0020: ret       
// GLib.Signal/SignalClosure:get_Notify ()
IL_0000: ldsfld    <SignalClosure:notify_handler>
IL_0005: brtrue    IL_001b
IL_000a: ldnull    
IL_000b: ldftn     <0x060002ad>
IL_0011: newobj    <GLib.Signal/SignalClosure/ClosureNotify:.ctor (object,intptr)>
IL_0016: stsfld    <SignalClosure:notify_handler>
IL_001b: ldsfld    <SignalClosure:notify_handler>
IL_0020: ret       
// (wrapper managed-to-native) GLib.Signal/SignalClosure:glibsharp_closure_new (GLib.Signal/SignalClosure/ClosureMarshal,GLib.Signal/SignalClosure/ClosureNotify,intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldarg.0   
IL_0003: mono_icall <mono_delegate_to_ftnptr>
IL_0009: stloc.s   6
IL_000b: ldarg.1   
IL_000c: mono_icall <mono_delegate_to_ftnptr>
IL_0012: stloc.s   7
IL_0014: ldloca.s  4
IL_0016: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_001c: stloc.s   5
IL_001e: ldloc.s   6
IL_0020: ldloc.s   7
IL_0022: ldarg.2   
IL_0023: mono_ldptr5
IL_0029: calli     <intptr,intptr,intptr>
IL_002e: ldloc.s   5
IL_0030: ldloca.s  4
IL_0032: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0038: stloc.3   
IL_0039: mono_ldptr_int_req_flag
IL_003b: ldind.u4  
IL_003c: brfalse   IL_0051
IL_0041: mono_not_taken
IL_0043: mono_icall <mono_thread_interruption_checkpoint>
IL_0049: dup       
IL_004a: brfalse   IL_0050
IL_004f: throw     
IL_0050: pop       
IL_0051: ldloc.3   
IL_0052: ret       
// (wrapper native-to-managed) GLib.Signal/SignalClosure:MarshalCallback (intptr,GLib.Value*,uint,GLib.Value*,intptr,intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldc.i4.m1 
IL_0003: conv.u4   
IL_0004: stloc.3   
IL_0005: mono_lddomain
IL_0007: ldloca.s  6
IL_0009: mono_icall <mono_threads_attach_coop>
IL_000f: stloc.s   5
IL_0011: mono_ldptr_int_req_flag
IL_0013: ldind.u4  
IL_0014: brfalse   IL_0029
IL_0019: mono_not_taken
IL_001b: mono_icall <mono_thread_interruption_checkpoint>
IL_0021: dup       
IL_0022: brfalse   IL_0028
IL_0027: throw     
IL_0028: pop       
IL_0029: ldarg.0   
IL_002a: ldarg.1   
IL_002b: ldarg.2   
IL_002c: ldarg.3   
IL_002d: ldarg.s   4
IL_002f: ldarg.s   5
IL_0031: call      <GLib.Signal/SignalClosure:MarshalCallback (intptr,GLib.Value*,uint,GLib.Value*,intptr,intptr)>
IL_0036: ldloc.s   5
IL_0038: ldloca.s  6
IL_003a: mono_icall <mono_threads_detach_coop>
IL_0040: ret       
// (wrapper native-to-managed) GLib.Signal/SignalClosure:NotifyCallback (intptr,intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldc.i4.m1 
IL_0003: conv.u4   
IL_0004: stloc.3   
IL_0005: mono_lddomain
IL_0007: ldloca.s  6
IL_0009: mono_icall <mono_threads_attach_coop>
IL_000f: stloc.s   5
IL_0011: mono_ldptr_int_req_flag
IL_0013: ldind.u4  
IL_0014: brfalse   IL_0029
IL_0019: mono_not_taken
IL_001b: mono_icall <mono_thread_interruption_checkpoint>
IL_0021: dup       
IL_0022: brfalse   IL_0028
IL_0027: throw     
IL_0028: pop       
IL_0029: ldarg.0   
IL_002a: ldarg.1   
IL_002b: call      <GLib.Signal/SignalClosure:NotifyCallback (intptr,intptr)>
IL_0030: ldloc.s   5
IL_0032: ldloca.s  6
IL_0034: mono_icall <mono_threads_detach_coop>
IL_003a: ret       
// GLib.Signal:get_ClosureDisposedHandler ()
IL_0000: ldsfld    <GLib.Signal:closure_disposed_cb>
IL_0005: brtrue    IL_001b
IL_000a: ldnull    
IL_000b: ldftn     <0x0600025e>
IL_0011: newobj    <System.EventHandler:.ctor (object,intptr)>
IL_0016: stsfld    <GLib.Signal:closure_disposed_cb>
IL_001b: ldsfld    <GLib.Signal:closure_disposed_cb>
IL_0020: ret       
// GLib.Signal/SignalClosure:add_Disposed (System.EventHandler)
IL_0000: ldarg.0   
IL_0001: ldfld     <SignalClosure:Disposed>
IL_0006: stloc.0   
IL_0007: ldloc.0   
IL_0008: stloc.1   
IL_0009: ldarg.0   
IL_000a: ldflda    <0x040000cf>
IL_000f: ldloc.1   
IL_0010: ldarg.1   
IL_0011: call      <System.Delegate:Combine (System.Delegate,System.Delegate)>
IL_0016: castclass <EventHandler>
IL_001b: ldloc.0   
IL_001c: call      <System.Threading.Interlocked:CompareExchange<System.EventHandler> (System.EventHandler&,System.EventHandler,System.EventHandler)>
IL_0021: stloc.0   
IL_0022: ldloc.0   
IL_0023: ldloc.1   
IL_0024: bne.un    IL_0007
IL_0029: ret       
// GLib.Signal:get_ClosureInvokedHandler ()
IL_0000: ldsfld    <GLib.Signal:closure_invoked_cb>
IL_0005: brtrue    IL_001b
IL_000a: ldnull    
IL_000b: ldftn     <0x06000260>
IL_0011: newobj    <GLib.ClosureInvokedHandler:.ctor (object,intptr)>
IL_0016: stsfld    <GLib.Signal:closure_invoked_cb>
IL_001b: ldsfld    <GLib.Signal:closure_invoked_cb>
IL_0020: ret       
// GLib.Signal/SignalClosure:add_Invoked (GLib.ClosureInvokedHandler)
IL_0000: ldarg.0   
IL_0001: ldfld     <SignalClosure:Invoked>
IL_0006: stloc.0   
IL_0007: ldloc.0   
IL_0008: stloc.1   
IL_0009: ldarg.0   
IL_000a: ldflda    <0x040000d0>
IL_000f: ldloc.1   
IL_0010: ldarg.1   
IL_0011: call      <System.Delegate:Combine (System.Delegate,System.Delegate)>
IL_0016: castclass <ClosureInvokedHandler>
IL_001b: ldloc.0   
IL_001c: call      <System.Threading.Interlocked:CompareExchange<GLib.ClosureInvokedHandler> (GLib.ClosureInvokedHandler&,GLib.ClosureInvokedHandler,GLib.ClosureInvokedHandler)>
IL_0021: stloc.0   
IL_0022: ldloc.0   
IL_0023: ldloc.1   
IL_0024: bne.un    IL_0007
IL_0029: ret       
// GLib.Signal/SignalClosure:Connect (bool)
IL_0000: ldarg.0   
IL_0001: ldfld     <SignalClosure:signal>
IL_0006: ldfld     <GLib.Signal:name>
IL_000b: call      <GLib.Marshaller:StringToPtrGStrdup (string)>
IL_0010: stloc.0   
IL_0011: ldarg.0   
IL_0012: ldarg.0   
IL_0013: ldfld     <SignalClosure:signal>
IL_0018: ldfld     <GLib.Signal:tref>
IL_001d: callvirt  <GLib.ToggleRef:get_Handle ()>
IL_0022: ldloc.0   
IL_0023: ldarg.0   
IL_0024: ldfld     <SignalClosure:raw_closure>
IL_0029: ldarg.1   
IL_002a: call      <GLib.Signal/SignalClosure:g_signal_connect_closure (intptr,intptr,intptr,bool)>
IL_002f: stfld     <SignalClosure:id>
IL_0034: ldloc.0   
IL_0035: call      <GLib.Marshaller:Free (intptr)>
IL_003a: ret       
// (wrapper managed-to-native) GLib.Signal/SignalClosure:g_signal_connect_closure (intptr,intptr,intptr,bool)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldarg.3   
IL_0003: brfalse   IL_000b
IL_0008: ldc.i4.1  
IL_0009: stloc.s   6
IL_000b: ldloca.s  4
IL_000d: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_0013: stloc.s   5
IL_0015: ldarg.0   
IL_0016: ldarg.1   
IL_0017: ldarg.2   
IL_0018: ldloc.s   6
IL_001a: mono_ldptr3
IL_0020: calli     <intptr,intptr,intptr,int>
IL_0025: ldloc.s   5
IL_0027: ldloca.s  4
IL_0029: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_002f: stloc.3   
IL_0030: mono_ldptr_int_req_flag
IL_0032: ldind.u4  
IL_0033: brfalse   IL_0048
IL_0038: mono_not_taken
IL_003a: mono_icall <mono_thread_interruption_checkpoint>
IL_0040: dup       
IL_0041: brfalse   IL_0047
IL_0046: throw     
IL_0047: pop       
IL_0048: ldloc.3   
IL_0049: ret       
// Gtk.VButtonBox:.ctor ()
IL_0000: ldarg.0   
IL_0001: ldsfld    <System.IntPtr:Zero>
IL_0006: call      <Gtk.ButtonBox:.ctor (intptr)>
IL_000b: ldarg.0   
IL_000c: call      <object:GetType ()>
IL_0011: ldtoken   <0x02000626>
IL_0016: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_001b: call      <System.Type:op_Inequality (System.Type,System.Type)>
IL_0020: brfalse   IL_003c
IL_0025: call      <Gtk.Application:AssertMainThread ()>
IL_002a: ldarg.0   
IL_002b: call      <System.Array:Empty<intptr> ()>
IL_0030: call      <System.Array:Empty<GLib.Value> ()>
IL_0035: ldc.i4.0  
IL_0036: call      <GLib.Object:CreateNativeObject (intptr[],GLib.Value[],int)>
IL_003b: ret       
IL_003c: ldarg.0   
IL_003d: ldc.i4.1  
IL_003e: stfld     <GLib.Object:owned>
IL_0043: ldarg.0   
IL_0044: call      <Gtk.VButtonBox:gtk_vbutton_box_new ()>
IL_0049: callvirt  <GLib.Object:set_Raw (intptr)>
IL_004e: ret       
// Gtk.VButtonBox:.cctor ()
IL_0000: call      <Gtk.VButtonBox:gtk_vbutton_box_get_type ()>
IL_0005: newobj    <GLib.GType:.ctor (intptr)>
IL_000a: stsfld    <Gtk.VButtonBox:_gtype>
IL_000f: ret       
// (wrapper managed-to-native) Gtk.VButtonBox:gtk_vbutton_box_get_type ()
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: mono_ldptr3
IL_0012: calli     <>
IL_0017: ldloc.s   5
IL_0019: ldloca.s  4
IL_001b: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0021: stloc.3   
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ldloc.3   
IL_003b: ret       
// Gtk.ButtonBox:.ctor (intptr)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: call      <Gtk.Box:.ctor (intptr)>
IL_0007: ret       
// Gtk.ButtonBox:.cctor ()
IL_0000: call      <Gtk.ButtonBox:gtk_button_box_get_type ()>
IL_0005: newobj    <GLib.GType:.ctor (intptr)>
IL_000a: stsfld    <Gtk.ButtonBox:_gtype>
IL_000f: ret       
// (wrapper managed-to-native) Gtk.ButtonBox:gtk_button_box_get_type ()
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: mono_ldptr3
IL_0012: calli     <>
IL_0017: ldloc.s   5
IL_0019: ldloca.s  4
IL_001b: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0021: stloc.3   
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ldloc.3   
IL_003b: ret       
// (wrapper managed-to-native) Gtk.VButtonBox:gtk_vbutton_box_new ()
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: mono_ldptr3
IL_0012: calli     <>
IL_0017: ldloc.s   5
IL_0019: ldloca.s  4
IL_001b: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0021: stloc.3   
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ldloc.3   
IL_003b: ret       
// Gtk.Window:.ctor (string)
IL_0000: ldarg.0   
IL_0001: ldc.i4.0  
IL_0002: call      <Gtk.Window:.ctor (Gtk.WindowType)>
IL_0007: ldarg.0   
IL_0008: ldarg.1   
IL_0009: call      <Gtk.Window:set_Title (string)>
IL_000e: ret       
// Gtk.Window:.cctor ()
IL_0000: call      <Gtk.Window:gtk_window_get_type ()>
IL_0005: newobj    <GLib.GType:.ctor (intptr)>
IL_000a: stsfld    <Gtk.Window:_gtype>
IL_000f: ret       
// (wrapper managed-to-native) Gtk.Window:gtk_window_get_type ()
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: mono_ldptr3
IL_0012: calli     <>
IL_0017: ldloc.s   5
IL_0019: ldloca.s  4
IL_001b: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0021: stloc.3   
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ldloc.3   
IL_003b: ret       
// Gtk.Window:.ctor (Gtk.WindowType)
IL_0000: ldarg.0   
IL_0001: ldsfld    <System.IntPtr:Zero>
IL_0006: call      <Gtk.Bin:.ctor (intptr)>
IL_000b: ldarg.0   
IL_000c: call      <object:GetType ()>
IL_0011: ldtoken   <0x0200068e>
IL_0016: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_001b: call      <System.Type:op_Inequality (System.Type,System.Type)>
IL_0020: brfalse   IL_006b
IL_0025: call      <Gtk.Application:AssertMainThread ()>
IL_002a: ldc.i4.1  
IL_002b: newarr    <0x0100000e>
IL_0030: stloc.0   
IL_0031: ldc.i4.1  
IL_0032: newarr    <0x0100001a>
IL_0037: stloc.1   
IL_0038: ldloc.1   
IL_0039: ldc.i4.0  
IL_003a: ldelema   <IntPtr>
IL_003f: ldstr     "type"
IL_0044: call      <GLib.Marshaller:StringToPtrGStrdup (string)>
IL_0049: stind.i   
IL_004a: ldloc.0   
IL_004b: ldc.i4.0  
IL_004c: ldelema   <Value>
IL_0051: ldarg.1   
IL_0052: box       <0x0200069e>
IL_0057: newobj    <GLib.Value:.ctor (object)>
IL_005c: stobj     <0x0100000e>
IL_0061: ldarg.0   
IL_0062: ldloc.1   
IL_0063: ldloc.0   
IL_0064: ldc.i4.1  
IL_0065: call      <GLib.Object:CreateNativeObject (intptr[],GLib.Value[],int)>
IL_006a: ret       
IL_006b: call      <Gtk.Application:AssertMainThread ()>
IL_0070: ldarg.0   
IL_0071: ldc.i4.1  
IL_0072: stfld     <GLib.Object:owned>
IL_0077: ldarg.0   
IL_0078: ldarg.1   
IL_0079: call      <Gtk.Window:gtk_window_new (int)>
IL_007e: callvirt  <GLib.Object:set_Raw (intptr)>
IL_0083: ret       
// Gtk.Bin:.ctor (intptr)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: call      <Gtk.Container:.ctor (intptr)>
IL_0007: ret       
// Gtk.Bin:.cctor ()
IL_0000: call      <Gtk.Bin:gtk_bin_get_type ()>
IL_0005: newobj    <GLib.GType:.ctor (intptr)>
IL_000a: stsfld    <Gtk.Bin:_gtype>
IL_000f: ret       
// (wrapper managed-to-native) Gtk.Bin:gtk_bin_get_type ()
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: mono_ldptr3
IL_0012: calli     <>
IL_0017: ldloc.s   5
IL_0019: ldloca.s  4
IL_001b: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0021: stloc.3   
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ldloc.3   
IL_003b: ret       
// GLib.Value:.ctor (object)
IL_0000: ldarg.0   
IL_0001: ldsfld    <System.IntPtr:Zero>
IL_0006: stfld     <GLib.Value:type>
IL_000b: ldarg.0   
IL_000c: ldarg.0   
IL_000d: ldc.i4.0  
IL_000e: conv.i8   
IL_000f: dup       
IL_0010: stloc.0   
IL_0011: stfld     <GLib.Value:pad_2>
IL_0016: ldloc.0   
IL_0017: stfld     <GLib.Value:pad_1>
IL_001c: ldarg.1   
IL_001d: callvirt  <object:GetType ()>
IL_0022: call      <GLib.GType:op_Explicit (System.Type)>
IL_0027: stloc.1   
IL_0028: ldarg.0   
IL_0029: ldloca.s  1
IL_002b: call      <GLib.GType:get_Val ()>
IL_0030: call      <GLib.Value:g_value_init (GLib.Value&,intptr)>
IL_0035: ldarg.0   
IL_0036: ldarg.1   
IL_0037: call      <GLib.Value:set_Val (object)>
IL_003c: ret       
// GLib.GType:op_Explicit (System.Type)
IL_0000: ldsfld    <GLib.GType:gtypes>
IL_0005: ldarg.0   
IL_0006: ldloca.s  0
IL_0008: callvirt  <System.Collections.Generic.Dictionary`2<System.Type, GLib.GType>:TryGetValue (System.Type,GLib.GType&)>
IL_000d: brfalse   IL_0014
IL_0012: ldloc.0   
IL_0013: ret       
IL_0014: ldarg.0   
IL_0015: ldtoken   <0x02000048>
IL_001a: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_001f: callvirt  <System.Type:IsSubclassOf (System.Type)>
IL_0024: brfalse   IL_0039
IL_0029: ldarg.0   
IL_002a: call      <GLib.Object:LookupGType (System.Type)>
IL_002f: stloc.0   
IL_0030: ldloc.0   
IL_0031: ldarg.0   
IL_0032: call      <GLib.GType:Register (GLib.GType,System.Type)>
IL_0037: ldloc.0   
IL_0038: ret       
IL_0039: ldarg.0   
IL_003a: callvirt  <System.Type:get_IsEnum ()>
IL_003f: brfalse   IL_00bb
IL_0044: ldarg.0   
IL_0045: ldtoken   <0x02000020>
IL_004a: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_004f: ldc.i4.0  
IL_0050: call      <System.Attribute:GetCustomAttribute (System.Reflection.MemberInfo,System.Type,bool)>
IL_0055: castclass <GTypeTypeAttribute>
IL_005a: dup       
IL_005b: stloc.1   
IL_005c: brfalse   IL_006d
IL_0061: ldloc.1   
IL_0062: callvirt  <GLib.GTypeTypeAttribute:get_Type ()>
IL_0067: stloc.0   
IL_0068: br        IL_00b6
IL_006d: ldarg.0   
IL_006e: ldtoken   <0x0200001f>
IL_0073: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_0078: ldc.i4.0  
IL_0079: call      <System.Attribute:GetCustomAttribute (System.Reflection.MemberInfo,System.Type,bool)>
IL_007e: castclass <GTypeAttribute>
IL_0083: dup       
IL_0084: stloc.2   
IL_0085: brfalse   IL_00b0
IL_008a: ldloc.2   
IL_008b: callvirt  <GLib.GTypeAttribute:get_WrapperType ()>
IL_0090: ldstr     "GType"
IL_0095: ldc.i4.s  24
IL_0097: callvirt  <System.Type:GetProperty (string,System.Reflection.BindingFlags)>
IL_009c: stloc.3   
IL_009d: ldloc.3   
IL_009e: ldnull    
IL_009f: ldnull    
IL_00a0: callvirt  <System.Reflection.PropertyInfo:GetValue (object,object[])>
IL_00a5: unbox.any <0x0200001e>
IL_00aa: stloc.0   
IL_00ab: br        IL_00b6
IL_00b0: call      <GLib.ManagedValue:get_GType ()>
IL_00b5: stloc.0   
IL_00b6: br        IL_013b
IL_00bb: ldarg.0   
IL_00bc: ldtoken   <0x02000020>
IL_00c1: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_00c6: ldc.i4.0  
IL_00c7: call      <System.Attribute:GetCustomAttribute (System.Reflection.MemberInfo,System.Type,bool)>
IL_00cc: castclass <GTypeTypeAttribute>
IL_00d1: dup       
IL_00d2: stloc.s   4
IL_00d4: brfalse   IL_00e6
IL_00d9: ldloc.s   4
IL_00db: callvirt  <GLib.GTypeTypeAttribute:get_Type ()>
IL_00e0: stloc.0   
IL_00e1: br        IL_013b
IL_00e6: ldarg.0   
IL_00e7: ldstr     "GType"
IL_00ec: ldc.i4.s  120
IL_00ee: callvirt  <System.Type:GetProperty (string,System.Reflection.BindingFlags)>
IL_00f3: dup       
IL_00f4: stloc.s   5
IL_00f6: ldnull    
IL_00f7: call      <System.Reflection.PropertyInfo:op_Inequality (System.Reflection.PropertyInfo,System.Reflection.PropertyInfo)>
IL_00fc: brfalse   IL_0115
IL_0101: ldloc.s   5
IL_0103: ldnull    
IL_0104: ldnull    
IL_0105: callvirt  <System.Reflection.PropertyInfo:GetValue (object,object[])>
IL_010a: unbox.any <0x0200001e>
IL_010f: stloc.0   
IL_0110: br        IL_013b
IL_0115: ldarg.0   
IL_0116: ldtoken   <0x0200004d>
IL_011b: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_0120: callvirt  <System.Type:IsSubclassOf (System.Type)>
IL_0125: brfalse   IL_0135
IL_012a: ldsfld    <GLib.GType:Pointer>
IL_012f: stloc.0   
IL_0130: br        IL_013b
IL_0135: call      <GLib.ManagedValue:get_GType ()>
IL_013a: stloc.0   
IL_013b: ldloc.0   
IL_013c: ldarg.0   
IL_013d: call      <GLib.GType:Register (GLib.GType,System.Type)>
IL_0142: ldloc.0   
IL_0143: ret       
// (wrapper managed-to-native) System.RuntimeTypeHandle:is_subclass_of (intptr,intptr)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: mono_ldptr2
IL_0008: calli     <intptr,intptr>
IL_000d: mono_ldptr_int_req_flag
IL_000f: ldind.u4  
IL_0010: brfalse   IL_0025
IL_0015: mono_not_taken
IL_0017: mono_icall <mono_thread_interruption_checkpoint>
IL_001d: dup       
IL_001e: brfalse   IL_0024
IL_0023: throw     
IL_0024: pop       
IL_0025: ret       
// (wrapper managed-to-native) System.MonoCustomAttrs:GetCustomAttributesInternal (System.Reflection.ICustomAttributeProvider,System.Type,bool)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldarg.1   
IL_0013: mono_icall <mono_icall_handle_new>
IL_0019: ldarg.2   
IL_001a: ldloca.s  2
IL_001c: mono_ldptr5
IL_0022: calli     <ICustomAttributeProvider&,Type&,bool,intptr>
IL_0027: dup       
IL_0028: brfalse   IL_0030
IL_002d: mono_objaddr
IL_002f: ldind.ref 
IL_0030: ldloc.0   
IL_0031: ldloca.s  1
IL_0033: ldloca.s  2
IL_0035: mono_icall <mono_icall_end>
IL_003b: mono_ldptr_int_req_flag
IL_003d: ldind.u4  
IL_003e: brfalse   IL_0053
IL_0043: mono_not_taken
IL_0045: mono_icall <mono_thread_interruption_checkpoint>
IL_004b: dup       
IL_004c: brfalse   IL_0052
IL_0051: throw     
IL_0052: pop       
IL_0053: ret       
// Gtk.WindowTypeAttribute:.ctor ()
IL_0000: ldarg.0   
IL_0001: call      <GLib.GTypeTypeAttribute:.ctor ()>
IL_0006: ret       
// Gtk.WindowTypeAttribute:.cctor ()
IL_0000: call      <Gtk.WindowTypeAttribute:gtk_window_type_get_type ()>
IL_0005: newobj    <GLib.GType:.ctor (intptr)>
IL_000a: stsfld    <Gtk.WindowTypeAttribute:_gtype>
IL_000f: ret       
// (wrapper managed-to-native) Gtk.WindowTypeAttribute:gtk_window_type_get_type ()
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: mono_ldptr3
IL_0012: calli     <>
IL_0017: ldloc.s   5
IL_0019: ldloca.s  4
IL_001b: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0021: stloc.3   
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ldloc.3   
IL_003b: ret       
// (wrapper runtime-invoke) object:runtime_invoke_void__this__ (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0035
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.0   
IL_001f: ldarg.3   
IL_0020: calli     <>
IL_0025: leave     IL_0033
IL_002a: stloc.1   
IL_002b: ldarg.2   
IL_002c: ldloc.1   
IL_002d: stind.ref 
IL_002e: leave     IL_0033
IL_0033: ldloc.0   
IL_0034: ret       
IL_0035: mono_ldptr_int_req_flag
IL_0037: ldind.u4  
IL_0038: brfalse   IL_004d
IL_003d: mono_not_taken
IL_003f: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0045: dup       
IL_0046: brfalse   IL_004c
IL_004b: throw     
IL_004c: pop       
IL_004d: ldarg.0   
IL_004e: ldarg.3   
IL_004f: calli     <>
IL_0054: ldloc.0   
IL_0055: ret       
// (wrapper managed-to-native) System.RuntimeTypeHandle:IsArray (System.RuntimeType)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldloca.s  2
IL_0014: mono_ldptr4
IL_001a: calli     <RuntimeType&,intptr>
IL_001f: ldloc.0   
IL_0020: ldloca.s  1
IL_0022: ldloca.s  2
IL_0024: mono_icall <mono_icall_end>
IL_002a: mono_ldptr_int_req_flag
IL_002c: ldind.u4  
IL_002d: brfalse   IL_0042
IL_0032: mono_not_taken
IL_0034: mono_icall <mono_thread_interruption_checkpoint>
IL_003a: dup       
IL_003b: brfalse   IL_0041
IL_0040: throw     
IL_0041: pop       
IL_0042: ret       
// (wrapper managed-to-native) System.RuntimeTypeHandle:IsByRef (System.RuntimeType)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldloca.s  2
IL_0014: mono_ldptr4
IL_001a: calli     <RuntimeType&,intptr>
IL_001f: ldloc.0   
IL_0020: ldloca.s  1
IL_0022: ldloca.s  2
IL_0024: mono_icall <mono_icall_end>
IL_002a: mono_ldptr_int_req_flag
IL_002c: ldind.u4  
IL_002d: brfalse   IL_0042
IL_0032: mono_not_taken
IL_0034: mono_icall <mono_thread_interruption_checkpoint>
IL_003a: dup       
IL_003b: brfalse   IL_0041
IL_0040: throw     
IL_0041: pop       
IL_0042: ret       
// (wrapper managed-to-native) System.RuntimeTypeHandle:IsPointer (System.RuntimeType)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldloca.s  2
IL_0014: mono_ldptr4
IL_001a: calli     <RuntimeType&,intptr>
IL_001f: ldloc.0   
IL_0020: ldloca.s  1
IL_0022: ldloca.s  2
IL_0024: mono_icall <mono_icall_end>
IL_002a: mono_ldptr_int_req_flag
IL_002c: ldind.u4  
IL_002d: brfalse   IL_0042
IL_0032: mono_not_taken
IL_0034: mono_icall <mono_thread_interruption_checkpoint>
IL_003a: dup       
IL_003b: brfalse   IL_0041
IL_0040: throw     
IL_0041: pop       
IL_0042: ret       
// (wrapper managed-to-native) System.Array:CreateInstanceImpl (System.Type,int[],int[])
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldarg.1   
IL_0013: mono_icall <mono_icall_handle_new>
IL_0019: ldarg.2   
IL_001a: mono_icall <mono_icall_handle_new>
IL_0020: ldloca.s  2
IL_0022: mono_ldptr6
IL_0028: calli     <Type&,int[]&,int[]&,intptr>
IL_002d: dup       
IL_002e: brfalse   IL_0036
IL_0033: mono_objaddr
IL_0035: ldind.ref 
IL_0036: ldloc.0   
IL_0037: ldloca.s  1
IL_0039: ldloca.s  2
IL_003b: mono_icall <mono_icall_end>
IL_0041: mono_ldptr_int_req_flag
IL_0043: ldind.u4  
IL_0044: brfalse   IL_0059
IL_0049: mono_not_taken
IL_004b: mono_icall <mono_thread_interruption_checkpoint>
IL_0051: dup       
IL_0052: brfalse   IL_0058
IL_0057: throw     
IL_0058: pop       
IL_0059: ret       
// Gtk.WindowTypeAttribute:get_Type ()
IL_0000: ldsfld    <Gtk.WindowTypeAttribute:_gtype>
IL_0005: ret       
// (wrapper managed-to-native) GLib.Value:g_value_init (GLib.Value&,intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: ldarg.0   
IL_000d: ldarg.1   
IL_000e: mono_ldptr3
IL_0014: calli     <Value&,intptr>
IL_0019: ldloc.s   4
IL_001b: ldloca.s  3
IL_001d: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0023: mono_ldptr_int_req_flag
IL_0025: ldind.u4  
IL_0026: brfalse   IL_003b
IL_002b: mono_not_taken
IL_002d: mono_icall <mono_thread_interruption_checkpoint>
IL_0033: dup       
IL_0034: brfalse   IL_003a
IL_0039: throw     
IL_003a: pop       
IL_003b: ret       
// GLib.Value:set_Val (object)
IL_0000: ldarg.0   
IL_0001: ldfld     <GLib.Value:type>
IL_0006: ldsfld    <GLib.GType:Boolean>
IL_000b: stloc.0   
IL_000c: ldloca.s  0
IL_000e: call      <GLib.GType:get_Val ()>
IL_0013: call      <intptr:op_Equality (intptr,intptr)>
IL_0018: brfalse   IL_002e
IL_001d: ldarg.0   
IL_001e: ldarg.1   
IL_001f: unbox.any <0x0100003a>
IL_0024: call      <GLib.Value:g_value_set_boolean (GLib.Value&,bool)>
IL_0029: br        IL_041d
IL_002e: ldarg.0   
IL_002f: ldfld     <GLib.Value:type>
IL_0034: ldsfld    <GLib.GType:UChar>
IL_0039: stloc.1   
IL_003a: ldloca.s  1
IL_003c: call      <GLib.GType:get_Val ()>
IL_0041: call      <intptr:op_Equality (intptr,intptr)>
IL_0046: brfalse   IL_005c
IL_004b: ldarg.0   
IL_004c: ldarg.1   
IL_004d: unbox.any <0x01000039>
IL_0052: call      <GLib.Value:g_value_set_uchar (GLib.Value&,byte)>
IL_0057: br        IL_041d
IL_005c: ldarg.0   
IL_005d: ldfld     <GLib.Value:type>
IL_0062: ldsfld    <GLib.GType:Char>
IL_0067: stloc.2   
IL_0068: ldloca.s  2
IL_006a: call      <GLib.GType:get_Val ()>
IL_006f: call      <intptr:op_Equality (intptr,intptr)>
IL_0074: brfalse   IL_008a
IL_0079: ldarg.0   
IL_007a: ldarg.1   
IL_007b: unbox.any <0x01000038>
IL_0080: call      <GLib.Value:g_value_set_char (GLib.Value&,sbyte)>
IL_0085: br        IL_041d
IL_008a: ldarg.0   
IL_008b: ldfld     <GLib.Value:type>
IL_0090: ldsfld    <GLib.GType:Int>
IL_0095: stloc.3   
IL_0096: ldloca.s  3
IL_0098: call      <GLib.GType:get_Val ()>
IL_009d: call      <intptr:op_Equality (intptr,intptr)>
IL_00a2: brfalse   IL_00b8
IL_00a7: ldarg.0   
IL_00a8: ldarg.1   
IL_00a9: unbox.any <0x0100001e>
IL_00ae: call      <GLib.Value:g_value_set_int (GLib.Value&,int)>
IL_00b3: br        IL_041d
IL_00b8: ldarg.0   
IL_00b9: ldfld     <GLib.Value:type>
IL_00be: ldsfld    <GLib.GType:UInt>
IL_00c3: stloc.s   4
IL_00c5: ldloca.s  4
IL_00c7: call      <GLib.GType:get_Val ()>
IL_00cc: call      <intptr:op_Equality (intptr,intptr)>
IL_00d1: brfalse   IL_00e7
IL_00d6: ldarg.0   
IL_00d7: ldarg.1   
IL_00d8: unbox.any <0x0100003b>
IL_00dd: call      <GLib.Value:g_value_set_uint (GLib.Value&,uint)>
IL_00e2: br        IL_041d
IL_00e7: ldarg.0   
IL_00e8: ldfld     <GLib.Value:type>
IL_00ed: ldsfld    <GLib.GType:Int64>
IL_00f2: stloc.s   5
IL_00f4: ldloca.s  5
IL_00f6: call      <GLib.GType:get_Val ()>
IL_00fb: call      <intptr:op_Equality (intptr,intptr)>
IL_0100: brfalse   IL_0116
IL_0105: ldarg.0   
IL_0106: ldarg.1   
IL_0107: unbox.any <0x0100003c>
IL_010c: call      <GLib.Value:g_value_set_int64 (GLib.Value&,long)>
IL_0111: br        IL_041d
IL_0116: ldarg.0   
IL_0117: ldfld     <GLib.Value:type>
IL_011c: ldsfld    <GLib.GType:UInt64>
IL_0121: stloc.s   6
IL_0123: ldloca.s  6
IL_0125: call      <GLib.GType:get_Val ()>
IL_012a: call      <intptr:op_Equality (intptr,intptr)>
IL_012f: brfalse   IL_0145
IL_0134: ldarg.0   
IL_0135: ldarg.1   
IL_0136: unbox.any <0x0100003d>
IL_013b: call      <GLib.Value:g_value_set_uint64 (GLib.Value&,ulong)>
IL_0140: br        IL_041d
IL_0145: ldarg.0   
IL_0146: ldfld     <GLib.Value:type>
IL_014b: ldsfld    <GLib.GType:Enum>
IL_0150: stloc.s   7
IL_0152: ldloca.s  7
IL_0154: call      <GLib.GType:get_Val ()>
IL_0159: call      <GLib.Value:g_type_is_a (intptr,intptr)>
IL_015e: brfalse   IL_0174
IL_0163: ldarg.0   
IL_0164: ldarg.1   
IL_0165: unbox.any <0x0100001e>
IL_016a: call      <GLib.Value:g_value_set_enum (GLib.Value&,int)>
IL_016f: br        IL_041d
IL_0174: ldarg.0   
IL_0175: ldfld     <GLib.Value:type>
IL_017a: ldsfld    <GLib.GType:Flags>
IL_017f: stloc.s   8
IL_0181: ldloca.s  8
IL_0183: call      <GLib.GType:get_Val ()>
IL_0188: call      <GLib.Value:g_type_is_a (intptr,intptr)>
IL_018d: brfalse   IL_01a3
IL_0192: ldarg.0   
IL_0193: ldarg.1   
IL_0194: unbox.any <0x0100001e>
IL_0199: call      <GLib.Value:g_value_set_flags (GLib.Value&,uint)>
IL_019e: br        IL_041d
IL_01a3: ldarg.0   
IL_01a4: ldfld     <GLib.Value:type>
IL_01a9: ldsfld    <GLib.GType:Float>
IL_01ae: stloc.s   9
IL_01b0: ldloca.s  9
IL_01b2: call      <GLib.GType:get_Val ()>
IL_01b7: call      <intptr:op_Equality (intptr,intptr)>
IL_01bc: brfalse   IL_01d2
IL_01c1: ldarg.0   
IL_01c2: ldarg.1   
IL_01c3: unbox.any <0x0100003e>
IL_01c8: call      <GLib.Value:g_value_set_float (GLib.Value&,single)>
IL_01cd: br        IL_041d
IL_01d2: ldarg.0   
IL_01d3: ldfld     <GLib.Value:type>
IL_01d8: ldsfld    <GLib.GType:Double>
IL_01dd: stloc.s   10
IL_01df: ldloca.s  10
IL_01e1: call      <GLib.GType:get_Val ()>
IL_01e6: call      <intptr:op_Equality (intptr,intptr)>
IL_01eb: brfalse   IL_0201
IL_01f0: ldarg.0   
IL_01f1: ldarg.1   
IL_01f2: unbox.any <0x0100003f>
IL_01f7: call      <GLib.Value:g_value_set_double (GLib.Value&,double)>
IL_01fc: br        IL_041d
IL_0201: ldarg.0   
IL_0202: ldfld     <GLib.Value:type>
IL_0207: ldsfld    <GLib.GType:String>
IL_020c: stloc.s   11
IL_020e: ldloca.s  11
IL_0210: call      <GLib.GType:get_Val ()>
IL_0215: call      <intptr:op_Equality (intptr,intptr)>
IL_021a: brfalse   IL_0240
IL_021f: ldarg.1   
IL_0220: castclass <String>
IL_0225: call      <GLib.Marshaller:StringToPtrGStrdup (string)>
IL_022a: stloc.s   12
IL_022c: ldarg.0   
IL_022d: ldloc.s   12
IL_022f: call      <GLib.Value:g_value_set_string (GLib.Value&,intptr)>
IL_0234: ldloc.s   12
IL_0236: call      <GLib.Marshaller:Free (intptr)>
IL_023b: br        IL_041d
IL_0240: ldarg.0   
IL_0241: ldfld     <GLib.Value:type>
IL_0246: ldsfld    <GLib.GType:Pointer>
IL_024b: stloc.s   13
IL_024d: ldloca.s  13
IL_024f: call      <GLib.GType:get_Val ()>
IL_0254: call      <intptr:op_Equality (intptr,intptr)>
IL_0259: brfalse   IL_02de
IL_025e: ldarg.1   
IL_025f: isinst    <IntPtr>
IL_0264: brfalse   IL_0276
IL_0269: ldarg.0   
IL_026a: ldarg.1   
IL_026b: unbox.any <0x01000016>
IL_0270: call      <GLib.Value:g_value_set_pointer (GLib.Value&,intptr)>
IL_0275: ret       
IL_0276: ldarg.1   
IL_0277: isinst    <IWrapper>
IL_027c: brfalse   IL_0293
IL_0281: ldarg.0   
IL_0282: ldarg.1   
IL_0283: castclass <IWrapper>
IL_0288: callvirt  <GLib.IWrapper:get_Handle ()>
IL_028d: call      <GLib.Value:g_value_set_pointer (GLib.Value&,intptr)>
IL_0292: ret       
IL_0293: ldarg.1   
IL_0294: call      <GLib.ManagedValue:WrapObject (object)>
IL_0299: stloc.s   14
IL_029b: ldarg.0   
IL_029c: ldfld     <GLib.Value:type>
IL_02a1: ldsfld    <System.IntPtr:Zero>
IL_02a6: call      <intptr:op_Inequality (intptr,intptr)>
IL_02ab: brfalse   IL_02b6
IL_02b0: ldarg.0   
IL_02b1: call      <GLib.Value:g_value_unset (GLib.Value&)>
IL_02b6: ldarg.0   
IL_02b7: call      <GLib.ManagedValue:get_GType ()>
IL_02bc: stloc.s   15
IL_02be: ldloca.s  15
IL_02c0: call      <GLib.GType:get_Val ()>
IL_02c5: call      <GLib.Value:g_value_init (GLib.Value&,intptr)>
IL_02ca: ldarg.0   
IL_02cb: ldloc.s   14
IL_02cd: call      <GLib.Value:g_value_set_boxed (GLib.Value&,intptr)>
IL_02d2: ldloc.s   14
IL_02d4: call      <GLib.ManagedValue:ReleaseWrapper (intptr)>
IL_02d9: br        IL_041d
IL_02de: ldarg.0   
IL_02df: ldfld     <GLib.Value:type>
IL_02e4: ldsfld    <GLib.GType:Param>
IL_02e9: stloc.s   16
IL_02eb: ldloca.s  16
IL_02ed: call      <GLib.GType:get_Val ()>
IL_02f2: call      <intptr:op_Equality (intptr,intptr)>
IL_02f7: brfalse   IL_030d
IL_02fc: ldarg.0   
IL_02fd: ldarg.1   
IL_02fe: unbox.any <0x01000016>
IL_0303: call      <GLib.Value:g_value_set_param (GLib.Value&,intptr)>
IL_0308: br        IL_041d
IL_030d: ldarg.0   
IL_030e: ldfld     <GLib.Value:type>
IL_0313: call      <GLib.ManagedValue:get_GType ()>
IL_0318: stloc.s   17
IL_031a: ldloca.s  17
IL_031c: call      <GLib.GType:get_Val ()>
IL_0321: call      <intptr:op_Equality (intptr,intptr)>
IL_0326: brfalse   IL_0347
IL_032b: ldarg.1   
IL_032c: call      <GLib.ManagedValue:WrapObject (object)>
IL_0331: stloc.s   18
IL_0333: ldarg.0   
IL_0334: ldloc.s   18
IL_0336: call      <GLib.Value:g_value_set_boxed (GLib.Value&,intptr)>
IL_033b: ldloc.s   18
IL_033d: call      <GLib.ManagedValue:ReleaseWrapper (intptr)>
IL_0342: br        IL_041d
IL_0347: ldarg.0   
IL_0348: ldfld     <GLib.Value:type>
IL_034d: ldsfld    <GLib.GType:Object>
IL_0352: stloc.s   19
IL_0354: ldloca.s  19
IL_0356: call      <GLib.GType:get_Val ()>
IL_035b: call      <GLib.Value:g_type_is_a (intptr,intptr)>
IL_0360: brfalse   IL_039c
IL_0365: ldarg.1   
IL_0366: isinst    <Object>
IL_036b: brfalse   IL_0386
IL_0370: ldarg.0   
IL_0371: ldarg.1   
IL_0372: isinst    <Object>
IL_0377: callvirt  <GLib.Object:get_Handle ()>
IL_037c: call      <GLib.Value:g_value_set_object (GLib.Value&,intptr)>
IL_0381: br        IL_0397
IL_0386: ldarg.0   
IL_0387: ldarg.1   
IL_0388: isinst    <GInterfaceAdapter>
IL_038d: callvirt  <GLib.GInterfaceAdapter:get_Handle ()>
IL_0392: call      <GLib.Value:g_value_set_object (GLib.Value&,intptr)>
IL_0397: br        IL_041d
IL_039c: ldarg.0   
IL_039d: ldfld     <GLib.Value:type>
IL_03a2: ldsfld    <GLib.GType:Boxed>
IL_03a7: stloc.s   20
IL_03a9: ldloca.s  20
IL_03ab: call      <GLib.GType:get_Val ()>
IL_03b0: call      <GLib.Value:g_type_is_a (intptr,intptr)>
IL_03b5: brfalse   IL_03f3
IL_03ba: ldarg.1   
IL_03bb: isinst    <IWrapper>
IL_03c0: brfalse   IL_03d7
IL_03c5: ldarg.0   
IL_03c6: ldarg.1   
IL_03c7: castclass <IWrapper>
IL_03cc: callvirt  <GLib.IWrapper:get_Handle ()>
IL_03d1: call      <GLib.Value:g_value_set_boxed (GLib.Value&,intptr)>
IL_03d6: ret       
IL_03d7: ldarg.1   
IL_03d8: call      <GLib.Marshaller:StructureToPtrAlloc (object)>
IL_03dd: stloc.s   21
IL_03df: ldarg.0   
IL_03e0: ldloc.s   21
IL_03e2: call      <GLib.Value:g_value_set_boxed (GLib.Value&,intptr)>
IL_03e7: ldloc.s   21
IL_03e9: call      <System.Runtime.InteropServices.Marshal:FreeHGlobal (intptr)>
IL_03ee: br        IL_041d
IL_03f3: ldstr     "Unknown type "
IL_03f8: ldloca.s  22
IL_03fa: ldarg.0   
IL_03fb: ldfld     <GLib.Value:type>
IL_0400: call      <GLib.GType:.ctor (intptr)>
IL_0405: ldloca.s  22
IL_0407: constrained.<0x0200001e>
IL_040d: callvirt  <object:ToString ()>
IL_0412: call      <string:Concat (string,string)>
IL_0417: newobj    <System.Exception:.ctor (string)>
IL_041c: throw     
IL_041d: ret       
// (wrapper managed-to-native) GLib.Value:g_type_is_a (intptr,intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: ldarg.0   
IL_000d: ldarg.1   
IL_000e: mono_ldptr3
IL_0014: calli     <intptr,intptr>
IL_0019: ldloc.s   5
IL_001b: ldloca.s  4
IL_001d: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0023: stloc.3   
IL_0024: mono_ldptr_int_req_flag
IL_0026: ldind.u4  
IL_0027: brfalse   IL_003c
IL_002c: mono_not_taken
IL_002e: mono_icall <mono_thread_interruption_checkpoint>
IL_0034: dup       
IL_0035: brfalse   IL_003b
IL_003a: throw     
IL_003b: pop       
IL_003c: ldloc.3   
IL_003d: ret       
// (wrapper managed-to-native) GLib.Value:g_value_set_enum (GLib.Value&,int)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: ldarg.0   
IL_000d: ldarg.1   
IL_000e: mono_ldptr3
IL_0014: calli     <Value&,int>
IL_0019: ldloc.s   4
IL_001b: ldloca.s  3
IL_001d: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0023: mono_ldptr_int_req_flag
IL_0025: ldind.u4  
IL_0026: brfalse   IL_003b
IL_002b: mono_not_taken
IL_002d: mono_icall <mono_thread_interruption_checkpoint>
IL_0033: dup       
IL_0034: brfalse   IL_003a
IL_0039: throw     
IL_003a: pop       
IL_003b: ret       
// GLib.Object:CreateNativeObject (intptr[],GLib.Value[],int)
IL_0000: ldarg.0   
IL_0001: ldc.i4.1  
IL_0002: stfld     <GLib.Object:owned>
IL_0007: ldarg.0   
IL_0008: ldarg.0   
IL_0009: call      <GLib.Object:LookupGType ()>
IL_000e: stloc.0   
IL_000f: ldloca.s  0
IL_0011: call      <GLib.GType:get_Val ()>
IL_0016: ldarg.3   
IL_0017: ldarg.1   
IL_0018: ldarg.2   
IL_0019: call      <GLib.Object:gtksharp_object_newv (intptr,int,intptr[],GLib.Value[])>
IL_001e: callvirt  <GLib.Object:set_Raw (intptr)>
IL_0023: ldc.i4.0  
IL_0024: stloc.1   
IL_0025: br        IL_0042
IL_002a: ldarg.1   
IL_002b: ldloc.1   
IL_002c: ldelem.i  
IL_002d: call      <GLib.Marshaller:Free (intptr)>
IL_0032: ldarg.2   
IL_0033: ldloc.1   
IL_0034: ldelema   <Value>
IL_0039: call      <GLib.Value:Dispose ()>
IL_003e: ldloc.1   
IL_003f: ldc.i4.1  
IL_0040: add       
IL_0041: stloc.1   
IL_0042: ldloc.1   
IL_0043: ldarg.3   
IL_0044: blt       IL_002a
IL_0049: ret       
// GLib.Object:LookupGType ()
IL_0000: ldarg.0   
IL_0001: call      <object:GetType ()>
IL_0006: call      <GLib.Object:LookupGType (System.Type)>
IL_000b: ret       
// GLib.Object:LookupGType (System.Type)
IL_0000: ldsfld    <GLib.Object:g_types>
IL_0005: ldarg.0   
IL_0006: ldloca.s  0
IL_0008: callvirt  <System.Collections.Generic.Dictionary`2<System.Type, GLib.GType>:TryGetValue (System.Type,GLib.GType&)>
IL_000d: brfalse   IL_0014
IL_0012: ldloc.0   
IL_0013: ret       
IL_0014: ldarg.0   
IL_0015: ldtoken   <0x02000020>
IL_001a: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_001f: ldc.i4.0  
IL_0020: call      <System.Attribute:GetCustomAttribute (System.Reflection.MemberInfo,System.Type,bool)>
IL_0025: castclass <GTypeTypeAttribute>
IL_002a: dup       
IL_002b: stloc.1   
IL_002c: brfalse   IL_0046
IL_0031: ldloc.1   
IL_0032: callvirt  <GLib.GTypeTypeAttribute:get_Type ()>
IL_0037: stloc.2   
IL_0038: ldsfld    <GLib.Object:g_types>
IL_003d: ldarg.0   
IL_003e: ldloc.2   
IL_003f: callvirt  <System.Collections.Generic.Dictionary`2<System.Type, GLib.GType>:set_Item (System.Type,GLib.GType)>
IL_0044: ldloc.2   
IL_0045: ret       
IL_0046: ldarg.0   
IL_0047: ldstr     "GType"
IL_004c: ldc.i4.s  26
IL_004e: callvirt  <System.Type:GetProperty (string,System.Reflection.BindingFlags)>
IL_0053: stloc.3   
IL_0054: ldloc.3   
IL_0055: ldnull    
IL_0056: call      <System.Reflection.PropertyInfo:op_Inequality (System.Reflection.PropertyInfo,System.Reflection.PropertyInfo)>
IL_005b: brfalse   IL_007f
IL_0060: ldloc.3   
IL_0061: ldnull    
IL_0062: ldnull    
IL_0063: callvirt  <System.Reflection.PropertyInfo:GetValue (object,object[])>
IL_0068: unbox.any <0x0200001e>
IL_006d: stloc.s   4
IL_006f: ldsfld    <GLib.Object:g_types>
IL_0074: ldarg.0   
IL_0075: ldloc.s   4
IL_0077: callvirt  <System.Collections.Generic.Dictionary`2<System.Type, GLib.GType>:set_Item (System.Type,GLib.GType)>
IL_007c: ldloc.s   4
IL_007e: ret       
IL_007f: ldarg.0   
IL_0080: call      <GLib.Object:RegisterGType (System.Type)>
IL_0085: ret       
// (wrapper managed-to-native) System.RuntimeTypeHandle:GetElementType (System.RuntimeType)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldloca.s  2
IL_0014: mono_ldptr4
IL_001a: calli     <RuntimeType&,intptr>
IL_001f: dup       
IL_0020: brfalse   IL_0028
IL_0025: mono_objaddr
IL_0027: ldind.ref 
IL_0028: ldloc.0   
IL_0029: ldloca.s  1
IL_002b: ldloca.s  2
IL_002d: mono_icall <mono_icall_end>
IL_0033: mono_ldptr_int_req_flag
IL_0035: ldind.u4  
IL_0036: brfalse   IL_004b
IL_003b: mono_not_taken
IL_003d: mono_icall <mono_thread_interruption_checkpoint>
IL_0043: dup       
IL_0044: brfalse   IL_004a
IL_0049: throw     
IL_004a: pop       
IL_004b: ret       
// (wrapper managed-to-native) System.RuntimeType:GetPropertiesByName_native (System.RuntimeType,intptr,System.Reflection.BindingFlags,System.RuntimeType/MemberListType)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldloca.s  1
IL_000e: ldloca.s  2
IL_0010: mono_icall <mono_icall_start>
IL_0016: stloc.0   
IL_0017: ldarg.0   
IL_0018: mono_icall <mono_icall_handle_new>
IL_001e: ldarg.1   
IL_001f: ldarg.2   
IL_0020: ldarg.3   
IL_0021: ldloca.s  2
IL_0023: mono_ldptr5
IL_0029: calli     <RuntimeType&,intptr,BindingFlags,RuntimeType/MemberListType,intptr>
IL_002e: ldloc.0   
IL_002f: ldloca.s  1
IL_0031: ldloca.s  2
IL_0033: mono_icall <mono_icall_end>
IL_0039: mono_ldptr_int_req_flag
IL_003b: ldind.u4  
IL_003c: brfalse   IL_0051
IL_0041: mono_not_taken
IL_0043: mono_icall <mono_thread_interruption_checkpoint>
IL_0049: dup       
IL_004a: brfalse   IL_0050
IL_004f: throw     
IL_0050: pop       
IL_0051: ret       
// GLib.Object:RegisterGType (System.Type)
IL_0000: ldarg.0   
IL_0001: callvirt  <System.Type:get_BaseType ()>
IL_0006: call      <GLib.Object:LookupGType (System.Type)>
IL_000b: stloc.0   
IL_000c: ldarg.0   
IL_000d: call      <GLib.Object:BuildEscapedName (System.Type)>
IL_0012: stloc.1   
IL_0013: ldloc.1   
IL_0014: call      <GLib.Marshaller:StringToPtrGStrdup (string)>
IL_0019: stloc.2   
IL_001a: ldloca.s  3
IL_001c: ldloc.2   
IL_001d: ldloca.s  0
IL_001f: call      <GLib.GType:get_Val ()>
IL_0024: call      <GLib.Object:gtksharp_register_type (intptr,intptr)>
IL_0029: call      <GLib.GType:.ctor (intptr)>
IL_002e: ldloc.2   
IL_002f: call      <GLib.Marshaller:Free (intptr)>
IL_0034: ldloc.3   
IL_0035: ldarg.0   
IL_0036: call      <GLib.GType:Register (GLib.GType,System.Type)>
IL_003b: ldloc.3   
IL_003c: ldarg.0   
IL_003d: call      <GLib.Object:AddProperties (GLib.GType,System.Type)>
IL_0042: ldloc.3   
IL_0043: ldarg.0   
IL_0044: call      <GLib.Object:ConnectDefaultHandlers (GLib.GType,System.Type)>
IL_0049: ldloc.3   
IL_004a: ldarg.0   
IL_004b: call      <GLib.Object:InvokeClassInitializers (GLib.GType,System.Type)>
IL_0050: ldloc.3   
IL_0051: ldarg.0   
IL_0052: call      <GLib.Object:AddInterfaces (GLib.GType,System.Type)>
IL_0057: ldsfld    <GLib.Object:g_types>
IL_005c: ldarg.0   
IL_005d: ldloc.3   
IL_005e: callvirt  <System.Collections.Generic.Dictionary`2<System.Type, GLib.GType>:set_Item (System.Type,GLib.GType)>
IL_0063: ldloc.3   
IL_0064: ret       
// Gtk.WindowAttribute:.ctor ()
IL_0000: ldarg.0   
IL_0001: call      <GLib.GTypeTypeAttribute:.ctor ()>
IL_0006: ret       
// Gtk.WindowAttribute:.cctor ()
IL_0000: call      <Gtk.WindowAttribute:gtk_window_get_type ()>
IL_0005: newobj    <GLib.GType:.ctor (intptr)>
IL_000a: stsfld    <Gtk.WindowAttribute:_gtype>
IL_000f: ret       
// (wrapper managed-to-native) Gtk.WindowAttribute:gtk_window_get_type ()
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: mono_ldptr3
IL_0012: calli     <>
IL_0017: ldloc.s   5
IL_0019: ldloca.s  4
IL_001b: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0021: stloc.3   
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ldloc.3   
IL_003b: ret       
// Gtk.WindowAttribute:get_Type ()
IL_0000: ldsfld    <Gtk.WindowAttribute:_gtype>
IL_0005: ret       
// GLib.Object:BuildEscapedName (System.Type)
IL_0000: ldarg.0   
IL_0001: callvirt  <System.Type:get_FullName ()>
IL_0006: stloc.0   
IL_0007: ldc.i4.s  20
IL_0009: ldloc.0   
IL_000a: callvirt  <string:get_Length ()>
IL_000f: add       
IL_0010: newobj    <System.Text.StringBuilder:.ctor (int)>
IL_0015: stloc.1   
IL_0016: ldloc.1   
IL_0017: ldstr     "__gtksharp_"
IL_001c: callvirt  <System.Text.StringBuilder:Append (string)>
IL_0021: pop       
IL_0022: ldloc.1   
IL_0023: ldsfld    <GLib.Object:type_uid>
IL_0028: dup       
IL_0029: ldc.i4.1  
IL_002a: add       
IL_002b: stsfld    <GLib.Object:type_uid>
IL_0030: callvirt  <System.Text.StringBuilder:Append (int)>
IL_0035: pop       
IL_0036: ldloc.1   
IL_0037: ldstr     "_"
IL_003c: callvirt  <System.Text.StringBuilder:Append (string)>
IL_0041: pop       
IL_0042: ldloc.0   
IL_0043: stloc.3   
IL_0044: ldc.i4.0  
IL_0045: stloc.s   4
IL_0047: br        IL_00fd
IL_004c: ldloc.3   
IL_004d: ldloc.s   4
IL_004f: callvirt  <string:get_Chars (int)>
IL_0054: stloc.2   
IL_0055: ldloc.2   
IL_0056: ldc.i4.s  48
IL_0058: blt       IL_0065
IL_005d: ldloc.2   
IL_005e: ldc.i4.s  57
IL_0060: ble       IL_0085
IL_0065: ldloc.2   
IL_0066: ldc.i4.s  97
IL_0068: blt       IL_0075
IL_006d: ldloc.2   
IL_006e: ldc.i4.s  122
IL_0070: ble       IL_0085
IL_0075: ldloc.2   
IL_0076: ldc.i4.s  65
IL_0078: blt       IL_0092
IL_007d: ldloc.2   
IL_007e: ldc.i4.s  90
IL_0080: bgt       IL_0092
IL_0085: ldloc.1   
IL_0086: ldloc.2   
IL_0087: callvirt  <System.Text.StringBuilder:Append (char)>
IL_008c: pop       
IL_008d: br        IL_00f7
IL_0092: ldloc.2   
IL_0093: ldc.i4.s  46
IL_0095: bne.un    IL_00a8
IL_009a: ldloc.1   
IL_009b: ldc.i4.s  95
IL_009d: callvirt  <System.Text.StringBuilder:Append (char)>
IL_00a2: pop       
IL_00a3: br        IL_00f7
IL_00a8: ldloc.2   
IL_00a9: ldc.i4    255
IL_00ae: bgt.un    IL_00d8
IL_00b3: ldloc.1   
IL_00b4: ldc.i4.s  43
IL_00b6: callvirt  <System.Text.StringBuilder:Append (char)>
IL_00bb: pop       
IL_00bc: ldloc.1   
IL_00bd: ldloc.2   
IL_00be: conv.u1   
IL_00bf: stloc.s   5
IL_00c1: ldloca.s  5
IL_00c3: ldstr     "x2"
IL_00c8: call      <byte:ToString (string)>
IL_00cd: callvirt  <System.Text.StringBuilder:Append (string)>
IL_00d2: pop       
IL_00d3: br        IL_00f7
IL_00d8: ldloc.1   
IL_00d9: ldc.i4.s  45
IL_00db: callvirt  <System.Text.StringBuilder:Append (char)>
IL_00e0: pop       
IL_00e1: ldloc.1   
IL_00e2: ldloc.2   
IL_00e3: stloc.s   6
IL_00e5: ldloca.s  6
IL_00e7: ldstr     "x4"
IL_00ec: call      <uint:ToString (string)>
IL_00f1: callvirt  <System.Text.StringBuilder:Append (string)>
IL_00f6: pop       
IL_00f7: ldloc.s   4
IL_00f9: ldc.i4.1  
IL_00fa: add       
IL_00fb: stloc.s   4
IL_00fd: ldloc.s   4
IL_00ff: ldloc.3   
IL_0100: callvirt  <string:get_Length ()>
IL_0105: blt       IL_004c
IL_010a: ldloc.1   
IL_010b: callvirt  <object:ToString ()>
IL_0110: ret       
// (wrapper managed-to-native) System.RuntimeType:getFullName (System.RuntimeType,bool,bool)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldloca.s  1
IL_000e: ldloca.s  2
IL_0010: mono_icall <mono_icall_start>
IL_0016: stloc.0   
IL_0017: ldarg.0   
IL_0018: mono_icall <mono_icall_handle_new>
IL_001e: ldarg.1   
IL_001f: ldarg.2   
IL_0020: ldloca.s  2
IL_0022: mono_ldptr5
IL_0028: calli     <RuntimeType&,bool,bool,intptr>
IL_002d: dup       
IL_002e: brfalse   IL_0036
IL_0033: mono_objaddr
IL_0035: ldind.ref 
IL_0036: ldloc.0   
IL_0037: ldloca.s  1
IL_0039: ldloca.s  2
IL_003b: mono_icall <mono_icall_end>
IL_0041: mono_ldptr_int_req_flag
IL_0043: ldind.u4  
IL_0044: brfalse   IL_0059
IL_0049: mono_not_taken
IL_004b: mono_icall <mono_thread_interruption_checkpoint>
IL_0051: dup       
IL_0052: brfalse   IL_0058
IL_0057: throw     
IL_0058: pop       
IL_0059: ret       
// (wrapper managed-to-native) System.Globalization.CultureInfo:get_current_locale_name ()
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldloca.s  2
IL_000d: mono_ldptr3
IL_0013: calli     <intptr>
IL_0018: dup       
IL_0019: brfalse   IL_0021
IL_001e: mono_objaddr
IL_0020: ldind.ref 
IL_0021: ldloc.0   
IL_0022: ldloca.s  1
IL_0024: ldloca.s  2
IL_0026: mono_icall <mono_icall_end>
IL_002c: mono_ldptr_int_req_flag
IL_002e: ldind.u4  
IL_002f: brfalse   IL_0044
IL_0034: mono_not_taken
IL_0036: mono_icall <mono_thread_interruption_checkpoint>
IL_003c: dup       
IL_003d: brfalse   IL_0043
IL_0042: throw     
IL_0043: pop       
IL_0044: ret       
// (wrapper managed-to-native) System.Globalization.CultureInfo:construct_internal_locale_from_name (System.Globalization.CultureInfo,string)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldarg.0   
IL_000d: ldarg.1   
IL_000e: mono_ldptr3
IL_0014: calli     <CultureInfo,string>
IL_0019: mono_ldptr_int_req_flag
IL_001b: ldind.u4  
IL_001c: brfalse   IL_0031
IL_0021: mono_not_taken
IL_0023: mono_icall <mono_thread_interruption_checkpoint>
IL_0029: dup       
IL_002a: brfalse   IL_0030
IL_002f: throw     
IL_0030: pop       
IL_0031: ret       
// (wrapper managed-to-native) System.Globalization.CultureData:fill_culture_data (System.Globalization.CultureData,int)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldarg.0   
IL_000d: ldarg.1   
IL_000e: mono_ldptr3
IL_0014: calli     <CultureData,int>
IL_0019: mono_ldptr_int_req_flag
IL_001b: ldind.u4  
IL_001c: brfalse   IL_0031
IL_0021: mono_not_taken
IL_0023: mono_icall <mono_thread_interruption_checkpoint>
IL_0029: dup       
IL_002a: brfalse   IL_0030
IL_002f: throw     
IL_0030: pop       
IL_0031: ret       
// (wrapper managed-to-native) GLib.Object:gtksharp_register_type (intptr,intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: ldarg.0   
IL_000d: ldarg.1   
IL_000e: mono_ldptr3
IL_0014: calli     <intptr,intptr>
IL_0019: ldloc.s   5
IL_001b: ldloca.s  4
IL_001d: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0023: stloc.3   
IL_0024: mono_ldptr_int_req_flag
IL_0026: ldind.u4  
IL_0027: brfalse   IL_003c
IL_002c: mono_not_taken
IL_002e: mono_icall <mono_thread_interruption_checkpoint>
IL_0034: dup       
IL_0035: brfalse   IL_003b
IL_003a: throw     
IL_003b: pop       
IL_003c: ldloc.3   
IL_003d: ret       
// GLib.Object:AddProperties (GLib.GType,System.Type)
IL_0000: ldc.i4.1  
IL_0001: stloc.0   
IL_0002: ldc.i4.0  
IL_0003: stloc.1   
IL_0004: ldarg.1   
IL_0005: ldc.i4.s  22
IL_0007: callvirt  <System.Type:GetProperties (System.Reflection.BindingFlags)>
IL_000c: stloc.3   
IL_000d: ldc.i4.0  
IL_000e: stloc.s   4
IL_0010: br        IL_0156
IL_0015: ldloc.3   
IL_0016: ldloc.s   4
IL_0018: ldelem.ref
IL_0019: stloc.2   
IL_001a: ldloc.2   
IL_001b: ldtoken   <0x0200004e>
IL_0020: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_0025: ldc.i4.0  
IL_0026: callvirt  <System.Reflection.MemberInfo:GetCustomAttributes (System.Type,bool)>
IL_002b: stloc.s   6
IL_002d: ldc.i4.0  
IL_002e: stloc.s   7
IL_0030: br        IL_0145
IL_0035: ldloc.s   6
IL_0037: ldloc.s   7
IL_0039: ldelem.ref
IL_003a: stloc.s   5
IL_003c: ldloc.2   
IL_003d: callvirt  <System.Reflection.PropertyInfo:GetIndexParameters ()>
IL_0042: ldlen     
IL_0043: conv.i4   
IL_0044: ldc.i4.0  
IL_0045: ble       IL_0066
IL_004a: ldstr     "GLib.RegisterPropertyAttribute cannot be applied to property {0} of type {1} because the property expects one or more indexed parameters"
IL_004f: ldloc.2   
IL_0050: callvirt  <System.Reflection.MemberInfo:get_Name ()>
IL_0055: ldarg.1   
IL_0056: callvirt  <System.Type:get_FullName ()>
IL_005b: call      <string:Format (string,object,object)>
IL_0060: newobj    <System.InvalidOperationException:.ctor (string)>
IL_0065: throw     
IL_0066: ldloc.s   5
IL_0068: isinst    <PropertyAttribute>
IL_006d: stloc.s   8
IL_006f: ldloc.1   
IL_0070: brtrue    IL_008d
IL_0075: ldarga.s  0
IL_0077: call      <GLib.GType:get_Val ()>
IL_007c: call      <GLib.Object:get_GetPropertyHandler ()>
IL_0081: call      <GLib.Object:get_SetPropertyHandler ()>
IL_0086: call      <GLib.Object:gtksharp_override_property_handlers (intptr,GLib.Object/GetPropertyDelegate,GLib.Object/SetPropertyDelegate)>
IL_008b: ldc.i4.1  
IL_008c: stloc.1   
IL_008d: ldloc.s   8
IL_008f: callvirt  <GLib.PropertyAttribute:get_Name ()>
IL_0094: call      <GLib.Marshaller:StringToPtrGStrdup (string)>
IL_0099: stloc.s   9
IL_009b: ldloc.s   8
IL_009d: callvirt  <GLib.PropertyAttribute:get_Nickname ()>
IL_00a2: call      <GLib.Marshaller:StringToPtrGStrdup (string)>
IL_00a7: stloc.s   10
IL_00a9: ldloc.s   8
IL_00ab: callvirt  <GLib.PropertyAttribute:get_Blurb ()>
IL_00b0: call      <GLib.Marshaller:StringToPtrGStrdup (string)>
IL_00b5: stloc.s   11
IL_00b7: ldarga.s  0
IL_00b9: call      <GLib.GType:get_Val ()>
IL_00be: ldloc.s   9
IL_00c0: ldloc.s   10
IL_00c2: ldloc.s   11
IL_00c4: ldloc.0   
IL_00c5: ldloc.2   
IL_00c6: callvirt  <System.Reflection.PropertyInfo:get_PropertyType ()>
IL_00cb: call      <GLib.GType:op_Explicit (System.Type)>
IL_00d0: stloc.s   13
IL_00d2: ldloca.s  13
IL_00d4: call      <GLib.GType:get_Val ()>
IL_00d9: ldloc.2   
IL_00da: callvirt  <System.Reflection.PropertyInfo:get_CanRead ()>
IL_00df: ldloc.2   
IL_00e0: callvirt  <System.Reflection.PropertyInfo:get_CanWrite ()>
IL_00e5: call      <GLib.Object:gtksharp_register_property (intptr,intptr,intptr,intptr,uint,intptr,bool,bool)>
IL_00ea: stloc.s   12
IL_00ec: ldloc.s   9
IL_00ee: call      <GLib.Marshaller:Free (intptr)>
IL_00f3: ldloc.s   10
IL_00f5: call      <GLib.Marshaller:Free (intptr)>
IL_00fa: ldloc.s   11
IL_00fc: call      <GLib.Marshaller:Free (intptr)>
IL_0101: ldloc.s   12
IL_0103: ldsfld    <System.IntPtr:Zero>
IL_0108: call      <intptr:op_Equality (intptr,intptr)>
IL_010d: brfalse   IL_012e
IL_0112: ldstr     "GLib.PropertyAttribute cannot be applied to property {0} of type {1} because the return type of the property is not supported"
IL_0117: ldloc.2   
IL_0118: callvirt  <System.Reflection.MemberInfo:get_Name ()>
IL_011d: ldarg.1   
IL_011e: callvirt  <System.Type:get_FullName ()>
IL_0123: call      <string:Format (string,object,object)>
IL_0128: newobj    <System.InvalidOperationException:.ctor (string)>
IL_012d: throw     
IL_012e: call      <GLib.Object:get_Properties ()>
IL_0133: ldloc.s   12
IL_0135: ldloc.2   
IL_0136: callvirt  <System.Collections.Generic.Dictionary`2<intptr, System.Reflection.PropertyInfo>:Add (intptr,System.Reflection.PropertyInfo)>
IL_013b: ldloc.0   
IL_013c: ldc.i4.1  
IL_013d: add       
IL_013e: stloc.0   
IL_013f: ldloc.s   7
IL_0141: ldc.i4.1  
IL_0142: add       
IL_0143: stloc.s   7
IL_0145: ldloc.s   7
IL_0147: ldloc.s   6
IL_0149: ldlen     
IL_014a: conv.i4   
IL_014b: blt       IL_0035
IL_0150: ldloc.s   4
IL_0152: ldc.i4.1  
IL_0153: add       
IL_0154: stloc.s   4
IL_0156: ldloc.s   4
IL_0158: ldloc.3   
IL_0159: ldlen     
IL_015a: conv.i4   
IL_015b: blt       IL_0015
IL_0160: ret       
// GLib.Object:ConnectDefaultHandlers (GLib.GType,System.Type)
IL_0000: ldarg.1   
IL_0001: ldc.i4.s  54
IL_0003: callvirt  <System.Type:GetMethods (System.Reflection.BindingFlags)>
IL_0008: stloc.1   
IL_0009: ldc.i4.0  
IL_000a: stloc.2   
IL_000b: br        IL_00a5
IL_0010: ldloc.1   
IL_0011: ldloc.2   
IL_0012: ldelem.ref
IL_0013: stloc.0   
IL_0014: ldloc.0   
IL_0015: callvirt  <System.Reflection.MethodInfo:GetBaseDefinition ()>
IL_001a: stloc.3   
IL_001b: ldloc.3   
IL_001c: ldloc.0   
IL_001d: call      <System.Reflection.MethodInfo:op_Equality (System.Reflection.MethodInfo,System.Reflection.MethodInfo)>
IL_0022: brfalse   IL_002c
IL_0027: br        IL_00a1
IL_002c: ldloc.3   
IL_002d: ldtoken   <0x02000007>
IL_0032: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_0037: ldc.i4.0  
IL_0038: callvirt  <System.Reflection.MemberInfo:GetCustomAttributes (System.Type,bool)>
IL_003d: stloc.s   5
IL_003f: ldc.i4.0  
IL_0040: stloc.s   6
IL_0042: br        IL_0096
IL_0047: ldloc.s   5
IL_0049: ldloc.s   6
IL_004b: ldelem.ref
IL_004c: stloc.s   4
IL_004e: ldloc.s   4
IL_0050: isinst    <DefaultSignalHandlerAttribute>
IL_0055: stloc.s   7
IL_0057: ldloc.s   7
IL_0059: callvirt  <GLib.DefaultSignalHandlerAttribute:get_Type ()>
IL_005e: ldloc.s   7
IL_0060: callvirt  <GLib.DefaultSignalHandlerAttribute:get_ConnectionMethod ()>
IL_0065: ldc.i4.s  40
IL_0067: callvirt  <System.Type:GetMethod (string,System.Reflection.BindingFlags)>
IL_006c: stloc.s   8
IL_006e: ldc.i4.1  
IL_006f: newarr    <0x01000012>
IL_0074: stloc.s   9
IL_0076: ldloc.s   9
IL_0078: ldc.i4.0  
IL_0079: ldarg.0   
IL_007a: box       <0x0200001e>
IL_007f: stelem.ref
IL_0080: ldloc.s   8
IL_0082: ldnull    
IL_0083: ldloc.s   9
IL_0085: callvirt  <System.Reflection.MethodBase:Invoke (object,object[])>
IL_008a: pop       
IL_008b: br        IL_00a1
IL_0090: ldloc.s   6
IL_0092: ldc.i4.1  
IL_0093: add       
IL_0094: stloc.s   6
IL_0096: ldloc.s   6
IL_0098: ldloc.s   5
IL_009a: ldlen     
IL_009b: conv.i4   
IL_009c: blt       IL_0047
IL_00a1: ldloc.2   
IL_00a2: ldc.i4.1  
IL_00a3: add       
IL_00a4: stloc.2   
IL_00a5: ldloc.2   
IL_00a6: ldloc.1   
IL_00a7: ldlen     
IL_00a8: conv.i4   
IL_00a9: blt       IL_0010
IL_00ae: ret       
// (wrapper managed-to-native) System.RuntimeType:GetMethodsByName_native (System.RuntimeType,intptr,System.Reflection.BindingFlags,System.RuntimeType/MemberListType)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldloca.s  1
IL_000e: ldloca.s  2
IL_0010: mono_icall <mono_icall_start>
IL_0016: stloc.0   
IL_0017: ldarg.0   
IL_0018: mono_icall <mono_icall_handle_new>
IL_001e: ldarg.1   
IL_001f: ldarg.2   
IL_0020: ldarg.3   
IL_0021: ldloca.s  2
IL_0023: mono_ldptr5
IL_0029: calli     <RuntimeType&,intptr,BindingFlags,RuntimeType/MemberListType,intptr>
IL_002e: ldloc.0   
IL_002f: ldloca.s  1
IL_0031: ldloca.s  2
IL_0033: mono_icall <mono_icall_end>
IL_0039: mono_ldptr_int_req_flag
IL_003b: ldind.u4  
IL_003c: brfalse   IL_0051
IL_0041: mono_not_taken
IL_0043: mono_icall <mono_thread_interruption_checkpoint>
IL_0049: dup       
IL_004a: brfalse   IL_0050
IL_004f: throw     
IL_0050: pop       
IL_0051: ret       
// (wrapper managed-to-native) System.Reflection.MonoMethod:get_base_method (System.Reflection.MonoMethod,bool)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldarg.1   
IL_0013: ldloca.s  2
IL_0015: mono_ldptr4
IL_001b: calli     <MonoMethod&,bool,intptr>
IL_0020: dup       
IL_0021: brfalse   IL_0029
IL_0026: mono_objaddr
IL_0028: ldind.ref 
IL_0029: ldloc.0   
IL_002a: ldloca.s  1
IL_002c: ldloca.s  2
IL_002e: mono_icall <mono_icall_end>
IL_0034: mono_ldptr_int_req_flag
IL_0036: ldind.u4  
IL_0037: brfalse   IL_004c
IL_003c: mono_not_taken
IL_003e: mono_icall <mono_thread_interruption_checkpoint>
IL_0044: dup       
IL_0045: brfalse   IL_004b
IL_004a: throw     
IL_004b: pop       
IL_004c: ret       
// GLib.Object:InvokeClassInitializers (GLib.GType,System.Type)
IL_0000: ldc.i4.2  
IL_0001: newarr    <0x01000012>
IL_0006: dup       
IL_0007: ldc.i4.0  
IL_0008: ldarg.0   
IL_0009: box       <0x0200001e>
IL_000e: stelem.ref
IL_000f: dup       
IL_0010: ldc.i4.1  
IL_0011: ldarg.1   
IL_0012: stelem.ref
IL_0013: stloc.0   
IL_0014: ldc.i4.s  40
IL_0016: stloc.1   
IL_0017: ldarg.1   
IL_0018: ldtoken   <0x02000073>
IL_001d: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_0022: ldc.i4.1  
IL_0023: callvirt  <System.Reflection.MemberInfo:GetCustomAttributes (System.Type,bool)>
IL_0028: stloc.3   
IL_0029: ldc.i4.0  
IL_002a: stloc.s   4
IL_002c: br        IL_006c
IL_0031: ldloc.3   
IL_0032: ldloc.s   4
IL_0034: ldelem.ref
IL_0035: castclass <TypeInitializerAttribute>
IL_003a: stloc.2   
IL_003b: ldloc.2   
IL_003c: callvirt  <GLib.TypeInitializerAttribute:get_Type ()>
IL_0041: ldloc.2   
IL_0042: callvirt  <GLib.TypeInitializerAttribute:get_MethodName ()>
IL_0047: ldloc.1   
IL_0048: callvirt  <System.Type:GetMethod (string,System.Reflection.BindingFlags)>
IL_004d: stloc.s   5
IL_004f: ldloc.s   5
IL_0051: ldnull    
IL_0052: call      <System.Reflection.MethodInfo:op_Inequality (System.Reflection.MethodInfo,System.Reflection.MethodInfo)>
IL_0057: brfalse   IL_0066
IL_005c: ldloc.s   5
IL_005e: ldnull    
IL_005f: ldloc.0   
IL_0060: callvirt  <System.Reflection.MethodBase:Invoke (object,object[])>
IL_0065: pop       
IL_0066: ldloc.s   4
IL_0068: ldc.i4.1  
IL_0069: add       
IL_006a: stloc.s   4
IL_006c: ldloc.s   4
IL_006e: ldloc.3   
IL_006f: ldlen     
IL_0070: conv.i4   
IL_0071: blt       IL_0031
IL_0076: ldarg.1   
IL_0077: stloc.s   6
IL_0079: br        IL_00f3
IL_007e: ldloc.s   6
IL_0080: callvirt  <System.Type:get_Assembly ()>
IL_0085: ldtoken   <0x02000027>
IL_008a: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_008f: ldc.i4.0  
IL_0090: callvirt  <System.Reflection.Assembly:IsDefined (System.Type,bool)>
IL_0095: brfalse   IL_009f
IL_009a: br        IL_00ea
IL_009f: ldloc.s   6
IL_00a1: ldloc.1   
IL_00a2: callvirt  <System.Type:GetMethods (System.Reflection.BindingFlags)>
IL_00a7: stloc.s   8
IL_00a9: ldc.i4.0  
IL_00aa: stloc.s   9
IL_00ac: br        IL_00df
IL_00b1: ldloc.s   8
IL_00b3: ldloc.s   9
IL_00b5: ldelem.ref
IL_00b6: stloc.s   7
IL_00b8: ldloc.s   7
IL_00ba: ldtoken   <0x02000005>
IL_00bf: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_00c4: ldc.i4.1  
IL_00c5: callvirt  <System.Reflection.MemberInfo:IsDefined (System.Type,bool)>
IL_00ca: brfalse   IL_00d9
IL_00cf: ldloc.s   7
IL_00d1: ldnull    
IL_00d2: ldloc.0   
IL_00d3: callvirt  <System.Reflection.MethodBase:Invoke (object,object[])>
IL_00d8: pop       
IL_00d9: ldloc.s   9
IL_00db: ldc.i4.1  
IL_00dc: add       
IL_00dd: stloc.s   9
IL_00df: ldloc.s   9
IL_00e1: ldloc.s   8
IL_00e3: ldlen     
IL_00e4: conv.i4   
IL_00e5: blt       IL_00b1
IL_00ea: ldloc.s   6
IL_00ec: callvirt  <System.Type:get_BaseType ()>
IL_00f1: stloc.s   6
IL_00f3: ldloc.s   6
IL_00f5: ldtoken   <0x02000048>
IL_00fa: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_00ff: call      <System.Type:op_Inequality (System.Type,System.Type)>
IL_0104: brtrue    IL_007e
IL_0109: ret       
// (wrapper stelemref) object:virt_stelemref_object (intptr,object)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: ldelema   <Object>
IL_0007: ldarg.2   
IL_0008: stind.ref 
IL_0009: ret       
// (wrapper runtime-invoke) <Module>:runtime_invoke_void__this___int (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0038
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.0   
IL_001f: ldarg.1   
IL_0020: ldind.i   
IL_0021: ldind.i4  
IL_0022: ldarg.3   
IL_0023: calli     <int>
IL_0028: leave     IL_0036
IL_002d: stloc.1   
IL_002e: ldarg.2   
IL_002f: ldloc.1   
IL_0030: stind.ref 
IL_0031: leave     IL_0036
IL_0036: ldloc.0   
IL_0037: ret       
IL_0038: mono_ldptr_int_req_flag
IL_003a: ldind.u4  
IL_003b: brfalse   IL_0050
IL_0040: mono_not_taken
IL_0042: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0048: dup       
IL_0049: brfalse   IL_004f
IL_004e: throw     
IL_004f: pop       
IL_0050: ldarg.0   
IL_0051: ldarg.1   
IL_0052: ldind.i   
IL_0053: ldind.i4  
IL_0054: ldarg.3   
IL_0055: calli     <int>
IL_005a: ldloc.0   
IL_005b: ret       
// GLib.TypeInitializerAttribute:.ctor (System.Type,string)
IL_0000: ldarg.0   
IL_0001: call      <System.Attribute:.ctor ()>
IL_0006: ldarg.0   
IL_0007: ldarg.1   
IL_0008: stfld     <GLib.TypeInitializerAttribute:type>
IL_000d: ldarg.0   
IL_000e: ldarg.2   
IL_000f: stfld     <GLib.TypeInitializerAttribute:method_name>
IL_0014: ret       
// (wrapper runtime-invoke) <Module>:runtime_invoke_void__this___object_object (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_003c
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.0   
IL_001f: ldarg.1   
IL_0020: ldind.ref 
IL_0021: ldarg.1   
IL_0022: ldc.i4.s  8
IL_0024: add       
IL_0025: ldind.ref 
IL_0026: ldarg.3   
IL_0027: calli     <object,object>
IL_002c: leave     IL_003a
IL_0031: stloc.1   
IL_0032: ldarg.2   
IL_0033: ldloc.1   
IL_0034: stind.ref 
IL_0035: leave     IL_003a
IL_003a: ldloc.0   
IL_003b: ret       
IL_003c: mono_ldptr_int_req_flag
IL_003e: ldind.u4  
IL_003f: brfalse   IL_0054
IL_0044: mono_not_taken
IL_0046: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_004c: dup       
IL_004d: brfalse   IL_0053
IL_0052: throw     
IL_0053: pop       
IL_0054: ldarg.0   
IL_0055: ldarg.1   
IL_0056: ldind.ref 
IL_0057: ldarg.1   
IL_0058: ldc.i4.s  8
IL_005a: add       
IL_005b: ldind.ref 
IL_005c: ldarg.3   
IL_005d: calli     <object,object>
IL_0062: ldloc.0   
IL_0063: ret       
// (wrapper managed-to-native) System.Array:GetValueImpl (System.Array,int)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldloca.s  1
IL_000e: ldloca.s  2
IL_0010: mono_icall <mono_icall_start>
IL_0016: stloc.0   
IL_0017: ldarg.0   
IL_0018: mono_icall <mono_icall_handle_new>
IL_001e: ldarg.1   
IL_001f: ldloca.s  2
IL_0021: mono_ldptr5
IL_0027: calli     <Array&,int,intptr>
IL_002c: dup       
IL_002d: brfalse   IL_0035
IL_0032: mono_objaddr
IL_0034: ldind.ref 
IL_0035: ldloc.0   
IL_0036: ldloca.s  1
IL_0038: ldloca.s  2
IL_003a: mono_icall <mono_icall_end>
IL_0040: mono_ldptr_int_req_flag
IL_0042: ldind.u4  
IL_0043: brfalse   IL_0058
IL_0048: mono_not_taken
IL_004a: mono_icall <mono_thread_interruption_checkpoint>
IL_0050: dup       
IL_0051: brfalse   IL_0057
IL_0056: throw     
IL_0057: pop       
IL_0058: ret       
// (wrapper managed-to-native) System.Array:SetValueImpl (System.Array,object,int)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldloca.s  1
IL_000e: ldloca.s  2
IL_0010: mono_icall <mono_icall_start>
IL_0016: stloc.0   
IL_0017: ldarg.0   
IL_0018: mono_icall <mono_icall_handle_new>
IL_001e: ldarg.1   
IL_001f: mono_icall <mono_icall_handle_new>
IL_0025: ldarg.2   
IL_0026: ldloca.s  2
IL_0028: mono_ldptr6
IL_002e: calli     <Array&,object&,int,intptr>
IL_0033: ldloc.0   
IL_0034: ldloca.s  1
IL_0036: ldloca.s  2
IL_0038: mono_icall <mono_icall_end>
IL_003e: mono_ldptr_int_req_flag
IL_0040: ldind.u4  
IL_0041: brfalse   IL_0056
IL_0046: mono_not_taken
IL_0048: mono_icall <mono_thread_interruption_checkpoint>
IL_004e: dup       
IL_004f: brfalse   IL_0055
IL_0054: throw     
IL_0055: pop       
IL_0056: ret       
// (wrapper managed-to-native) System.Reflection.MonoMethodInfo:get_method_attributes (intptr)
IL_0000: ldarg.0   
IL_0001: mono_ldptr2
IL_0007: calli     <intptr>
IL_000c: mono_ldptr_int_req_flag
IL_000e: ldind.u4  
IL_000f: brfalse   IL_0024
IL_0014: mono_not_taken
IL_0016: mono_icall <mono_thread_interruption_checkpoint>
IL_001c: dup       
IL_001d: brfalse   IL_0023
IL_0022: throw     
IL_0023: pop       
IL_0024: ret       
// (wrapper managed-to-native) System.RuntimeTypeHandle:IsInstanceOfType (System.RuntimeType,object)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldarg.1   
IL_0013: mono_icall <mono_icall_handle_new>
IL_0019: ldloca.s  2
IL_001b: mono_ldptr5
IL_0021: calli     <RuntimeType&,object&,intptr>
IL_0026: ldloc.0   
IL_0027: ldloca.s  1
IL_0029: ldloca.s  2
IL_002b: mono_icall <mono_icall_end>
IL_0031: mono_ldptr_int_req_flag
IL_0033: ldind.u4  
IL_0034: brfalse   IL_0049
IL_0039: mono_not_taken
IL_003b: mono_icall <mono_thread_interruption_checkpoint>
IL_0041: dup       
IL_0042: brfalse   IL_0048
IL_0047: throw     
IL_0048: pop       
IL_0049: ret       
// (wrapper managed-to-native) System.Reflection.MonoMethod:get_IsGenericMethod (System.Reflection.MonoMethod)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldloca.s  1
IL_000e: ldloca.s  2
IL_0010: mono_icall <mono_icall_start>
IL_0016: stloc.0   
IL_0017: ldarg.0   
IL_0018: mono_icall <mono_icall_handle_new>
IL_001e: ldloca.s  2
IL_0020: mono_ldptr5
IL_0026: calli     <MonoMethod&,intptr>
IL_002b: ldloc.0   
IL_002c: ldloca.s  1
IL_002e: ldloca.s  2
IL_0030: mono_icall <mono_icall_end>
IL_0036: mono_ldptr_int_req_flag
IL_0038: ldind.u4  
IL_0039: brfalse   IL_004e
IL_003e: mono_not_taken
IL_0040: mono_icall <mono_thread_interruption_checkpoint>
IL_0046: dup       
IL_0047: brfalse   IL_004d
IL_004c: throw     
IL_004d: pop       
IL_004e: ret       
// (wrapper managed-to-native) System.Reflection.MonoMethod:InternalInvoke (System.Reflection.MonoMethod,object,object[],System.Exception&)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldarg.0   
IL_000d: ldarg.1   
IL_000e: ldarg.2   
IL_000f: ldarg.3   
IL_0010: mono_ldptr3
IL_0016: calli     <MonoMethod,object,object[],Exception&>
IL_001b: mono_ldptr_int_req_flag
IL_001d: ldind.u4  
IL_001e: brfalse   IL_0033
IL_0023: mono_not_taken
IL_0025: mono_icall <mono_thread_interruption_checkpoint>
IL_002b: dup       
IL_002c: brfalse   IL_0032
IL_0031: throw     
IL_0032: pop       
IL_0033: ret       
// Gtk.Widget:ClassInit (GLib.GType,System.Type)
IL_0000: ldarg.1   
IL_0001: ldtoken   <0x020006a5>
IL_0006: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_000b: ldc.i4.1  
IL_000c: callvirt  <System.Reflection.MemberInfo:GetCustomAttributes (System.Type,bool)>
IL_0011: stloc.0   
IL_0012: ldloc.0   
IL_0013: ldlen     
IL_0014: conv.i4   
IL_0015: brtrue    IL_001b
IL_001a: ret       
IL_001b: ldarg.1   
IL_001c: callvirt  <System.Reflection.MemberInfo:get_Name ()>
IL_0021: ldstr     "."
IL_0026: ldstr     "_"
IL_002b: callvirt  <string:Replace (string,string)>
IL_0030: ldstr     "_bindings"
IL_0035: call      <string:Concat (string,string)>
IL_003a: call      <GLib.Marshaller:StringToPtrGStrdup (string)>
IL_003f: stloc.1   
IL_0040: ldarga.s  0
IL_0042: call      <GLib.GType:get_Val ()>
IL_0047: ldloc.1   
IL_0048: call      <Gtk.Widget:get_BindingDelegate ()>
IL_004d: call      <Gtk.Widget:gtksharp_widget_add_binding_signal (intptr,intptr,Gtk.Widget/BindingHandler)>
IL_0052: ldloc.0   
IL_0053: stloc.3   
IL_0054: ldc.i4.0  
IL_0055: stloc.s   4
IL_0057: br        IL_00eb
IL_005c: ldloc.3   
IL_005d: ldloc.s   4
IL_005f: ldelem.ref
IL_0060: castclass <BindingAttribute>
IL_0065: stloc.2   
IL_0066: ldarg.1   
IL_0067: ldloc.2   
IL_0068: callvirt  <Gtk.BindingAttribute:get_Handler ()>
IL_006d: ldc.i4.s  52
IL_006f: callvirt  <System.Type:GetMethod (string,System.Reflection.BindingFlags)>
IL_0074: stloc.s   5
IL_0076: ldloc.s   5
IL_0078: ldnull    
IL_0079: call      <System.Reflection.MethodInfo:op_Equality (System.Reflection.MethodInfo,System.Reflection.MethodInfo)>
IL_007e: brfalse   IL_00b1
IL_0083: ldc.i4.4  
IL_0084: newarr    <0x0100001b>
IL_0089: dup       
IL_008a: ldc.i4.0  
IL_008b: ldstr     "Instance method "
IL_0090: stelem.ref
IL_0091: dup       
IL_0092: ldc.i4.1  
IL_0093: ldloc.2   
IL_0094: callvirt  <Gtk.BindingAttribute:get_Handler ()>
IL_0099: stelem.ref
IL_009a: dup       
IL_009b: ldc.i4.2  
IL_009c: ldstr     " not found in "
IL_00a1: stelem.ref
IL_00a2: dup       
IL_00a3: ldc.i4.3  
IL_00a4: ldarg.1   
IL_00a5: stelem.ref
IL_00a6: call      <string:Concat (object[])>
IL_00ab: newobj    <System.Exception:.ctor (string)>
IL_00b0: throw     
IL_00b1: ldloc.s   5
IL_00b3: ldloc.2   
IL_00b4: callvirt  <Gtk.BindingAttribute:get_Parms ()>
IL_00b9: newobj    <Gtk.Widget/BindingInvoker:.ctor (System.Reflection.MethodInfo,object[])>
IL_00be: stloc.s   6
IL_00c0: ldarga.s  0
IL_00c2: call      <GLib.GType:get_Val ()>
IL_00c7: ldloc.1   
IL_00c8: ldloc.2   
IL_00c9: callvirt  <Gtk.BindingAttribute:get_Key ()>
IL_00ce: ldloc.2   
IL_00cf: callvirt  <Gtk.BindingAttribute:get_Mod ()>
IL_00d4: ldloc.s   6
IL_00d6: call      <System.Runtime.InteropServices.GCHandle:Alloc (object)>
IL_00db: call      <System.Runtime.InteropServices.GCHandle:op_Explicit (System.Runtime.InteropServices.GCHandle)>
IL_00e0: call      <Gtk.Widget:gtksharp_widget_register_binding (intptr,intptr,uint,int,intptr)>
IL_00e5: ldloc.s   4
IL_00e7: ldc.i4.1  
IL_00e8: add       
IL_00e9: stloc.s   4
IL_00eb: ldloc.s   4
IL_00ed: ldloc.3   
IL_00ee: ldlen     
IL_00ef: conv.i4   
IL_00f0: blt       IL_005c
IL_00f5: ldloc.1   
IL_00f6: call      <GLib.Marshaller:Free (intptr)>
IL_00fb: ret       
// (wrapper runtime-invoke) <Module>:runtime_invoke_void_GType_object (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0040
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.1   
IL_001f: ldind.i   
IL_0020: ldobj     <0x00000003>
IL_0025: ldarg.1   
IL_0026: ldc.i4.s  8
IL_0028: add       
IL_0029: ldind.ref 
IL_002a: ldarg.3   
IL_002b: calli     <GType,object>
IL_0030: leave     IL_003e
IL_0035: stloc.1   
IL_0036: ldarg.2   
IL_0037: ldloc.1   
IL_0038: stind.ref 
IL_0039: leave     IL_003e
IL_003e: ldloc.0   
IL_003f: ret       
IL_0040: mono_ldptr_int_req_flag
IL_0042: ldind.u4  
IL_0043: brfalse   IL_0058
IL_0048: mono_not_taken
IL_004a: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0050: dup       
IL_0051: brfalse   IL_0057
IL_0056: throw     
IL_0057: pop       
IL_0058: ldarg.1   
IL_0059: ldind.i   
IL_005a: ldobj     <0x00000006>
IL_005f: ldarg.1   
IL_0060: ldc.i4.s  8
IL_0062: add       
IL_0063: ldind.ref 
IL_0064: ldarg.3   
IL_0065: calli     <GType,object>
IL_006a: ldloc.0   
IL_006b: ret       
// (wrapper runtime-invoke) <Module>:runtime_invoke_void__this___byte (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0038
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.0   
IL_001f: ldarg.1   
IL_0020: ldind.i   
IL_0021: ldind.u1  
IL_0022: ldarg.3   
IL_0023: calli     <byte>
IL_0028: leave     IL_0036
IL_002d: stloc.1   
IL_002e: ldarg.2   
IL_002f: ldloc.1   
IL_0030: stind.ref 
IL_0031: leave     IL_0036
IL_0036: ldloc.0   
IL_0037: ret       
IL_0038: mono_ldptr_int_req_flag
IL_003a: ldind.u4  
IL_003b: brfalse   IL_0050
IL_0040: mono_not_taken
IL_0042: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0048: dup       
IL_0049: brfalse   IL_004f
IL_004e: throw     
IL_004f: pop       
IL_0050: ldarg.0   
IL_0051: ldarg.1   
IL_0052: ldind.i   
IL_0053: ldind.u1  
IL_0054: ldarg.3   
IL_0055: calli     <byte>
IL_005a: ldloc.0   
IL_005b: ret       
// GLib.Object:AddInterfaces (GLib.GType,System.Type)
IL_0000: ldarg.1   
IL_0001: callvirt  <System.Type:GetInterfaces ()>
IL_0006: stloc.1   
IL_0007: ldc.i4.0  
IL_0008: stloc.2   
IL_0009: br        IL_0095
IL_000e: ldloc.1   
IL_000f: ldloc.2   
IL_0010: ldelem.ref
IL_0011: stloc.0   
IL_0012: ldloc.0   
IL_0013: ldtoken   <0x0200001b>
IL_0018: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_001d: ldc.i4.1  
IL_001e: callvirt  <System.Reflection.MemberInfo:IsDefined (System.Type,bool)>
IL_0023: brfalse   IL_0039
IL_0028: ldloc.0   
IL_0029: ldarg.1   
IL_002a: callvirt  <System.Type:get_BaseType ()>
IL_002f: callvirt  <System.Type:IsAssignableFrom (System.Type)>
IL_0034: brfalse   IL_003e
IL_0039: br        IL_0091
IL_003e: ldloc.0   
IL_003f: ldtoken   <0x0200001b>
IL_0044: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_0049: ldc.i4.0  
IL_004a: callvirt  <System.Reflection.MemberInfo:GetCustomAttributes (System.Type,bool)>
IL_004f: ldc.i4.0  
IL_0050: ldelem.ref
IL_0051: isinst    <GInterfaceAttribute>
IL_0056: stloc.3   
IL_0057: ldloc.3   
IL_0058: callvirt  <GLib.GInterfaceAttribute:get_AdapterType ()>
IL_005d: ldnull    
IL_005e: call      <System.Activator:CreateInstance (System.Type,object[])>
IL_0063: isinst    <GInterfaceAdapter>
IL_0068: stloc.s   4
IL_006a: ldloc.s   4
IL_006c: callvirt  <GLib.GInterfaceAdapter:get_Info ()>
IL_0071: stloc.s   5
IL_0073: ldarga.s  0
IL_0075: call      <GLib.GType:get_Val ()>
IL_007a: ldloc.s   4
IL_007c: callvirt  <GLib.GInterfaceAdapter:get_GType ()>
IL_0081: stloc.s   6
IL_0083: ldloca.s  6
IL_0085: call      <GLib.GType:get_Val ()>
IL_008a: ldloca.s  5
IL_008c: call      <GLib.Object:g_type_add_interface_static (intptr,intptr,GLib.GInterfaceInfo&)>
IL_0091: ldloc.2   
IL_0092: ldc.i4.1  
IL_0093: add       
IL_0094: stloc.2   
IL_0095: ldloc.2   
IL_0096: ldloc.1   
IL_0097: ldlen     
IL_0098: conv.i4   
IL_0099: blt       IL_000e
IL_009e: ret       
// (wrapper managed-to-native) System.RuntimeType:GetInterfaces (System.RuntimeType)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldloca.s  1
IL_000e: ldloca.s  2
IL_0010: mono_icall <mono_icall_start>
IL_0016: stloc.0   
IL_0017: ldarg.0   
IL_0018: mono_icall <mono_icall_handle_new>
IL_001e: ldloca.s  2
IL_0020: mono_ldptr5
IL_0026: calli     <RuntimeType&,intptr>
IL_002b: dup       
IL_002c: brfalse   IL_0034
IL_0031: mono_objaddr
IL_0033: ldind.ref 
IL_0034: ldloc.0   
IL_0035: ldloca.s  1
IL_0037: ldloca.s  2
IL_0039: mono_icall <mono_icall_end>
IL_003f: mono_ldptr_int_req_flag
IL_0041: ldind.u4  
IL_0042: brfalse   IL_0057
IL_0047: mono_not_taken
IL_0049: mono_icall <mono_thread_interruption_checkpoint>
IL_004f: dup       
IL_0050: brfalse   IL_0056
IL_0055: throw     
IL_0056: pop       
IL_0057: ret       
// (wrapper managed-to-native) GLib.Object:gtksharp_object_newv (intptr,int,intptr[],GLib.Value[])
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldarg.2   
IL_0003: mono_icall <mono_array_to_lparray>
IL_0009: stloc.s   6
IL_000b: ldarg.3   
IL_000c: mono_icall <mono_array_to_lparray>
IL_0012: stloc.s   7
IL_0014: ldloca.s  4
IL_0016: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_001c: stloc.s   5
IL_001e: ldarg.0   
IL_001f: ldarg.1   
IL_0020: ldloc.s   6
IL_0022: ldloc.s   7
IL_0024: mono_ldptr5
IL_002a: calli     <intptr,int,object,object>
IL_002f: ldloc.s   5
IL_0031: ldloca.s  4
IL_0033: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0039: stloc.3   
IL_003a: mono_ldptr_int_req_flag
IL_003c: ldind.u4  
IL_003d: brfalse   IL_0052
IL_0042: mono_not_taken
IL_0044: mono_icall <mono_thread_interruption_checkpoint>
IL_004a: dup       
IL_004b: brfalse   IL_0051
IL_0050: throw     
IL_0051: pop       
IL_0052: ldarg.2   
IL_0053: ldloc.s   6
IL_0055: mono_icall <mono_free_lparray>
IL_005b: ldarg.3   
IL_005c: brfalse   IL_0095
IL_0061: ldloc.s   7
IL_0063: stloc.s   8
IL_0065: ldc.i4.0  
IL_0066: stloc.s   10
IL_0068: ldloc.s   10
IL_006a: ldarg.3   
IL_006b: ldlen     
IL_006c: bge       IL_0095
IL_0071: ldloc.s   8
IL_0073: stloc.s   9
IL_0075: mono_classconst <Value>
IL_007b: ldloc.s   9
IL_007d: mono_icall <mono_struct_delete_old>
IL_0083: ldloc.s   10
IL_0085: ldc.i4.1  
IL_0086: add       
IL_0087: stloc.s   10
IL_0089: ldloc.s   8
IL_008b: ldc.i4.s  24
IL_008d: add       
IL_008e: stloc.s   8
IL_0090: br        IL_0068
IL_0095: ldarg.3   
IL_0096: ldloc.s   7
IL_0098: mono_icall <mono_free_lparray>
IL_009e: ldloc.3   
IL_009f: ret       
// (wrapper managed-to-native) object:__icall_wrapper_mono_struct_delete_old (intptr,intptr)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: mono_jit_icall_addr2
IL_0008: calli     <intptr,intptr>
IL_000d: mono_ldptr_int_req_flag
IL_000f: ldind.u4  
IL_0010: brfalse   IL_0025
IL_0015: mono_not_taken
IL_0017: mono_icall <mono_thread_interruption_checkpoint>
IL_001d: dup       
IL_001e: brfalse   IL_0024
IL_0023: throw     
IL_0024: pop       
IL_0025: ret       
// GLib.Value:Dispose ()
IL_0000: ldarg.0   
IL_0001: ldfld     <GLib.Value:type>
IL_0006: ldsfld    <System.IntPtr:Zero>
IL_000b: call      <intptr:op_Inequality (intptr,intptr)>
IL_0010: brfalse   IL_001b
IL_0015: ldarg.0   
IL_0016: call      <GLib.Value:g_value_unset (GLib.Value&)>
IL_001b: ret       
// (wrapper managed-to-native) GLib.Value:g_value_unset (GLib.Value&)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: ldarg.0   
IL_000d: mono_ldptr3
IL_0013: calli     <Value&>
IL_0018: ldloc.s   4
IL_001a: ldloca.s  3
IL_001c: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ret       
// Gtk.Window:set_Title (string)
IL_0000: call      <Gtk.Application:AssertMainThread ()>
IL_0005: ldarg.1   
IL_0006: call      <GLib.Marshaller:StringToPtrGStrdup (string)>
IL_000b: stloc.0   
IL_000c: ldarg.0   
IL_000d: call      <GLib.Object:get_Handle ()>
IL_0012: ldloc.0   
IL_0013: call      <Gtk.Window:gtk_window_set_title (intptr,intptr)>
IL_0018: ldloc.0   
IL_0019: call      <GLib.Marshaller:Free (intptr)>
IL_001e: ret       
// (wrapper managed-to-native) Gtk.Window:gtk_window_set_title (intptr,intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: ldarg.0   
IL_000d: ldarg.1   
IL_000e: mono_ldptr3
IL_0014: calli     <intptr,intptr>
IL_0019: ldloc.s   4
IL_001b: ldloca.s  3
IL_001d: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0023: mono_ldptr_int_req_flag
IL_0025: ldind.u4  
IL_0026: brfalse   IL_003b
IL_002b: mono_not_taken
IL_002d: mono_icall <mono_thread_interruption_checkpoint>
IL_0033: dup       
IL_0034: brfalse   IL_003a
IL_0039: throw     
IL_003a: pop       
IL_003b: ret       
// MlEco.MlEcoApp:InitWindow ()
IL_0000: ldarg.0   
IL_0001: ldc.i4    720
IL_0006: ldc.i4    450
IL_000b: call      <Gtk.Widget:SetSizeRequest (int,int)>
IL_0010: ldarg.0   
IL_0011: ldc.i4.1  
IL_0012: call      <Gtk.Window:SetPosition (Gtk.WindowPosition)>
IL_0017: ldarg.0   
IL_0018: ldc.i4.0  
IL_0019: call      <Gtk.Window:set_Resizable (bool)>
IL_001e: ldarg.0   
IL_001f: ldarg.0   
IL_0020: ldftn     <0x06000052>
IL_0026: newobj    <Gtk.DeleteEventHandler:.ctor (object,intptr)>
IL_002b: call      <Gtk.Widget:add_DeleteEvent (Gtk.DeleteEventHandler)>
IL_0030: ldarg.0   
IL_0031: ldarg.0   
IL_0032: ldftn     <0x06000035>
IL_0038: newobj    <Gtk.ButtonPressEventHandler:.ctor (object,intptr)>
IL_003d: call      <Gtk.Widget:add_ButtonPressEvent (Gtk.ButtonPressEventHandler)>
IL_0042: ldarg.0   
IL_0043: ldarg.0   
IL_0044: ldftn     <0x06000037>
IL_004a: newobj    <Gtk.KeyPressEventHandler:.ctor (object,intptr)>
IL_004f: call      <Gtk.Widget:add_KeyPressEvent (Gtk.KeyPressEventHandler)>
IL_0054: ldarg.0   
IL_0055: ldarg.0   
IL_0056: ldftn     <0x06000036>
IL_005c: newobj    <Gtk.KeyReleaseEventHandler:.ctor (object,intptr)>
IL_0061: call      <Gtk.Widget:add_KeyReleaseEvent (Gtk.KeyReleaseEventHandler)>
IL_0066: ldarg.0   
IL_0067: ldc.i4    256
IL_006c: call      <Gtk.Widget:AddEvents (int)>
IL_0071: ret       
// Gtk.Widget:SetSizeRequest (int,int)
IL_0000: call      <Gtk.Application:AssertMainThread ()>
IL_0005: ldarg.0   
IL_0006: call      <GLib.Object:get_Handle ()>
IL_000b: ldarg.1   
IL_000c: ldarg.2   
IL_000d: call      <Gtk.Widget:gtk_widget_set_size_request (intptr,int,int)>
IL_0012: ret       
// (wrapper managed-to-native) Gtk.Widget:gtk_widget_set_size_request (intptr,int,int)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: ldarg.0   
IL_000d: ldarg.1   
IL_000e: ldarg.2   
IL_000f: mono_ldptr3
IL_0015: calli     <intptr,int,int>
IL_001a: ldloc.s   4
IL_001c: ldloca.s  3
IL_001e: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0024: mono_ldptr_int_req_flag
IL_0026: ldind.u4  
IL_0027: brfalse   IL_003c
IL_002c: mono_not_taken
IL_002e: mono_icall <mono_thread_interruption_checkpoint>
IL_0034: dup       
IL_0035: brfalse   IL_003b
IL_003a: throw     
IL_003b: pop       
IL_003c: ret       
// Gtk.Window:SetPosition (Gtk.WindowPosition)
IL_0000: call      <Gtk.Application:AssertMainThread ()>
IL_0005: ldarg.0   
IL_0006: call      <GLib.Object:get_Handle ()>
IL_000b: ldarg.1   
IL_000c: call      <Gtk.Window:gtk_window_set_position (intptr,int)>
IL_0011: ret       
// (wrapper managed-to-native) Gtk.Window:gtk_window_set_position (intptr,int)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: ldarg.0   
IL_000d: ldarg.1   
IL_000e: mono_ldptr3
IL_0014: calli     <intptr,int>
IL_0019: ldloc.s   4
IL_001b: ldloca.s  3
IL_001d: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0023: mono_ldptr_int_req_flag
IL_0025: ldind.u4  
IL_0026: brfalse   IL_003b
IL_002b: mono_not_taken
IL_002d: mono_icall <mono_thread_interruption_checkpoint>
IL_0033: dup       
IL_0034: brfalse   IL_003a
IL_0039: throw     
IL_003a: pop       
IL_003b: ret       
// Gtk.Window:set_Resizable (bool)
IL_0000: call      <Gtk.Application:AssertMainThread ()>
IL_0005: ldarg.0   
IL_0006: call      <GLib.Object:get_Handle ()>
IL_000b: ldarg.1   
IL_000c: call      <Gtk.Window:gtk_window_set_resizable (intptr,bool)>
IL_0011: ret       
// (wrapper managed-to-native) Gtk.Window:gtk_window_set_resizable (intptr,bool)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldarg.1   
IL_0003: brfalse   IL_000b
IL_0008: ldc.i4.1  
IL_0009: stloc.s   5
IL_000b: ldloca.s  3
IL_000d: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_0013: stloc.s   4
IL_0015: ldarg.0   
IL_0016: ldloc.s   5
IL_0018: mono_ldptr3
IL_001e: calli     <intptr,int>
IL_0023: ldloc.s   4
IL_0025: ldloca.s  3
IL_0027: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_002d: mono_ldptr_int_req_flag
IL_002f: ldind.u4  
IL_0030: brfalse   IL_0045
IL_0035: mono_not_taken
IL_0037: mono_icall <mono_thread_interruption_checkpoint>
IL_003d: dup       
IL_003e: brfalse   IL_0044
IL_0043: throw     
IL_0044: pop       
IL_0045: ret       
// Gtk.Widget:add_DeleteEvent (Gtk.DeleteEventHandler)
IL_0000: ldarg.0   
IL_0001: ldstr     "delete_event"
IL_0006: ldtoken   <0x0200011c>
IL_000b: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_0010: call      <GLib.Signal:Lookup (GLib.Object,string,System.Type)>
IL_0015: stloc.0   
IL_0016: ldloc.0   
IL_0017: ldarg.1   
IL_0018: callvirt  <GLib.Signal:AddDelegate (System.Delegate)>
IL_001d: ret       
// Gtk.Widget:add_ButtonPressEvent (Gtk.ButtonPressEventHandler)
IL_0000: ldarg.0   
IL_0001: ldstr     "button_press_event"
IL_0006: ldtoken   <0x02000075>
IL_000b: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_0010: call      <GLib.Signal:Lookup (GLib.Object,string,System.Type)>
IL_0015: stloc.0   
IL_0016: ldloc.0   
IL_0017: ldarg.1   
IL_0018: callvirt  <GLib.Signal:AddDelegate (System.Delegate)>
IL_001d: ret       
// Gtk.Widget:add_KeyPressEvent (Gtk.KeyPressEventHandler)
IL_0000: ldarg.0   
IL_0001: ldstr     "key_press_event"
IL_0006: ldtoken   <0x020002fa>
IL_000b: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_0010: call      <GLib.Signal:Lookup (GLib.Object,string,System.Type)>
IL_0015: stloc.0   
IL_0016: ldloc.0   
IL_0017: ldarg.1   
IL_0018: callvirt  <GLib.Signal:AddDelegate (System.Delegate)>
IL_001d: ret       
// GLib.Object:get_BeforeSignals ()
IL_0000: ldarg.0   
IL_0001: ldfld     <GLib.Object:before_signals>
IL_0006: brtrue    IL_0016
IL_000b: ldarg.0   
IL_000c: newobj    <System.Collections.Hashtable:.ctor ()>
IL_0011: stfld     <GLib.Object:before_signals>
IL_0016: ldarg.0   
IL_0017: ldfld     <GLib.Object:before_signals>
IL_001c: ret       
// Gtk.Widget:add_KeyReleaseEvent (Gtk.KeyReleaseEventHandler)
IL_0000: ldarg.0   
IL_0001: ldstr     "key_release_event"
IL_0006: ldtoken   <0x020002fc>
IL_000b: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_0010: call      <GLib.Signal:Lookup (GLib.Object,string,System.Type)>
IL_0015: stloc.0   
IL_0016: ldloc.0   
IL_0017: ldarg.1   
IL_0018: callvirt  <GLib.Signal:AddDelegate (System.Delegate)>
IL_001d: ret       
// Gtk.Widget:AddEvents (int)
IL_0000: call      <Gtk.Application:AssertMainThread ()>
IL_0005: ldarg.0   
IL_0006: call      <GLib.Object:get_Handle ()>
IL_000b: ldarg.1   
IL_000c: call      <Gtk.Widget:gtk_widget_add_events (intptr,int)>
IL_0011: ret       
// (wrapper managed-to-native) Gtk.Widget:gtk_widget_add_events (intptr,int)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: ldarg.0   
IL_000d: ldarg.1   
IL_000e: mono_ldptr3
IL_0014: calli     <intptr,int>
IL_0019: ldloc.s   4
IL_001b: ldloca.s  3
IL_001d: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0023: mono_ldptr_int_req_flag
IL_0025: ldind.u4  
IL_0026: brfalse   IL_003b
IL_002b: mono_not_taken
IL_002d: mono_icall <mono_thread_interruption_checkpoint>
IL_0033: dup       
IL_0034: brfalse   IL_003a
IL_0039: throw     
IL_003a: pop       
IL_003b: ret       
// MlEco.MlEcoApp:InitDrawables ()
IL_0000: ldarg.0   
IL_0001: newobj    <Gtk.DrawingArea:.ctor ()>
IL_0006: stfld     <MlEco.MlEcoApp:drawingArea>
IL_000b: ldarg.0   
IL_000c: ldfld     <MlEco.MlEcoApp:drawingArea>
IL_0011: ldc.i4    720
IL_0016: callvirt  <Gtk.Widget:set_WidthRequest (int)>
IL_001b: ldarg.0   
IL_001c: ldfld     <MlEco.MlEcoApp:drawingArea>
IL_0021: ldc.i4    450
IL_0026: callvirt  <Gtk.Widget:set_HeightRequest (int)>
IL_002b: ldarg.0   
IL_002c: ldfld     <MlEco.MlEcoApp:drawingArea>
IL_0031: ldarg.0   
IL_0032: dup       
IL_0033: ldvirtftn <0x06000042>
IL_0039: newobj    <Gtk.ExposeEventHandler:.ctor (object,intptr)>
IL_003e: callvirt  <Gtk.Widget:add_ExposeEvent (Gtk.ExposeEventHandler)>
IL_0043: ldarg.0   
IL_0044: ldfld     <MlEco.MlEcoApp:drawingArea>
IL_0049: ldc.i4.0  
IL_004a: ldc.i4    250
IL_004f: ldc.i4    250
IL_0054: ldc.i4    250
IL_0059: newobj    <Gdk.Color:.ctor (byte,byte,byte)>
IL_005e: callvirt  <Gtk.Widget:ModifyBg (Gtk.StateType,Gdk.Color)>
IL_0063: ret       
// Gtk.DrawingArea:.ctor ()
IL_0000: ldarg.0   
IL_0001: ldsfld    <System.IntPtr:Zero>
IL_0006: call      <Gtk.Widget:.ctor (intptr)>
IL_000b: ldarg.0   
IL_000c: call      <object:GetType ()>
IL_0011: ldtoken   <0x02000152>
IL_0016: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_001b: call      <System.Type:op_Inequality (System.Type,System.Type)>
IL_0020: brfalse   IL_003c
IL_0025: call      <Gtk.Application:AssertMainThread ()>
IL_002a: ldarg.0   
IL_002b: call      <System.Array:Empty<intptr> ()>
IL_0030: call      <System.Array:Empty<GLib.Value> ()>
IL_0035: ldc.i4.0  
IL_0036: call      <GLib.Object:CreateNativeObject (intptr[],GLib.Value[],int)>
IL_003b: ret       
IL_003c: ldarg.0   
IL_003d: ldc.i4.1  
IL_003e: stfld     <GLib.Object:owned>
IL_0043: ldarg.0   
IL_0044: call      <Gtk.DrawingArea:gtk_drawing_area_new ()>
IL_0049: callvirt  <GLib.Object:set_Raw (intptr)>
IL_004e: ret       
// Gtk.DrawingArea:.cctor ()
IL_0000: call      <Gtk.DrawingArea:gtk_drawing_area_get_type ()>
IL_0005: newobj    <GLib.GType:.ctor (intptr)>
IL_000a: stsfld    <Gtk.DrawingArea:_gtype>
IL_000f: ret       
// (wrapper managed-to-native) Gtk.DrawingArea:gtk_drawing_area_get_type ()
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: mono_ldptr3
IL_0012: calli     <>
IL_0017: ldloc.s   5
IL_0019: ldloca.s  4
IL_001b: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0021: stloc.3   
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ldloc.3   
IL_003b: ret       
// (wrapper managed-to-native) Gtk.DrawingArea:gtk_drawing_area_new ()
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: mono_ldptr3
IL_0012: calli     <>
IL_0017: ldloc.s   5
IL_0019: ldloca.s  4
IL_001b: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0021: stloc.3   
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ldloc.3   
IL_003b: ret       
// Gtk.Widget:set_WidthRequest (int)
IL_0000: ldloca.s  0
IL_0002: ldarg.1   
IL_0003: call      <GLib.Value:.ctor (int)>
IL_0008: ldarg.0   
IL_0009: ldstr     "width-request"
IL_000e: ldloc.0   
IL_000f: call      <GLib.Object:SetProperty (string,GLib.Value)>
IL_0014: leave     IL_0027
IL_0019: ldloca.s  0
IL_001b: constrained.<0x0100000e>
IL_0021: callvirt  <System.IDisposable:Dispose ()>
IL_0026: endfinally
IL_0027: ret       
// GLib.Value:.ctor (int)
IL_0000: ldarg.0   
IL_0001: ldsfld    <GLib.GType:Int>
IL_0006: call      <GLib.Value:.ctor (GLib.GType)>
IL_000b: ldarg.0   
IL_000c: ldarg.1   
IL_000d: call      <GLib.Value:g_value_set_int (GLib.Value&,int)>
IL_0012: ret       
// GLib.Value:.ctor (GLib.GType)
IL_0000: ldarg.0   
IL_0001: ldsfld    <System.IntPtr:Zero>
IL_0006: stfld     <GLib.Value:type>
IL_000b: ldarg.0   
IL_000c: ldarg.0   
IL_000d: ldc.i4.0  
IL_000e: conv.i8   
IL_000f: dup       
IL_0010: stloc.0   
IL_0011: stfld     <GLib.Value:pad_2>
IL_0016: ldloc.0   
IL_0017: stfld     <GLib.Value:pad_1>
IL_001c: ldarg.0   
IL_001d: ldarga.s  1
IL_001f: call      <GLib.GType:get_Val ()>
IL_0024: call      <GLib.Value:g_value_init (GLib.Value&,intptr)>
IL_0029: ret       
// (wrapper managed-to-native) GLib.Value:g_value_set_int (GLib.Value&,int)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: ldarg.0   
IL_000d: ldarg.1   
IL_000e: mono_ldptr3
IL_0014: calli     <Value&,int>
IL_0019: ldloc.s   4
IL_001b: ldloca.s  3
IL_001d: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0023: mono_ldptr_int_req_flag
IL_0025: ldind.u4  
IL_0026: brfalse   IL_003b
IL_002b: mono_not_taken
IL_002d: mono_icall <mono_thread_interruption_checkpoint>
IL_0033: dup       
IL_0034: brfalse   IL_003a
IL_0039: throw     
IL_003a: pop       
IL_003b: ret       
// GLib.Object:SetProperty (string,GLib.Value)
IL_0000: ldarg.1   
IL_0001: call      <GLib.Marshaller:StringToPtrGStrdup (string)>
IL_0006: stloc.0   
IL_0007: ldarg.0   
IL_0008: callvirt  <GLib.Object:get_Raw ()>
IL_000d: ldloc.0   
IL_000e: ldarga.s  2
IL_0010: call      <GLib.Object:g_object_set_property (intptr,intptr,GLib.Value&)>
IL_0015: ldloc.0   
IL_0016: call      <GLib.Marshaller:Free (intptr)>
IL_001b: ret       
// Gtk.Object:get_Raw ()
IL_0000: ldarg.0   
IL_0001: call      <GLib.Object:get_Raw ()>
IL_0006: ret       
// (wrapper managed-to-native) GLib.Object:g_object_set_property (intptr,intptr,GLib.Value&)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: ldarg.0   
IL_000d: ldarg.1   
IL_000e: ldarg.2   
IL_000f: mono_ldptr3
IL_0015: calli     <intptr,intptr,Value&>
IL_001a: ldloc.s   4
IL_001c: ldloca.s  3
IL_001e: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0024: mono_ldptr_int_req_flag
IL_0026: ldind.u4  
IL_0027: brfalse   IL_003c
IL_002c: mono_not_taken
IL_002e: mono_icall <mono_thread_interruption_checkpoint>
IL_0034: dup       
IL_0035: brfalse   IL_003b
IL_003a: throw     
IL_003b: pop       
IL_003c: ret       
// Gtk.Widget:set_HeightRequest (int)
IL_0000: ldloca.s  0
IL_0002: ldarg.1   
IL_0003: call      <GLib.Value:.ctor (int)>
IL_0008: ldarg.0   
IL_0009: ldstr     "height-request"
IL_000e: ldloc.0   
IL_000f: call      <GLib.Object:SetProperty (string,GLib.Value)>
IL_0014: leave     IL_0027
IL_0019: ldloca.s  0
IL_001b: constrained.<0x0100000e>
IL_0021: callvirt  <System.IDisposable:Dispose ()>
IL_0026: endfinally
IL_0027: ret       
// (wrapper managed-to-native) object:__icall_wrapper_mono_ldvirtfn (object,intptr)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: mono_jit_icall_addr2
IL_0008: calli     <object,intptr>
IL_000d: mono_ldptr_int_req_flag
IL_000f: ldind.u4  
IL_0010: brfalse   IL_0025
IL_0015: mono_not_taken
IL_0017: mono_icall <mono_thread_interruption_checkpoint>
IL_001d: dup       
IL_001e: brfalse   IL_0024
IL_0023: throw     
IL_0024: pop       
IL_0025: ret       
// Gtk.Widget:add_ExposeEvent (Gtk.ExposeEventHandler)
IL_0000: ldarg.0   
IL_0001: ldstr     "expose_event"
IL_0006: ldtoken   <0x0200018d>
IL_000b: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_0010: call      <GLib.Signal:Lookup (GLib.Object,string,System.Type)>
IL_0015: stloc.0   
IL_0016: ldloc.0   
IL_0017: ldarg.1   
IL_0018: callvirt  <GLib.Signal:AddDelegate (System.Delegate)>
IL_001d: ret       
// Gdk.Color:.ctor (byte,byte,byte)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: ldc.i4.8  
IL_0003: shl       
IL_0004: ldarg.1   
IL_0005: or        
IL_0006: conv.u2   
IL_0007: stfld     <Gdk.Color:Red>
IL_000c: ldarg.0   
IL_000d: ldarg.2   
IL_000e: ldc.i4.8  
IL_000f: shl       
IL_0010: ldarg.2   
IL_0011: or        
IL_0012: conv.u2   
IL_0013: stfld     <Gdk.Color:Green>
IL_0018: ldarg.0   
IL_0019: ldarg.3   
IL_001a: ldc.i4.8  
IL_001b: shl       
IL_001c: ldarg.3   
IL_001d: or        
IL_001e: conv.u2   
IL_001f: stfld     <Gdk.Color:Blue>
IL_0024: ldarg.0   
IL_0025: ldc.i4.0  
IL_0026: stfld     <Gdk.Color:Pixel>
IL_002b: ret       
// Gdk.Color:.cctor ()
IL_0000: ldloca.s  0
IL_0002: initobj   <0x02000010>
IL_0008: ldloc.0   
IL_0009: stsfld    <Gdk.Color:Zero>
IL_000e: ret       
// (wrapper runtime-invoke) object:runtime_invoke_void (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0034
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.3   
IL_001f: calli     <>
IL_0024: leave     IL_0032
IL_0029: stloc.1   
IL_002a: ldarg.2   
IL_002b: ldloc.1   
IL_002c: stind.ref 
IL_002d: leave     IL_0032
IL_0032: ldloc.0   
IL_0033: ret       
IL_0034: mono_ldptr_int_req_flag
IL_0036: ldind.u4  
IL_0037: brfalse   IL_004c
IL_003c: mono_not_taken
IL_003e: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0044: dup       
IL_0045: brfalse   IL_004b
IL_004a: throw     
IL_004b: pop       
IL_004c: ldarg.3   
IL_004d: calli     <>
IL_0052: ldloc.0   
IL_0053: ret       
// Gtk.Widget:ModifyBg (Gtk.StateType,Gdk.Color)
IL_0000: call      <Gtk.Application:AssertMainThread ()>
IL_0005: ldarg.0   
IL_0006: call      <GLib.Object:get_Handle ()>
IL_000b: ldarg.1   
IL_000c: ldarga.s  2
IL_000e: call      <Gtk.Widget:gtk_widget_modify_bg (intptr,int,Gdk.Color&)>
IL_0013: ret       
// (wrapper managed-to-native) Gtk.Widget:gtk_widget_modify_bg (intptr,int,Gdk.Color&)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: ldarg.0   
IL_000d: ldarg.1   
IL_000e: ldarg.2   
IL_000f: mono_ldptr3
IL_0015: calli     <intptr,int,Color&>
IL_001a: ldloc.s   4
IL_001c: ldloca.s  3
IL_001e: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0024: mono_ldptr_int_req_flag
IL_0026: ldind.u4  
IL_0027: brfalse   IL_003c
IL_002c: mono_not_taken
IL_002e: mono_icall <mono_thread_interruption_checkpoint>
IL_0034: dup       
IL_0035: brfalse   IL_003b
IL_003a: throw     
IL_003b: pop       
IL_003c: ret       
// MlEco.MlEcoApp:InitGui ()
IL_0000: ldarg.0   
IL_0001: ldfld     <MlEco.MlEcoApp:guiContainer>
IL_0006: ldc.i4.3  
IL_0007: callvirt  <Gtk.ButtonBox:set_LayoutStyle (Gtk.ButtonBoxStyle)>
IL_000c: ldarg.0   
IL_000d: ldfld     <MlEco.MlEcoApp:guiContainer>
IL_0012: ldc.i4.2  
IL_0013: callvirt  <Gtk.Box:set_Spacing (int)>
IL_0018: ldstr     "FastForward"
IL_001d: newobj    <Gtk.ToggleButton:.ctor (string)>
IL_0022: stloc.0   
IL_0023: ldstr     "Keep best"
IL_0028: newobj    <Gtk.ToggleButton:.ctor (string)>
IL_002d: stloc.1   
IL_002e: ldarg.0   
IL_002f: ldfld     <MlEco.MlEcoApp:mainContainer>
IL_0034: ldarg.0   
IL_0035: ldfld     <MlEco.MlEcoApp:drawingArea>
IL_003a: callvirt  <Gtk.Container:Add (Gtk.Widget)>
IL_003f: ldarg.0   
IL_0040: ldfld     <MlEco.MlEcoApp:guiContainer>
IL_0045: ldloc.0   
IL_0046: callvirt  <Gtk.Container:Add (Gtk.Widget)>
IL_004b: ldarg.0   
IL_004c: ldfld     <MlEco.MlEcoApp:guiContainer>
IL_0051: ldloc.1   
IL_0052: callvirt  <Gtk.Container:Add (Gtk.Widget)>
IL_0057: ldarg.0   
IL_0058: call      <MlEco.MlEcoApp:SetButtonBoxSize ()>
IL_005d: ldarg.0   
IL_005e: ldarg.0   
IL_005f: ldfld     <MlEco.MlEcoApp:mainContainer>
IL_0064: call      <Gtk.Container:Add (Gtk.Widget)>
IL_0069: ret       
// Gtk.ButtonBox:set_LayoutStyle (Gtk.ButtonBoxStyle)
IL_0000: ldloca.s  0
IL_0002: ldarg.1   
IL_0003: box       <0x02000072>
IL_0008: call      <GLib.Value:.ctor (object)>
IL_000d: ldarg.0   
IL_000e: ldstr     "layout-style"
IL_0013: ldloc.0   
IL_0014: call      <GLib.Object:SetProperty (string,GLib.Value)>
IL_0019: leave     IL_002c
IL_001e: ldloca.s  0
IL_0020: constrained.<0x0100000e>
IL_0026: callvirt  <System.IDisposable:Dispose ()>
IL_002b: endfinally
IL_002c: ret       
// Gtk.ButtonBoxStyleAttribute:.ctor ()
IL_0000: ldarg.0   
IL_0001: call      <GLib.GTypeTypeAttribute:.ctor ()>
IL_0006: ret       
// Gtk.ButtonBoxStyleAttribute:.cctor ()
IL_0000: call      <Gtk.ButtonBoxStyleAttribute:gtk_button_box_style_get_type ()>
IL_0005: newobj    <GLib.GType:.ctor (intptr)>
IL_000a: stsfld    <Gtk.ButtonBoxStyleAttribute:_gtype>
IL_000f: ret       
// (wrapper managed-to-native) Gtk.ButtonBoxStyleAttribute:gtk_button_box_style_get_type ()
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: mono_ldptr3
IL_0012: calli     <>
IL_0017: ldloc.s   5
IL_0019: ldloca.s  4
IL_001b: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0021: stloc.3   
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ldloc.3   
IL_003b: ret       
// Gtk.ButtonBoxStyleAttribute:get_Type ()
IL_0000: ldsfld    <Gtk.ButtonBoxStyleAttribute:_gtype>
IL_0005: ret       
// Gtk.Box:set_Spacing (int)
IL_0000: call      <Gtk.Application:AssertMainThread ()>
IL_0005: ldarg.0   
IL_0006: call      <GLib.Object:get_Handle ()>
IL_000b: ldarg.1   
IL_000c: call      <Gtk.Box:gtk_box_set_spacing (intptr,int)>
IL_0011: ret       
// (wrapper managed-to-native) Gtk.Box:gtk_box_set_spacing (intptr,int)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: ldarg.0   
IL_000d: ldarg.1   
IL_000e: mono_ldptr3
IL_0014: calli     <intptr,int>
IL_0019: ldloc.s   4
IL_001b: ldloca.s  3
IL_001d: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0023: mono_ldptr_int_req_flag
IL_0025: ldind.u4  
IL_0026: brfalse   IL_003b
IL_002b: mono_not_taken
IL_002d: mono_icall <mono_thread_interruption_checkpoint>
IL_0033: dup       
IL_0034: brfalse   IL_003a
IL_0039: throw     
IL_003a: pop       
IL_003b: ret       
// Gtk.ToggleButton:.ctor (string)
IL_0000: ldarg.0   
IL_0001: ldsfld    <System.IntPtr:Zero>
IL_0006: call      <Gtk.Button:.ctor (intptr)>
IL_000b: ldarg.0   
IL_000c: call      <object:GetType ()>
IL_0011: ldtoken   <0x0200056e>
IL_0016: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_001b: call      <System.Type:op_Inequality (System.Type,System.Type)>
IL_0020: brfalse   IL_0066
IL_0025: call      <Gtk.Application:AssertMainThread ()>
IL_002a: ldc.i4.1  
IL_002b: newarr    <0x0100000e>
IL_0030: stloc.0   
IL_0031: ldc.i4.1  
IL_0032: newarr    <0x0100001a>
IL_0037: stloc.1   
IL_0038: ldloc.1   
IL_0039: ldc.i4.0  
IL_003a: ldelema   <IntPtr>
IL_003f: ldstr     "label"
IL_0044: call      <GLib.Marshaller:StringToPtrGStrdup (string)>
IL_0049: stind.i   
IL_004a: ldloc.0   
IL_004b: ldc.i4.0  
IL_004c: ldelema   <Value>
IL_0051: ldarg.1   
IL_0052: newobj    <GLib.Value:.ctor (string)>
IL_0057: stobj     <0x0100000e>
IL_005c: ldarg.0   
IL_005d: ldloc.1   
IL_005e: ldloc.0   
IL_005f: ldc.i4.1  
IL_0060: call      <GLib.Object:CreateNativeObject (intptr[],GLib.Value[],int)>
IL_0065: ret       
IL_0066: call      <Gtk.Application:AssertMainThread ()>
IL_006b: ldarg.1   
IL_006c: call      <GLib.Marshaller:StringToPtrGStrdup (string)>
IL_0071: stloc.2   
IL_0072: ldarg.0   
IL_0073: ldc.i4.1  
IL_0074: stfld     <GLib.Object:owned>
IL_0079: ldarg.0   
IL_007a: ldloc.2   
IL_007b: call      <Gtk.ToggleButton:gtk_toggle_button_new_with_mnemonic (intptr)>
IL_0080: callvirt  <GLib.Object:set_Raw (intptr)>
IL_0085: ldloc.2   
IL_0086: call      <GLib.Marshaller:Free (intptr)>
IL_008b: ret       
// Gtk.ToggleButton:.cctor ()
IL_0000: call      <Gtk.ToggleButton:gtk_toggle_button_get_type ()>
IL_0005: newobj    <GLib.GType:.ctor (intptr)>
IL_000a: stsfld    <Gtk.ToggleButton:_gtype>
IL_000f: ret       
// (wrapper managed-to-native) Gtk.ToggleButton:gtk_toggle_button_get_type ()
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: mono_ldptr3
IL_0012: calli     <>
IL_0017: ldloc.s   5
IL_0019: ldloca.s  4
IL_001b: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0021: stloc.3   
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ldloc.3   
IL_003b: ret       
// Gtk.Button:.ctor (intptr)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: call      <Gtk.Bin:.ctor (intptr)>
IL_0007: ret       
// Gtk.Button:.cctor ()
IL_0000: call      <Gtk.Button:gtk_button_get_type ()>
IL_0005: newobj    <GLib.GType:.ctor (intptr)>
IL_000a: stsfld    <Gtk.Button:_gtype>
IL_000f: ret       
// (wrapper managed-to-native) Gtk.Button:gtk_button_get_type ()
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: mono_ldptr3
IL_0012: calli     <>
IL_0017: ldloc.s   5
IL_0019: ldloca.s  4
IL_001b: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0021: stloc.3   
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ldloc.3   
IL_003b: ret       
// (wrapper managed-to-native) Gtk.ToggleButton:gtk_toggle_button_new_with_mnemonic (intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: ldarg.0   
IL_000d: mono_ldptr3
IL_0013: calli     <intptr>
IL_0018: ldloc.s   5
IL_001a: ldloca.s  4
IL_001c: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0022: stloc.3   
IL_0023: mono_ldptr_int_req_flag
IL_0025: ldind.u4  
IL_0026: brfalse   IL_003b
IL_002b: mono_not_taken
IL_002d: mono_icall <mono_thread_interruption_checkpoint>
IL_0033: dup       
IL_0034: brfalse   IL_003a
IL_0039: throw     
IL_003a: pop       
IL_003b: ldloc.3   
IL_003c: ret       
// Gtk.Container:Add (Gtk.Widget)
IL_0000: call      <Gtk.Application:AssertMainThread ()>
IL_0005: ldarg.0   
IL_0006: call      <GLib.Object:get_Handle ()>
IL_000b: ldarg.1   
IL_000c: brtrue    IL_001b
IL_0011: ldsfld    <System.IntPtr:Zero>
IL_0016: br        IL_0021
IL_001b: ldarg.1   
IL_001c: callvirt  <GLib.Object:get_Handle ()>
IL_0021: call      <Gtk.Container:gtk_container_add (intptr,intptr)>
IL_0026: ret       
// (wrapper managed-to-native) Gtk.Container:gtk_container_add (intptr,intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: ldarg.0   
IL_000d: ldarg.1   
IL_000e: mono_ldptr3
IL_0014: calli     <intptr,intptr>
IL_0019: ldloc.s   4
IL_001b: ldloca.s  3
IL_001d: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0023: mono_ldptr_int_req_flag
IL_0025: ldind.u4  
IL_0026: brfalse   IL_003b
IL_002b: mono_not_taken
IL_002d: mono_icall <mono_thread_interruption_checkpoint>
IL_0033: dup       
IL_0034: brfalse   IL_003a
IL_0039: throw     
IL_003a: pop       
IL_003b: ret       
// Gtk.Widget:ShowAll ()
IL_0000: ldarg.0   
IL_0001: call      <GLib.Object:get_Handle ()>
IL_0006: call      <Gtk.Widget:gtk_widget_show_all (intptr)>
IL_000b: ret       
// (wrapper managed-to-native) Gtk.Widget:gtk_widget_show_all (intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: ldarg.0   
IL_000d: mono_ldptr3
IL_0013: calli     <intptr>
IL_0018: ldloc.s   4
IL_001a: ldloca.s  3
IL_001c: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ret       
// MlEco.MlEcoApp:StartNewThreads ()
IL_0000: ldarg.0   
IL_0001: callvirt  <MlEco.MlEcoApp:StartSimulationThread ()>
IL_0006: ldarg.0   
IL_0007: call      <MlEco.MlEcoApp:StartDrawThread ()>
IL_000c: ret       
// MlEco.MlEcoApp:StartSimulationThread ()
IL_0000: ldarg.0   
IL_0001: ldfld     <MlEco.MlEcoApp:simulation>
IL_0006: brfalse.s IL_001b
IL_0008: ldarg.0   
IL_0009: ldfld     <MlEco.MlEcoApp:simulation>
IL_000e: ldfld     <MlEco.Simulation:isRunning>
IL_0013: brfalse.s IL_001b
IL_0015: ldarg.0   
IL_0016: call      <MlEco.MlEcoApp:EndSimulation ()>
IL_001b: ldarg.0   
IL_001c: newobj    <MlEco.Simulation:.ctor ()>
IL_0021: stfld     <MlEco.MlEcoApp:simulation>
IL_0026: ldarg.0   
IL_0027: ldarg.0   
IL_0028: ldftn     <0x06000058>
IL_002e: newobj    <System.Threading.ThreadStart:.ctor (object,intptr)>
IL_0033: newobj    <System.Threading.Thread:.ctor (System.Threading.ThreadStart)>
IL_0038: stfld     <MlEco.MlEcoApp:simulationThread>
IL_003d: ldarg.0   
IL_003e: ldfld     <MlEco.MlEcoApp:simulationThread>
IL_0043: callvirt  <System.Threading.Thread:Start ()>
IL_0048: ret       
// MlEco.Literals:.cctor ()
IL_0000: ldc.i4.s  60
IL_0002: stsfld    <MlEco.Literals:INIT_CREATURES_NUM>
IL_0007: ldc.i4.s  60
IL_0009: stsfld    <MlEco.Literals:MAX_CREATURES>
IL_000e: ldc.i4.s  30
IL_0010: stsfld    <MlEco.Literals:MIN_CREATURES>
IL_0015: ldc.r8    1.25
IL_001e: stsfld    <MlEco.Literals:INIT_CREATURES_SIZE>
IL_0023: ldc.i4    1000
IL_0028: stsfld    <MlEco.Literals:INIT_CREATURE_ENERGY>
IL_002d: ldc.i4.s  50
IL_002f: stsfld    <MlEco.Literals:MATING_CYCLE_LENGTH>
IL_0034: ldc.i4    2000
IL_0039: stsfld    <MlEco.Literals:CREATURE_MAX_LIFESPAN>
IL_003e: ldc.r8    0.1
IL_0047: stsfld    <MlEco.Literals:SENSORY_SPAN>
IL_004c: ldc.r8    1
IL_0055: stsfld    <MlEco.Literals:MAX_RANDOM_FOOD_SIZE>
IL_005a: ldc.r8    150
IL_0063: stsfld    <MlEco.Literals:INIT_FOOD_NUM>
IL_0068: ldc.i4.3  
IL_0069: newarr    <0x0100003e>
IL_006e: dup       
IL_006f: ldc.i4.0  
IL_0070: ldc.r8    1
IL_0079: stelem.r8 
IL_007a: dup       
IL_007b: ldc.i4.1  
IL_007c: ldc.r8    1
IL_0085: stelem.r8 
IL_0086: stsfld    <MlEco.Literals:FOOD_FILL_COLOR>
IL_008b: ldc.i4.3  
IL_008c: newarr    <0x0100003e>
IL_0091: stsfld    <MlEco.Literals:FOOD_LINE_COLOR>
IL_0096: ldc.i4.s  30
IL_0098: stsfld    <MlEco.Literals:SLOW_TICK_RATE>
IL_009d: ldc.i4.s  30
IL_009f: stsfld    <MlEco.Literals:SLOW_DRAW_RATE>
IL_00a4: ldc.i4    500
IL_00a9: stsfld    <MlEco.Literals:FAST_DRAW_RATE>
IL_00ae: ldc.r8    1.77778
IL_00b7: stsfld    <MlEco.Literals:ASPECT_RATIO>
IL_00bc: ldc.r8    0
IL_00c5: ldc.r8    0
IL_00ce: ldc.r8    0
IL_00d7: newobj    <Cairo.Color:.ctor (double,double,double)>
IL_00dc: stsfld    <MlEco.Literals:BLACK>
IL_00e1: ret       
// (wrapper runtime-invoke) object:runtime_invoke_void (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0034
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.3   
IL_001f: calli     <>
IL_0024: leave     IL_0032
IL_0029: stloc.1   
IL_002a: ldarg.2   
IL_002b: ldloc.1   
IL_002c: stind.ref 
IL_002d: leave     IL_0032
IL_0032: ldloc.0   
IL_0033: ret       
IL_0034: mono_ldptr_int_req_flag
IL_0036: ldind.u4  
IL_0037: brfalse   IL_004c
IL_003c: mono_not_taken
IL_003e: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0044: dup       
IL_0045: brfalse   IL_004b
IL_004a: throw     
IL_004b: pop       
IL_004c: ldarg.3   
IL_004d: calli     <>
IL_0052: ldloc.0   
IL_0053: ret       
// MlEco.Simulation:.ctor ()
IL_0000: ldarg.0   
IL_0001: ldc.i4.s  10
IL_0003: stfld     <MlEco.Simulation:numSegments>
IL_0008: ldarg.0   
IL_0009: newobj    <System.Collections.Generic.List`1<MlEco.Creature>:.ctor ()>
IL_000e: stfld     <MlEco.Simulation:Creatures>
IL_0013: ldarg.0   
IL_0014: newobj    <System.Collections.Generic.List`1<MlEco.Creature>:.ctor ()>
IL_0019: stfld     <MlEco.Simulation:CreaturesHolder>
IL_001e: ldarg.0   
IL_001f: newobj    <System.Collections.Generic.List`1<MlEco.Food>:.ctor ()>
IL_0024: stfld     <MlEco.Simulation:Foods>
IL_0029: ldarg.0   
IL_002a: ldsfld    <MlEco.Literals:SLOW_TICK_RATE>
IL_002f: stfld     <MlEco.Simulation:msPerTick>
IL_0034: ldarg.0   
IL_0035: call      <object:.ctor ()>
IL_003a: ldarg.0   
IL_003b: ldsfld    <MlEco.Literals:INIT_CREATURES_NUM>
IL_0040: stfld     <MlEco.Simulation:maxCreatures>
IL_0045: ldc.i4.0  
IL_0046: stloc.0   
IL_0047: br.s      IL_006c
IL_0049: ldarg.0   
IL_004a: ldfld     <MlEco.Simulation:Creatures>
IL_004f: call      <MlEco.Library:RandomDouble ()>
IL_0054: call      <MlEco.Library:RandomDouble ()>
IL_0059: newobj    <mlEco.Position:.ctor (double,double)>
IL_005e: newobj    <MlEco.Creature:.ctor (mlEco.Position)>
IL_0063: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:Add (MlEco.Creature)>
IL_0068: ldloc.0   
IL_0069: ldc.i4.1  
IL_006a: add       
IL_006b: stloc.0   
IL_006c: ldloc.0   
IL_006d: ldarg.0   
IL_006e: ldfld     <MlEco.Simulation:maxCreatures>
IL_0073: blt.s     IL_0049
IL_0075: ldc.i4.0  
IL_0076: stloc.1   
IL_0077: br.s      IL_008d
IL_0079: ldarg.0   
IL_007a: ldfld     <MlEco.Simulation:Foods>
IL_007f: newobj    <MlEco.Food:.ctor ()>
IL_0084: callvirt  <System.Collections.Generic.List`1<MlEco.Food>:Add (MlEco.Food)>
IL_0089: ldloc.1   
IL_008a: ldc.i4.1  
IL_008b: add       
IL_008c: stloc.1   
IL_008d: ldloc.1   
IL_008e: conv.r8   
IL_008f: ldsfld    <MlEco.Literals:INIT_FOOD_NUM>
IL_0094: blt.s     IL_0079
IL_0096: ldarg.0   
IL_0097: ldfld     <MlEco.Simulation:keyboardCreatureEnabled>
IL_009c: brfalse.s IL_00ba
IL_009e: ldarg.0   
IL_009f: newobj    <MlEco.Creature:.ctor ()>
IL_00a4: stfld     <MlEco.Simulation:keyboardCreature>
IL_00a9: ldarg.0   
IL_00aa: ldfld     <MlEco.Simulation:Creatures>
IL_00af: ldarg.0   
IL_00b0: ldfld     <MlEco.Simulation:keyboardCreature>
IL_00b5: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:Add (MlEco.Creature)>
IL_00ba: ldarg.0   
IL_00bb: ldflda    <0x04000053>
IL_00c0: call      <MlEco.Simulation/TickRateCounter:Init ()>
IL_00c5: ret       
// MlEco.Library:.cctor ()
IL_0000: newobj    <System.Random:.ctor ()>
IL_0005: stsfld    <MlEco.Library:random>
IL_000a: ldc.i4.0  
IL_000b: newobj    <System.Random:.ctor (int)>
IL_0010: stsfld    <MlEco.Library:seededRandom>
IL_0015: ldc.i4.0  
IL_0016: stsfld    <MlEco.Library:diagnosticsMode>
IL_001b: ret       
// (wrapper managed-to-native) System.Environment:get_TickCount ()
IL_0000: mono_ldptr2
IL_0006: calli     <>
IL_000b: mono_ldptr_int_req_flag
IL_000d: ldind.u4  
IL_000e: brfalse   IL_0023
IL_0013: mono_not_taken
IL_0015: mono_icall <mono_thread_interruption_checkpoint>
IL_001b: dup       
IL_001c: brfalse   IL_0022
IL_0021: throw     
IL_0022: pop       
IL_0023: ret       
// MlEco.Library:RandomDouble ()
IL_0000: ldsfld    <MlEco.Library:diagnosticsMode>
IL_0005: brfalse.s IL_0012
IL_0007: ldsfld    <MlEco.Library:seededRandom>
IL_000c: callvirt  <System.Random:NextDouble ()>
IL_0011: ret       
IL_0012: ldsfld    <MlEco.Library:random>
IL_0017: callvirt  <System.Random:NextDouble ()>
IL_001c: ret       
// MlEco.Creature:.cctor ()
IL_0000: ldc.i4.3  
IL_0001: newarr    <0x01000040>
IL_0006: dup       
IL_0007: ldtoken   <0x04000059>
IL_000c: call      <System.Runtime.CompilerServices.RuntimeHelpers:InitializeArray (System.Array,System.RuntimeFieldHandle)>
IL_0011: stsfld    <MlEco.Creature:topology>
IL_0016: ret       
// MlEco.Creature:.ctor (mlEco.Position)
IL_0000: ldarg.0   
IL_0001: ldsfld    <MlEco.Literals:INIT_CREATURE_ENERGY>
IL_0006: conv.r8   
IL_0007: stfld     <MlEco.Creature:energy>
IL_000c: ldarg.0   
IL_000d: ldc.i4.1  
IL_000e: stfld     <MlEco.Creature:isAlive>
IL_0013: ldarg.0   
IL_0014: newobj    <System.Collections.Generic.List`1<MlEco.Creature>:.ctor ()>
IL_0019: stfld     <MlEco.Creature:proximateCreatures>
IL_001e: ldarg.0   
IL_001f: newobj    <System.Collections.Generic.List`1<MlEco.Creature>:.ctor ()>
IL_0024: stfld     <MlEco.Creature:collidingCreatures>
IL_0029: ldarg.0   
IL_002a: newobj    <System.Collections.Generic.List`1<double>:.ctor ()>
IL_002f: stfld     <MlEco.Creature:obstructedFromHeadings>
IL_0034: ldarg.0   
IL_0035: ldc.i4.3  
IL_0036: newarr    <0x0100003e>
IL_003b: stfld     <MlEco.Creature:actionColor>
IL_0040: ldarg.0   
IL_0041: call      <mlEco.SimulationObject:.ctor ()>
IL_0046: ldarg.0   
IL_0047: ldsfld    <MlEco.Creature:topology>
IL_004c: newobj    <MlEco.mlZoo/FCBrain:.ctor (int[])>
IL_0051: stfld     <MlEco.Creature:brain>
IL_0056: ldarg.0   
IL_0057: ldarg.1   
IL_0058: call      <mlEco.SimulationObject:set_position (mlEco.Position)>
IL_005d: ldarg.0   
IL_005e: ldsfld    <MlEco.Literals:INIT_CREATURES_SIZE>
IL_0063: stfld     <mlEco.SimulationObject:size>
IL_0068: ldarg.0   
IL_0069: call      <MlEco.Library:RandomDouble ()>
IL_006e: ldc.r8    2
IL_0077: mul       
IL_0078: ldc.r8    3.14159
IL_0081: mul       
IL_0082: call      <MlEco.Creature:set_heading (double)>
IL_0087: ldarg.0   
IL_0088: ldc.i4.3  
IL_0089: newarr    <0x0100003e>
IL_008e: dup       
IL_008f: ldc.i4.0  
IL_0090: call      <MlEco.Library:RandomDouble ()>
IL_0095: stelem.r8 
IL_0096: dup       
IL_0097: ldc.i4.1  
IL_0098: call      <MlEco.Library:RandomDouble ()>
IL_009d: stelem.r8 
IL_009e: dup       
IL_009f: ldc.i4.2  
IL_00a0: call      <MlEco.Library:RandomDouble ()>
IL_00a5: stelem.r8 
IL_00a6: stfld     <MlEco.Creature:baseColor>
IL_00ab: ldarg.0   
IL_00ac: newobj    <System.Collections.Generic.List`1<MlEco.Library/ICollidable>:.ctor ()>
IL_00b1: call      <MlEco.Creature:set_SensoryGroup (System.Collections.Generic.List`1<MlEco.Library/ICollidable>)>
IL_00b6: ret       
// MlEco.mlZoo/FCBrain:.ctor (int[])
IL_0000: ldarg.0   
IL_0001: call      <object:.ctor ()>
IL_0006: ldarg.0   
IL_0007: ldarg.1   
IL_0008: stfld     <FCBrain:topology>
IL_000d: ldarg.0   
IL_000e: ldarg.0   
IL_000f: ldfld     <FCBrain:topology>
IL_0014: ldlen     
IL_0015: conv.i4   
IL_0016: newarr    <0x0200001e>
IL_001b: stfld     <FCBrain:layers>
IL_0020: ldc.i4.0  
IL_0021: stloc.0   
IL_0022: br.s      IL_003c
IL_0024: ldarg.0   
IL_0025: ldfld     <FCBrain:layers>
IL_002a: ldloc.0   
IL_002b: ldarg.0   
IL_002c: ldfld     <FCBrain:topology>
IL_0031: ldloc.0   
IL_0032: newobj    <MlEco.mlZoo/FCBrain/Layer:.ctor (int[],int)>
IL_0037: stelem.ref
IL_0038: ldloc.0   
IL_0039: ldc.i4.1  
IL_003a: add       
IL_003b: stloc.0   
IL_003c: ldloc.0   
IL_003d: ldarg.0   
IL_003e: ldfld     <FCBrain:topology>
IL_0043: ldlen     
IL_0044: conv.i4   
IL_0045: blt.s     IL_0024
IL_0047: ret       
// MlEco.mlZoo/FCBrain:.cctor ()
IL_0000: ldc.r8    0.01
IL_0009: stsfld    <FCBrain:mutationRate>
IL_000e: ret       
// MlEco.mlZoo/FCBrain/Layer:.ctor (int[],int)
IL_0000: ldarg.0   
IL_0001: call      <object:.ctor ()>
IL_0006: ldarg.0   
IL_0007: ldarg.1   
IL_0008: ldarg.2   
IL_0009: ldelem.i4 
IL_000a: newarr    <0x0200001f>
IL_000f: stfld     <Layer:Nodes>
IL_0014: ldc.i4.0  
IL_0015: stloc.0   
IL_0016: br.s      IL_002c
IL_0018: ldarg.0   
IL_0019: ldfld     <Layer:Nodes>
IL_001e: ldloc.0   
IL_001f: ldarg.1   
IL_0020: ldarg.2   
IL_0021: ldloc.0   
IL_0022: newobj    <MlEco.mlZoo/FCBrain/Node:.ctor (int[],int,int)>
IL_0027: stelem.ref
IL_0028: ldloc.0   
IL_0029: ldc.i4.1  
IL_002a: add       
IL_002b: stloc.0   
IL_002c: ldloc.0   
IL_002d: ldarg.1   
IL_002e: ldarg.2   
IL_002f: ldelem.i4 
IL_0030: blt.s     IL_0018
IL_0032: ret       
// MlEco.mlZoo/FCBrain/Node:.ctor (int[],int,int)
IL_0000: ldarg.0   
IL_0001: call      <object:.ctor ()>
IL_0006: ldarg.0   
IL_0007: ldarg.3   
IL_0008: stfld     <Node:id>
IL_000d: ldarg.2   
IL_000e: brtrue.s  IL_0011
IL_0010: ret       
IL_0011: ldarg.0   
IL_0012: ldarg.1   
IL_0013: ldarg.2   
IL_0014: ldc.i4.1  
IL_0015: sub       
IL_0016: ldelem.i4 
IL_0017: newarr    <0x0100003e>
IL_001c: stfld     <Node:weights>
IL_0021: ldc.i4.0  
IL_0022: stloc.0   
IL_0023: br.s      IL_004a
IL_0025: ldarg.0   
IL_0026: ldfld     <Node:weights>
IL_002b: ldloc.0   
IL_002c: call      <MlEco.Library:RandomDouble ()>
IL_0031: ldc.r8    2
IL_003a: mul       
IL_003b: ldc.r8    1
IL_0044: sub       
IL_0045: stelem.r8 
IL_0046: ldloc.0   
IL_0047: ldc.i4.1  
IL_0048: add       
IL_0049: stloc.0   
IL_004a: ldloc.0   
IL_004b: ldarg.0   
IL_004c: ldfld     <Node:weights>
IL_0051: ldlen     
IL_0052: conv.i4   
IL_0053: blt.s     IL_0025
IL_0055: ldarg.0   
IL_0056: call      <MlEco.Library:RandomDouble ()>
IL_005b: ldc.r8    2
IL_0064: mul       
IL_0065: ldc.r8    1
IL_006e: sub       
IL_006f: stfld     <Node:bias>
IL_0074: ret       
// MlEco.Creature:set_heading (double)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: call      <MlEco.Library:RangeTwoPI (double)>
IL_0007: stfld     <MlEco.Creature:_heading>
IL_000c: ret       
// MlEco.Library:RangeTwoPI (double)
IL_0000: br.s      IL_000f
IL_0002: ldarg.0   
IL_0003: ldc.r8    6.28319
IL_000c: add       
IL_000d: starg.s   0
IL_000f: ldarg.0   
IL_0010: ldc.r8    0
IL_0019: blt.s     IL_0002
IL_001b: br.s      IL_002a
IL_001d: ldarg.0   
IL_001e: ldc.r8    6.28319
IL_0027: sub       
IL_0028: starg.s   0
IL_002a: ldarg.0   
IL_002b: ldc.r8    6.28319
IL_0034: bgt.s     IL_001d
IL_0036: ldarg.0   
IL_0037: ret       
// MlEco.Food:.ctor ()
IL_0000: ldarg.0   
IL_0001: call      <mlEco.SimulationObject:.ctor ()>
IL_0006: ldarg.0   
IL_0007: call      <MlEco.Food:Init ()>
IL_000c: ldarg.0   
IL_000d: call      <MlEco.Library:RandomDouble ()>
IL_0012: ldc.r8    0.75
IL_001b: mul       
IL_001c: ldc.r8    0.333333
IL_0025: add       
IL_0026: ldsfld    <MlEco.Literals:MAX_RANDOM_FOOD_SIZE>
IL_002b: mul       
IL_002c: stfld     <mlEco.SimulationObject:size>
IL_0031: ldarg.0   
IL_0032: ldc.i4.2  
IL_0033: ldarg.0   
IL_0034: ldfld     <mlEco.SimulationObject:size>
IL_0039: ldc.r8    100
IL_0042: mul       
IL_0043: ldsfld    <MlEco.Literals:MAX_RANDOM_FOOD_SIZE>
IL_0048: div       
IL_0049: conv.i4   
IL_004a: mul       
IL_004b: stfld     <MlEco.Food:energy>
IL_0050: ret       
// MlEco.Food:Init ()
IL_0000: ldarg.0   
IL_0001: call      <MlEco.Library:RandomDouble ()>
IL_0006: call      <MlEco.Library:RandomDouble ()>
IL_000b: newobj    <mlEco.Position:.ctor (double,double)>
IL_0010: call      <mlEco.SimulationObject:set_position (mlEco.Position)>
IL_0015: ldarg.0   
IL_0016: ldarg.0   
IL_0017: call      <mlEco.SimulationObject:get_position ()>
IL_001c: stloc.0   
IL_001d: ldloca.s  0
IL_001f: call      <mlEco.Position:get_x ()>
IL_0024: conv.r4   
IL_0025: ldarg.0   
IL_0026: call      <mlEco.SimulationObject:get_position ()>
IL_002b: stloc.0   
IL_002c: ldloca.s  0
IL_002e: call      <mlEco.Position:get_y ()>
IL_0033: conv.r4   
IL_0034: ldc.r4    1.5
IL_0039: ldarg.0   
IL_003a: ldfld     <mlEco.SimulationObject:size>
IL_003f: conv.r4   
IL_0040: mul       
IL_0041: ldc.r4    100
IL_0046: div       
IL_0047: ldc.r4    1.5
IL_004c: ldsfld    <MlEco.Literals:ASPECT_RATIO>
IL_0051: conv.r4   
IL_0052: mul       
IL_0053: ldarg.0   
IL_0054: ldfld     <mlEco.SimulationObject:size>
IL_0059: conv.r4   
IL_005a: mul       
IL_005b: ldc.r4    100
IL_0060: div       
IL_0061: newobj    <System.Drawing.RectangleF:.ctor (single,single,single,single)>
IL_0066: call      <mlEco.SimulationObject:set_rectangle (System.Drawing.RectangleF)>
IL_006b: ret       
// MlEco.Simulation/TickRateCounter:Init ()
IL_0000: ldarg.0   
IL_0001: newobj    <System.Diagnostics.Stopwatch:.ctor ()>
IL_0006: stfld     <TickRateCounter:stopWatch>
IL_000b: ldarg.0   
IL_000c: ldc.i4.0  
IL_000d: stfld     <TickRateCounter:ticks>
IL_0012: ret       
// (wrapper runtime-invoke) object:runtime_invoke_void (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0034
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.3   
IL_001f: calli     <>
IL_0024: leave     IL_0032
IL_0029: stloc.1   
IL_002a: ldarg.2   
IL_002b: ldloc.1   
IL_002c: stind.ref 
IL_002d: leave     IL_0032
IL_0032: ldloc.0   
IL_0033: ret       
IL_0034: mono_ldptr_int_req_flag
IL_0036: ldind.u4  
IL_0037: brfalse   IL_004c
IL_003c: mono_not_taken
IL_003e: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0044: dup       
IL_0045: brfalse   IL_004b
IL_004a: throw     
IL_004b: pop       
IL_004c: ldarg.3   
IL_004d: calli     <>
IL_0052: ldloc.0   
IL_0053: ret       
// (wrapper managed-to-native) System.Threading.Thread:ConstructInternalThread (System.Threading.Thread)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldloca.s  1
IL_000e: ldloca.s  2
IL_0010: mono_icall <mono_icall_start>
IL_0016: stloc.0   
IL_0017: ldarg.0   
IL_0018: mono_icall <mono_icall_handle_new>
IL_001e: ldloca.s  2
IL_0020: mono_ldptr5
IL_0026: calli     <Thread&,intptr>
IL_002b: ldloc.0   
IL_002c: ldloca.s  1
IL_002e: ldloca.s  2
IL_0030: mono_icall <mono_icall_end>
IL_0036: mono_ldptr_int_req_flag
IL_0038: ldind.u4  
IL_0039: brfalse   IL_004e
IL_003e: mono_not_taken
IL_0040: mono_icall <mono_thread_interruption_checkpoint>
IL_0046: dup       
IL_0047: brfalse   IL_004d
IL_004c: throw     
IL_004d: pop       
IL_004e: ret       
// (wrapper managed-to-native) System.Threading.Thread:Thread_internal (System.Threading.Thread,System.MulticastDelegate)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldloca.s  1
IL_000e: ldloca.s  2
IL_0010: mono_icall <mono_icall_start>
IL_0016: stloc.0   
IL_0017: ldarg.0   
IL_0018: mono_icall <mono_icall_handle_new>
IL_001e: ldarg.1   
IL_001f: mono_icall <mono_icall_handle_new>
IL_0025: ldloca.s  2
IL_0027: mono_ldptr6
IL_002d: calli     <Thread&,MulticastDelegate&,intptr>
IL_0032: ldloc.0   
IL_0033: ldloca.s  1
IL_0035: ldloca.s  2
IL_0037: mono_icall <mono_icall_end>
IL_003d: mono_ldptr_int_req_flag
IL_003f: ldind.u4  
IL_0040: brfalse   IL_0055
IL_0045: mono_not_taken
IL_0047: mono_icall <mono_thread_interruption_checkpoint>
IL_004d: dup       
IL_004e: brfalse   IL_0054
IL_0053: throw     
IL_0054: pop       
IL_0055: ret       
// (wrapper runtime-invoke) object:runtime_invoke_void__this__ (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0035
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.0   
IL_001f: ldarg.3   
IL_0020: calli     <>
IL_0025: leave     IL_0033
IL_002a: stloc.1   
IL_002b: ldarg.2   
IL_002c: ldloc.1   
IL_002d: stind.ref 
IL_002e: leave     IL_0033
IL_0033: ldloc.0   
IL_0034: ret       
IL_0035: mono_ldptr_int_req_flag
IL_0037: ldind.u4  
IL_0038: brfalse   IL_004d
IL_003d: mono_not_taken
IL_003f: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0045: dup       
IL_0046: brfalse   IL_004c
IL_004b: throw     
IL_004c: pop       
IL_004d: ldarg.0   
IL_004e: ldarg.3   
IL_004f: calli     <>
IL_0054: ldloc.0   
IL_0055: ret       
// MlEco.MlEcoApp:<StartSimulationThread>b__33_0 ()
IL_0000: ldarg.0   
IL_0001: ldfld     <MlEco.MlEcoApp:simulation>
IL_0006: callvirt  <MlEco.Simulation:Run ()>
IL_000b: ret       
// MlEco.MlEcoApp:StartDrawThread ()
IL_0000: ldarg.0   
IL_0001: ldfld     <MlEco.MlEcoApp:DrawThread>
IL_0006: brfalse.s IL_0014
IL_0008: ldarg.0   
IL_0009: ldfld     <MlEco.MlEcoApp:drawTimerID>
IL_000e: call      <GLib.Source:Remove (uint)>
IL_0013: pop       
IL_0014: ldarg.0   
IL_0015: ldarg.0   
IL_0016: ldftn     <0x06000056>
IL_001c: newobj    <System.Threading.ThreadStart:.ctor (object,intptr)>
IL_0021: newobj    <System.Threading.Thread:.ctor (System.Threading.ThreadStart)>
IL_0026: stfld     <MlEco.MlEcoApp:DrawThread>
IL_002b: ldarg.0   
IL_002c: ldfld     <MlEco.MlEcoApp:DrawThread>
IL_0031: callvirt  <System.Threading.Thread:Start ()>
IL_0036: ret       
// MlEco.MlEcoApp:<StartDrawThread>b__23_0 ()
IL_0000: ldarg.0   
IL_0001: ldsfld    <MlEco.Literals:SLOW_TICK_RATE>
IL_0006: ldarg.0   
IL_0007: ldftn     <0x06000041>
IL_000d: newobj    <GLib.TimeoutHandler:.ctor (object,intptr)>
IL_0012: call      <GLib.Timeout:Add (uint,GLib.TimeoutHandler)>
IL_0017: stfld     <MlEco.MlEcoApp:drawTimerID>
IL_001c: ret       
// MlEco.MlEcoApp:LoadSimulation ()
IL_0000: ldarg.0   
IL_0001: ldfld     <MlEco.MlEcoApp:simulation>
IL_0006: callvirt  <MlEco.Simulation:RequestEnd ()>
IL_000b: ldarg.0   
IL_000c: ldfld     <MlEco.MlEcoApp:simulationThread>
IL_0011: callvirt  <System.Threading.Thread:Join ()>
IL_0016: ldarg.0   
IL_0017: call      <MlEco.Library:Load ()>
IL_001c: stfld     <MlEco.MlEcoApp:simulation>
IL_0021: ldarg.0   
IL_0022: ldarg.0   
IL_0023: ldftn     <0x06000057>
IL_0029: newobj    <System.Threading.ThreadStart:.ctor (object,intptr)>
IL_002e: newobj    <System.Threading.Thread:.ctor (System.Threading.ThreadStart)>
IL_0033: stfld     <MlEco.MlEcoApp:simulationThread>
IL_0038: ldarg.0   
IL_0039: ldfld     <MlEco.MlEcoApp:simulationThread>
IL_003e: callvirt  <System.Threading.Thread:Start ()>
IL_0043: ret       
// (wrapper managed-to-native) System.Threading.Thread:JoinInternal (System.Threading.Thread,int)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldloca.s  1
IL_000e: ldloca.s  2
IL_0010: mono_icall <mono_icall_start>
IL_0016: stloc.0   
IL_0017: ldarg.0   
IL_0018: mono_icall <mono_icall_handle_new>
IL_001e: ldarg.1   
IL_001f: ldloca.s  2
IL_0021: mono_ldptr5
IL_0027: calli     <Thread&,int,intptr>
IL_002c: ldloc.0   
IL_002d: ldloca.s  1
IL_002f: ldloca.s  2
IL_0031: mono_icall <mono_icall_end>
IL_0037: mono_ldptr_int_req_flag
IL_0039: ldind.u4  
IL_003a: brfalse   IL_004f
IL_003f: mono_not_taken
IL_0041: mono_icall <mono_thread_interruption_checkpoint>
IL_0047: dup       
IL_0048: brfalse   IL_004e
IL_004d: throw     
IL_004e: pop       
IL_004f: ret       
// GLib.Timeout:Add (uint,GLib.TimeoutHandler)
IL_0000: ldarg.1   
IL_0001: newobj    <GLib.Timeout/TimeoutProxy:.ctor (GLib.TimeoutHandler)>
IL_0006: stloc.0   
IL_0007: ldloc.0   
IL_0008: ldarg.0   
IL_0009: ldloc.0   
IL_000a: ldfld     <GLib.SourceProxy:Handler>
IL_000f: ldsfld    <System.IntPtr:Zero>
IL_0014: call      <GLib.Timeout:g_timeout_add (uint,GLib.SourceProxy/GSourceFuncInternal,intptr)>
IL_0019: stfld     <GLib.SourceProxy:ID>
IL_001e: ldloc.0   
IL_001f: call      <GLib.Source:Add (GLib.SourceProxy)>
IL_0024: ldloc.0   
IL_0025: ldfld     <GLib.SourceProxy:ID>
IL_002a: ret       
// GLib.Timeout/TimeoutProxy:.ctor (GLib.TimeoutHandler)
IL_0000: ldarg.0   
IL_0001: call      <GLib.SourceProxy:.ctor ()>
IL_0006: ldarg.0   
IL_0007: ldarg.1   
IL_0008: stfld     <TimeoutProxy:real_handler>
IL_000d: ret       
// MlEco.Simulation:Run ()
IL_0000: ldarg.0   
IL_0001: ldc.i4.1  
IL_0002: stfld     <MlEco.Simulation:isRunning>
IL_0007: ldarg.0   
IL_0008: ldfld     <MlEco.Simulation:AppAsksEndSimualtion>
IL_000d: brtrue    IL_01a4
IL_0012: ldarg.0   
IL_0013: ldfld     <MlEco.Simulation:drawLock>
IL_0018: brtrue.s  IL_0012
IL_001a: ldarg.0   
IL_001b: ldc.i4.1  
IL_001c: stfld     <MlEco.Simulation:updateLock>
IL_0021: ldarg.0   
IL_0022: ldfld     <MlEco.Simulation:reqToggleKeepBest>
IL_0027: brfalse.s IL_0036
IL_0029: ldarg.0   
IL_002a: call      <MlEco.Simulation:ToggleKeepBest ()>
IL_002f: ldarg.0   
IL_0030: ldc.i4.0  
IL_0031: stfld     <MlEco.Simulation:reqToggleKeepBest>
IL_0036: newobj    <System.Diagnostics.Stopwatch:.ctor ()>
IL_003b: stloc.0   
IL_003c: ldloc.0   
IL_003d: callvirt  <System.Diagnostics.Stopwatch:Start ()>
IL_0042: ldarg.0   
IL_0043: callvirt  <MlEco.Simulation:UpdateCollisions ()>
IL_0048: ldarg.0   
IL_0049: call      <MlEco.Simulation:UpdateMating ()>
IL_004e: ldarg.0   
IL_004f: call      <MlEco.Simulation:UpdateCreatures ()>
IL_0054: ldarg.0   
IL_0055: call      <MlEco.Simulation:UpdateFood ()>
IL_005a: ldarg.0   
IL_005b: ldfld     <MlEco.Simulation:Creatures>
IL_0060: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:get_Count ()>
IL_0065: ldsfld    <MlEco.Literals:MIN_CREATURES>
IL_006a: bge       IL_0131
IL_006f: ldarg.0   
IL_0070: ldfld     <MlEco.Simulation:keepBest>
IL_0075: brtrue    IL_0131
IL_007a: ldarg.0   
IL_007b: ldfld     <MlEco.Simulation:Creatures>
IL_0080: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:Sort ()>
IL_0085: ldarg.0   
IL_0086: ldfld     <MlEco.Simulation:Creatures>
IL_008b: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:Reverse ()>
IL_0090: ldc.i4.0  
IL_0091: stloc.1   
IL_0092: br        IL_011a
IL_0097: ldarg.0   
IL_0098: ldfld     <MlEco.Simulation:Creatures>
IL_009d: ldc.i4.s  10
IL_009f: call      <MlEco.Library:RandomInt (int)>
IL_00a4: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:get_Item (int)>
IL_00a9: stloc.2   
IL_00aa: ldarg.0   
IL_00ab: ldfld     <MlEco.Simulation:Creatures>
IL_00b0: ldc.i4.s  10
IL_00b2: call      <MlEco.Library:RandomInt (int)>
IL_00b7: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:get_Item (int)>
IL_00bc: stloc.3   
IL_00bd: br.s      IL_00d2
IL_00bf: ldarg.0   
IL_00c0: ldfld     <MlEco.Simulation:Creatures>
IL_00c5: ldc.i4.s  10
IL_00c7: call      <MlEco.Library:RandomInt (int)>
IL_00cc: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:get_Item (int)>
IL_00d1: stloc.3   
IL_00d2: ldloc.2   
IL_00d3: ldloc.3   
IL_00d4: beq.s     IL_00bf
IL_00d6: ldloc.2   
IL_00d7: ldfld     <MlEco.Creature:brain>
IL_00dc: ldloc.3   
IL_00dd: ldfld     <MlEco.Creature:brain>
IL_00e2: callvirt  <MlEco.mlZoo/FCBrain:CrossOver (MlEco.mlZoo/FCBrain)>
IL_00e7: call      <MlEco.Library:RandomDouble ()>
IL_00ec: call      <MlEco.Library:RandomDouble ()>
IL_00f1: newobj    <mlEco.Position:.ctor (double,double)>
IL_00f6: newobj    <MlEco.Creature:.ctor (MlEco.mlZoo/FCBrain,mlEco.Position)>
IL_00fb: dup       
IL_00fc: ldarg.0   
IL_00fd: ldfld     <MlEco.Simulation:ticksElapsed>
IL_0102: stfld     <MlEco.Creature:lastMatedAtTick>
IL_0107: stloc.s   4
IL_0109: ldarg.0   
IL_010a: ldfld     <MlEco.Simulation:Creatures>
IL_010f: ldloc.s   4
IL_0111: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:Add (MlEco.Creature)>
IL_0116: ldloc.1   
IL_0117: ldc.i4.1  
IL_0118: add       
IL_0119: stloc.1   
IL_011a: ldloc.1   
IL_011b: ldsfld    <MlEco.Literals:MIN_CREATURES>
IL_0120: ldarg.0   
IL_0121: ldfld     <MlEco.Simulation:Creatures>
IL_0126: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:get_Count ()>
IL_012b: sub       
IL_012c: blt       IL_0097
IL_0131: ldarg.0   
IL_0132: ldsfld    <MlEco.Literals:INIT_CREATURES_NUM>
IL_0137: brtrue.s  IL_013c
IL_0139: ldc.i4.0  
IL_013a: br.s      IL_0148
IL_013c: ldarg.0   
IL_013d: ldfld     <MlEco.Simulation:numDied>
IL_0142: ldsfld    <MlEco.Literals:INIT_CREATURES_NUM>
IL_0147: div       
IL_0148: stfld     <MlEco.Simulation:generation>
IL_014d: ldarg.0   
IL_014e: ldc.i4.0  
IL_014f: stfld     <MlEco.Simulation:updateLock>
IL_0154: ldarg.0   
IL_0155: ldarg.0   
IL_0156: ldfld     <MlEco.Simulation:ticksElapsed>
IL_015b: ldc.i4.1  
IL_015c: add       
IL_015d: stfld     <MlEco.Simulation:ticksElapsed>
IL_0162: ldloc.0   
IL_0163: callvirt  <System.Diagnostics.Stopwatch:Stop ()>
IL_0168: ldarg.0   
IL_0169: ldfld     <MlEco.Simulation:msPerTick>
IL_016e: brfalse.s IL_0194
IL_0170: ldarg.0   
IL_0171: ldfld     <MlEco.Simulation:msPerTick>
IL_0176: ldloc.0   
IL_0177: callvirt  <System.Diagnostics.Stopwatch:get_Elapsed ()>
IL_017c: stloc.s   6
IL_017e: ldloca.s  6
IL_0180: call      <System.TimeSpan:get_Milliseconds ()>
IL_0185: sub       
IL_0186: stloc.s   5
IL_0188: ldloc.s   5
IL_018a: ldc.i4.0  
IL_018b: ble.s     IL_0194
IL_018d: ldloc.s   5
IL_018f: call      <System.Threading.Thread:Sleep (int)>
IL_0194: ldarg.0   
IL_0195: ldflda    <0x04000053>
IL_019a: call      <MlEco.Simulation/TickRateCounter:Update ()>
IL_019f: br        IL_0007
IL_01a4: ldarg.0   
IL_01a5: ldc.i4.0  
IL_01a6: stfld     <MlEco.Simulation:isRunning>
IL_01ab: ret       
// GLib.SourceProxy:.ctor ()
IL_0000: ldarg.0   
IL_0001: ldc.i4.1  
IL_0002: stfld     <GLib.SourceProxy:needsAdd>
IL_0007: ldarg.0   
IL_0008: call      <object:.ctor ()>
IL_000d: ldarg.0   
IL_000e: ldarg.0   
IL_000f: ldftn     <0x060002d7>
IL_0015: newobj    <GLib.SourceProxy/GSourceFuncInternal:.ctor (object,intptr)>
IL_001a: stfld     <GLib.SourceProxy:Handler>
IL_001f: ret       
// (wrapper managed-to-native) GLib.Timeout:g_timeout_add (uint,GLib.SourceProxy/GSourceFuncInternal,intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldarg.1   
IL_0003: mono_icall <mono_delegate_to_ftnptr>
IL_0009: stloc.s   6
IL_000b: ldloca.s  4
IL_000d: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_0013: stloc.s   5
IL_0015: ldarg.0   
IL_0016: ldloc.s   6
IL_0018: ldarg.2   
IL_0019: mono_ldptr4
IL_001f: calli     <uint,intptr,intptr>
IL_0024: ldloc.s   5
IL_0026: ldloca.s  4
IL_0028: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_002e: stloc.3   
IL_002f: mono_ldptr_int_req_flag
IL_0031: ldind.u4  
IL_0032: brfalse   IL_0047
IL_0037: mono_not_taken
IL_0039: mono_icall <mono_thread_interruption_checkpoint>
IL_003f: dup       
IL_0040: brfalse   IL_0046
IL_0045: throw     
IL_0046: pop       
IL_0047: ldloc.3   
IL_0048: ret       
// (wrapper native-to-managed) GLib.SourceProxy:HandlerInternal (intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldc.i4.m1 
IL_0003: conv.u4   
IL_0004: stloc.s   4
IL_0006: mono_lddomain
IL_0008: ldloca.s  7
IL_000a: mono_icall <mono_threads_attach_coop>
IL_0010: stloc.s   6
IL_0012: mono_ldptr_int_req_flag
IL_0014: ldind.u4  
IL_0015: brfalse   IL_002a
IL_001a: mono_not_taken
IL_001c: mono_icall <mono_thread_interruption_checkpoint>
IL_0022: dup       
IL_0023: brfalse   IL_0029
IL_0028: throw     
IL_0029: pop       
IL_002a: ldc.i4.s  49
IL_002c: mono_icall <mono_gchandle_get_target>
IL_0032: ldarg.0   
IL_0033: call      <GLib.SourceProxy:HandlerInternal (intptr)>
IL_0038: stloc.3   
IL_0039: ldloc.s   6
IL_003b: ldloca.s  7
IL_003d: mono_icall <mono_threads_detach_coop>
IL_0043: ldloc.3   
IL_0044: ret       
// MlEco.Library:Load ()
IL_0000: ldstr     "lastSim.dat"
IL_0005: call      <System.IO.File:Exists (string)>
IL_000a: brfalse.s IL_001a
IL_000c: ldstr     "lastSim.dat"
IL_0011: ldc.i4.3  
IL_0012: call      <System.IO.File:Open (string,System.IO.FileMode)>
IL_0017: stloc.0   
IL_0018: br.s      IL_0020
IL_001a: newobj    <MlEco.Simulation:.ctor ()>
IL_001f: ret       
IL_0020: newobj    <System.Runtime.Serialization.Formatters.Binary.BinaryFormatter:.ctor ()>
IL_0025: ldloc.0   
IL_0026: callvirt  <System.Runtime.Serialization.Formatters.Binary.BinaryFormatter:Deserialize (System.IO.Stream)>
IL_002b: castclass <Simulation>
IL_0030: ldloc.0   
IL_0031: callvirt  <System.IO.Stream:Close ()>
IL_0036: ret       
// GLib.Source:.cctor ()
IL_0000: newobj    <System.Collections.Generic.Dictionary`2<uint, GLib.SourceProxy>:.ctor ()>
IL_0005: stsfld    <GLib.Source:source_handlers>
IL_000a: ret       
// (wrapper managed-to-native) System.IO.MonoIO:GetCurrentDirectory (System.IO.MonoIOError&)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: dup       
IL_000d: mono_icall <mono_icall_handle_new_interior>
IL_0013: pop       
IL_0014: ldloca.s  2
IL_0016: mono_ldptr4
IL_001c: calli     <MonoIOError&,intptr>
IL_0021: dup       
IL_0022: brfalse   IL_002a
IL_0027: mono_objaddr
IL_0029: ldind.ref 
IL_002a: ldloc.0   
IL_002b: ldloca.s  1
IL_002d: ldloca.s  2
IL_002f: mono_icall <mono_icall_end>
IL_0035: mono_ldptr_int_req_flag
IL_0037: ldind.u4  
IL_0038: brfalse   IL_004d
IL_003d: mono_not_taken
IL_003f: mono_icall <mono_thread_interruption_checkpoint>
IL_0045: dup       
IL_0046: brfalse   IL_004c
IL_004b: throw     
IL_004c: pop       
IL_004d: ret       
// (wrapper managed-to-native) System.Buffer:InternalBlockCopy (System.Array,int,System.Array,int,int)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: ldarg.2   
IL_0003: ldarg.3   
IL_0004: ldarg.s   4
IL_0006: mono_ldptr2
IL_000c: calli     <Array,int,Array,int,int>
IL_0011: mono_ldptr_int_req_flag
IL_0013: ldind.u4  
IL_0014: brfalse   IL_0029
IL_0019: mono_not_taken
IL_001b: mono_icall <mono_thread_interruption_checkpoint>
IL_0021: dup       
IL_0022: brfalse   IL_0028
IL_0027: throw     
IL_0028: pop       
IL_0029: ret       
// System.Collections.Generic.GenericEqualityComparer`1<uint>:.ctor ()
IL_0000: ldarg.0   
IL_0001: call      <System.Collections.Generic.EqualityComparer`1<!0>:.ctor ()>
IL_0006: ret       
// GLib.Source:Add (GLib.SourceProxy)
IL_0000: ldsfld    <GLib.Source:source_handlers>
IL_0005: stloc.0   
IL_0006: ldc.i4.0  
IL_0007: stloc.1   
IL_0008: ldloc.0   
IL_0009: ldloca.s  1
IL_000b: call      <System.Threading.Monitor:Enter (object,bool&)>
IL_0010: ldarg.0   
IL_0011: ldfld     <GLib.SourceProxy:needsAdd>
IL_0016: brfalse   IL_0033
IL_001b: ldarg.0   
IL_001c: ldc.i4.0  
IL_001d: stfld     <GLib.SourceProxy:needsAdd>
IL_0022: ldsfld    <GLib.Source:source_handlers>
IL_0027: ldarg.0   
IL_0028: ldfld     <GLib.SourceProxy:ID>
IL_002d: ldarg.0   
IL_002e: callvirt  <System.Collections.Generic.Dictionary`2<uint, GLib.SourceProxy>:set_Item (uint,GLib.SourceProxy)>
IL_0033: leave     IL_0042
IL_0038: ldloc.1   
IL_0039: brfalse.s IL_0041
IL_003b: ldloc.0   
IL_003c: call      <System.Threading.Monitor:Exit (object)>
IL_0041: endfinally
IL_0042: ret       
// (wrapper managed-to-native) System.Environment:get_ProcessorCount ()
IL_0000: mono_ldptr2
IL_0006: calli     <>
IL_000b: mono_ldptr_int_req_flag
IL_000d: ldind.u4  
IL_000e: brfalse   IL_0023
IL_0013: mono_not_taken
IL_0015: mono_icall <mono_thread_interruption_checkpoint>
IL_001b: dup       
IL_001c: brfalse   IL_0022
IL_0021: throw     
IL_0022: pop       
IL_0023: ret       
// (wrapper managed-to-native) System.Reflection.AssemblyName:ParseAssemblyName (intptr,Mono.MonoAssemblyName&,bool&,bool&)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: ldarg.2   
IL_0003: ldarg.3   
IL_0004: mono_ldptr2
IL_000a: calli     <intptr,MonoAssemblyName&,bool&,bool&>
IL_000f: mono_ldptr_int_req_flag
IL_0011: ldind.u4  
IL_0012: brfalse   IL_0027
IL_0017: mono_not_taken
IL_0019: mono_icall <mono_thread_interruption_checkpoint>
IL_001f: dup       
IL_0020: brfalse   IL_0026
IL_0025: throw     
IL_0026: pop       
IL_0027: ret       
// (wrapper managed-to-managed) string:.ctor (sbyte*,int,int,System.Text.Encoding)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: ldarg.2   
IL_0003: ldarg.3   
IL_0004: ldarg.s   4
IL_0006: call      <string:CreateString (sbyte*,int,int,System.Text.Encoding)>
IL_000b: ret       
// (wrapper managed-to-native) Mono.RuntimeMarshal:FreeAssemblyName (Mono.MonoAssemblyName&,bool)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: dup       
IL_000d: mono_icall <mono_icall_handle_new_interior>
IL_0013: pop       
IL_0014: ldarg.1   
IL_0015: ldloca.s  2
IL_0017: mono_ldptr4
IL_001d: calli     <MonoAssemblyName&,bool,intptr>
IL_0022: ldloc.0   
IL_0023: ldloca.s  1
IL_0025: ldloca.s  2
IL_0027: mono_icall <mono_icall_end>
IL_002d: mono_ldptr_int_req_flag
IL_002f: ldind.u4  
IL_0030: brfalse   IL_0045
IL_0035: mono_not_taken
IL_0037: mono_icall <mono_thread_interruption_checkpoint>
IL_003d: dup       
IL_003e: brfalse   IL_0044
IL_0043: throw     
IL_0044: pop       
IL_0045: ret       
// (wrapper managed-to-native) System.Reflection.Assembly:load_with_partial_name (string,System.Security.Policy.Evidence)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldarg.1   
IL_0013: mono_icall <mono_icall_handle_new>
IL_0019: ldloca.s  2
IL_001b: mono_ldptr5
IL_0021: calli     <string&,Evidence&,intptr>
IL_0026: dup       
IL_0027: brfalse   IL_002f
IL_002c: mono_objaddr
IL_002e: ldind.ref 
IL_002f: ldloc.0   
IL_0030: ldloca.s  1
IL_0032: ldloca.s  2
IL_0034: mono_icall <mono_icall_end>
IL_003a: mono_ldptr_int_req_flag
IL_003c: ldind.u4  
IL_003d: brfalse   IL_0052
IL_0042: mono_not_taken
IL_0044: mono_icall <mono_thread_interruption_checkpoint>
IL_004a: dup       
IL_004b: brfalse   IL_0051
IL_0050: throw     
IL_0051: pop       
IL_0052: ret       
// (wrapper managed-to-native) System.Reflection.Assembly:InternalGetType (System.Reflection.Assembly,System.Reflection.Module,string,bool,bool)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldloca.s  1
IL_000e: ldloca.s  2
IL_0010: mono_icall <mono_icall_start>
IL_0016: stloc.0   
IL_0017: ldarg.0   
IL_0018: mono_icall <mono_icall_handle_new>
IL_001e: ldarg.1   
IL_001f: mono_icall <mono_icall_handle_new>
IL_0025: ldarg.2   
IL_0026: mono_icall <mono_icall_handle_new>
IL_002c: ldarg.3   
IL_002d: ldarg.s   4
IL_002f: ldloca.s  2
IL_0031: mono_ldptr7
IL_0037: calli     <Assembly&,Module&,string&,bool,bool,intptr>
IL_003c: dup       
IL_003d: brfalse   IL_0045
IL_0042: mono_objaddr
IL_0044: ldind.ref 
IL_0045: ldloc.0   
IL_0046: ldloca.s  1
IL_0048: ldloca.s  2
IL_004a: mono_icall <mono_icall_end>
IL_0050: mono_ldptr_int_req_flag
IL_0052: ldind.u4  
IL_0053: brfalse   IL_0068
IL_0058: mono_not_taken
IL_005a: mono_icall <mono_thread_interruption_checkpoint>
IL_0060: dup       
IL_0061: brfalse   IL_0067
IL_0066: throw     
IL_0067: pop       
IL_0068: ret       
// (wrapper managed-to-native) System.Reflection.Assembly:get_fullname (System.Reflection.Assembly)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldloca.s  1
IL_000e: ldloca.s  2
IL_0010: mono_icall <mono_icall_start>
IL_0016: stloc.0   
IL_0017: ldarg.0   
IL_0018: mono_icall <mono_icall_handle_new>
IL_001e: ldloca.s  2
IL_0020: mono_ldptr5
IL_0026: calli     <Assembly&,intptr>
IL_002b: dup       
IL_002c: brfalse   IL_0034
IL_0031: mono_objaddr
IL_0033: ldind.ref 
IL_0034: ldloc.0   
IL_0035: ldloca.s  1
IL_0037: ldloca.s  2
IL_0039: mono_icall <mono_icall_end>
IL_003f: mono_ldptr_int_req_flag
IL_0041: ldind.u4  
IL_0042: brfalse   IL_0057
IL_0047: mono_not_taken
IL_0049: mono_icall <mono_thread_interruption_checkpoint>
IL_004f: dup       
IL_0050: brfalse   IL_0056
IL_0055: throw     
IL_0056: pop       
IL_0057: ret       
// (wrapper managed-to-native) System.RuntimeType:GetFields_native (System.RuntimeType,intptr,System.Reflection.BindingFlags,System.RuntimeType/MemberListType)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldloca.s  1
IL_000e: ldloca.s  2
IL_0010: mono_icall <mono_icall_start>
IL_0016: stloc.0   
IL_0017: ldarg.0   
IL_0018: mono_icall <mono_icall_handle_new>
IL_001e: ldarg.1   
IL_001f: ldarg.2   
IL_0020: ldarg.3   
IL_0021: ldloca.s  2
IL_0023: mono_ldptr5
IL_0029: calli     <RuntimeType&,intptr,BindingFlags,RuntimeType/MemberListType,intptr>
IL_002e: ldloc.0   
IL_002f: ldloca.s  1
IL_0031: ldloca.s  2
IL_0033: mono_icall <mono_icall_end>
IL_0039: mono_ldptr_int_req_flag
IL_003b: ldind.u4  
IL_003c: brfalse   IL_0051
IL_0041: mono_not_taken
IL_0043: mono_icall <mono_thread_interruption_checkpoint>
IL_0049: dup       
IL_004a: brfalse   IL_0050
IL_004f: throw     
IL_0050: pop       
IL_0051: ret       
// (wrapper managed-to-native) System.Reflection.FieldInfo:internal_from_handle_type (intptr,intptr)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: ldarg.1   
IL_000d: ldloca.s  2
IL_000f: mono_ldptr3
IL_0015: calli     <intptr,intptr,intptr>
IL_001a: dup       
IL_001b: brfalse   IL_0023
IL_0020: mono_objaddr
IL_0022: ldind.ref 
IL_0023: ldloc.0   
IL_0024: ldloca.s  1
IL_0026: ldloca.s  2
IL_0028: mono_icall <mono_icall_end>
IL_002e: mono_ldptr_int_req_flag
IL_0030: ldind.u4  
IL_0031: brfalse   IL_0046
IL_0036: mono_not_taken
IL_0038: mono_icall <mono_thread_interruption_checkpoint>
IL_003e: dup       
IL_003f: brfalse   IL_0045
IL_0044: throw     
IL_0045: pop       
IL_0046: ret       
// (wrapper managed-to-native) System.Runtime.Remoting.Activation.ActivationServices:AllocateUninitializedClassInstance (System.Type)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldloca.s  2
IL_0014: mono_ldptr4
IL_001a: calli     <Type&,intptr>
IL_001f: dup       
IL_0020: brfalse   IL_0028
IL_0025: mono_objaddr
IL_0027: ldind.ref 
IL_0028: ldloc.0   
IL_0029: ldloca.s  1
IL_002b: ldloca.s  2
IL_002d: mono_icall <mono_icall_end>
IL_0033: mono_ldptr_int_req_flag
IL_0035: ldind.u4  
IL_0036: brfalse   IL_004b
IL_003b: mono_not_taken
IL_003d: mono_icall <mono_thread_interruption_checkpoint>
IL_0043: dup       
IL_0044: brfalse   IL_004a
IL_0049: throw     
IL_004a: pop       
IL_004b: ret       
// (wrapper managed-to-native) System.RuntimeTypeHandle:IsPrimitive (System.RuntimeType)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldloca.s  2
IL_0014: mono_ldptr4
IL_001a: calli     <RuntimeType&,intptr>
IL_001f: ldloc.0   
IL_0020: ldloca.s  1
IL_0022: ldloca.s  2
IL_0024: mono_icall <mono_icall_end>
IL_002a: mono_ldptr_int_req_flag
IL_002c: ldind.u4  
IL_002d: brfalse   IL_0042
IL_0032: mono_not_taken
IL_0034: mono_icall <mono_thread_interruption_checkpoint>
IL_003a: dup       
IL_003b: brfalse   IL_0041
IL_0040: throw     
IL_0041: pop       
IL_0042: ret       
// (wrapper managed-to-native) System.RuntimeType:get_Name (System.RuntimeType)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldloca.s  1
IL_000e: ldloca.s  2
IL_0010: mono_icall <mono_icall_start>
IL_0016: stloc.0   
IL_0017: ldarg.0   
IL_0018: mono_icall <mono_icall_handle_new>
IL_001e: ldloca.s  2
IL_0020: mono_ldptr5
IL_0026: calli     <RuntimeType&,intptr>
IL_002b: dup       
IL_002c: brfalse   IL_0034
IL_0031: mono_objaddr
IL_0033: ldind.ref 
IL_0034: ldloc.0   
IL_0035: ldloca.s  1
IL_0037: ldloca.s  2
IL_0039: mono_icall <mono_icall_end>
IL_003f: mono_ldptr_int_req_flag
IL_0041: ldind.u4  
IL_0042: brfalse   IL_0057
IL_0047: mono_not_taken
IL_0049: mono_icall <mono_thread_interruption_checkpoint>
IL_004f: dup       
IL_0050: brfalse   IL_0056
IL_0055: throw     
IL_0056: pop       
IL_0057: ret       
// (wrapper managed-to-native) System.Reflection.MonoField:GetParentType (System.Reflection.MonoField,bool)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldloca.s  1
IL_000e: ldloca.s  2
IL_0010: mono_icall <mono_icall_start>
IL_0016: stloc.0   
IL_0017: ldarg.0   
IL_0018: mono_icall <mono_icall_handle_new>
IL_001e: ldarg.1   
IL_001f: ldloca.s  2
IL_0021: mono_ldptr5
IL_0027: calli     <MonoField&,bool,intptr>
IL_002c: dup       
IL_002d: brfalse   IL_0035
IL_0032: mono_objaddr
IL_0034: ldind.ref 
IL_0035: ldloc.0   
IL_0036: ldloca.s  1
IL_0038: ldloca.s  2
IL_003a: mono_icall <mono_icall_end>
IL_0040: mono_ldptr_int_req_flag
IL_0042: ldind.u4  
IL_0043: brfalse   IL_0058
IL_0048: mono_not_taken
IL_004a: mono_icall <mono_thread_interruption_checkpoint>
IL_0050: dup       
IL_0051: brfalse   IL_0057
IL_0056: throw     
IL_0057: pop       
IL_0058: ret       
// (wrapper managed-to-native) System.RuntimeFieldHandle:SetValueInternal (System.Reflection.FieldInfo,object,object)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldarg.1   
IL_0013: mono_icall <mono_icall_handle_new>
IL_0019: ldarg.2   
IL_001a: mono_icall <mono_icall_handle_new>
IL_0020: ldloca.s  2
IL_0022: mono_ldptr6
IL_0028: calli     <FieldInfo&,object&,object&,intptr>
IL_002d: ldloc.0   
IL_002e: ldloca.s  1
IL_0030: ldloca.s  2
IL_0032: mono_icall <mono_icall_end>
IL_0038: mono_ldptr_int_req_flag
IL_003a: ldind.u4  
IL_003b: brfalse   IL_0050
IL_0040: mono_not_taken
IL_0042: mono_icall <mono_thread_interruption_checkpoint>
IL_0048: dup       
IL_0049: brfalse   IL_004f
IL_004e: throw     
IL_004f: pop       
IL_0050: ret       
// (wrapper managed-to-native) System.Globalization.CultureData:fill_number_data (System.Globalization.NumberFormatInfo,int)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: mono_ldptr2
IL_0008: calli     <NumberFormatInfo,int>
IL_000d: mono_ldptr_int_req_flag
IL_000f: ldind.u4  
IL_0010: brfalse   IL_0025
IL_0015: mono_not_taken
IL_0017: mono_icall <mono_thread_interruption_checkpoint>
IL_001d: dup       
IL_001e: brfalse   IL_0024
IL_0023: throw     
IL_0024: pop       
IL_0025: ret       
// (wrapper managed-to-native) System.RuntimeType:GetGenericArgumentsInternal (System.RuntimeType,bool)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldloca.s  1
IL_000e: ldloca.s  2
IL_0010: mono_icall <mono_icall_start>
IL_0016: stloc.0   
IL_0017: ldarg.0   
IL_0018: mono_icall <mono_icall_handle_new>
IL_001e: ldarg.1   
IL_001f: ldloca.s  2
IL_0021: mono_ldptr5
IL_0027: calli     <RuntimeType&,bool,intptr>
IL_002c: dup       
IL_002d: brfalse   IL_0035
IL_0032: mono_objaddr
IL_0034: ldind.ref 
IL_0035: ldloc.0   
IL_0036: ldloca.s  1
IL_0038: ldloca.s  2
IL_003a: mono_icall <mono_icall_end>
IL_0040: mono_ldptr_int_req_flag
IL_0042: ldind.u4  
IL_0043: brfalse   IL_0058
IL_0048: mono_not_taken
IL_004a: mono_icall <mono_thread_interruption_checkpoint>
IL_0050: dup       
IL_0051: brfalse   IL_0057
IL_0056: throw     
IL_0057: pop       
IL_0058: ret       
// (wrapper managed-to-native) System.RuntimeTypeHandle:GetGenericTypeDefinition_impl (System.RuntimeType)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldloca.s  2
IL_0014: mono_ldptr4
IL_001a: calli     <RuntimeType&,intptr>
IL_001f: dup       
IL_0020: brfalse   IL_0028
IL_0025: mono_objaddr
IL_0027: ldind.ref 
IL_0028: ldloc.0   
IL_0029: ldloca.s  1
IL_002b: ldloca.s  2
IL_002d: mono_icall <mono_icall_end>
IL_0033: mono_ldptr_int_req_flag
IL_0035: ldind.u4  
IL_0036: brfalse   IL_004b
IL_003b: mono_not_taken
IL_003d: mono_icall <mono_thread_interruption_checkpoint>
IL_0043: dup       
IL_0044: brfalse   IL_004a
IL_0049: throw     
IL_004a: pop       
IL_004b: ret       
// (wrapper managed-to-native) System.RuntimeTypeHandle:IsGenericTypeDefinition (System.RuntimeType)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldloca.s  2
IL_0014: mono_ldptr4
IL_001a: calli     <RuntimeType&,intptr>
IL_001f: ldloc.0   
IL_0020: ldloca.s  1
IL_0022: ldloca.s  2
IL_0024: mono_icall <mono_icall_end>
IL_002a: mono_ldptr_int_req_flag
IL_002c: ldind.u4  
IL_002d: brfalse   IL_0042
IL_0032: mono_not_taken
IL_0034: mono_icall <mono_thread_interruption_checkpoint>
IL_003a: dup       
IL_003b: brfalse   IL_0041
IL_0040: throw     
IL_0041: pop       
IL_0042: ret       
// (wrapper managed-to-native) System.Array:SetValue (System.Array,object,int[])
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldloca.s  1
IL_000e: ldloca.s  2
IL_0010: mono_icall <mono_icall_start>
IL_0016: stloc.0   
IL_0017: ldarg.0   
IL_0018: mono_icall <mono_icall_handle_new>
IL_001e: ldarg.1   
IL_001f: mono_icall <mono_icall_handle_new>
IL_0025: ldarg.2   
IL_0026: mono_icall <mono_icall_handle_new>
IL_002c: ldloca.s  2
IL_002e: mono_ldptr7
IL_0034: calli     <Array&,object&,int[]&,intptr>
IL_0039: ldloc.0   
IL_003a: ldloca.s  1
IL_003c: ldloca.s  2
IL_003e: mono_icall <mono_icall_end>
IL_0044: mono_ldptr_int_req_flag
IL_0046: ldind.u4  
IL_0047: brfalse   IL_005c
IL_004c: mono_not_taken
IL_004e: mono_icall <mono_thread_interruption_checkpoint>
IL_0054: dup       
IL_0055: brfalse   IL_005b
IL_005a: throw     
IL_005b: pop       
IL_005c: ret       
// (wrapper stelemref) object:virt_stelemref_interface (intptr,object)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: ldelema   <Object>
IL_0007: stloc.0   
IL_0008: ldarg.2   
IL_0009: brfalse   IL_004a
IL_000e: ldarg.0   
IL_000f: mono_objaddr
IL_0011: ldind.i   
IL_0012: mono_objaddr
IL_0014: ldind.i   
IL_0015: mono_objaddr
IL_0017: ldind.i   
IL_0018: stloc.1   
IL_0019: ldarg.2   
IL_001a: mono_objaddr
IL_001c: ldind.i   
IL_001d: stloc.2   
IL_001e: ldloc.1   
IL_001f: mono_objaddr
IL_0021: ldc.i4.s  92
IL_0023: add       
IL_0024: ldind.u4  
IL_0025: stloc.3   
IL_0026: ldloc.3   
IL_0027: ldloc.2   
IL_0028: mono_objaddr
IL_002a: ldc.i4.s  40
IL_002c: add       
IL_002d: ldind.u4  
IL_002e: bgt.un    IL_004e
IL_0033: ldloc.2   
IL_0034: mono_objaddr
IL_0036: ldc.i4.s  32
IL_0038: add       
IL_0039: ldind.i   
IL_003a: ldloc.3   
IL_003b: ldc.i4.3  
IL_003c: shr.un    
IL_003d: add       
IL_003e: ldind.u1  
IL_003f: ldc.i4.1  
IL_0040: ldloc.3   
IL_0041: ldc.i4.7  
IL_0042: and       
IL_0043: shl       
IL_0044: and       
IL_0045: brfalse   IL_004e
IL_004a: ldloc.0   
IL_004b: ldarg.2   
IL_004c: stind.ref 
IL_004d: ret       
IL_004e: newobj    <System.ArrayTypeMismatchException:.ctor ()>
IL_0053: throw     
// MlEco.MlEcoApp:<LoadSimulation>b__29_0 ()
IL_0000: ldarg.0   
IL_0001: ldfld     <MlEco.MlEcoApp:simulation>
IL_0006: callvirt  <MlEco.Simulation:Run ()>
IL_000b: ret       
// Gtk.Application:Run ()
IL_0000: call      <Gtk.Application:gtk_main ()>
IL_0005: ret       
// (wrapper managed-to-native) Gtk.Application:gtk_main ()
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: mono_ldptr3
IL_0012: calli     <>
IL_0017: ldloc.s   4
IL_0019: ldloca.s  3
IL_001b: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0021: mono_ldptr_int_req_flag
IL_0023: ldind.u4  
IL_0024: brfalse   IL_0039
IL_0029: mono_not_taken
IL_002b: mono_icall <mono_thread_interruption_checkpoint>
IL_0031: dup       
IL_0032: brfalse   IL_0038
IL_0037: throw     
IL_0038: pop       
IL_0039: ret       
// GLib.SourceProxy:HandlerInternal (intptr)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: callvirt  <GLib.SourceProxy:Invoke (intptr)>
IL_0007: stloc.0   
IL_0008: ldloc.0   
IL_0009: brtrue    IL_0014
IL_000e: ldarg.0   
IL_000f: call      <GLib.SourceProxy:Remove ()>
IL_0014: ldloc.0   
IL_0015: stloc.1   
IL_0016: leave     IL_002a
IL_001b: stloc.2   
IL_001c: ldloc.2   
IL_001d: ldc.i4.0  
IL_001e: call      <GLib.ExceptionManager:RaiseUnhandledException (System.Exception,bool)>
IL_0023: leave     IL_0028
IL_0028: ldc.i4.0  
IL_0029: ret       
IL_002a: ldloc.1   
IL_002b: ret       
// GLib.Timeout/TimeoutProxy:Invoke (intptr)
IL_0000: ldarg.0   
IL_0001: ldfld     <TimeoutProxy:real_handler>
IL_0006: callvirt  <GLib.TimeoutHandler:Invoke ()>
IL_000b: ret       
// MlEco.MlEcoApp:Redraw ()
IL_0000: ldarg.0   
IL_0001: ldfld     <MlEco.MlEcoApp:simulation>
IL_0006: ldfld     <MlEco.Simulation:updateLock>
IL_000b: brtrue.s  IL_0000
IL_000d: ldarg.0   
IL_000e: ldfld     <MlEco.MlEcoApp:drawingArea>
IL_0013: callvirt  <Gtk.Widget:QueueDraw ()>
IL_0018: ldc.i4.1  
IL_0019: ret       
// Gtk.Widget:QueueDraw ()
IL_0000: ldarg.0   
IL_0001: call      <GLib.Object:get_Handle ()>
IL_0006: call      <Gtk.Widget:gtk_widget_queue_draw (intptr)>
IL_000b: ret       
// (wrapper managed-to-native) Gtk.Widget:gtk_widget_queue_draw (intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: ldarg.0   
IL_000d: mono_ldptr3
IL_0013: calli     <intptr>
IL_0018: ldloc.s   4
IL_001a: ldloca.s  3
IL_001c: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ret       
// GLib.Signal/SignalClosure:MarshalCallback (intptr,GLib.Value*,uint,GLib.Value*,intptr,intptr)
IL_0000: ldnull    
IL_0001: stloc.0   
IL_0002: ldsfld    <SignalClosure:closures>
IL_0007: ldarg.0   
IL_0008: callvirt  <System.Collections.Generic.Dictionary`2<intptr, GLib.Signal/SignalClosure>:get_Item (intptr)>
IL_000d: stloc.0   
IL_000e: ldarg.3   
IL_000f: call      <GLib.Value:get_Val ()>
IL_0014: isinst    <Object>
IL_0019: stloc.1   
IL_001a: ldloc.1   
IL_001b: brtrue    IL_0025
IL_0020: leave     IL_013e
IL_0025: ldloc.0   
IL_0026: ldfld     <SignalClosure:signal>
IL_002b: ldfld     <GLib.Signal:args_type>
IL_0030: ldtoken   <0x01000010>
IL_0035: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_003a: call      <System.Type:op_Equality (System.Type,System.Type)>
IL_003f: brfalse   IL_005a
IL_0044: ldloc.0   
IL_0045: ldloc.1   
IL_0046: ldsfld    <System.EventArgs:Empty>
IL_004b: newobj    <GLib.ClosureInvokedArgs:.ctor (GLib.Object,System.EventArgs)>
IL_0050: callvirt  <GLib.Signal/SignalClosure:Invoke (GLib.ClosureInvokedArgs)>
IL_0055: leave     IL_013e
IL_005a: ldloc.0   
IL_005b: ldfld     <SignalClosure:signal>
IL_0060: ldfld     <GLib.Signal:args_type>
IL_0065: call      <GLib.FastActivator:CreateSignalArgs (System.Type)>
IL_006a: stloc.2   
IL_006b: ldloc.2   
IL_006c: ldarg.2   
IL_006d: ldc.i4.1  
IL_006e: sub       
IL_006f: conv.u    
IL_0070: newarr    <0x01000012>
IL_0075: callvirt  <GLib.SignalArgs:set_Args (object[])>
IL_007a: ldc.i4.1  
IL_007b: stloc.3   
IL_007c: br        IL_009f
IL_0081: ldloc.2   
IL_0082: callvirt  <GLib.SignalArgs:get_Args ()>
IL_0087: ldloc.3   
IL_0088: ldc.i4.1  
IL_0089: sub       
IL_008a: ldarg.3   
IL_008b: ldloc.3   
IL_008c: conv.i    
IL_008d: sizeof    <0x02000077>
IL_0093: mul       
IL_0094: add       
IL_0095: call      <GLib.Value:get_Val ()>
IL_009a: stelem.ref
IL_009b: ldloc.3   
IL_009c: ldc.i4.1  
IL_009d: add       
IL_009e: stloc.3   
IL_009f: ldloc.3   
IL_00a0: conv.i8   
IL_00a1: ldarg.2   
IL_00a2: conv.u8   
IL_00a3: blt       IL_0081
IL_00a8: ldloc.1   
IL_00a9: ldloc.2   
IL_00aa: newobj    <GLib.ClosureInvokedArgs:.ctor (GLib.Object,System.EventArgs)>
IL_00af: stloc.s   4
IL_00b1: ldloc.0   
IL_00b2: ldloc.s   4
IL_00b4: callvirt  <GLib.Signal/SignalClosure:Invoke (GLib.ClosureInvokedArgs)>
IL_00b9: ldc.i4.1  
IL_00ba: stloc.s   5
IL_00bc: br        IL_00e3
IL_00c1: ldarg.3   
IL_00c2: ldloc.s   5
IL_00c4: conv.i    
IL_00c5: sizeof    <0x02000077>
IL_00cb: mul       
IL_00cc: add       
IL_00cd: ldloc.2   
IL_00ce: callvirt  <GLib.SignalArgs:get_Args ()>
IL_00d3: ldloc.s   5
IL_00d5: ldc.i4.1  
IL_00d6: sub       
IL_00d7: ldelem.ref
IL_00d8: call      <GLib.Value:Update (object)>
IL_00dd: ldloc.s   5
IL_00df: ldc.i4.1  
IL_00e0: add       
IL_00e1: stloc.s   5
IL_00e3: ldloc.s   5
IL_00e5: conv.i8   
IL_00e6: ldarg.2   
IL_00e7: conv.u8   
IL_00e8: blt       IL_00c1
IL_00ed: ldarg.1   
IL_00ee: brfalse   IL_00fe
IL_00f3: ldloc.2   
IL_00f4: callvirt  <GLib.SignalArgs:get_RetVal ()>
IL_00f9: brtrue    IL_0103
IL_00fe: leave     IL_013e
IL_0103: ldarg.1   
IL_0104: ldloc.2   
IL_0105: callvirt  <GLib.SignalArgs:get_RetVal ()>
IL_010a: call      <GLib.Value:set_Val (object)>
IL_010f: leave     IL_013e
IL_0114: stloc.s   6
IL_0116: ldloc.0   
IL_0117: brfalse   IL_0131
IL_011c: ldstr     "Marshaling {0} signal"
IL_0121: ldloc.0   
IL_0122: ldfld     <SignalClosure:signal>
IL_0127: ldfld     <GLib.Signal:name>
IL_012c: call      <System.Console:WriteLine (string,object)>
IL_0131: ldloc.s   6
IL_0133: ldc.i4.0  
IL_0134: call      <GLib.ExceptionManager:RaiseUnhandledException (System.Exception,bool)>
IL_0139: leave     IL_013e
IL_013e: ret       
// GLib.IntPtrEqualityComparer:Equals (intptr,intptr)
IL_0000: ldarg.1   
IL_0001: ldarg.2   
IL_0002: call      <intptr:op_Equality (intptr,intptr)>
IL_0007: ret       
// GLib.Value:get_Val ()
IL_0000: ldarg.0   
IL_0001: ldfld     <GLib.Value:type>
IL_0006: ldsfld    <GLib.GType:Boolean>
IL_000b: stloc.0   
IL_000c: ldloca.s  0
IL_000e: call      <GLib.GType:get_Val ()>
IL_0013: call      <intptr:op_Equality (intptr,intptr)>
IL_0018: brfalse   IL_002e
IL_001d: ldarg.0   
IL_001e: ldobj     <0x02000077>
IL_0023: call      <GLib.Value:op_Explicit (GLib.Value)>
IL_0028: box       <0x0100003a>
IL_002d: ret       
IL_002e: ldarg.0   
IL_002f: ldfld     <GLib.Value:type>
IL_0034: ldsfld    <GLib.GType:UChar>
IL_0039: stloc.1   
IL_003a: ldloca.s  1
IL_003c: call      <GLib.GType:get_Val ()>
IL_0041: call      <intptr:op_Equality (intptr,intptr)>
IL_0046: brfalse   IL_005c
IL_004b: ldarg.0   
IL_004c: ldobj     <0x02000077>
IL_0051: call      <GLib.Value:op_Explicit (GLib.Value)>
IL_0056: box       <0x01000039>
IL_005b: ret       
IL_005c: ldarg.0   
IL_005d: ldfld     <GLib.Value:type>
IL_0062: ldsfld    <GLib.GType:Char>
IL_0067: stloc.2   
IL_0068: ldloca.s  2
IL_006a: call      <GLib.GType:get_Val ()>
IL_006f: call      <intptr:op_Equality (intptr,intptr)>
IL_0074: brfalse   IL_008a
IL_0079: ldarg.0   
IL_007a: ldobj     <0x02000077>
IL_007f: call      <GLib.Value:op_Explicit (GLib.Value)>
IL_0084: box       <0x01000038>
IL_0089: ret       
IL_008a: ldarg.0   
IL_008b: ldfld     <GLib.Value:type>
IL_0090: ldsfld    <GLib.GType:Int>
IL_0095: stloc.3   
IL_0096: ldloca.s  3
IL_0098: call      <GLib.GType:get_Val ()>
IL_009d: call      <intptr:op_Equality (intptr,intptr)>
IL_00a2: brfalse   IL_00b8
IL_00a7: ldarg.0   
IL_00a8: ldobj     <0x02000077>
IL_00ad: call      <GLib.Value:op_Explicit (GLib.Value)>
IL_00b2: box       <0x0100001e>
IL_00b7: ret       
IL_00b8: ldarg.0   
IL_00b9: ldfld     <GLib.Value:type>
IL_00be: ldsfld    <GLib.GType:UInt>
IL_00c3: stloc.s   4
IL_00c5: ldloca.s  4
IL_00c7: call      <GLib.GType:get_Val ()>
IL_00cc: call      <intptr:op_Equality (intptr,intptr)>
IL_00d1: brfalse   IL_00e7
IL_00d6: ldarg.0   
IL_00d7: ldobj     <0x02000077>
IL_00dc: call      <GLib.Value:op_Explicit (GLib.Value)>
IL_00e1: box       <0x0100003b>
IL_00e6: ret       
IL_00e7: ldarg.0   
IL_00e8: ldfld     <GLib.Value:type>
IL_00ed: ldsfld    <GLib.GType:Int64>
IL_00f2: stloc.s   5
IL_00f4: ldloca.s  5
IL_00f6: call      <GLib.GType:get_Val ()>
IL_00fb: call      <intptr:op_Equality (intptr,intptr)>
IL_0100: brfalse   IL_0116
IL_0105: ldarg.0   
IL_0106: ldobj     <0x02000077>
IL_010b: call      <GLib.Value:op_Explicit (GLib.Value)>
IL_0110: box       <0x0100003c>
IL_0115: ret       
IL_0116: ldarg.0   
IL_0117: ldfld     <GLib.Value:type>
IL_011c: ldsfld    <GLib.GType:UInt64>
IL_0121: stloc.s   6
IL_0123: ldloca.s  6
IL_0125: call      <GLib.GType:get_Val ()>
IL_012a: call      <intptr:op_Equality (intptr,intptr)>
IL_012f: brfalse   IL_0145
IL_0134: ldarg.0   
IL_0135: ldobj     <0x02000077>
IL_013a: call      <GLib.Value:op_Explicit (GLib.Value)>
IL_013f: box       <0x0100003d>
IL_0144: ret       
IL_0145: ldarg.0   
IL_0146: ldfld     <GLib.Value:type>
IL_014b: ldsfld    <GLib.GType:Enum>
IL_0150: stloc.s   7
IL_0152: ldloca.s  7
IL_0154: call      <GLib.GType:get_Val ()>
IL_0159: call      <GLib.Value:g_type_is_a (intptr,intptr)>
IL_015e: brtrue    IL_0181
IL_0163: ldarg.0   
IL_0164: ldfld     <GLib.Value:type>
IL_0169: ldsfld    <GLib.GType:Flags>
IL_016e: stloc.s   8
IL_0170: ldloca.s  8
IL_0172: call      <GLib.GType:get_Val ()>
IL_0177: call      <GLib.Value:g_type_is_a (intptr,intptr)>
IL_017c: brfalse   IL_018d
IL_0181: ldarg.0   
IL_0182: ldobj     <0x02000077>
IL_0187: call      <GLib.Value:op_Explicit (GLib.Value)>
IL_018c: ret       
IL_018d: ldarg.0   
IL_018e: ldfld     <GLib.Value:type>
IL_0193: ldsfld    <GLib.GType:Float>
IL_0198: stloc.s   9
IL_019a: ldloca.s  9
IL_019c: call      <GLib.GType:get_Val ()>
IL_01a1: call      <intptr:op_Equality (intptr,intptr)>
IL_01a6: brfalse   IL_01bc
IL_01ab: ldarg.0   
IL_01ac: ldobj     <0x02000077>
IL_01b1: call      <GLib.Value:op_Explicit (GLib.Value)>
IL_01b6: box       <0x0100003e>
IL_01bb: ret       
IL_01bc: ldarg.0   
IL_01bd: ldfld     <GLib.Value:type>
IL_01c2: ldsfld    <GLib.GType:Double>
IL_01c7: stloc.s   10
IL_01c9: ldloca.s  10
IL_01cb: call      <GLib.GType:get_Val ()>
IL_01d0: call      <intptr:op_Equality (intptr,intptr)>
IL_01d5: brfalse   IL_01eb
IL_01da: ldarg.0   
IL_01db: ldobj     <0x02000077>
IL_01e0: call      <GLib.Value:op_Explicit (GLib.Value)>
IL_01e5: box       <0x0100003f>
IL_01ea: ret       
IL_01eb: ldarg.0   
IL_01ec: ldfld     <GLib.Value:type>
IL_01f1: ldsfld    <GLib.GType:String>
IL_01f6: stloc.s   11
IL_01f8: ldloca.s  11
IL_01fa: call      <GLib.GType:get_Val ()>
IL_01ff: call      <intptr:op_Equality (intptr,intptr)>
IL_0204: brfalse   IL_0215
IL_0209: ldarg.0   
IL_020a: ldobj     <0x02000077>
IL_020f: call      <GLib.Value:op_Explicit (GLib.Value)>
IL_0214: ret       
IL_0215: ldarg.0   
IL_0216: ldfld     <GLib.Value:type>
IL_021b: ldsfld    <GLib.GType:Pointer>
IL_0220: stloc.s   12
IL_0222: ldloca.s  12
IL_0224: call      <GLib.GType:get_Val ()>
IL_0229: call      <intptr:op_Equality (intptr,intptr)>
IL_022e: brfalse   IL_0244
IL_0233: ldarg.0   
IL_0234: ldobj     <0x02000077>
IL_0239: call      <GLib.Value:op_Explicit (GLib.Value)>
IL_023e: box       <0x01000016>
IL_0243: ret       
IL_0244: ldarg.0   
IL_0245: ldfld     <GLib.Value:type>
IL_024a: ldsfld    <GLib.GType:Param>
IL_024f: stloc.s   13
IL_0251: ldloca.s  13
IL_0253: call      <GLib.GType:get_Val ()>
IL_0258: call      <intptr:op_Equality (intptr,intptr)>
IL_025d: brfalse   IL_026e
IL_0262: ldarg.0   
IL_0263: call      <GLib.Value:g_value_get_param (GLib.Value&)>
IL_0268: box       <0x01000016>
IL_026d: ret       
IL_026e: ldarg.0   
IL_026f: ldfld     <GLib.Value:type>
IL_0274: call      <GLib.ManagedValue:get_GType ()>
IL_0279: stloc.s   14
IL_027b: ldloca.s  14
IL_027d: call      <GLib.GType:get_Val ()>
IL_0282: call      <intptr:op_Equality (intptr,intptr)>
IL_0287: brfalse   IL_0298
IL_028c: ldarg.0   
IL_028d: call      <GLib.Value:g_value_get_boxed (GLib.Value&)>
IL_0292: call      <GLib.ManagedValue:ObjectForWrapper (intptr)>
IL_0297: ret       
IL_0298: ldarg.0   
IL_0299: ldfld     <GLib.Value:type>
IL_029e: ldsfld    <GLib.GType:Object>
IL_02a3: stloc.s   15
IL_02a5: ldloca.s  15
IL_02a7: call      <GLib.GType:get_Val ()>
IL_02ac: call      <GLib.Value:g_type_is_a (intptr,intptr)>
IL_02b1: brfalse   IL_02c2
IL_02b6: ldarg.0   
IL_02b7: ldobj     <0x02000077>
IL_02bc: call      <GLib.Value:op_Explicit (GLib.Value)>
IL_02c1: ret       
IL_02c2: ldarg.0   
IL_02c3: ldfld     <GLib.Value:type>
IL_02c8: ldsfld    <GLib.GType:Boxed>
IL_02cd: stloc.s   16
IL_02cf: ldloca.s  16
IL_02d1: call      <GLib.GType:get_Val ()>
IL_02d6: call      <GLib.Value:g_type_is_a (intptr,intptr)>
IL_02db: brfalse   IL_02e7
IL_02e0: ldarg.0   
IL_02e1: call      <GLib.Value:ToBoxed ()>
IL_02e6: ret       
IL_02e7: ldarg.0   
IL_02e8: ldfld     <GLib.Value:type>
IL_02ed: ldsfld    <System.IntPtr:Zero>
IL_02f2: call      <intptr:op_Equality (intptr,intptr)>
IL_02f7: brfalse   IL_02fe
IL_02fc: ldnull    
IL_02fd: ret       
IL_02fe: ldstr     "Unknown type "
IL_0303: ldloca.s  17
IL_0305: ldarg.0   
IL_0306: ldfld     <GLib.Value:type>
IL_030b: call      <GLib.GType:.ctor (intptr)>
IL_0310: ldloca.s  17
IL_0312: constrained.<0x0200001e>
IL_0318: callvirt  <object:ToString ()>
IL_031d: call      <string:Concat (string,string)>
IL_0322: newobj    <System.Exception:.ctor (string)>
IL_0327: throw     
// GLib.Value:op_Explicit (GLib.Value)
IL_0000: ldarga.s  0
IL_0002: call      <GLib.Value:g_value_get_object (GLib.Value&)>
IL_0007: ldc.i4.0  
IL_0008: call      <GLib.Object:GetObject (intptr,bool)>
IL_000d: ret       
// (wrapper managed-to-native) GLib.Value:g_value_get_object (GLib.Value&)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: ldarg.0   
IL_000d: mono_ldptr3
IL_0013: calli     <Value&>
IL_0018: ldloc.s   5
IL_001a: ldloca.s  4
IL_001c: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0022: stloc.3   
IL_0023: mono_ldptr_int_req_flag
IL_0025: ldind.u4  
IL_0026: brfalse   IL_003b
IL_002b: mono_not_taken
IL_002d: mono_icall <mono_thread_interruption_checkpoint>
IL_0033: dup       
IL_0034: brfalse   IL_003a
IL_0039: throw     
IL_003a: pop       
IL_003b: ldloc.3   
IL_003c: ret       
// GLib.Object:GetObject (intptr,bool)
IL_0000: ldarg.0   
IL_0001: ldsfld    <System.IntPtr:Zero>
IL_0006: call      <intptr:op_Equality (intptr,intptr)>
IL_000b: brfalse   IL_0012
IL_0010: ldnull    
IL_0011: ret       
IL_0012: ldnull    
IL_0013: stloc.0   
IL_0014: ldnull    
IL_0015: stloc.1   
IL_0016: ldsfld    <GLib.Object:Objects>
IL_001b: stloc.2   
IL_001c: ldc.i4.0  
IL_001d: stloc.3   
IL_001e: ldloc.2   
IL_001f: ldloca.s  3
IL_0021: call      <System.Threading.Monitor:Enter (object,bool&)>
IL_0026: ldsfld    <GLib.Object:Objects>
IL_002b: ldarg.0   
IL_002c: ldloca.s  1
IL_002e: callvirt  <System.Collections.Generic.Dictionary`2<intptr, GLib.ToggleRef>:TryGetValue (intptr,GLib.ToggleRef&)>
IL_0033: pop       
IL_0034: leave     IL_0043
IL_0039: ldloc.3   
IL_003a: brfalse.s IL_0042
IL_003c: ldloc.2   
IL_003d: call      <System.Threading.Monitor:Exit (object)>
IL_0042: endfinally
IL_0043: ldloc.1   
IL_0044: brfalse   IL_0050
IL_0049: ldloc.1   
IL_004a: callvirt  <GLib.ToggleRef:get_Target ()>
IL_004f: stloc.0   
IL_0050: ldloc.0   
IL_0051: brfalse   IL_0069
IL_0056: ldloc.0   
IL_0057: callvirt  <GLib.Object:get_Handle ()>
IL_005c: ldarg.0   
IL_005d: call      <intptr:op_Equality (intptr,intptr)>
IL_0062: brfalse   IL_0069
IL_0067: ldloc.0   
IL_0068: ret       
IL_0069: ldarg.0   
IL_006a: call      <GLib.ObjectManager:CreateObject (intptr)>
IL_006f: stloc.0   
IL_0070: ldloc.0   
IL_0071: brtrue    IL_007e
IL_0076: ldarg.0   
IL_0077: call      <GLib.Object:g_object_unref (intptr)>
IL_007c: ldnull    
IL_007d: ret       
IL_007e: ldarg.1   
IL_007f: brfalse   IL_008a
IL_0084: ldarg.0   
IL_0085: call      <GLib.Object:g_object_unref (intptr)>
IL_008a: ldloc.0   
IL_008b: ret       
// GLib.FastActivator:.cctor ()
IL_0000: ldnull    
IL_0001: ldftn     <0x0600003c>
IL_0007: newobj    <System.Func`1<System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateObjectPtr>>:.ctor (object,intptr)>
IL_000c: newobj    <System.Threading.ThreadLocal`1<System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateObjectPtr>>:.ctor (System.Func`1<System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateObjectPtr>>)>
IL_0011: stsfld    <GLib.FastActivator:cacheOpaque>
IL_0016: ldnull    
IL_0017: ldftn     <0x0600003d>
IL_001d: newobj    <System.Func`1<System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateObjectPtr>>:.ctor (object,intptr)>
IL_0022: newobj    <System.Threading.ThreadLocal`1<System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateObjectPtr>>:.ctor (System.Func`1<System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateObjectPtr>>)>
IL_0027: stsfld    <GLib.FastActivator:cacheObject>
IL_002c: ldnull    
IL_002d: ldftn     <0x0600003e>
IL_0033: newobj    <System.Func`1<System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateObject>>:.ctor (object,intptr)>
IL_0038: newobj    <System.Threading.ThreadLocal`1<System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateObject>>:.ctor (System.Func`1<System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateObject>>)>
IL_003d: stsfld    <GLib.FastActivator:cacheSignalArgs>
IL_0042: ldnull    
IL_0043: ldftn     <0x0600003f>
IL_0049: newobj    <System.Func`1<System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateBoxed>>:.ctor (object,intptr)>
IL_004e: newobj    <System.Threading.ThreadLocal`1<System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateBoxed>>:.ctor (System.Func`1<System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateBoxed>>)>
IL_0053: stsfld    <GLib.FastActivator:cacheBoxed>
IL_0058: ret       
// GLib.FastActivator:CreateSignalArgs (System.Type)
IL_0000: ldarg.0   
IL_0001: ldsfld    <GLib.FastActivator:cacheSignalArgs>
IL_0006: callvirt  <System.Threading.ThreadLocal`1<System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateObject>>:get_Value ()>
IL_000b: call      <GLib.FastActivator:FastCtor (System.Type,System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateObject>)>
IL_0010: callvirt  <GLib.FastActivator/FastCreateObject:Invoke ()>
IL_0015: castclass <SignalArgs>
IL_001a: ret       
// (wrapper managed-to-native) object:__icall_wrapper_mono_class_static_field_address (intptr,intptr)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: mono_jit_icall_addr2
IL_0008: calli     <intptr,intptr>
IL_000d: mono_ldptr_int_req_flag
IL_000f: ldind.u4  
IL_0010: brfalse   IL_0025
IL_0015: mono_not_taken
IL_0017: mono_icall <mono_thread_interruption_checkpoint>
IL_001d: dup       
IL_001e: brfalse   IL_0024
IL_0023: throw     
IL_0024: pop       
IL_0025: ret       
// GLib.FastActivator:<cacheSignalArgs>m__2 ()
IL_0000: newobj    <GLib.FastActivator/TypeEqualityComparer:.ctor ()>
IL_0005: newobj    <System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateObject>:.ctor (System.Collections.Generic.IEqualityComparer`1<System.Type>)>
IL_000a: ret       
// GLib.FastActivator:FastCtor (System.Type,System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateObject>)
IL_0000: ldarg.1   
IL_0001: ldarg.0   
IL_0002: ldloca.s  0
IL_0004: callvirt  <System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateObject>:TryGetValue (System.Type,GLib.FastActivator/FastCreateObject&)>
IL_0009: brtrue    IL_002e
IL_000e: ldarg.0   
IL_000f: call      <System.Linq.Expressions.Expression:New (System.Type)>
IL_0014: stloc.1   
IL_0015: ldarg.1   
IL_0016: ldarg.0   
IL_0017: ldloc.1   
IL_0018: call      <System.Array:Empty<System.Linq.Expressions.ParameterExpression> ()>
IL_001d: call      <System.Linq.Expressions.Expression:Lambda<GLib.FastActivator/FastCreateObject> (System.Linq.Expressions.Expression,System.Linq.Expressions.ParameterExpression[])>
IL_0022: callvirt  <System.Linq.Expressions.Expression`1<GLib.FastActivator/FastCreateObject>:Compile ()>
IL_0027: dup       
IL_0028: stloc.0   
IL_0029: callvirt  <System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateObject>:set_Item (System.Type,GLib.FastActivator/FastCreateObject)>
IL_002e: ldloc.0   
IL_002f: ret       
// System.Linq.Expressions.Expression/<>c:.cctor ()
IL_0000: newobj    <System.Linq.Expressions.Expression/<>c:.ctor ()>
IL_0005: stsfld    <<>c:<>9>
IL_000a: ret       
// (wrapper runtime-invoke) object:runtime_invoke_void (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0034
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.3   
IL_001f: calli     <>
IL_0024: leave     IL_0032
IL_0029: stloc.1   
IL_002a: ldarg.2   
IL_002b: ldloc.1   
IL_002c: stind.ref 
IL_002d: leave     IL_0032
IL_0032: ldloc.0   
IL_0033: ret       
IL_0034: mono_ldptr_int_req_flag
IL_0036: ldind.u4  
IL_0037: brfalse   IL_004c
IL_003c: mono_not_taken
IL_003e: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0044: dup       
IL_0045: brfalse   IL_004b
IL_004a: throw     
IL_004b: pop       
IL_004c: ldarg.3   
IL_004d: calli     <>
IL_0052: ldloc.0   
IL_0053: ret       
// System.Linq.Expressions.Expression/<>c:.ctor ()
IL_0000: ldarg.0   
IL_0001: call      <object:.ctor ()>
IL_0006: ret       
// (wrapper runtime-invoke) object:runtime_invoke_void (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0034
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.3   
IL_001f: calli     <>
IL_0024: leave     IL_0032
IL_0029: stloc.1   
IL_002a: ldarg.2   
IL_002b: ldloc.1   
IL_002c: stind.ref 
IL_002d: leave     IL_0032
IL_0032: ldloc.0   
IL_0033: ret       
IL_0034: mono_ldptr_int_req_flag
IL_0036: ldind.u4  
IL_0037: brfalse   IL_004c
IL_003c: mono_not_taken
IL_003e: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0044: dup       
IL_0045: brfalse   IL_004b
IL_004a: throw     
IL_004b: pop       
IL_004c: ldarg.3   
IL_004d: calli     <>
IL_0052: ldloc.0   
IL_0053: ret       
// (wrapper runtime-invoke) object:runtime_invoke_void (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0034
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.3   
IL_001f: calli     <>
IL_0024: leave     IL_0032
IL_0029: stloc.1   
IL_002a: ldarg.2   
IL_002b: ldloc.1   
IL_002c: stind.ref 
IL_002d: leave     IL_0032
IL_0032: ldloc.0   
IL_0033: ret       
IL_0034: mono_ldptr_int_req_flag
IL_0036: ldind.u4  
IL_0037: brfalse   IL_004c
IL_003c: mono_not_taken
IL_003e: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0044: dup       
IL_0045: brfalse   IL_004b
IL_004a: throw     
IL_004b: pop       
IL_004c: ldarg.3   
IL_004d: calli     <>
IL_0052: ldloc.0   
IL_0053: ret       
// System.Dynamic.Utils.TypeUtils/<>c:.cctor ()
IL_0000: newobj    <System.Dynamic.Utils.TypeUtils/<>c:.ctor ()>
IL_0005: stsfld    <<>c:<>9>
IL_000a: ret       
// System.Dynamic.Utils.TypeUtils/<>c:.ctor ()
IL_0000: ldarg.0   
IL_0001: call      <object:.ctor ()>
IL_0006: ret       
// (wrapper castclass) object:__isinst_with_cache (object,intptr,intptr)
IL_0000: ldarg.0   
IL_0001: brfalse   IL_0034
IL_0006: ldarg.0   
IL_0007: mono_objaddr
IL_0009: ldind.i   
IL_000a: stloc.0   
IL_000b: ldarg.2   
IL_000c: ldind.i   
IL_000d: stloc.1   
IL_000e: ldloc.1   
IL_000f: ldc.i4    -2
IL_0014: conv.i    
IL_0015: and       
IL_0016: ldloc.0   
IL_0017: bne.un    IL_002a
IL_001c: ldloc.1   
IL_001d: ldc.i4.1  
IL_001e: conv.u    
IL_001f: and       
IL_0020: brtrue    IL_0034
IL_0025: br        IL_0036
IL_002a: ldarg.0   
IL_002b: ldarg.1   
IL_002c: ldarg.2   
IL_002d: mono_icall <mono_marshal_isinst_with_cache>
IL_0033: ret       
IL_0034: ldnull    
IL_0035: ret       
IL_0036: ldarg.0   
IL_0037: ret       
// (wrapper managed-to-native) object:__icall_wrapper_mono_marshal_isinst_with_cache (object,intptr,intptr)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: ldarg.2   
IL_0003: mono_jit_icall_addr2
IL_0009: calli     <object,intptr,intptr>
IL_000e: mono_ldptr_int_req_flag
IL_0010: ldind.u4  
IL_0011: brfalse   IL_0026
IL_0016: mono_not_taken
IL_0018: mono_icall <mono_thread_interruption_checkpoint>
IL_001e: dup       
IL_001f: brfalse   IL_0025
IL_0024: throw     
IL_0025: pop       
IL_0026: ret       
// (wrapper managed-to-native) object:InternalGetHashCode (object)
IL_0000: ldarg.0   
IL_0001: mono_ldptr2
IL_0007: calli     <object>
IL_000c: mono_ldptr_int_req_flag
IL_000e: ldind.u4  
IL_000f: brfalse   IL_0024
IL_0014: mono_not_taken
IL_0016: mono_icall <mono_thread_interruption_checkpoint>
IL_001c: dup       
IL_001d: brfalse   IL_0023
IL_0022: throw     
IL_0023: pop       
IL_0024: ret       
// (wrapper managed-to-managed) System.Linq.Expressions.Expression[]:System.Collections.Generic.ICollection`1.get_Count ()
IL_0000: ldarg.0   
IL_0001: call      <System.Array:InternalArray__ICollection_get_Count ()>
IL_0006: ret       
// (wrapper managed-to-managed) System.Linq.Expressions.ParameterExpression[]:System.Collections.Generic.ICollection`1.get_Count ()
IL_0000: ldarg.0   
IL_0001: call      <System.Array:InternalArray__ICollection_get_Count ()>
IL_0006: ret       
// (wrapper runtime-invoke) <Module>:runtime_invoke_object_object_object_byte_object (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_004c
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.1   
IL_001f: ldind.ref 
IL_0020: ldarg.1   
IL_0021: ldc.i4.s  8
IL_0023: add       
IL_0024: ldind.ref 
IL_0025: ldarg.1   
IL_0026: ldc.i4.s  16
IL_0028: add       
IL_0029: ldind.i   
IL_002a: ldind.u1  
IL_002b: ldarg.1   
IL_002c: ldc.i4.s  24
IL_002e: add       
IL_002f: ldind.ref 
IL_0030: ldarg.3   
IL_0031: calli     <object,object,byte,object>
IL_0036: box       <0x00000004>
IL_003b: stloc.0   
IL_003c: leave     IL_004a
IL_0041: stloc.1   
IL_0042: ldarg.2   
IL_0043: ldloc.1   
IL_0044: stind.ref 
IL_0045: leave     IL_004a
IL_004a: ldloc.0   
IL_004b: ret       
IL_004c: mono_ldptr_int_req_flag
IL_004e: ldind.u4  
IL_004f: brfalse   IL_0064
IL_0054: mono_not_taken
IL_0056: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_005c: dup       
IL_005d: brfalse   IL_0063
IL_0062: throw     
IL_0063: pop       
IL_0064: ldarg.1   
IL_0065: ldind.ref 
IL_0066: ldarg.1   
IL_0067: ldc.i4.s  8
IL_0069: add       
IL_006a: ldind.ref 
IL_006b: ldarg.1   
IL_006c: ldc.i4.s  16
IL_006e: add       
IL_006f: ldind.i   
IL_0070: ldind.u1  
IL_0071: ldarg.1   
IL_0072: ldc.i4.s  24
IL_0074: add       
IL_0075: ldind.ref 
IL_0076: ldarg.3   
IL_0077: calli     <object,object,byte,object>
IL_007c: box       <0x00000007>
IL_0081: stloc.0   
IL_0082: ldloc.0   
IL_0083: ret       
// System.Linq.Expressions.Compiler.StackSpiller/<>c:.cctor ()
IL_0000: newobj    <System.Linq.Expressions.Compiler.StackSpiller/<>c:.ctor ()>
IL_0005: stsfld    <<>c:<>9>
IL_000a: ret       
// System.Linq.Expressions.Compiler.StackSpiller/<>c:.ctor ()
IL_0000: ldarg.0   
IL_0001: call      <object:.ctor ()>
IL_0006: ret       
// (wrapper managed-to-native) System.Runtime.CompilerServices.RuntimeHelpers:SufficientExecutionStack ()
IL_0000: mono_ldptr2
IL_0006: calli     <>
IL_000b: mono_ldptr_int_req_flag
IL_000d: ldind.u4  
IL_000e: brfalse   IL_0023
IL_0013: mono_not_taken
IL_0015: mono_icall <mono_thread_interruption_checkpoint>
IL_001b: dup       
IL_001c: brfalse   IL_0022
IL_0021: throw     
IL_0022: pop       
IL_0023: ret       
// System.Linq.Expressions.Compiler.VariableBinder/<>c:.cctor ()
IL_0000: newobj    <System.Linq.Expressions.Compiler.VariableBinder/<>c:.ctor ()>
IL_0005: stsfld    <<>c:<>9>
IL_000a: ret       
// System.Linq.Expressions.Compiler.VariableBinder/<>c:.ctor ()
IL_0000: ldarg.0   
IL_0001: call      <object:.ctor ()>
IL_0006: ret       
// System.Linq.Expressions.Compiler.ParameterList:GetEnumerator ()
IL_0000: ldc.i4.0  
IL_0001: newobj    <System.Linq.Expressions.Compiler.ParameterList/<GetEnumerator>d__6:.ctor (int)>
IL_0006: dup       
IL_0007: ldarg.0   
IL_0008: stfld     <<GetEnumerator>d__6:<>4__this>
IL_000d: ret       
// System.Linq.Expressions.Compiler.ParameterList/<GetEnumerator>d__6:System.IDisposable.Dispose ()
IL_0000: ret       
// System.Collections.Generic.GenericEqualityComparer`1<System.Linq.Expressions.Compiler.BoundConstants/TypedConstant>:.ctor ()
IL_0000: ldarg.0   
IL_0001: call      <System.Collections.Generic.EqualityComparer`1<!0>:.ctor ()>
IL_0006: ret       
// (wrapper runtime-invoke) object:runtime_invoke_void__this__ (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0035
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.0   
IL_001f: ldarg.3   
IL_0020: calli     <>
IL_0025: leave     IL_0033
IL_002a: stloc.1   
IL_002b: ldarg.2   
IL_002c: ldloc.1   
IL_002d: stind.ref 
IL_002e: leave     IL_0033
IL_0033: ldloc.0   
IL_0034: ret       
IL_0035: mono_ldptr_int_req_flag
IL_0037: ldind.u4  
IL_0038: brfalse   IL_004d
IL_003d: mono_not_taken
IL_003f: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0045: dup       
IL_0046: brfalse   IL_004c
IL_004b: throw     
IL_004c: pop       
IL_004d: ldarg.0   
IL_004e: ldarg.3   
IL_004f: calli     <>
IL_0054: ldloc.0   
IL_0055: ret       
// (wrapper managed-to-managed) System.Linq.Expressions.Expression[]:System.Collections.Generic.IList`1.get_Item (int)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: call      <System.Array:InternalArray__get_Item<System.Linq.Expressions.Expression> (int)>
IL_0007: ret       
// (wrapper managed-to-native) System.AppDomain:getCurDomain ()
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldloca.s  2
IL_000d: mono_ldptr3
IL_0013: calli     <intptr>
IL_0018: dup       
IL_0019: brfalse   IL_0021
IL_001e: mono_objaddr
IL_0020: ldind.ref 
IL_0021: ldloc.0   
IL_0022: ldloca.s  1
IL_0024: ldloca.s  2
IL_0026: mono_icall <mono_icall_end>
IL_002c: mono_ldptr_int_req_flag
IL_002e: ldind.u4  
IL_002f: brfalse   IL_0044
IL_0034: mono_not_taken
IL_0036: mono_icall <mono_thread_interruption_checkpoint>
IL_003c: dup       
IL_003d: brfalse   IL_0043
IL_0042: throw     
IL_0043: pop       
IL_0044: ret       
// (wrapper remoting-invoke-with-check) System.AppDomain:DefineDynamicAssembly (System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: ldarg.2   
IL_0003: ldarg.0   
IL_0004: mono_objaddr
IL_0006: ldind.i   
IL_0007: ldc.i4.0  
IL_0008: add       
IL_0009: ldind.i   
IL_000a: mono_classconst <TransparentProxy>
IL_0010: bne.un    IL_0034
IL_0015: ldarg.0   
IL_0016: mono_objaddr
IL_0018: ldc.i4.s  16
IL_001a: add       
IL_001b: ldind.ref 
IL_001c: mono_objaddr
IL_001e: ldc.i4.s  40
IL_0020: add       
IL_0021: ldind.i4  
IL_0022: ldc.i4.m1 
IL_0023: beq       IL_002e
IL_0028: call      <(wrapper xdomain-invoke) System.AppDomain:DefineDynamicAssembly (System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess)>
IL_002d: ret       
IL_002e: call      <(wrapper remoting-invoke) System.AppDomain:DefineDynamicAssembly (System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess)>
IL_0033: ret       
IL_0034: call      <System.AppDomain:DefineDynamicAssembly (System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess)>
IL_0039: ret       
// (wrapper remoting-invoke-with-check) System.AppDomain:DefineDynamicAssembly (System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,string,System.Security.Policy.Evidence,System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet,bool)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: ldarg.2   
IL_0003: ldarg.3   
IL_0004: ldarg.s   4
IL_0006: ldarg.s   5
IL_0008: ldarg.s   6
IL_000a: ldarg.s   7
IL_000c: ldarg.s   8
IL_000e: ldarg.0   
IL_000f: mono_objaddr
IL_0011: ldind.i   
IL_0012: ldc.i4.0  
IL_0013: add       
IL_0014: ldind.i   
IL_0015: mono_classconst <TransparentProxy>
IL_001b: bne.un    IL_003f
IL_0020: ldarg.0   
IL_0021: mono_objaddr
IL_0023: ldc.i4.s  16
IL_0025: add       
IL_0026: ldind.ref 
IL_0027: mono_objaddr
IL_0029: ldc.i4.s  40
IL_002b: add       
IL_002c: ldind.i4  
IL_002d: ldc.i4.m1 
IL_002e: beq       IL_0039
IL_0033: call      <(wrapper xdomain-invoke) System.AppDomain:DefineDynamicAssembly (System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,string,System.Security.Policy.Evidence,System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet,bool)>
IL_0038: ret       
IL_0039: call      <(wrapper remoting-invoke) System.AppDomain:DefineDynamicAssembly (System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,string,System.Security.Policy.Evidence,System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet,bool)>
IL_003e: ret       
IL_003f: call      <System.AppDomain:DefineDynamicAssembly (System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,string,System.Security.Policy.Evidence,System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet,bool)>
IL_0044: ret       
// (wrapper managed-to-native) System.Enum:InternalGetUnderlyingType (System.RuntimeType)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldloca.s  2
IL_0014: mono_ldptr4
IL_001a: calli     <RuntimeType&,intptr>
IL_001f: dup       
IL_0020: brfalse   IL_0028
IL_0025: mono_objaddr
IL_0027: ldind.ref 
IL_0028: ldloc.0   
IL_0029: ldloca.s  1
IL_002b: ldloca.s  2
IL_002d: mono_icall <mono_icall_end>
IL_0033: mono_ldptr_int_req_flag
IL_0035: ldind.u4  
IL_0036: brfalse   IL_004b
IL_003b: mono_not_taken
IL_003d: mono_icall <mono_thread_interruption_checkpoint>
IL_0043: dup       
IL_0044: brfalse   IL_004a
IL_0049: throw     
IL_004a: pop       
IL_004b: ret       
// (wrapper managed-to-native) System.Enum:GetEnumValuesAndNames (System.RuntimeType,ulong[]&,string[]&)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldnull    
IL_0013: mono_icall <mono_icall_handle_new>
IL_0019: dup       
IL_001a: stloc.3   
IL_001b: ldnull    
IL_001c: mono_icall <mono_icall_handle_new>
IL_0022: dup       
IL_0023: stloc.s   4
IL_0025: ldloca.s  2
IL_0027: mono_ldptr6
IL_002d: calli     <RuntimeType&,ulong[]&,string[]&,intptr>
IL_0032: ldarg.1   
IL_0033: ldloc.3   
IL_0034: mono_objaddr
IL_0036: ldind.ref 
IL_0037: stind.ref 
IL_0038: ldarg.2   
IL_0039: ldloc.s   4
IL_003b: mono_objaddr
IL_003d: ldind.ref 
IL_003e: stind.ref 
IL_003f: ldloc.0   
IL_0040: ldloca.s  1
IL_0042: ldloca.s  2
IL_0044: mono_icall <mono_icall_end>
IL_004a: mono_ldptr_int_req_flag
IL_004c: ldind.u4  
IL_004d: brfalse   IL_0062
IL_0052: mono_not_taken
IL_0054: mono_icall <mono_thread_interruption_checkpoint>
IL_005a: dup       
IL_005b: brfalse   IL_0061
IL_0060: throw     
IL_0061: pop       
IL_0062: ret       
// (wrapper managed-to-native) System.Enum:get_value (System.Enum)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldloca.s  1
IL_000e: ldloca.s  2
IL_0010: mono_icall <mono_icall_start>
IL_0016: stloc.0   
IL_0017: ldarg.0   
IL_0018: mono_icall <mono_icall_handle_new>
IL_001e: ldloca.s  2
IL_0020: mono_ldptr5
IL_0026: calli     <Enum&,intptr>
IL_002b: dup       
IL_002c: brfalse   IL_0034
IL_0031: mono_objaddr
IL_0033: ldind.ref 
IL_0034: ldloc.0   
IL_0035: ldloca.s  1
IL_0037: ldloca.s  2
IL_0039: mono_icall <mono_icall_end>
IL_003f: mono_ldptr_int_req_flag
IL_0041: ldind.u4  
IL_0042: brfalse   IL_0057
IL_0047: mono_not_taken
IL_0049: mono_icall <mono_thread_interruption_checkpoint>
IL_004f: dup       
IL_0050: brfalse   IL_0056
IL_0055: throw     
IL_0056: pop       
IL_0057: ret       
// System.Collections.Generic.ArraySortHelper`1<ulong>:.ctor ()
IL_0000: ldarg.0   
IL_0001: call      <object:.ctor ()>
IL_0006: ret       
// System.Collections.Generic.GenericComparer`1<ulong>:.ctor ()
IL_0000: ldarg.0   
IL_0001: call      <System.Collections.Generic.Comparer`1<!0>:.ctor ()>
IL_0006: ret       
// (wrapper managed-to-native) System.Reflection.Emit.AssemblyBuilder:basic_init (System.Reflection.Emit.AssemblyBuilder)
IL_0000: ldarg.0   
IL_0001: mono_ldptr2
IL_0007: calli     <AssemblyBuilder>
IL_000c: mono_ldptr_int_req_flag
IL_000e: ldind.u4  
IL_000f: brfalse   IL_0024
IL_0014: mono_not_taken
IL_0016: mono_icall <mono_thread_interruption_checkpoint>
IL_001c: dup       
IL_001d: brfalse   IL_0023
IL_0022: throw     
IL_0023: pop       
IL_0024: ret       
// (wrapper managed-to-native) System.Security.Cryptography.RNGCryptoServiceProvider:RngOpen ()
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldloca.s  2
IL_000d: mono_ldptr3
IL_0013: calli     <intptr>
IL_0018: ldloc.0   
IL_0019: ldloca.s  1
IL_001b: ldloca.s  2
IL_001d: mono_icall <mono_icall_end>
IL_0023: mono_ldptr_int_req_flag
IL_0025: ldind.u4  
IL_0026: brfalse   IL_003b
IL_002b: mono_not_taken
IL_002d: mono_icall <mono_thread_interruption_checkpoint>
IL_0033: dup       
IL_0034: brfalse   IL_003a
IL_0039: throw     
IL_003a: pop       
IL_003b: ret       
// (wrapper managed-to-native) System.Security.Cryptography.RNGCryptoServiceProvider:RngInitialize (byte*,intptr)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: ldarg.1   
IL_000d: ldloca.s  2
IL_000f: mono_ldptr3
IL_0015: calli     <byte*,intptr,intptr>
IL_001a: ldloc.0   
IL_001b: ldloca.s  1
IL_001d: ldloca.s  2
IL_001f: mono_icall <mono_icall_end>
IL_0025: mono_ldptr_int_req_flag
IL_0027: ldind.u4  
IL_0028: brfalse   IL_003d
IL_002d: mono_not_taken
IL_002f: mono_icall <mono_thread_interruption_checkpoint>
IL_0035: dup       
IL_0036: brfalse   IL_003c
IL_003b: throw     
IL_003c: pop       
IL_003d: ret       
// (wrapper managed-to-native) System.Security.Cryptography.RNGCryptoServiceProvider:RngGetBytes (intptr,byte*,intptr)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: ldarg.1   
IL_000d: ldarg.2   
IL_000e: ldloca.s  2
IL_0010: mono_ldptr3
IL_0016: calli     <intptr,byte*,intptr,intptr>
IL_001b: ldloc.0   
IL_001c: ldloca.s  1
IL_001e: ldloca.s  2
IL_0020: mono_icall <mono_icall_end>
IL_0026: mono_ldptr_int_req_flag
IL_0028: ldind.u4  
IL_0029: brfalse   IL_003e
IL_002e: mono_not_taken
IL_0030: mono_icall <mono_thread_interruption_checkpoint>
IL_0036: dup       
IL_0037: brfalse   IL_003d
IL_003c: throw     
IL_003d: pop       
IL_003e: ret       
// (wrapper managed-to-native) System.Reflection.Emit.ModuleBuilder:basic_init (System.Reflection.Emit.ModuleBuilder)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldloca.s  2
IL_0014: mono_ldptr4
IL_001a: calli     <ModuleBuilder&,intptr>
IL_001f: ldloc.0   
IL_0020: ldloca.s  1
IL_0022: ldloca.s  2
IL_0024: mono_icall <mono_icall_end>
IL_002a: mono_ldptr_int_req_flag
IL_002c: ldind.u4  
IL_002d: brfalse   IL_0042
IL_0032: mono_not_taken
IL_0034: mono_icall <mono_thread_interruption_checkpoint>
IL_003a: dup       
IL_003b: brfalse   IL_0041
IL_0040: throw     
IL_0041: pop       
IL_0042: ret       
// (wrapper managed-to-native) System.Reflection.Emit.TypeBuilder:create_runtime_class (System.Reflection.Emit.TypeBuilder)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldloca.s  1
IL_000e: ldloca.s  2
IL_0010: mono_icall <mono_icall_start>
IL_0016: stloc.0   
IL_0017: ldarg.0   
IL_0018: mono_icall <mono_icall_handle_new>
IL_001e: ldloca.s  2
IL_0020: mono_ldptr5
IL_0026: calli     <TypeBuilder&,intptr>
IL_002b: dup       
IL_002c: brfalse   IL_0034
IL_0031: mono_objaddr
IL_0033: ldind.ref 
IL_0034: ldloc.0   
IL_0035: ldloca.s  1
IL_0037: ldloca.s  2
IL_0039: mono_icall <mono_icall_end>
IL_003f: mono_ldptr_int_req_flag
IL_0041: ldind.u4  
IL_0042: brfalse   IL_0057
IL_0047: mono_not_taken
IL_0049: mono_icall <mono_thread_interruption_checkpoint>
IL_004f: dup       
IL_0050: brfalse   IL_0056
IL_0055: throw     
IL_0056: pop       
IL_0057: ret       
// (wrapper managed-to-native) System.Reflection.Emit.ModuleBuilder:set_wrappers_type (System.Reflection.Emit.ModuleBuilder,System.Type)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldarg.1   
IL_0013: mono_icall <mono_icall_handle_new>
IL_0019: ldloca.s  2
IL_001b: mono_ldptr5
IL_0021: calli     <ModuleBuilder&,Type&,intptr>
IL_0026: ldloc.0   
IL_0027: ldloca.s  1
IL_0029: ldloca.s  2
IL_002b: mono_icall <mono_icall_end>
IL_0031: mono_ldptr_int_req_flag
IL_0033: ldind.u4  
IL_0034: brfalse   IL_0049
IL_0039: mono_not_taken
IL_003b: mono_icall <mono_thread_interruption_checkpoint>
IL_0041: dup       
IL_0042: brfalse   IL_0048
IL_0047: throw     
IL_0048: pop       
IL_0049: ret       
// System.Linq.Expressions.Compiler.LambdaCompiler/<>c:.cctor ()
IL_0000: newobj    <System.Linq.Expressions.Compiler.LambdaCompiler/<>c:.ctor ()>
IL_0005: stsfld    <<>c:<>9>
IL_000a: ret       
// System.Linq.Expressions.Compiler.LambdaCompiler/<>c:.ctor ()
IL_0000: ldarg.0   
IL_0001: call      <object:.ctor ()>
IL_0006: ret       
// (wrapper managed-to-native) System.RuntimeTypeHandle:GetModule (System.RuntimeType)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldloca.s  2
IL_0014: mono_ldptr4
IL_001a: calli     <RuntimeType&,intptr>
IL_001f: dup       
IL_0020: brfalse   IL_0028
IL_0025: mono_objaddr
IL_0027: ldind.ref 
IL_0028: ldloc.0   
IL_0029: ldloca.s  1
IL_002b: ldloca.s  2
IL_002d: mono_icall <mono_icall_end>
IL_0033: mono_ldptr_int_req_flag
IL_0035: ldind.u4  
IL_0036: brfalse   IL_004b
IL_003b: mono_not_taken
IL_003d: mono_icall <mono_thread_interruption_checkpoint>
IL_0043: dup       
IL_0044: brfalse   IL_004a
IL_0049: throw     
IL_004a: pop       
IL_004b: ret       
// (wrapper managed-to-native) System.Reflection.Emit.DynamicMethod:create_dynamic_method (System.Reflection.Emit.DynamicMethod)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldloca.s  2
IL_0014: mono_ldptr4
IL_001a: calli     <DynamicMethod&,intptr>
IL_001f: ldloc.0   
IL_0020: ldloca.s  1
IL_0022: ldloca.s  2
IL_0024: mono_icall <mono_icall_end>
IL_002a: mono_ldptr_int_req_flag
IL_002c: ldind.u4  
IL_002d: brfalse   IL_0042
IL_0032: mono_not_taken
IL_0034: mono_icall <mono_thread_interruption_checkpoint>
IL_003a: dup       
IL_003b: brfalse   IL_0041
IL_0040: throw     
IL_0041: pop       
IL_0042: ret       
// (wrapper managed-to-native) System.Delegate:CreateDelegate_internal (System.Type,object,System.Reflection.MethodInfo,bool)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldarg.1   
IL_0013: mono_icall <mono_icall_handle_new>
IL_0019: ldarg.2   
IL_001a: mono_icall <mono_icall_handle_new>
IL_0020: ldarg.3   
IL_0021: ldloca.s  2
IL_0023: mono_ldptr6
IL_0029: calli     <Type&,object&,MethodInfo&,bool,intptr>
IL_002e: dup       
IL_002f: brfalse   IL_0037
IL_0034: mono_objaddr
IL_0036: ldind.ref 
IL_0037: ldloc.0   
IL_0038: ldloca.s  1
IL_003a: ldloca.s  2
IL_003c: mono_icall <mono_icall_end>
IL_0042: mono_ldptr_int_req_flag
IL_0044: ldind.u4  
IL_0045: brfalse   IL_005a
IL_004a: mono_not_taken
IL_004c: mono_icall <mono_thread_interruption_checkpoint>
IL_0052: dup       
IL_0053: brfalse   IL_0059
IL_0058: throw     
IL_0059: pop       
IL_005a: ret       
// (wrapper dynamic-method) object:lambda_method (System.Runtime.CompilerServices.Closure)
IL_0000: newobj    <Gtk.ExposeEventArgs:.ctor ()>
IL_0005: ret       
// (wrapper castclass) object:__castclass_with_cache (object,intptr,intptr)
IL_0000: ldarg.0   
IL_0001: brfalse   IL_0040
IL_0006: ldarg.0   
IL_0007: mono_objaddr
IL_0009: ldind.i   
IL_000a: stloc.0   
IL_000b: ldarg.2   
IL_000c: ldind.i   
IL_000d: stloc.1   
IL_000e: ldloc.1   
IL_000f: ldc.i4    -2
IL_0014: conv.i    
IL_0015: and       
IL_0016: ldloc.0   
IL_0017: bne.un    IL_002a
IL_001c: ldloc.1   
IL_001d: ldc.i4.1  
IL_001e: conv.u    
IL_001f: and       
IL_0020: brtrue    IL_003a
IL_0025: br        IL_0038
IL_002a: ldarg.0   
IL_002b: ldarg.1   
IL_002c: ldarg.2   
IL_002d: mono_icall <mono_marshal_isinst_with_cache>
IL_0033: brfalse   IL_003a
IL_0038: ldarg.0   
IL_0039: ret       
IL_003a: newobj    <System.InvalidCastException:.ctor ()>
IL_003f: throw     
IL_0040: ldnull    
IL_0041: ret       
// GLib.FastActivator/TypeEqualityComparer:GetHashCode (System.Type)
IL_0000: ldarg.1   
IL_0001: ldnull    
IL_0002: call      <System.Type:op_Equality (System.Type,System.Type)>
IL_0007: brfalse   IL_000e
IL_000c: ldc.i4.0  
IL_000d: ret       
IL_000e: ldarg.1   
IL_000f: callvirt  <object:GetHashCode ()>
IL_0014: ret       
// Gtk.ExposeEventArgs:.ctor ()
IL_0000: ldarg.0   
IL_0001: call      <GLib.SignalArgs:.ctor ()>
IL_0006: ret       
// GLib.SignalArgs:.ctor ()
IL_0000: ldarg.0   
IL_0001: call      <System.EventArgs:.ctor ()>
IL_0006: ldarg.0   
IL_0007: ldnull    
IL_0008: stfld     <GLib.SignalArgs:_ret>
IL_000d: ldarg.0   
IL_000e: ldnull    
IL_000f: stfld     <GLib.SignalArgs:_args>
IL_0014: ret       
// GLib.Value:ToBoxed ()
IL_0000: ldarg.0   
IL_0001: call      <GLib.Value:g_value_get_boxed (GLib.Value&)>
IL_0006: stloc.0   
IL_0007: ldarg.0   
IL_0008: ldfld     <GLib.Value:type>
IL_000d: call      <GLib.GType:LookupType (intptr)>
IL_0012: stloc.1   
IL_0013: ldloc.1   
IL_0014: ldnull    
IL_0015: call      <System.Type:op_Equality (System.Type,System.Type)>
IL_001a: brfalse   IL_0049
IL_001f: ldstr     "Unknown type "
IL_0024: ldloca.s  2
IL_0026: ldarg.0   
IL_0027: ldfld     <GLib.Value:type>
IL_002c: call      <GLib.GType:.ctor (intptr)>
IL_0031: ldloca.s  2
IL_0033: constrained.<0x0200001e>
IL_0039: callvirt  <object:ToString ()>
IL_003e: call      <string:Concat (string,string)>
IL_0043: newobj    <System.Exception:.ctor (string)>
IL_0048: throw     
IL_0049: ldloc.1   
IL_004a: ldtoken   <0x0200004d>
IL_004f: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_0054: callvirt  <System.Type:IsSubclassOf (System.Type)>
IL_0059: brfalse   IL_006a
IL_005e: ldarg.0   
IL_005f: ldobj     <0x02000077>
IL_0064: call      <GLib.Value:op_Explicit (GLib.Value)>
IL_0069: ret       
IL_006a: ldloc.0   
IL_006b: ldloc.1   
IL_006c: call      <GLib.FastActivator:CreateBoxed (intptr,System.Type)>
IL_0071: ret       
// (wrapper managed-to-native) GLib.Value:g_value_get_boxed (GLib.Value&)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: ldarg.0   
IL_000d: mono_ldptr3
IL_0013: calli     <Value&>
IL_0018: ldloc.s   5
IL_001a: ldloca.s  4
IL_001c: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0022: stloc.3   
IL_0023: mono_ldptr_int_req_flag
IL_0025: ldind.u4  
IL_0026: brfalse   IL_003b
IL_002b: mono_not_taken
IL_002d: mono_icall <mono_thread_interruption_checkpoint>
IL_0033: dup       
IL_0034: brfalse   IL_003a
IL_0039: throw     
IL_003a: pop       
IL_003b: ldloc.3   
IL_003c: ret       
// GLib.GType:LookupType (intptr)
IL_0000: ldsfld    <GLib.GType:types>
IL_0005: ldarg.0   
IL_0006: ldloca.s  0
IL_0008: callvirt  <System.Collections.Generic.Dictionary`2<intptr, System.Type>:TryGetValue (intptr,System.Type&)>
IL_000d: brfalse   IL_0014
IL_0012: ldloc.0   
IL_0013: ret       
IL_0014: ldarg.0   
IL_0015: call      <GLib.GType:g_type_name (intptr)>
IL_001a: call      <GLib.Marshaller:Utf8PtrToString (intptr)>
IL_001f: stloc.1   
IL_0020: ldloc.1   
IL_0021: call      <GLib.GType:GetQualifiedName (string)>
IL_0026: stloc.2   
IL_0027: call      <System.AppDomain:get_CurrentDomain ()>
IL_002c: callvirt  <System.AppDomain:GetAssemblies ()>
IL_0031: callvirt  <System.Array:Clone ()>
IL_0036: castclass <Assembly[]>
IL_003b: stloc.3   
IL_003c: ldloc.3   
IL_003d: stloc.s   5
IL_003f: ldc.i4.0  
IL_0040: stloc.s   6
IL_0042: br        IL_006e
IL_0047: ldloc.s   5
IL_0049: ldloc.s   6
IL_004b: ldelem.ref
IL_004c: stloc.s   4
IL_004e: ldloc.s   4
IL_0050: ldloc.2   
IL_0051: callvirt  <System.Reflection.Assembly:GetType (string)>
IL_0056: stloc.0   
IL_0057: ldloc.0   
IL_0058: ldnull    
IL_0059: call      <System.Type:op_Inequality (System.Type,System.Type)>
IL_005e: brfalse   IL_0068
IL_0063: br        IL_0079
IL_0068: ldloc.s   6
IL_006a: ldc.i4.1  
IL_006b: add       
IL_006c: stloc.s   6
IL_006e: ldloc.s   6
IL_0070: ldloc.s   5
IL_0072: ldlen     
IL_0073: conv.i4   
IL_0074: blt       IL_0047
IL_0079: ldloc.0   
IL_007a: ldnull    
IL_007b: call      <System.Type:op_Equality (System.Type,System.Type)>
IL_0080: brfalse   IL_01a9
IL_0085: ldloc.2   
IL_0086: ldc.i4.0  
IL_0087: ldloc.2   
IL_0088: ldc.i4.s  46
IL_008a: callvirt  <string:LastIndexOf (char)>
IL_008f: callvirt  <string:Substring (int,int)>
IL_0094: stloc.s   7
IL_0096: ldloc.s   7
IL_0098: callvirt  <string:ToLower ()>
IL_009d: ldc.i4.s  46
IL_009f: ldc.i4.s  45
IL_00a1: callvirt  <string:Replace (char,char)>
IL_00a6: ldstr     "-sharp"
IL_00ab: call      <string:Concat (string,string)>
IL_00b0: stloc.s   8
IL_00b2: ldloc.3   
IL_00b3: stloc.s   10
IL_00b5: ldc.i4.0  
IL_00b6: stloc.s   11
IL_00b8: br        IL_019e
IL_00bd: ldloc.s   10
IL_00bf: ldloc.s   11
IL_00c1: ldelem.ref
IL_00c2: stloc.s   9
IL_00c4: ldloc.s   9
IL_00c6: callvirt  <System.Reflection.Assembly:GetReferencedAssemblies ()>
IL_00cb: stloc.s   13
IL_00cd: ldc.i4.0  
IL_00ce: stloc.s   14
IL_00d0: br        IL_017c
IL_00d5: ldloc.s   13
IL_00d7: ldloc.s   14
IL_00d9: ldelem.ref
IL_00da: stloc.s   12
IL_00dc: ldloc.s   12
IL_00de: callvirt  <System.Reflection.AssemblyName:get_Name ()>
IL_00e3: ldloc.s   8
IL_00e5: call      <string:op_Inequality (string,string)>
IL_00ea: brfalse   IL_00f4
IL_00ef: br        IL_0176
IL_00f4: ldloc.s   9
IL_00f6: callvirt  <System.Reflection.Assembly:get_Location ()>
IL_00fb: call      <System.IO.Path:GetDirectoryName (string)>
IL_0100: stloc.s   15
IL_0102: ldloc.s   15
IL_0104: ldloc.s   12
IL_0106: callvirt  <System.Reflection.AssemblyName:get_Name ()>
IL_010b: ldstr     ".dll"
IL_0110: call      <string:Concat (string,string)>
IL_0115: call      <System.IO.Path:Combine (string,string)>
IL_011a: call      <System.IO.File:Exists (string)>
IL_011f: brfalse   IL_0148
IL_0124: ldloc.s   15
IL_0126: ldloc.s   12
IL_0128: callvirt  <System.Reflection.AssemblyName:get_Name ()>
IL_012d: ldstr     ".dll"
IL_0132: call      <string:Concat (string,string)>
IL_0137: call      <System.IO.Path:Combine (string,string)>
IL_013c: call      <System.Reflection.Assembly:LoadFrom (string)>
IL_0141: stloc.s   16
IL_0143: br        IL_0151
IL_0148: ldloc.s   12
IL_014a: call      <System.Reflection.Assembly:Load (System.Reflection.AssemblyName)>
IL_014f: stloc.s   16
IL_0151: ldloc.s   16
IL_0153: ldloc.2   
IL_0154: callvirt  <System.Reflection.Assembly:GetType (string)>
IL_0159: stloc.0   
IL_015a: ldloc.0   
IL_015b: ldnull    
IL_015c: call      <System.Type:op_Inequality (System.Type,System.Type)>
IL_0161: brfalse   IL_016b
IL_0166: leave     IL_0187
IL_016b: leave     IL_0176
IL_0170: pop       
IL_0171: leave     IL_0176
IL_0176: ldloc.s   14
IL_0178: ldc.i4.1  
IL_0179: add       
IL_017a: stloc.s   14
IL_017c: ldloc.s   14
IL_017e: ldloc.s   13
IL_0180: ldlen     
IL_0181: conv.i4   
IL_0182: blt       IL_00d5
IL_0187: ldloc.0   
IL_0188: ldnull    
IL_0189: call      <System.Type:op_Inequality (System.Type,System.Type)>
IL_018e: brfalse   IL_0198
IL_0193: br        IL_01a9
IL_0198: ldloc.s   11
IL_019a: ldc.i4.1  
IL_019b: add       
IL_019c: stloc.s   11
IL_019e: ldloc.s   11
IL_01a0: ldloc.s   10
IL_01a2: ldlen     
IL_01a3: conv.i4   
IL_01a4: blt       IL_00bd
IL_01a9: ldarg.0   
IL_01aa: newobj    <GLib.GType:.ctor (intptr)>
IL_01af: ldloc.0   
IL_01b0: call      <GLib.GType:Register (GLib.GType,System.Type)>
IL_01b5: ldloc.0   
IL_01b6: ret       
// (wrapper managed-to-native) GLib.GType:g_type_name (intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: ldarg.0   
IL_000d: mono_ldptr3
IL_0013: calli     <intptr>
IL_0018: ldloc.s   5
IL_001a: ldloca.s  4
IL_001c: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0022: stloc.3   
IL_0023: mono_ldptr_int_req_flag
IL_0025: ldind.u4  
IL_0026: brfalse   IL_003b
IL_002b: mono_not_taken
IL_002d: mono_icall <mono_thread_interruption_checkpoint>
IL_0033: dup       
IL_0034: brfalse   IL_003a
IL_0039: throw     
IL_003a: pop       
IL_003b: ldloc.3   
IL_003c: ret       
// GLib.Marshaller:Utf8PtrToString (intptr)
IL_0000: ldarg.0   
IL_0001: ldsfld    <System.IntPtr:Zero>
IL_0006: call      <intptr:op_Equality (intptr,intptr)>
IL_000b: brfalse   IL_0012
IL_0010: ldnull    
IL_0011: ret       
IL_0012: ldsfld    <System.IntPtr:Zero>
IL_0017: stloc.0   
IL_0018: ldarg.0   
IL_0019: ldc.i4.m1 
IL_001a: newobj    <intptr:.ctor (int)>
IL_001f: ldsfld    <System.IntPtr:Zero>
IL_0024: ldloca.s  0
IL_0026: ldloca.s  1
IL_0028: call      <GLib.Marshaller:g_utf8_to_utf16 (intptr,intptr,intptr,intptr&,intptr&)>
IL_002d: stloc.2   
IL_002e: ldloc.1   
IL_002f: ldsfld    <System.IntPtr:Zero>
IL_0034: call      <intptr:op_Inequality (intptr,intptr)>
IL_0039: brfalse   IL_0045
IL_003e: ldloc.1   
IL_003f: newobj    <GLib.GException:.ctor (intptr)>
IL_0044: throw     
IL_0045: ldloc.2   
IL_0046: ldc.i4.0  
IL_0047: ldloc.0   
IL_0048: call      <intptr:op_Explicit (intptr)>
IL_004d: newobj    <string:.ctor (char*,int,int)>
IL_0052: stloc.3   
IL_0053: ldloc.2   
IL_0054: call      <intptr:op_Explicit (void*)>
IL_0059: call      <GLib.Marshaller:g_free (intptr)>
IL_005e: ldloc.3   
IL_005f: ret       
// (wrapper managed-to-native) GLib.Marshaller:g_utf8_to_utf16 (intptr,intptr,intptr,intptr&,intptr&)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: ldarg.0   
IL_000d: ldarg.1   
IL_000e: ldarg.2   
IL_000f: ldarg.3   
IL_0010: ldarg.s   4
IL_0012: mono_ldptr3
IL_0018: calli     <intptr,intptr,intptr,intptr&,intptr&>
IL_001d: ldloc.s   5
IL_001f: ldloca.s  4
IL_0021: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0027: stloc.3   
IL_0028: mono_ldptr_int_req_flag
IL_002a: ldind.u4  
IL_002b: brfalse   IL_0040
IL_0030: mono_not_taken
IL_0032: mono_icall <mono_thread_interruption_checkpoint>
IL_0038: dup       
IL_0039: brfalse   IL_003f
IL_003e: throw     
IL_003f: pop       
IL_0040: ldloc.3   
IL_0041: ret       
// GLib.GType:GetQualifiedName (string)
IL_0000: ldc.i4.1  
IL_0001: stloc.0   
IL_0002: br        IL_005d
IL_0007: ldarg.0   
IL_0008: ldloc.0   
IL_0009: callvirt  <string:get_Chars (int)>
IL_000e: call      <char:IsUpper (char)>
IL_0013: brfalse   IL_0059
IL_0018: ldloc.0   
IL_0019: ldc.i4.1  
IL_001a: bne.un    IL_003f
IL_001f: ldarg.0   
IL_0020: ldc.i4.0  
IL_0021: callvirt  <string:get_Chars (int)>
IL_0026: ldc.i4.s  71
IL_0028: bne.un    IL_003f
IL_002d: ldstr     "GLib."
IL_0032: ldarg.0   
IL_0033: ldc.i4.1  
IL_0034: callvirt  <string:Substring (int)>
IL_0039: call      <string:Concat (string,string)>
IL_003e: ret       
IL_003f: ldarg.0   
IL_0040: ldc.i4.0  
IL_0041: ldloc.0   
IL_0042: callvirt  <string:Substring (int,int)>
IL_0047: ldstr     "."
IL_004c: ldarg.0   
IL_004d: ldloc.0   
IL_004e: callvirt  <string:Substring (int)>
IL_0053: call      <string:Concat (string,string,string)>
IL_0058: ret       
IL_0059: ldloc.0   
IL_005a: ldc.i4.1  
IL_005b: add       
IL_005c: stloc.0   
IL_005d: ldloc.0   
IL_005e: ldarg.0   
IL_005f: callvirt  <string:get_Length ()>
IL_0064: blt       IL_0007
IL_0069: ldstr     "cname is not in NamespaceType format. GType.Register should be called directly for "
IL_006e: ldarg.0   
IL_006f: call      <string:Concat (string,string)>
IL_0074: newobj    <System.ArgumentException:.ctor (string)>
IL_0079: throw     
// (wrapper remoting-invoke-with-check) System.AppDomain:GetAssemblies ()
IL_0000: ldarg.0   
IL_0001: ldarg.0   
IL_0002: mono_objaddr
IL_0004: ldind.i   
IL_0005: ldc.i4.0  
IL_0006: add       
IL_0007: ldind.i   
IL_0008: mono_classconst <TransparentProxy>
IL_000e: bne.un    IL_0032
IL_0013: ldarg.0   
IL_0014: mono_objaddr
IL_0016: ldc.i4.s  16
IL_0018: add       
IL_0019: ldind.ref 
IL_001a: mono_objaddr
IL_001c: ldc.i4.s  40
IL_001e: add       
IL_001f: ldind.i4  
IL_0020: ldc.i4.m1 
IL_0021: beq       IL_002c
IL_0026: call      <(wrapper xdomain-invoke) System.AppDomain:GetAssemblies ()>
IL_002b: ret       
IL_002c: call      <(wrapper remoting-invoke) System.AppDomain:GetAssemblies ()>
IL_0031: ret       
IL_0032: call      <System.AppDomain:GetAssemblies ()>
IL_0037: ret       
// (wrapper managed-to-native) System.AppDomain:GetAssemblies (System.AppDomain,bool)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_000c
IL_0006: newobj    <System.NullReferenceException:.ctor ()>
IL_000b: throw     
IL_000c: ldloca.s  1
IL_000e: ldloca.s  2
IL_0010: mono_icall <mono_icall_start>
IL_0016: stloc.0   
IL_0017: ldarg.0   
IL_0018: mono_icall <mono_icall_handle_new>
IL_001e: ldarg.1   
IL_001f: ldloca.s  2
IL_0021: mono_ldptr5
IL_0027: calli     <AppDomain&,bool,intptr>
IL_002c: dup       
IL_002d: brfalse   IL_0035
IL_0032: mono_objaddr
IL_0034: ldind.ref 
IL_0035: ldloc.0   
IL_0036: ldloca.s  1
IL_0038: ldloca.s  2
IL_003a: mono_icall <mono_icall_end>
IL_0040: mono_ldptr_int_req_flag
IL_0042: ldind.u4  
IL_0043: brfalse   IL_0058
IL_0048: mono_not_taken
IL_004a: mono_icall <mono_thread_interruption_checkpoint>
IL_0050: dup       
IL_0051: brfalse   IL_0057
IL_0056: throw     
IL_0057: pop       
IL_0058: ret       
// GLib.FastActivator:CreateBoxed (intptr,System.Type)
IL_0000: ldarg.1   
IL_0001: ldsfld    <GLib.FastActivator:cacheBoxed>
IL_0006: callvirt  <System.Threading.ThreadLocal`1<System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateBoxed>>:get_Value ()>
IL_000b: call      <GLib.FastActivator:FastBoxed (System.Type,System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateBoxed>)>
IL_0010: ldarg.0   
IL_0011: callvirt  <GLib.FastActivator/FastCreateBoxed:Invoke (intptr)>
IL_0016: ret       
// GLib.FastActivator:<cacheBoxed>m__3 ()
IL_0000: newobj    <GLib.FastActivator/TypeEqualityComparer:.ctor ()>
IL_0005: newobj    <System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateBoxed>:.ctor (System.Collections.Generic.IEqualityComparer`1<System.Type>)>
IL_000a: ret       
// GLib.FastActivator:FastBoxed (System.Type,System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateBoxed>)
IL_0000: newobj    <GLib.FastActivator/<FastBoxed>c__AnonStorey0:.ctor ()>
IL_0005: stloc.0   
IL_0006: ldloc.0   
IL_0007: ldarg.0   
IL_0008: stfld     <<FastBoxed>c__AnonStorey0:t>
IL_000d: ldarg.1   
IL_000e: ldloc.0   
IL_000f: ldfld     <<FastBoxed>c__AnonStorey0:t>
IL_0014: ldloca.s  1
IL_0016: callvirt  <System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateBoxed>:TryGetValue (System.Type,GLib.FastActivator/FastCreateBoxed&)>
IL_001b: brtrue    IL_00ae
IL_0020: ldloc.0   
IL_0021: ldfld     <<FastBoxed>c__AnonStorey0:t>
IL_0026: ldstr     "New"
IL_002b: ldc.i4.s  88
IL_002d: callvirt  <System.Type:GetMethod (string,System.Reflection.BindingFlags)>
IL_0032: stloc.2   
IL_0033: ldloc.2   
IL_0034: ldnull    
IL_0035: call      <System.Reflection.MethodInfo:op_Inequality (System.Reflection.MethodInfo,System.Reflection.MethodInfo)>
IL_003a: brfalse   IL_0094
IL_003f: ldtoken   <0x01000016>
IL_0044: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_0049: call      <System.Linq.Expressions.Expression:Parameter (System.Type)>
IL_004e: stloc.3   
IL_004f: ldloc.2   
IL_0050: ldloc.3   
IL_0051: call      <System.Linq.Expressions.Expression:Call (System.Reflection.MethodInfo,System.Linq.Expressions.Expression)>
IL_0056: stloc.s   4
IL_0058: ldloc.s   4
IL_005a: ldtoken   <0x01000012>
IL_005f: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_0064: call      <System.Linq.Expressions.Expression:Convert (System.Linq.Expressions.Expression,System.Type)>
IL_0069: stloc.s   5
IL_006b: ldarg.1   
IL_006c: ldloc.0   
IL_006d: ldfld     <<FastBoxed>c__AnonStorey0:t>
IL_0072: ldloc.s   5
IL_0074: ldc.i4.1  
IL_0075: newarr    <0x01000028>
IL_007a: dup       
IL_007b: ldc.i4.0  
IL_007c: ldloc.3   
IL_007d: stelem.ref
IL_007e: call      <System.Linq.Expressions.Expression:Lambda<GLib.FastActivator/FastCreateBoxed> (System.Linq.Expressions.Expression,System.Linq.Expressions.ParameterExpression[])>
IL_0083: callvirt  <System.Linq.Expressions.Expression`1<GLib.FastActivator/FastCreateBoxed>:Compile ()>
IL_0088: dup       
IL_0089: stloc.1   
IL_008a: callvirt  <System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateBoxed>:set_Item (System.Type,GLib.FastActivator/FastCreateBoxed)>
IL_008f: br        IL_00ae
IL_0094: ldarg.1   
IL_0095: ldloc.0   
IL_0096: ldfld     <<FastBoxed>c__AnonStorey0:t>
IL_009b: ldloc.0   
IL_009c: ldftn     <0x060003a0>
IL_00a2: newobj    <GLib.FastActivator/FastCreateBoxed:.ctor (object,intptr)>
IL_00a7: dup       
IL_00a8: stloc.1   
IL_00a9: callvirt  <System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateBoxed>:set_Item (System.Type,GLib.FastActivator/FastCreateBoxed)>
IL_00ae: ldloc.1   
IL_00af: ret       
// (wrapper managed-to-native) System.RuntimeType:GetTypeCodeImplInternal (System.Type)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldloca.s  2
IL_0014: mono_ldptr4
IL_001a: calli     <Type&,intptr>
IL_001f: ldloc.0   
IL_0020: ldloca.s  1
IL_0022: ldloca.s  2
IL_0024: mono_icall <mono_icall_end>
IL_002a: mono_ldptr_int_req_flag
IL_002c: ldind.u4  
IL_002d: brfalse   IL_0042
IL_0032: mono_not_taken
IL_0034: mono_icall <mono_thread_interruption_checkpoint>
IL_003a: dup       
IL_003b: brfalse   IL_0041
IL_0040: throw     
IL_0041: pop       
IL_0042: ret       
// (wrapper managed-to-managed) System.Linq.Expressions.ParameterExpression[]:System.Collections.Generic.ICollection`1.CopyTo (System.Linq.Expressions.ParameterExpression[],int)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: ldarg.2   
IL_0003: call      <System.Array:InternalArray__ICollection_CopyTo<System.Linq.Expressions.ParameterExpression> (System.Linq.Expressions.ParameterExpression[],int)>
IL_0008: ret       
// (wrapper managed-to-managed) System.Linq.Expressions.ParameterExpression[]:System.Collections.Generic.IList`1.get_Item (int)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: call      <System.Array:InternalArray__get_Item<System.Linq.Expressions.ParameterExpression> (int)>
IL_0007: ret       
// System.Linq.Expressions.Compiler.ParameterList/<GetEnumerator>d__6:System.Collections.Generic.IEnumerator<System.Linq.Expressions.ParameterExpression>.get_Current ()
IL_0000: ldarg.0   
IL_0001: ldfld     <<GetEnumerator>d__6:<>2__current>
IL_0006: ret       
// (wrapper managed-to-native) System.Array:ClearInternal (System.Array,int,int)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldarg.1   
IL_0013: ldarg.2   
IL_0014: ldloca.s  2
IL_0016: mono_ldptr4
IL_001c: calli     <Array&,int,int,intptr>
IL_0021: ldloc.0   
IL_0022: ldloca.s  1
IL_0024: ldloca.s  2
IL_0026: mono_icall <mono_icall_end>
IL_002c: mono_ldptr_int_req_flag
IL_002e: ldind.u4  
IL_002f: brfalse   IL_0044
IL_0034: mono_not_taken
IL_0036: mono_icall <mono_thread_interruption_checkpoint>
IL_003c: dup       
IL_003d: brfalse   IL_0043
IL_0042: throw     
IL_0043: pop       
IL_0044: ret       
// (wrapper dynamic-method) object:lambda_method (System.Runtime.CompilerServices.Closure,intptr)
IL_0000: ldarg.1   
IL_0001: call      <Gdk.Event:New (intptr)>
IL_0006: castclass <Object>
IL_000b: ret       
// Gdk.Event:New (intptr)
IL_0000: ldarg.0   
IL_0001: call      <Gdk.Event:GetEvent (intptr)>
IL_0006: ret       
// Gdk.Event:.cctor ()
IL_0000: call      <Gdk.Event:gdk_event_get_type ()>
IL_0005: newobj    <GLib.GType:.ctor (intptr)>
IL_000a: stsfld    <Gdk.Event:_gtype>
IL_000f: ret       
// (wrapper runtime-invoke) object:runtime_invoke_void (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0034
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.3   
IL_001f: calli     <>
IL_0024: leave     IL_0032
IL_0029: stloc.1   
IL_002a: ldarg.2   
IL_002b: ldloc.1   
IL_002c: stind.ref 
IL_002d: leave     IL_0032
IL_0032: ldloc.0   
IL_0033: ret       
IL_0034: mono_ldptr_int_req_flag
IL_0036: ldind.u4  
IL_0037: brfalse   IL_004c
IL_003c: mono_not_taken
IL_003e: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0044: dup       
IL_0045: brfalse   IL_004b
IL_004a: throw     
IL_004b: pop       
IL_004c: ldarg.3   
IL_004d: calli     <>
IL_0052: ldloc.0   
IL_0053: ret       
// (wrapper managed-to-native) Gdk.Event:gdk_event_get_type ()
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: mono_ldptr3
IL_0012: calli     <>
IL_0017: ldloc.s   5
IL_0019: ldloca.s  4
IL_001b: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0021: stloc.3   
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ldloc.3   
IL_003b: ret       
// Gdk.Event:GetEvent (intptr)
IL_0000: ldarg.0   
IL_0001: ldc.i4.0  
IL_0002: call      <Gdk.Event:GetEvent (intptr,bool)>
IL_0007: ret       
// Gdk.Event:GetEvent (intptr,bool)
IL_0000: ldarg.0   
IL_0001: ldsfld    <System.IntPtr:Zero>
IL_0006: call      <intptr:op_Equality (intptr,intptr)>
IL_000b: brfalse   IL_0012
IL_0010: ldnull    
IL_0011: ret       
IL_0012: ldarg.0   
IL_0013: call      <Gdk.Event:gtksharp_gdk_event_get_event_type (intptr)>
IL_0018: stloc.0   
IL_0019: ldloc.0   
IL_001a: switch    (IL_0144, IL_0144, IL_00b4, IL_00bc, IL_00c4, IL_00c4, IL_00c4, IL_00c4, IL_00cc, IL_00cc, IL_00d4, IL_00d4, IL_00dc, IL_00e4, IL_0144, IL_0144, IL_00ec, IL_00f4, IL_00f4, IL_00f4, IL_00fc, IL_00fc, IL_0104, IL_0104, IL_0104, IL_0104, IL_0104, IL_0104, IL_010c, IL_0114, IL_0144, IL_011c, IL_0124, IL_012c, IL_0134, IL_013c)
IL_00af: br        IL_0144
IL_00b4: ldarg.0   
IL_00b5: ldarg.1   
IL_00b6: newobj    <Gdk.EventExpose:.ctor (intptr,bool)>
IL_00bb: ret       
IL_00bc: ldarg.0   
IL_00bd: ldarg.1   
IL_00be: newobj    <Gdk.EventMotion:.ctor (intptr,bool)>
IL_00c3: ret       
IL_00c4: ldarg.0   
IL_00c5: ldarg.1   
IL_00c6: newobj    <Gdk.EventButton:.ctor (intptr,bool)>
IL_00cb: ret       
IL_00cc: ldarg.0   
IL_00cd: ldarg.1   
IL_00ce: newobj    <Gdk.EventKey:.ctor (intptr,bool)>
IL_00d3: ret       
IL_00d4: ldarg.0   
IL_00d5: ldarg.1   
IL_00d6: newobj    <Gdk.EventCrossing:.ctor (intptr,bool)>
IL_00db: ret       
IL_00dc: ldarg.0   
IL_00dd: ldarg.1   
IL_00de: newobj    <Gdk.EventFocus:.ctor (intptr,bool)>
IL_00e3: ret       
IL_00e4: ldarg.0   
IL_00e5: ldarg.1   
IL_00e6: newobj    <Gdk.EventConfigure:.ctor (intptr,bool)>
IL_00eb: ret       
IL_00ec: ldarg.0   
IL_00ed: ldarg.1   
IL_00ee: newobj    <Gdk.EventProperty:.ctor (intptr,bool)>
IL_00f3: ret       
IL_00f4: ldarg.0   
IL_00f5: ldarg.1   
IL_00f6: newobj    <Gdk.EventSelection:.ctor (intptr,bool)>
IL_00fb: ret       
IL_00fc: ldarg.0   
IL_00fd: ldarg.1   
IL_00fe: newobj    <Gdk.EventProximity:.ctor (intptr,bool)>
IL_0103: ret       
IL_0104: ldarg.0   
IL_0105: ldarg.1   
IL_0106: newobj    <Gdk.EventDND:.ctor (intptr,bool)>
IL_010b: ret       
IL_010c: ldarg.0   
IL_010d: ldarg.1   
IL_010e: newobj    <Gdk.EventClient:.ctor (intptr,bool)>
IL_0113: ret       
IL_0114: ldarg.0   
IL_0115: ldarg.1   
IL_0116: newobj    <Gdk.EventVisibility:.ctor (intptr,bool)>
IL_011b: ret       
IL_011c: ldarg.0   
IL_011d: ldarg.1   
IL_011e: newobj    <Gdk.EventScroll:.ctor (intptr,bool)>
IL_0123: ret       
IL_0124: ldarg.0   
IL_0125: ldarg.1   
IL_0126: newobj    <Gdk.EventWindowState:.ctor (intptr,bool)>
IL_012b: ret       
IL_012c: ldarg.0   
IL_012d: ldarg.1   
IL_012e: newobj    <Gdk.EventSetting:.ctor (intptr,bool)>
IL_0133: ret       
IL_0134: ldarg.0   
IL_0135: ldarg.1   
IL_0136: newobj    <Gdk.EventOwnerChange:.ctor (intptr,bool)>
IL_013b: ret       
IL_013c: ldarg.0   
IL_013d: ldarg.1   
IL_013e: newobj    <Gdk.EventGrabBroken:.ctor (intptr,bool)>
IL_0143: ret       
IL_0144: ldarg.0   
IL_0145: ldarg.1   
IL_0146: newobj    <Gdk.Event:.ctor (intptr,bool)>
IL_014b: ret       
// (wrapper managed-to-native) Gdk.Event:gtksharp_gdk_event_get_event_type (intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: ldarg.0   
IL_000d: mono_ldptr3
IL_0013: calli     <intptr>
IL_0018: ldloc.s   5
IL_001a: ldloca.s  4
IL_001c: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0022: stloc.3   
IL_0023: mono_ldptr_int_req_flag
IL_0025: ldind.u4  
IL_0026: brfalse   IL_003b
IL_002b: mono_not_taken
IL_002d: mono_icall <mono_thread_interruption_checkpoint>
IL_0033: dup       
IL_0034: brfalse   IL_003a
IL_0039: throw     
IL_003a: pop       
IL_003b: ldloc.3   
IL_003c: ret       
// Gdk.EventExpose:.ctor (intptr,bool)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: ldarg.2   
IL_0003: call      <Gdk.Event:.ctor (intptr,bool)>
IL_0008: ret       
// Gdk.Event:.ctor (intptr,bool)
IL_0000: ldarg.0   
IL_0001: call      <object:.ctor ()>
IL_0006: ldarg.0   
IL_0007: ldarg.1   
IL_0008: stfld     <Gdk.Event:raw>
IL_000d: ldarg.0   
IL_000e: ldarg.2   
IL_000f: stfld     <Gdk.Event:owned>
IL_0014: ldarg.2   
IL_0015: brtrue    IL_0020
IL_001a: ldarg.0   
IL_001b: call      <System.GC:SuppressFinalize (object)>
IL_0020: ret       
// GLib.ClosureInvokedArgs:.ctor (GLib.Object,System.EventArgs)
IL_0000: ldarg.0   
IL_0001: call      <System.EventArgs:.ctor ()>
IL_0006: ldarg.0   
IL_0007: ldarg.1   
IL_0008: stfld     <GLib.ClosureInvokedArgs:obj>
IL_000d: ldarg.0   
IL_000e: ldarg.2   
IL_000f: stfld     <GLib.ClosureInvokedArgs:args>
IL_0014: ret       
// GLib.Signal/SignalClosure:Invoke (GLib.ClosureInvokedArgs)
IL_0000: ldarg.0   
IL_0001: ldfld     <SignalClosure:Invoked>
IL_0006: brtrue    IL_000c
IL_000b: ret       
IL_000c: ldarg.0   
IL_000d: ldfld     <SignalClosure:Invoked>
IL_0012: ldarg.0   
IL_0013: ldarg.1   
IL_0014: callvirt  <GLib.ClosureInvokedHandler:Invoke (object,GLib.ClosureInvokedArgs)>
IL_0019: ret       
// GLib.Signal:ClosureInvokedCB (object,GLib.ClosureInvokedArgs)
IL_0000: ldarg.0   
IL_0001: castclass <SignalClosure>
IL_0006: stloc.0   
IL_0007: ldloc.0   
IL_0008: ldloc.0   
IL_0009: ldfld     <SignalClosure:signal>
IL_000e: ldfld     <GLib.Signal:before_closure>
IL_0013: bne.un    IL_003e
IL_0018: ldarg.1   
IL_0019: callvirt  <GLib.ClosureInvokedArgs:get_Target ()>
IL_001e: callvirt  <GLib.Object:get_BeforeSignals ()>
IL_0023: ldloc.0   
IL_0024: ldfld     <SignalClosure:signal>
IL_0029: ldfld     <GLib.Signal:name>
IL_002e: callvirt  <System.Collections.Hashtable:get_Item (object)>
IL_0033: isinst    <Delegate>
IL_0038: stloc.1   
IL_0039: br        IL_005f
IL_003e: ldarg.1   
IL_003f: callvirt  <GLib.ClosureInvokedArgs:get_Target ()>
IL_0044: callvirt  <GLib.Object:get_AfterSignals ()>
IL_0049: ldloc.0   
IL_004a: ldfld     <SignalClosure:signal>
IL_004f: ldfld     <GLib.Signal:name>
IL_0054: callvirt  <System.Collections.Hashtable:get_Item (object)>
IL_0059: isinst    <Delegate>
IL_005e: stloc.1   
IL_005f: ldloc.1   
IL_0060: brfalse   IL_0084
IL_0065: ldloc.1   
IL_0066: ldc.i4.2  
IL_0067: newarr    <0x01000012>
IL_006c: dup       
IL_006d: ldc.i4.0  
IL_006e: ldarg.1   
IL_006f: callvirt  <GLib.ClosureInvokedArgs:get_Target ()>
IL_0074: stelem.ref
IL_0075: dup       
IL_0076: ldc.i4.1  
IL_0077: ldarg.1   
IL_0078: callvirt  <GLib.ClosureInvokedArgs:get_Args ()>
IL_007d: stelem.ref
IL_007e: callvirt  <System.Delegate:DynamicInvoke (object[])>
IL_0083: pop       
IL_0084: ret       
// MlEco.MlEcoApp:OnExpose (object,Gtk.ExposeEventArgs)
IL_0000: ldarg.0   
IL_0001: ldfld     <MlEco.MlEcoApp:simulation>
IL_0006: ldc.i4.1  
IL_0007: stfld     <MlEco.Simulation:drawLock>
IL_000c: ldarg.0   
IL_000d: ldfld     <MlEco.MlEcoApp:simulation>
IL_0012: ldfld     <MlEco.Simulation:updateLock>
IL_0017: brtrue.s  IL_000c
IL_0019: ldarg.0   
IL_001a: call      <MlEco.MlEcoApp:SetScreenUnits ()>
IL_001f: ldarg.0   
IL_0020: ldfld     <MlEco.MlEcoApp:simulation>
IL_0025: ldfld     <MlEco.Simulation:msPerTick>
IL_002a: brfalse.s IL_0038
IL_002c: ldarg.0   
IL_002d: call      <MlEco.MlEcoApp:DrawFood ()>
IL_0032: ldarg.0   
IL_0033: call      <MlEco.MlEcoApp:DrawCreatures ()>
IL_0038: ldarg.0   
IL_0039: call      <MlEco.MlEcoApp:DrawFeedback ()>
IL_003e: ldarg.0   
IL_003f: call      <MlEco.MlEcoApp:DrawGui ()>
IL_0044: ldarg.0   
IL_0045: ldfld     <MlEco.MlEcoApp:simulation>
IL_004a: ldc.i4.0  
IL_004b: stfld     <MlEco.Simulation:drawLock>
IL_0050: ret       
// (wrapper runtime-invoke) <Module>:runtime_invoke_void__this___object_object (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_003c
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.0   
IL_001f: ldarg.1   
IL_0020: ldind.ref 
IL_0021: ldarg.1   
IL_0022: ldc.i4.s  8
IL_0024: add       
IL_0025: ldind.ref 
IL_0026: ldarg.3   
IL_0027: calli     <object,object>
IL_002c: leave     IL_003a
IL_0031: stloc.1   
IL_0032: ldarg.2   
IL_0033: ldloc.1   
IL_0034: stind.ref 
IL_0035: leave     IL_003a
IL_003a: ldloc.0   
IL_003b: ret       
IL_003c: mono_ldptr_int_req_flag
IL_003e: ldind.u4  
IL_003f: brfalse   IL_0054
IL_0044: mono_not_taken
IL_0046: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_004c: dup       
IL_004d: brfalse   IL_0053
IL_0052: throw     
IL_0053: pop       
IL_0054: ldarg.0   
IL_0055: ldarg.1   
IL_0056: ldind.ref 
IL_0057: ldarg.1   
IL_0058: ldc.i4.s  8
IL_005a: add       
IL_005b: ldind.ref 
IL_005c: ldarg.3   
IL_005d: calli     <object,object>
IL_0062: ldloc.0   
IL_0063: ret       
// MlEco.MlEcoApp:SetScreenUnits ()
IL_0000: ldarg.0   
IL_0001: ldarg.0   
IL_0002: call      <Gtk.Widget:get_Allocation ()>
IL_0007: ldfld     <Gdk.Rectangle:Width>
IL_000c: conv.r8   
IL_000d: ldc.r8    100
IL_0016: div       
IL_0017: stfld     <MlEco.MlEcoApp:wUnit>
IL_001c: ldarg.0   
IL_001d: ldarg.0   
IL_001e: call      <Gtk.Widget:get_Allocation ()>
IL_0023: ldfld     <Gdk.Rectangle:Height>
IL_0028: conv.r8   
IL_0029: ldc.r8    100
IL_0032: div       
IL_0033: stfld     <MlEco.MlEcoApp:hUnit>
IL_0038: ldarg.0   
IL_0039: ldarg.0   
IL_003a: call      <Gtk.Widget:get_Allocation ()>
IL_003f: ldfld     <Gdk.Rectangle:Width>
IL_0044: ldarg.0   
IL_0045: call      <Gtk.Widget:get_Allocation ()>
IL_004a: ldfld     <Gdk.Rectangle:Height>
IL_004f: blt.s     IL_0059
IL_0051: ldarg.0   
IL_0052: ldfld     <MlEco.MlEcoApp:hUnit>
IL_0057: br.s      IL_005f
IL_0059: ldarg.0   
IL_005a: ldfld     <MlEco.MlEcoApp:wUnit>
IL_005f: stfld     <MlEco.MlEcoApp:sUnit>
IL_0064: ret       
// Gtk.Widget:get_Allocation ()
IL_0000: ldarg.0   
IL_0001: call      <GLib.Object:get_Handle ()>
IL_0006: call      <Gtk.Widget:gtksharp_gtk_widget_get_allocation (intptr)>
IL_000b: call      <Gdk.Rectangle:New (intptr)>
IL_0010: ret       
// (wrapper managed-to-native) Gtk.Widget:gtksharp_gtk_widget_get_allocation (intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: ldarg.0   
IL_000d: mono_ldptr3
IL_0013: calli     <intptr>
IL_0018: ldloc.s   5
IL_001a: ldloca.s  4
IL_001c: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0022: stloc.3   
IL_0023: mono_ldptr_int_req_flag
IL_0025: ldind.u4  
IL_0026: brfalse   IL_003b
IL_002b: mono_not_taken
IL_002d: mono_icall <mono_thread_interruption_checkpoint>
IL_0033: dup       
IL_0034: brfalse   IL_003a
IL_0039: throw     
IL_003a: pop       
IL_003b: ldloc.3   
IL_003c: ret       
// Gdk.Rectangle:.cctor ()
IL_0000: ldloca.s  0
IL_0002: initobj   <0x020000ce>
IL_0008: ldloc.0   
IL_0009: stsfld    <Gdk.Rectangle:Zero>
IL_000e: ret       
// Gdk.Rectangle:New (intptr)
IL_0000: ldarg.0   
IL_0001: ldsfld    <System.IntPtr:Zero>
IL_0006: call      <intptr:op_Equality (intptr,intptr)>
IL_000b: brfalse   IL_0016
IL_0010: ldsfld    <Gdk.Rectangle:Zero>
IL_0015: ret       
IL_0016: ldarg.0   
IL_0017: call      <intptr:op_Explicit (intptr)>
IL_001c: ldobj     <0x020000ce>
IL_0021: ret       
// MlEco.MlEcoApp:DrawFeedback ()
IL_0000: ldarg.0   
IL_0001: ldfld     <MlEco.MlEcoApp:showInfo>
IL_0006: brtrue.s  IL_0009
IL_0008: ret       
IL_0009: ldarg.0   
IL_000a: ldstr     "Creatures: "
IL_000f: ldarg.0   
IL_0010: ldfld     <MlEco.MlEcoApp:simulation>
IL_0015: ldfld     <MlEco.Simulation:Creatures>
IL_001a: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:get_Count ()>
IL_001f: stloc.0   
IL_0020: ldloca.s  0
IL_0022: call      <int:ToString ()>
IL_0027: call      <string:Concat (string,string)>
IL_002c: ldc.r8    2
IL_0035: ldarg.0   
IL_0036: ldfld     <MlEco.MlEcoApp:wUnit>
IL_003b: mul       
IL_003c: ldc.r8    5
IL_0045: ldarg.0   
IL_0046: ldfld     <MlEco.MlEcoApp:hUnit>
IL_004b: mul       
IL_004c: call      <MlEco.MlEcoApp:DrawCaption (string,double,double)>
IL_0051: ldarg.0   
IL_0052: ldstr     "Generation: "
IL_0057: ldarg.0   
IL_0058: ldfld     <MlEco.MlEcoApp:simulation>
IL_005d: ldflda    <0x04000046>
IL_0062: call      <int:ToString ()>
IL_0067: call      <string:Concat (string,string)>
IL_006c: ldc.r8    2
IL_0075: ldarg.0   
IL_0076: ldfld     <MlEco.MlEcoApp:wUnit>
IL_007b: mul       
IL_007c: ldc.r8    10
IL_0085: ldarg.0   
IL_0086: ldfld     <MlEco.MlEcoApp:hUnit>
IL_008b: mul       
IL_008c: call      <MlEco.MlEcoApp:DrawCaption (string,double,double)>
IL_0091: ldarg.0   
IL_0092: ldstr     "Tick: "
IL_0097: ldarg.0   
IL_0098: ldfld     <MlEco.MlEcoApp:simulation>
IL_009d: ldflda    <0x04000054>
IL_00a2: call      <int:ToString ()>
IL_00a7: call      <string:Concat (string,string)>
IL_00ac: ldc.r8    2
IL_00b5: ldarg.0   
IL_00b6: ldfld     <MlEco.MlEcoApp:wUnit>
IL_00bb: mul       
IL_00bc: ldc.r8    15
IL_00c5: ldarg.0   
IL_00c6: ldfld     <MlEco.MlEcoApp:hUnit>
IL_00cb: mul       
IL_00cc: call      <MlEco.MlEcoApp:DrawCaption (string,double,double)>
IL_00d1: ldarg.0   
IL_00d2: ldstr     "Tick Rate: {0:0.} t/s"
IL_00d7: ldarg.0   
IL_00d8: ldfld     <MlEco.MlEcoApp:simulation>
IL_00dd: ldflda    <0x04000053>
IL_00e2: ldfld     <TickRateCounter:rate>
IL_00e7: box       <0x0100003e>
IL_00ec: call      <string:Format (string,object)>
IL_00f1: ldc.r8    2
IL_00fa: ldarg.0   
IL_00fb: ldfld     <MlEco.MlEcoApp:wUnit>
IL_0100: mul       
IL_0101: ldc.r8    20
IL_010a: ldarg.0   
IL_010b: ldfld     <MlEco.MlEcoApp:hUnit>
IL_0110: mul       
IL_0111: call      <MlEco.MlEcoApp:DrawCaption (string,double,double)>
IL_0116: ldarg.0   
IL_0117: ldstr     "Avrage Fitness: {0:0.00}"
IL_011c: ldarg.0   
IL_011d: ldfld     <MlEco.MlEcoApp:simulation>
IL_0122: callvirt  <MlEco.Simulation:GetAvarageFitness ()>
IL_0127: box       <0x0100003e>
IL_012c: call      <string:Format (string,object)>
IL_0131: ldc.r8    2
IL_013a: ldarg.0   
IL_013b: ldfld     <MlEco.MlEcoApp:wUnit>
IL_0140: mul       
IL_0141: ldc.r8    25
IL_014a: ldarg.0   
IL_014b: ldfld     <MlEco.MlEcoApp:hUnit>
IL_0150: mul       
IL_0151: call      <MlEco.MlEcoApp:DrawCaption (string,double,double)>
IL_0156: ret       
// MlEco.MlEcoApp:DrawCaption (string,double,double)
IL_0000: ldarg.0   
IL_0001: ldfld     <MlEco.MlEcoApp:drawingArea>
IL_0006: callvirt  <Gtk.Widget:get_GdkWindow ()>
IL_000b: call      <Gdk.CairoHelper:Create (Gdk.Drawable)>
IL_0010: dup       
IL_0011: ldstr     ""
IL_0016: ldc.i4.0  
IL_0017: ldc.i4.1  
IL_0018: callvirt  <Cairo.Context:SelectFontFace (string,Cairo.FontSlant,Cairo.FontWeight)>
IL_001d: dup       
IL_001e: ldc.r8    5
IL_0027: ldarg.0   
IL_0028: ldfld     <MlEco.MlEcoApp:sUnit>
IL_002d: mul       
IL_002e: callvirt  <Cairo.Context:SetFontSize (double)>
IL_0033: dup       
IL_0034: ldarg.2   
IL_0035: ldarg.3   
IL_0036: callvirt  <Cairo.Context:MoveTo (double,double)>
IL_003b: dup       
IL_003c: ldarg.1   
IL_003d: callvirt  <Cairo.Context:TextPath (string)>
IL_0042: dup       
IL_0043: ldc.r8    1
IL_004c: ldc.r8    1
IL_0055: ldc.r8    1
IL_005e: callvirt  <Cairo.Context:SetSourceRGB (double,double,double)>
IL_0063: dup       
IL_0064: callvirt  <Cairo.Context:FillPreserve ()>
IL_0069: dup       
IL_006a: ldarg.0   
IL_006b: ldfld     <MlEco.MlEcoApp:sUnit>
IL_0070: ldc.r8    3
IL_0079: div       
IL_007a: callvirt  <Cairo.Context:set_LineWidth (double)>
IL_007f: dup       
IL_0080: ldc.r8    0
IL_0089: ldc.r8    0
IL_0092: ldc.r8    0
IL_009b: callvirt  <Cairo.Context:SetSourceRGB (double,double,double)>
IL_00a0: dup       
IL_00a1: callvirt  <Cairo.Context:Stroke ()>
IL_00a6: callvirt  <Cairo.Context:Dispose ()>
IL_00ab: ret       
// Gtk.Widget:get_GdkWindow ()
IL_0000: ldarg.0   
IL_0001: call      <GLib.Object:get_Handle ()>
IL_0006: call      <Gtk.Widget:gtksharp_gtk_widget_get_window (intptr)>
IL_000b: stloc.0   
IL_000c: ldloc.0   
IL_000d: ldc.i4.0  
IL_000e: call      <intptr:op_Explicit (int)>
IL_0013: call      <intptr:op_Inequality (intptr,intptr)>
IL_0018: brfalse   IL_002c
IL_001d: ldloc.0   
IL_001e: ldc.i4.0  
IL_001f: call      <GLib.Object:GetObject (intptr,bool)>
IL_0024: castclass <Window>
IL_0029: stloc.1   
IL_002a: ldloc.1   
IL_002b: ret       
IL_002c: ldnull    
IL_002d: ret       
// (wrapper managed-to-native) Gtk.Widget:gtksharp_gtk_widget_get_window (intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: ldarg.0   
IL_000d: mono_ldptr3
IL_0013: calli     <intptr>
IL_0018: ldloc.s   5
IL_001a: ldloca.s  4
IL_001c: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0022: stloc.3   
IL_0023: mono_ldptr_int_req_flag
IL_0025: ldind.u4  
IL_0026: brfalse   IL_003b
IL_002b: mono_not_taken
IL_002d: mono_icall <mono_thread_interruption_checkpoint>
IL_0033: dup       
IL_0034: brfalse   IL_003a
IL_0039: throw     
IL_003a: pop       
IL_003b: ldloc.3   
IL_003c: ret       
// GLib.ObjectManager:CreateObject (intptr)
IL_0000: ldarg.0   
IL_0001: ldsfld    <System.IntPtr:Zero>
IL_0006: call      <intptr:op_Equality (intptr,intptr)>
IL_000b: brfalse   IL_0012
IL_0010: ldnull    
IL_0011: ret       
IL_0012: ldarg.0   
IL_0013: call      <GLib.ObjectManager:GetTypeOrParent (intptr)>
IL_0018: stloc.0   
IL_0019: ldloc.0   
IL_001a: ldnull    
IL_001b: call      <System.Type:op_Equality (System.Type,System.Type)>
IL_0020: brfalse   IL_0027
IL_0025: ldnull    
IL_0026: ret       
IL_0027: ldarg.0   
IL_0028: ldloc.0   
IL_0029: call      <GLib.FastActivator:CreateObject (intptr,System.Type)>
IL_002e: stloc.1   
IL_002f: leave     IL_004b
IL_0034: pop       
IL_0035: ldstr     "GLib.Object subclass "
IL_003a: ldloc.0   
IL_003b: ldstr     " must provide a protected or public IntPtr ctor to support wrapping of native object handles."
IL_0040: call      <string:Concat (object,object,object)>
IL_0045: newobj    <GLib.MissingIntPtrCtorException:.ctor (string)>
IL_004a: throw     
IL_004b: ldloc.1   
IL_004c: ret       
// GLib.ObjectManager:.cctor ()
IL_0000: ldc.i4    564
IL_0005: stsfld    <GLib.ObjectManager:flags>
IL_000a: ret       
// GLib.ObjectManager:GetTypeOrParent (intptr)
IL_0000: ldarg.0   
IL_0001: call      <GLib.ObjectManager:gtksharp_get_type_id (intptr)>
IL_0006: stloc.0   
IL_0007: ldloc.0   
IL_0008: call      <GLib.GType:LookupType (intptr)>
IL_000d: stloc.1   
IL_000e: br        IL_0033
IL_0013: ldloc.0   
IL_0014: call      <GLib.ObjectManager:g_type_parent (intptr)>
IL_0019: stloc.0   
IL_001a: ldloc.0   
IL_001b: ldsfld    <System.IntPtr:Zero>
IL_0020: call      <intptr:op_Equality (intptr,intptr)>
IL_0025: brfalse   IL_002c
IL_002a: ldnull    
IL_002b: ret       
IL_002c: ldloc.0   
IL_002d: call      <GLib.GType:LookupType (intptr)>
IL_0032: stloc.1   
IL_0033: ldloc.1   
IL_0034: ldnull    
IL_0035: call      <System.Type:op_Equality (System.Type,System.Type)>
IL_003a: brtrue    IL_0013
IL_003f: ldloc.1   
IL_0040: ret       
// (wrapper managed-to-native) GLib.ObjectManager:gtksharp_get_type_id (intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: ldarg.0   
IL_000d: mono_ldptr3
IL_0013: calli     <intptr>
IL_0018: ldloc.s   5
IL_001a: ldloca.s  4
IL_001c: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0022: stloc.3   
IL_0023: mono_ldptr_int_req_flag
IL_0025: ldind.u4  
IL_0026: brfalse   IL_003b
IL_002b: mono_not_taken
IL_002d: mono_icall <mono_thread_interruption_checkpoint>
IL_0033: dup       
IL_0034: brfalse   IL_003a
IL_0039: throw     
IL_003a: pop       
IL_003b: ldloc.3   
IL_003c: ret       
// GLib.FastActivator:CreateObject (intptr,System.Type)
IL_0000: ldarg.1   
IL_0001: ldsfld    <GLib.FastActivator:cacheObject>
IL_0006: callvirt  <System.Threading.ThreadLocal`1<System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateObjectPtr>>:get_Value ()>
IL_000b: call      <GLib.FastActivator:FastCtorPtr (System.Type,System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateObjectPtr>)>
IL_0010: ldarg.0   
IL_0011: callvirt  <GLib.FastActivator/FastCreateObjectPtr:Invoke (intptr)>
IL_0016: castclass <Object>
IL_001b: ret       
// GLib.FastActivator:<cacheObject>m__1 ()
IL_0000: newobj    <GLib.FastActivator/TypeEqualityComparer:.ctor ()>
IL_0005: newobj    <System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateObjectPtr>:.ctor (System.Collections.Generic.IEqualityComparer`1<System.Type>)>
IL_000a: ret       
// GLib.FastActivator:FastCtorPtr (System.Type,System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateObjectPtr>)
IL_0000: ldarg.1   
IL_0001: ldarg.0   
IL_0002: ldloca.s  0
IL_0004: callvirt  <System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateObjectPtr>:TryGetValue (System.Type,GLib.FastActivator/FastCreateObjectPtr&)>
IL_0009: brtrue    IL_0085
IL_000e: ldtoken   <0x01000016>
IL_0013: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_0018: call      <System.Linq.Expressions.Expression:Parameter (System.Type)>
IL_001d: stloc.1   
IL_001e: ldarg.0   
IL_001f: ldc.i4    564
IL_0024: ldnull    
IL_0025: ldc.i4.1  
IL_0026: newarr    <0x01000001>
IL_002b: dup       
IL_002c: ldc.i4.0  
IL_002d: ldtoken   <0x01000016>
IL_0032: call      <System.Type:GetTypeFromHandle (System.RuntimeTypeHandle)>
IL_0037: stelem.ref
IL_0038: ldc.i4.0  
IL_0039: newarr    <0x0100002b>
IL_003e: callvirt  <System.Type:GetConstructor (System.Reflection.BindingFlags,System.Reflection.Binder,System.Type[],System.Reflection.ParameterModifier[])>
IL_0043: stloc.2   
IL_0044: ldloc.2   
IL_0045: ldnull    
IL_0046: call      <System.Reflection.ConstructorInfo:op_Equality (System.Reflection.ConstructorInfo,System.Reflection.ConstructorInfo)>
IL_004b: brfalse   IL_0056
IL_0050: newobj    <System.MissingMethodException:.ctor ()>
IL_0055: throw     
IL_0056: ldloc.2   
IL_0057: ldc.i4.1  
IL_0058: newarr    <0x01000029>
IL_005d: dup       
IL_005e: ldc.i4.0  
IL_005f: ldloc.1   
IL_0060: stelem.ref
IL_0061: call      <System.Linq.Expressions.Expression:New (System.Reflection.ConstructorInfo,System.Linq.Expressions.Expression[])>
IL_0066: stloc.3   
IL_0067: ldarg.1   
IL_0068: ldarg.0   
IL_0069: ldloc.3   
IL_006a: ldc.i4.1  
IL_006b: newarr    <0x01000028>
IL_0070: dup       
IL_0071: ldc.i4.0  
IL_0072: ldloc.1   
IL_0073: stelem.ref
IL_0074: call      <System.Linq.Expressions.Expression:Lambda<GLib.FastActivator/FastCreateObjectPtr> (System.Linq.Expressions.Expression,System.Linq.Expressions.ParameterExpression[])>
IL_0079: callvirt  <System.Linq.Expressions.Expression`1<GLib.FastActivator/FastCreateObjectPtr>:Compile ()>
IL_007e: dup       
IL_007f: stloc.0   
IL_0080: callvirt  <System.Collections.Generic.Dictionary`2<System.Type, GLib.FastActivator/FastCreateObjectPtr>:set_Item (System.Type,GLib.FastActivator/FastCreateObjectPtr)>
IL_0085: ldloc.0   
IL_0086: ret       
// (wrapper managed-to-managed) System.Linq.Expressions.Expression[]:System.Collections.Generic.ICollection`1.CopyTo (System.Linq.Expressions.Expression[],int)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: ldarg.2   
IL_0003: call      <System.Array:InternalArray__ICollection_CopyTo<System.Linq.Expressions.Expression> (System.Linq.Expressions.Expression[],int)>
IL_0008: ret       
// (wrapper dynamic-method) object:lambda_method (System.Runtime.CompilerServices.Closure,intptr)
IL_0000: ldarg.1   
IL_0001: newobj    <Gdk.Window:.ctor (intptr)>
IL_0006: ret       
// Gdk.Window:.ctor (intptr)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: call      <Gdk.Drawable:.ctor (intptr)>
IL_0007: ret       
// Gdk.Window:.cctor ()
IL_0000: call      <Gdk.Window:gdk_window_object_get_type ()>
IL_0005: newobj    <GLib.GType:.ctor (intptr)>
IL_000a: stsfld    <Gdk.Window:_gtype>
IL_000f: ret       
// (wrapper managed-to-native) Gdk.Window:gdk_window_object_get_type ()
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: mono_ldptr3
IL_0012: calli     <>
IL_0017: ldloc.s   5
IL_0019: ldloca.s  4
IL_001b: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0021: stloc.3   
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ldloc.3   
IL_003b: ret       
// Gdk.Drawable:.ctor (intptr)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: call      <GLib.Object:.ctor (intptr)>
IL_0007: ret       
// Gdk.Drawable:.cctor ()
IL_0000: call      <Gdk.Drawable:gdk_drawable_get_type ()>
IL_0005: newobj    <GLib.GType:.ctor (intptr)>
IL_000a: stsfld    <Gdk.Drawable:_gtype>
IL_000f: ret       
// (wrapper managed-to-native) Gdk.Drawable:gdk_drawable_get_type ()
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: mono_ldptr3
IL_0012: calli     <>
IL_0017: ldloc.s   5
IL_0019: ldloca.s  4
IL_001b: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0021: stloc.3   
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ldloc.3   
IL_003b: ret       
// Gdk.CairoHelper:Create (Gdk.Drawable)
IL_0000: ldarg.0   
IL_0001: brtrue    IL_0010
IL_0006: ldsfld    <System.IntPtr:Zero>
IL_000b: br        IL_0016
IL_0010: ldarg.0   
IL_0011: callvirt  <GLib.Object:get_Handle ()>
IL_0016: call      <Gdk.CairoHelper:gdk_cairo_create (intptr)>
IL_001b: stloc.0   
IL_001c: ldloc.0   
IL_001d: newobj    <Cairo.Context:.ctor (intptr)>
IL_0022: stloc.1   
IL_0023: ldloc.1   
IL_0024: ret       
// (wrapper managed-to-native) Gdk.CairoHelper:gdk_cairo_create (intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  4
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   5
IL_000c: ldarg.0   
IL_000d: mono_ldptr3
IL_0013: calli     <intptr>
IL_0018: ldloc.s   5
IL_001a: ldloca.s  4
IL_001c: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0022: stloc.3   
IL_0023: mono_ldptr_int_req_flag
IL_0025: ldind.u4  
IL_0026: brfalse   IL_003b
IL_002b: mono_not_taken
IL_002d: mono_icall <mono_thread_interruption_checkpoint>
IL_0033: dup       
IL_0034: brfalse   IL_003a
IL_0039: throw     
IL_003a: pop       
IL_003b: ldloc.3   
IL_003c: ret       
// (wrapper runtime-invoke) object:runtime_invoke_void (object,intptr,intptr,intptr)
IL_0000: ldarg.2   
IL_0001: brfalse   IL_0034
IL_0006: mono_ldptr_int_req_flag
IL_0008: ldind.u4  
IL_0009: brfalse   IL_001e
IL_000e: mono_not_taken
IL_0010: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0016: dup       
IL_0017: brfalse   IL_001d
IL_001c: throw     
IL_001d: pop       
IL_001e: ldarg.3   
IL_001f: calli     <>
IL_0024: leave     IL_0032
IL_0029: stloc.1   
IL_002a: ldarg.2   
IL_002b: ldloc.1   
IL_002c: stind.ref 
IL_002d: leave     IL_0032
IL_0032: ldloc.0   
IL_0033: ret       
IL_0034: mono_ldptr_int_req_flag
IL_0036: ldind.u4  
IL_0037: brfalse   IL_004c
IL_003c: mono_not_taken
IL_003e: mono_icall <mono_thread_force_interruption_checkpoint_noraise>
IL_0044: dup       
IL_0045: brfalse   IL_004b
IL_004a: throw     
IL_004b: pop       
IL_004c: ldarg.3   
IL_004d: calli     <>
IL_0052: ldloc.0   
IL_0053: ret       
// (wrapper managed-to-native) System.Runtime.InteropServices.Marshal:SizeOf (System.Type)
IL_0000: ldloca.s  1
IL_0002: ldloca.s  2
IL_0004: mono_icall <mono_icall_start>
IL_000a: stloc.0   
IL_000b: ldarg.0   
IL_000c: mono_icall <mono_icall_handle_new>
IL_0012: ldloca.s  2
IL_0014: mono_ldptr4
IL_001a: calli     <Type&,intptr>
IL_001f: ldloc.0   
IL_0020: ldloca.s  1
IL_0022: ldloca.s  2
IL_0024: mono_icall <mono_icall_end>
IL_002a: mono_ldptr_int_req_flag
IL_002c: ldind.u4  
IL_002d: brfalse   IL_0042
IL_0032: mono_not_taken
IL_0034: mono_icall <mono_thread_interruption_checkpoint>
IL_003a: dup       
IL_003b: brfalse   IL_0041
IL_0040: throw     
IL_0041: pop       
IL_0042: ret       
// (wrapper managed-to-native) Cairo.NativeMethods:cairo_select_font_face (intptr,string,Cairo.FontSlant,Cairo.FontWeight)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldarg.1   
IL_0003: mono_icall <mono_string_to_utf8str>
IL_0009: stloc.s   5
IL_000b: ldloca.s  3
IL_000d: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_0013: stloc.s   4
IL_0015: ldarg.0   
IL_0016: ldloc.s   5
IL_0018: ldarg.2   
IL_0019: ldarg.3   
IL_001a: mono_ldptr4
IL_0020: calli     <intptr,intptr,FontSlant,FontWeight>
IL_0025: ldloc.s   4
IL_0027: ldloca.s  3
IL_0029: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_002f: mono_ldptr_int_req_flag
IL_0031: ldind.u4  
IL_0032: brfalse   IL_0047
IL_0037: mono_not_taken
IL_0039: mono_icall <mono_thread_interruption_checkpoint>
IL_003f: dup       
IL_0040: brfalse   IL_0046
IL_0045: throw     
IL_0046: pop       
IL_0047: ldloc.s   5
IL_0049: mono_icall <mono_marshal_free>
IL_004f: ret       
// (wrapper managed-to-native) Cairo.NativeMethods:cairo_set_font_size (intptr,double)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: ldarg.0   
IL_000d: ldarg.1   
IL_000e: mono_ldptr3
IL_0014: calli     <intptr,double>
IL_0019: ldloc.s   4
IL_001b: ldloca.s  3
IL_001d: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0023: mono_ldptr_int_req_flag
IL_0025: ldind.u4  
IL_0026: brfalse   IL_003b
IL_002b: mono_not_taken
IL_002d: mono_icall <mono_thread_interruption_checkpoint>
IL_0033: dup       
IL_0034: brfalse   IL_003a
IL_0039: throw     
IL_003a: pop       
IL_003b: ret       
// (wrapper managed-to-native) Cairo.NativeMethods:cairo_move_to (intptr,double,double)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: ldarg.0   
IL_000d: ldarg.1   
IL_000e: ldarg.2   
IL_000f: mono_ldptr3
IL_0015: calli     <intptr,double,double>
IL_001a: ldloc.s   4
IL_001c: ldloca.s  3
IL_001e: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0024: mono_ldptr_int_req_flag
IL_0026: ldind.u4  
IL_0027: brfalse   IL_003c
IL_002c: mono_not_taken
IL_002e: mono_icall <mono_thread_interruption_checkpoint>
IL_0034: dup       
IL_0035: brfalse   IL_003b
IL_003a: throw     
IL_003b: pop       
IL_003c: ret       
// (wrapper managed-to-native) Cairo.NativeMethods:cairo_text_path (intptr,byte[])
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldarg.1   
IL_0003: mono_icall <mono_array_to_lparray>
IL_0009: stloc.s   5
IL_000b: ldloca.s  3
IL_000d: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_0013: stloc.s   4
IL_0015: ldarg.0   
IL_0016: ldloc.s   5
IL_0018: mono_ldptr4
IL_001e: calli     <intptr,object>
IL_0023: ldloc.s   4
IL_0025: ldloca.s  3
IL_0027: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_002d: mono_ldptr_int_req_flag
IL_002f: ldind.u4  
IL_0030: brfalse   IL_0045
IL_0035: mono_not_taken
IL_0037: mono_icall <mono_thread_interruption_checkpoint>
IL_003d: dup       
IL_003e: brfalse   IL_0044
IL_0043: throw     
IL_0044: pop       
IL_0045: ldarg.1   
IL_0046: ldloc.s   5
IL_0048: mono_icall <mono_free_lparray>
IL_004e: ret       
// (wrapper managed-to-native) Cairo.NativeMethods:cairo_set_source_rgb (intptr,double,double,double)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: ldarg.0   
IL_000d: ldarg.1   
IL_000e: ldarg.2   
IL_000f: ldarg.3   
IL_0010: mono_ldptr3
IL_0016: calli     <intptr,double,double,double>
IL_001b: ldloc.s   4
IL_001d: ldloca.s  3
IL_001f: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0025: mono_ldptr_int_req_flag
IL_0027: ldind.u4  
IL_0028: brfalse   IL_003d
IL_002d: mono_not_taken
IL_002f: mono_icall <mono_thread_interruption_checkpoint>
IL_0035: dup       
IL_0036: brfalse   IL_003c
IL_003b: throw     
IL_003c: pop       
IL_003d: ret       
// (wrapper managed-to-native) Cairo.NativeMethods:cairo_fill_preserve (intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: ldarg.0   
IL_000d: mono_ldptr3
IL_0013: calli     <intptr>
IL_0018: ldloc.s   4
IL_001a: ldloca.s  3
IL_001c: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ret       
// (wrapper managed-to-native) Cairo.NativeMethods:cairo_set_line_width (intptr,double)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: ldarg.0   
IL_000d: ldarg.1   
IL_000e: mono_ldptr3
IL_0014: calli     <intptr,double>
IL_0019: ldloc.s   4
IL_001b: ldloca.s  3
IL_001d: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0023: mono_ldptr_int_req_flag
IL_0025: ldind.u4  
IL_0026: brfalse   IL_003b
IL_002b: mono_not_taken
IL_002d: mono_icall <mono_thread_interruption_checkpoint>
IL_0033: dup       
IL_0034: brfalse   IL_003a
IL_0039: throw     
IL_003a: pop       
IL_003b: ret       
// (wrapper managed-to-native) Cairo.NativeMethods:cairo_stroke (intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: ldarg.0   
IL_000d: mono_ldptr3
IL_0013: calli     <intptr>
IL_0018: ldloc.s   4
IL_001a: ldloca.s  3
IL_001c: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ret       
// (wrapper managed-to-native) Cairo.NativeMethods:cairo_destroy (intptr)
IL_0000: ldc.i4.0  
IL_0001: stloc.2   
IL_0002: ldloca.s  3
IL_0004: mono_icall <mono_threads_enter_gc_safe_region_unbalanced>
IL_000a: stloc.s   4
IL_000c: ldarg.0   
IL_000d: mono_ldptr3
IL_0013: calli     <intptr>
IL_0018: ldloc.s   4
IL_001a: ldloca.s  3
IL_001c: mono_icall <mono_threads_exit_gc_safe_region_unbalanced>
IL_0022: mono_ldptr_int_req_flag
IL_0024: ldind.u4  
IL_0025: brfalse   IL_003a
IL_002a: mono_not_taken
IL_002c: mono_icall <mono_thread_interruption_checkpoint>
IL_0032: dup       
IL_0033: brfalse   IL_0039
IL_0038: throw     
IL_0039: pop       
IL_003a: ret       
// (wrapper managed-to-native) Interop/Sys:DoubleToString (double,byte*,byte*,int)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: ldarg.2   
IL_0003: ldarg.3   
IL_0004: mono_ldptr2
IL_000a: calli     <double,byte*,byte*,int>
IL_000f: mono_ldptr_int_req_flag
IL_0011: ldind.u4  
IL_0012: brfalse   IL_0027
IL_0017: mono_not_taken
IL_0019: mono_icall <mono_thread_interruption_checkpoint>
IL_001f: dup       
IL_0020: brfalse   IL_0026
IL_0025: throw     
IL_0026: pop       
IL_0027: ret       
// System.Buffers.ArrayPool`1<char>:.ctor ()
IL_0000: ldarg.0   
IL_0001: call      <object:.ctor ()>
IL_0006: ret       
// MlEco.Simulation:GetAvarageFitness ()
IL_0000: ldc.r8    0
IL_0009: stloc.0   
IL_000a: ldc.i4.0  
IL_000b: stloc.1   
IL_000c: br.s      IL_0027
IL_000e: ldloc.0   
IL_000f: ldarg.0   
IL_0010: ldfld     <MlEco.Simulation:Creatures>
IL_0015: ldloc.1   
IL_0016: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:get_Item (int)>
IL_001b: ldfld     <MlEco.Creature:fitness>
IL_0020: conv.r8   
IL_0021: add       
IL_0022: stloc.0   
IL_0023: ldloc.1   
IL_0024: ldc.i4.1  
IL_0025: add       
IL_0026: stloc.1   
IL_0027: ldloc.1   
IL_0028: ldarg.0   
IL_0029: ldfld     <MlEco.Simulation:Creatures>
IL_002e: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:get_Count ()>
IL_0033: blt.s     IL_000e
IL_0035: ldloc.0   
IL_0036: ldarg.0   
IL_0037: ldfld     <MlEco.Simulation:Creatures>
IL_003c: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:get_Count ()>
IL_0041: conv.r8   
IL_0042: div       
IL_0043: ret       
// GLib.Value:Update (object)
IL_0000: ldarg.0   
IL_0001: ldfld     <GLib.Value:type>
IL_0006: ldsfld    <GLib.GType:Boxed>
IL_000b: stloc.0   
IL_000c: ldloca.s  0
IL_000e: call      <GLib.GType:get_Val ()>
IL_0013: call      <GLib.Value:g_type_is_a (intptr,intptr)>
IL_0018: brfalse   IL_0035
IL_001d: ldarg.1   
IL_001e: isinst    <IWrapper>
IL_0023: brtrue    IL_0035
IL_0028: ldarg.1   
IL_0029: ldarg.0   
IL_002a: call      <GLib.Value:g_value_get_boxed (GLib.Value&)>
IL_002f: ldc.i4.0  
IL_0030: call      <System.Runtime.InteropServices.Marshal:StructureToPtr (object,intptr,bool)>
IL_0035: ret       
// (wrapper managed-to-native) System.Diagnostics.Stopwatch:GetTimestamp ()
IL_0000: mono_ldptr2
IL_0006: calli     <>
IL_000b: mono_ldptr_int_req_flag
IL_000d: ldind.u4  
IL_000e: brfalse   IL_0023
IL_0013: mono_not_taken
IL_0015: mono_icall <mono_thread_interruption_checkpoint>
IL_001b: dup       
IL_001c: brfalse   IL_0022
IL_0021: throw     
IL_0022: pop       
IL_0023: ret       
// MlEco.Simulation:UpdateCollisions ()
IL_0000: ldarg.0   
IL_0001: call      <MlEco.Simulation:ClearCreaturesCollisions ()>
IL_0006: ldarg.0   
IL_0007: ldc.r4    0
IL_000c: ldc.r4    0
IL_0011: ldc.r4    2
IL_0016: ldc.r4    2
IL_001b: newobj    <System.Drawing.RectangleF:.ctor (single,single,single,single)>
IL_0020: newobj    <QuadTreeLib.QuadTree`1<MlEco.Library/ICollidable>:.ctor (System.Drawing.RectangleF)>
IL_0025: stfld     <MlEco.Simulation:quadTree>
IL_002a: ldarg.0   
IL_002b: ldfld     <MlEco.Simulation:Creatures>
IL_0030: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:GetEnumerator ()>
IL_0035: stloc.0   
IL_0036: br.s      IL_004c
IL_0038: ldloca.s  0
IL_003a: call      <System.Collections.Generic.List`1/Enumerator<MlEco.Creature>:get_Current ()>
IL_003f: stloc.1   
IL_0040: ldarg.0   
IL_0041: ldfld     <MlEco.Simulation:quadTree>
IL_0046: ldloc.1   
IL_0047: callvirt  <QuadTreeLib.QuadTree`1<MlEco.Library/ICollidable>:Insert (MlEco.Library/ICollidable)>
IL_004c: ldloca.s  0
IL_004e: call      <System.Collections.Generic.List`1/Enumerator<MlEco.Creature>:MoveNext ()>
IL_0053: brtrue.s  IL_0038
IL_0055: leave.s   IL_0065
IL_0057: ldloca.s  0
IL_0059: constrained.<0x1b00000f>
IL_005f: callvirt  <System.IDisposable:Dispose ()>
IL_0064: endfinally
IL_0065: ldarg.0   
IL_0066: ldfld     <MlEco.Simulation:Foods>
IL_006b: callvirt  <System.Collections.Generic.List`1<MlEco.Food>:GetEnumerator ()>
IL_0070: stloc.2   
IL_0071: br.s      IL_0087
IL_0073: ldloca.s  2
IL_0075: call      <System.Collections.Generic.List`1/Enumerator<MlEco.Food>:get_Current ()>
IL_007a: stloc.3   
IL_007b: ldarg.0   
IL_007c: ldfld     <MlEco.Simulation:quadTree>
IL_0081: ldloc.3   
IL_0082: callvirt  <QuadTreeLib.QuadTree`1<MlEco.Library/ICollidable>:Insert (MlEco.Library/ICollidable)>
IL_0087: ldloca.s  2
IL_0089: call      <System.Collections.Generic.List`1/Enumerator<MlEco.Food>:MoveNext ()>
IL_008e: brtrue.s  IL_0073
IL_0090: leave.s   IL_00a0
IL_0092: ldloca.s  2
IL_0094: constrained.<0x1b000011>
IL_009a: callvirt  <System.IDisposable:Dispose ()>
IL_009f: endfinally
IL_00a0: ldc.i4.0  
IL_00a1: stloc.s   4
IL_00a3: br        IL_018d
IL_00a8: ldc.i4.0  
IL_00a9: stloc.s   5
IL_00ab: br        IL_017a
IL_00b0: ldarg.0   
IL_00b1: ldfld     <MlEco.Simulation:quadTree>
IL_00b6: ldloc.s   4
IL_00b8: conv.r4   
IL_00b9: ldarg.0   
IL_00ba: ldfld     <MlEco.Simulation:numSegments>
IL_00bf: conv.r4   
IL_00c0: div       
IL_00c1: ldloc.s   5
IL_00c3: conv.r4   
IL_00c4: ldarg.0   
IL_00c5: ldfld     <MlEco.Simulation:numSegments>
IL_00ca: conv.r4   
IL_00cb: div       
IL_00cc: ldc.r4    1
IL_00d1: ldarg.0   
IL_00d2: ldfld     <MlEco.Simulation:numSegments>
IL_00d7: conv.r4   
IL_00d8: div       
IL_00d9: ldc.r4    1
IL_00de: ldarg.0   
IL_00df: ldfld     <MlEco.Simulation:numSegments>
IL_00e4: conv.r4   
IL_00e5: div       
IL_00e6: newobj    <System.Drawing.RectangleF:.ctor (single,single,single,single)>
IL_00eb: callvirt  <QuadTreeLib.QuadTree`1<MlEco.Library/ICollidable>:Query (System.Drawing.RectangleF)>
IL_00f0: stloc.s   6
IL_00f2: ldloc.s   6
IL_00f4: callvirt  <System.Collections.Generic.List`1<MlEco.Library/ICollidable>:GetEnumerator ()>
IL_00f9: stloc.s   7
IL_00fb: br.s      IL_015b
IL_00fd: ldloca.s  7
IL_00ff: call      <System.Collections.Generic.List`1/Enumerator<MlEco.Library/ICollidable>:get_Current ()>
IL_0104: stloc.s   8
IL_0106: ldloc.s   6
IL_0108: callvirt  <System.Collections.Generic.List`1<MlEco.Library/ICollidable>:GetEnumerator ()>
IL_010d: stloc.s   9
IL_010f: br.s      IL_0142
IL_0111: ldloca.s  9
IL_0113: call      <System.Collections.Generic.List`1/Enumerator<MlEco.Library/ICollidable>:get_Current ()>
IL_0118: stloc.s   10
IL_011a: ldloc.s   8
IL_011c: ldloc.s   10
IL_011e: beq.s     IL_0142
IL_0120: ldloc.s   8
IL_0122: callvirt  <QuadTreeLib.IHasRect:get_rectangle ()>
IL_0127: stloc.s   11
IL_0129: ldloca.s  11
IL_012b: ldloc.s   10
IL_012d: callvirt  <QuadTreeLib.IHasRect:get_rectangle ()>
IL_0132: call      <System.Drawing.RectangleF:IntersectsWith (System.Drawing.RectangleF)>
IL_0137: brfalse.s IL_0142
IL_0139: ldloc.s   8
IL_013b: ldloc.s   10
IL_013d: callvirt  <MlEco.Library/ICollidable:CollideWith (MlEco.Library/ICollidable)>
IL_0142: ldloca.s  9
IL_0144: call      <System.Collections.Generic.List`1/Enumerator<MlEco.Library/ICollidable>:MoveNext ()>
IL_0149: brtrue.s  IL_0111
IL_014b: leave.s   IL_015b
IL_014d: ldloca.s  9
IL_014f: constrained.<0x1b000013>
IL_0155: callvirt  <System.IDisposable:Dispose ()>
IL_015a: endfinally
IL_015b: ldloca.s  7
IL_015d: call      <System.Collections.Generic.List`1/Enumerator<MlEco.Library/ICollidable>:MoveNext ()>
IL_0162: brtrue.s  IL_00fd
IL_0164: leave.s   IL_0174
IL_0166: ldloca.s  7
IL_0168: constrained.<0x1b000013>
IL_016e: callvirt  <System.IDisposable:Dispose ()>
IL_0173: endfinally
IL_0174: ldloc.s   5
IL_0176: ldc.i4.1  
IL_0177: add       
IL_0178: stloc.s   5
IL_017a: ldloc.s   5
IL_017c: ldarg.0   
IL_017d: ldfld     <MlEco.Simulation:numSegments>
IL_0182: ble       IL_00b0
IL_0187: ldloc.s   4
IL_0189: ldc.i4.1  
IL_018a: add       
IL_018b: stloc.s   4
IL_018d: ldloc.s   4
IL_018f: ldarg.0   
IL_0190: ldfld     <MlEco.Simulation:numSegments>
IL_0195: ble       IL_00a8
IL_019a: ret       
// MlEco.Simulation:ClearCreaturesCollisions ()
IL_0000: ldarg.0   
IL_0001: ldfld     <MlEco.Simulation:Creatures>
IL_0006: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:GetEnumerator ()>
IL_000b: stloc.0   
IL_000c: br.s      IL_0040
IL_000e: ldloca.s  0
IL_0010: call      <System.Collections.Generic.List`1/Enumerator<MlEco.Creature>:get_Current ()>
IL_0015: dup       
IL_0016: callvirt  <MlEco.Creature:get_SensoryGroup ()>
IL_001b: callvirt  <System.Collections.Generic.List`1<MlEco.Library/ICollidable>:Clear ()>
IL_0020: dup       
IL_0021: ldfld     <MlEco.Creature:obstructedFromHeadings>
IL_0026: callvirt  <System.Collections.Generic.List`1<double>:Clear ()>
IL_002b: dup       
IL_002c: ldfld     <MlEco.Creature:collidingCreatures>
IL_0031: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:Clear ()>
IL_0036: ldfld     <MlEco.Creature:proximateCreatures>
IL_003b: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:Clear ()>
IL_0040: ldloca.s  0
IL_0042: call      <System.Collections.Generic.List`1/Enumerator<MlEco.Creature>:MoveNext ()>
IL_0047: brtrue.s  IL_000e
IL_0049: leave.s   IL_0059
IL_004b: ldloca.s  0
IL_004d: constrained.<0x1b00000f>
IL_0053: callvirt  <System.IDisposable:Dispose ()>
IL_0058: endfinally
IL_0059: ret       
// QuadTreeLib.QuadTree`1<T_REF>:.ctor (System.Drawing.RectangleF)
IL_0000: ldarg.0   
IL_0001: call      <object:.ctor ()>
IL_0006: ldarg.0   
IL_0007: ldarg.1   
IL_0008: stfld     <QuadTreeLib.QuadTree`1:m_rectangle>
IL_000d: ldarg.0   
IL_000e: ldarg.0   
IL_000f: ldfld     <QuadTreeLib.QuadTree`1:m_rectangle>
IL_0014: newobj    <QuadTreeLib.QuadTreeNode`1<!0>:.ctor (System.Drawing.RectangleF)>
IL_0019: stfld     <QuadTreeLib.QuadTree`1:m_root>
IL_001e: ret       
// QuadTreeLib.QuadTreeNode`1<T_REF>:.ctor (System.Drawing.RectangleF)
IL_0000: ldarg.0   
IL_0001: newobj    <System.Collections.Generic.List`1<!0>:.ctor ()>
IL_0006: stfld     <QuadTreeLib.QuadTreeNode`1:m_contents>
IL_000b: ldarg.0   
IL_000c: ldc.i4.4  
IL_000d: newobj    <System.Collections.Generic.List`1<QuadTreeLib.QuadTreeNode`1<!0>>:.ctor (int)>
IL_0012: stfld     <QuadTreeLib.QuadTreeNode`1:m_nodes>
IL_0017: ldarg.0   
IL_0018: call      <object:.ctor ()>
IL_001d: ldarg.0   
IL_001e: ldarg.1   
IL_001f: stfld     <QuadTreeLib.QuadTreeNode`1:m_bounds>
IL_0024: ret       
// QuadTreeLib.QuadTree`1<T_REF>:Insert (T_REF)
IL_0000: ldarg.0   
IL_0001: ldfld     <QuadTreeLib.QuadTree`1:m_root>
IL_0006: ldarg.1   
IL_0007: callvirt  <QuadTreeLib.QuadTreeNode`1<!0>:Insert (!0)>
IL_000c: ret       
// QuadTreeLib.QuadTreeNode`1<T_REF>:Insert (T_REF)
IL_0000: ldarg.0   
IL_0001: ldflda    <0x0a000029>
IL_0006: ldarga.s  1
IL_0008: constrained.<0x1b000009>
IL_000e: callvirt  <QuadTreeLib.IHasRect:get_rectangle ()>
IL_0013: call      <System.Drawing.RectangleF:Contains (System.Drawing.RectangleF)>
IL_0018: brtrue.s  IL_001b
IL_001a: ret       
IL_001b: ldarg.0   
IL_001c: ldfld     <QuadTreeLib.QuadTreeNode`1:m_nodes>
IL_0021: callvirt  <System.Collections.Generic.List`1<QuadTreeLib.QuadTreeNode`1<!0>>:get_Count ()>
IL_0026: brtrue.s  IL_002e
IL_0028: ldarg.0   
IL_0029: call      <QuadTreeLib.QuadTreeNode`1<!0>:CreateSubNodes ()>
IL_002e: ldarg.0   
IL_002f: ldfld     <QuadTreeLib.QuadTreeNode`1:m_nodes>
IL_0034: callvirt  <System.Collections.Generic.List`1<QuadTreeLib.QuadTreeNode`1<!0>>:GetEnumerator ()>
IL_0039: stloc.0   
IL_003a: br.s      IL_006a
IL_003c: ldloca.s  0
IL_003e: call      <System.Collections.Generic.List`1/Enumerator<QuadTreeLib.QuadTreeNode`1<!0>>:get_Current ()>
IL_0043: stloc.1   
IL_0044: ldloc.1   
IL_0045: callvirt  <QuadTreeLib.QuadTreeNode`1<!0>:get_Bounds ()>
IL_004a: stloc.2   
IL_004b: ldloca.s  2
IL_004d: ldarga.s  1
IL_004f: constrained.<0x1b000009>
IL_0055: callvirt  <QuadTreeLib.IHasRect:get_rectangle ()>
IL_005a: call      <System.Drawing.RectangleF:Contains (System.Drawing.RectangleF)>
IL_005f: brfalse.s IL_006a
IL_0061: ldloc.1   
IL_0062: ldarg.1   
IL_0063: callvirt  <QuadTreeLib.QuadTreeNode`1<!0>:Insert (!0)>
IL_0068: leave.s   IL_008f
IL_006a: ldloca.s  0
IL_006c: call      <System.Collections.Generic.List`1/Enumerator<QuadTreeLib.QuadTreeNode`1<!0>>:MoveNext ()>
IL_0071: brtrue.s  IL_003c
IL_0073: leave.s   IL_0083
IL_0075: ldloca.s  0
IL_0077: constrained.<0x1b000007>
IL_007d: callvirt  <System.IDisposable:Dispose ()>
IL_0082: endfinally
IL_0083: ldarg.0   
IL_0084: call      <QuadTreeLib.QuadTreeNode`1<!0>:get_Contents ()>
IL_0089: ldarg.1   
IL_008a: callvirt  <System.Collections.Generic.List`1<!0>:Add (!0)>
IL_008f: ret       
// mlEco.SimulationObject:get_rectangle ()
IL_0000: ldarg.0   
IL_0001: ldfld     <mlEco.SimulationObject:<rectangle>k__BackingField>
IL_0006: ret       
// QuadTreeLib.QuadTreeNode`1<T_REF>:CreateSubNodes ()
IL_0000: ldarg.0   
IL_0001: ldflda    <0x0a000029>
IL_0006: call      <System.Drawing.RectangleF:get_Height ()>
IL_000b: ldarg.0   
IL_000c: ldflda    <0x0a000029>
IL_0011: call      <System.Drawing.RectangleF:get_Width ()>
IL_0016: mul       
IL_0017: ldc.r4    10
IL_001c: bgt.un.s  IL_001f
IL_001e: ret       
IL_001f: ldarg.0   
IL_0020: ldflda    <0x0a000029>
IL_0025: call      <System.Drawing.RectangleF:get_Width ()>
IL_002a: ldc.r4    2
IL_002f: div       
IL_0030: stloc.0   
IL_0031: ldarg.0   
IL_0032: ldflda    <0x0a000029>
IL_0037: call      <System.Drawing.RectangleF:get_Height ()>
IL_003c: ldc.r4    2
IL_0041: div       
IL_0042: stloc.1   
IL_0043: ldarg.0   
IL_0044: ldfld     <QuadTreeLib.QuadTreeNode`1:m_nodes>
IL_0049: ldarg.0   
IL_004a: ldflda    <0x0a000029>
IL_004f: call      <System.Drawing.RectangleF:get_Location ()>
IL_0054: ldloc.0   
IL_0055: ldloc.1   
IL_0056: newobj    <System.Drawing.SizeF:.ctor (single,single)>
IL_005b: newobj    <System.Drawing.RectangleF:.ctor (System.Drawing.PointF,System.Drawing.SizeF)>
IL_0060: newobj    <QuadTreeLib.QuadTreeNode`1<!0>:.ctor (System.Drawing.RectangleF)>
IL_0065: callvirt  <System.Collections.Generic.List`1<QuadTreeLib.QuadTreeNode`1<!0>>:Add (QuadTreeLib.QuadTreeNode`1<!0>)>
IL_006a: ldarg.0   
IL_006b: ldfld     <QuadTreeLib.QuadTreeNode`1:m_nodes>
IL_0070: ldarg.0   
IL_0071: ldflda    <0x0a000029>
IL_0076: call      <System.Drawing.RectangleF:get_Left ()>
IL_007b: ldarg.0   
IL_007c: ldflda    <0x0a000029>
IL_0081: call      <System.Drawing.RectangleF:get_Top ()>
IL_0086: ldloc.1   
IL_0087: add       
IL_0088: newobj    <System.Drawing.PointF:.ctor (single,single)>
IL_008d: ldloc.0   
IL_008e: ldloc.1   
IL_008f: newobj    <System.Drawing.SizeF:.ctor (single,single)>
IL_0094: newobj    <System.Drawing.RectangleF:.ctor (System.Drawing.PointF,System.Drawing.SizeF)>
IL_0099: newobj    <QuadTreeLib.QuadTreeNode`1<!0>:.ctor (System.Drawing.RectangleF)>
IL_009e: callvirt  <System.Collections.Generic.List`1<QuadTreeLib.QuadTreeNode`1<!0>>:Add (QuadTreeLib.QuadTreeNode`1<!0>)>
IL_00a3: ldarg.0   
IL_00a4: ldfld     <QuadTreeLib.QuadTreeNode`1:m_nodes>
IL_00a9: ldarg.0   
IL_00aa: ldflda    <0x0a000029>
IL_00af: call      <System.Drawing.RectangleF:get_Left ()>
IL_00b4: ldloc.0   
IL_00b5: add       
IL_00b6: ldarg.0   
IL_00b7: ldflda    <0x0a000029>
IL_00bc: call      <System.Drawing.RectangleF:get_Top ()>
IL_00c1: newobj    <System.Drawing.PointF:.ctor (single,single)>
IL_00c6: ldloc.0   
IL_00c7: ldloc.1   
IL_00c8: newobj    <System.Drawing.SizeF:.ctor (single,single)>
IL_00cd: newobj    <System.Drawing.RectangleF:.ctor (System.Drawing.PointF,System.Drawing.SizeF)>
IL_00d2: newobj    <QuadTreeLib.QuadTreeNode`1<!0>:.ctor (System.Drawing.RectangleF)>
IL_00d7: callvirt  <System.Collections.Generic.List`1<QuadTreeLib.QuadTreeNode`1<!0>>:Add (QuadTreeLib.QuadTreeNode`1<!0>)>
IL_00dc: ldarg.0   
IL_00dd: ldfld     <QuadTreeLib.QuadTreeNode`1:m_nodes>
IL_00e2: ldarg.0   
IL_00e3: ldflda    <0x0a000029>
IL_00e8: call      <System.Drawing.RectangleF:get_Left ()>
IL_00ed: ldloc.0   
IL_00ee: add       
IL_00ef: ldarg.0   
IL_00f0: ldflda    <0x0a000029>
IL_00f5: call      <System.Drawing.RectangleF:get_Top ()>
IL_00fa: ldloc.1   
IL_00fb: add       
IL_00fc: newobj    <System.Drawing.PointF:.ctor (single,single)>
IL_0101: ldloc.0   
IL_0102: ldloc.1   
IL_0103: newobj    <System.Drawing.SizeF:.ctor (single,single)>
IL_0108: newobj    <System.Drawing.RectangleF:.ctor (System.Drawing.PointF,System.Drawing.SizeF)>
IL_010d: newobj    <QuadTreeLib.QuadTreeNode`1<!0>:.ctor (System.Drawing.RectangleF)>
IL_0112: callvirt  <System.Collections.Generic.List`1<QuadTreeLib.QuadTreeNode`1<!0>>:Add (QuadTreeLib.QuadTreeNode`1<!0>)>
IL_0117: ret       
// QuadTreeLib.QuadTree`1<T_REF>:Query (System.Drawing.RectangleF)
IL_0000: ldarg.0   
IL_0001: ldfld     <QuadTreeLib.QuadTree`1:m_root>
IL_0006: ldarg.1   
IL_0007: callvirt  <QuadTreeLib.QuadTreeNode`1<!0>:Query (System.Drawing.RectangleF)>
IL_000c: ret       
// QuadTreeLib.QuadTreeNode`1<T_REF>:Query (System.Drawing.RectangleF)
IL_0000: newobj    <System.Collections.Generic.List`1<!0>:.ctor ()>
IL_0005: stloc.0   
IL_0006: ldarg.0   
IL_0007: call      <QuadTreeLib.QuadTreeNode`1<!0>:get_Contents ()>
IL_000c: callvirt  <System.Collections.Generic.List`1<!0>:GetEnumerator ()>
IL_0011: stloc.1   
IL_0012: br.s      IL_0039
IL_0014: ldloca.s  1
IL_0016: call      <System.Collections.Generic.List`1/Enumerator<!0>:get_Current ()>
IL_001b: stloc.2   
IL_001c: ldarga.s  1
IL_001e: ldloca.s  2
IL_0020: constrained.<0x1b000009>
IL_0026: callvirt  <QuadTreeLib.IHasRect:get_rectangle ()>
IL_002b: call      <System.Drawing.RectangleF:IntersectsWith (System.Drawing.RectangleF)>
IL_0030: brfalse.s IL_0039
IL_0032: ldloc.0   
IL_0033: ldloc.2   
IL_0034: callvirt  <System.Collections.Generic.List`1<!0>:Add (!0)>
IL_0039: ldloca.s  1
IL_003b: call      <System.Collections.Generic.List`1/Enumerator<!0>:MoveNext ()>
IL_0040: brtrue.s  IL_0014
IL_0042: leave.s   IL_0052
IL_0044: ldloca.s  1
IL_0046: constrained.<0x1b000008>
IL_004c: callvirt  <System.IDisposable:Dispose ()>
IL_0051: endfinally
IL_0052: ldarg.0   
IL_0053: ldfld     <QuadTreeLib.QuadTreeNode`1:m_nodes>
IL_0058: callvirt  <System.Collections.Generic.List`1<QuadTreeLib.QuadTreeNode`1<!0>>:GetEnumerator ()>
IL_005d: stloc.3   
IL_005e: br.s      IL_00d5
IL_0060: ldloca.s  3
IL_0062: call      <System.Collections.Generic.List`1/Enumerator<QuadTreeLib.QuadTreeNode`1<!0>>:get_Current ()>
IL_0067: stloc.s   4
IL_0069: ldloc.s   4
IL_006b: callvirt  <QuadTreeLib.QuadTreeNode`1<!0>:get_IsEmpty ()>
IL_0070: brtrue.s  IL_00d5
IL_0072: ldloc.s   4
IL_0074: callvirt  <QuadTreeLib.QuadTreeNode`1<!0>:get_Bounds ()>
IL_0079: stloc.s   5
IL_007b: ldloca.s  5
IL_007d: ldarg.1   
IL_007e: call      <System.Drawing.RectangleF:Contains (System.Drawing.RectangleF)>
IL_0083: brfalse.s IL_0095
IL_0085: ldloc.0   
IL_0086: ldloc.s   4
IL_0088: ldarg.1   
IL_0089: callvirt  <QuadTreeLib.QuadTreeNode`1<!0>:Query (System.Drawing.RectangleF)>
IL_008e: callvirt  <System.Collections.Generic.List`1<!0>:AddRange (System.Collections.Generic.IEnumerable`1<!0>)>
IL_0093: leave.s   IL_00ee
IL_0095: ldarga.s  1
IL_0097: ldloc.s   4
IL_0099: callvirt  <QuadTreeLib.QuadTreeNode`1<!0>:get_Bounds ()>
IL_009e: call      <System.Drawing.RectangleF:Contains (System.Drawing.RectangleF)>
IL_00a3: brfalse.s IL_00b4
IL_00a5: ldloc.0   
IL_00a6: ldloc.s   4
IL_00a8: callvirt  <QuadTreeLib.QuadTreeNode`1<!0>:get_SubTreeContents ()>
IL_00ad: callvirt  <System.Collections.Generic.List`1<!0>:AddRange (System.Collections.Generic.IEnumerable`1<!0>)>
IL_00b2: br.s      IL_00d5
IL_00b4: ldloc.s   4
IL_00b6: callvirt  <QuadTreeLib.QuadTreeNode`1<!0>:get_Bounds ()>
IL_00bb: stloc.s   5
IL_00bd: ldloca.s  5
IL_00bf: ldarg.1   
IL_00c0: call      <System.Drawing.RectangleF:IntersectsWith (System.Drawing.RectangleF)>
IL_00c5: brfalse.s IL_00d5
IL_00c7: ldloc.0   
IL_00c8: ldloc.s   4
IL_00ca: ldarg.1   
IL_00cb: callvirt  <QuadTreeLib.QuadTreeNode`1<!0>:Query (System.Drawing.RectangleF)>
IL_00d0: callvirt  <System.Collections.Generic.List`1<!0>:AddRange (System.Collections.Generic.IEnumerable`1<!0>)>
IL_00d5: ldloca.s  3
IL_00d7: call      <System.Collections.Generic.List`1/Enumerator<QuadTreeLib.QuadTreeNode`1<!0>>:MoveNext ()>
IL_00dc: brtrue.s  IL_0060
IL_00de: leave.s   IL_00ee
IL_00e0: ldloca.s  3
IL_00e2: constrained.<0x1b000007>
IL_00e8: callvirt  <System.IDisposable:Dispose ()>
IL_00ed: endfinally
IL_00ee: ldloc.0   
IL_00ef: ret       
// MlEco.Creature:CollideWith (MlEco.Library/ICollidable)
IL_0000: ldarg.1   
IL_0001: isinst    <Creature>
IL_0006: dup       
IL_0007: stloc.0   
IL_0008: brfalse.s IL_0028
IL_000a: ldarg.0   
IL_000b: ldfld     <MlEco.Creature:obstructedFromHeadings>
IL_0010: ldarg.0   
IL_0011: ldloc.0   
IL_0012: call      <mlEco.SimulationObject:AngleTo (MlEco.Library/ICollidable)>
IL_0017: callvirt  <System.Collections.Generic.List`1<double>:Add (double)>
IL_001c: ldarg.0   
IL_001d: ldfld     <MlEco.Creature:collidingCreatures>
IL_0022: ldloc.0   
IL_0023: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:Add (MlEco.Creature)>
IL_0028: ldarg.1   
IL_0029: isinst    <Food>
IL_002e: dup       
IL_002f: stloc.1   
IL_0030: brfalse.s IL_0055
IL_0032: ldarg.0   
IL_0033: ldarg.0   
IL_0034: ldfld     <MlEco.Creature:energy>
IL_0039: ldloc.1   
IL_003a: ldfld     <MlEco.Food:energy>
IL_003f: conv.r8   
IL_0040: add       
IL_0041: stfld     <MlEco.Creature:energy>
IL_0046: ldarg.0   
IL_0047: ldarg.0   
IL_0048: ldfld     <MlEco.Creature:fitness>
IL_004d: ldc.i4.s  10
IL_004f: add       
IL_0050: stfld     <MlEco.Creature:fitness>
IL_0055: ret       
// MlEco.Food:CollideWith (MlEco.Library/ICollidable)
IL_0000: ldarg.0   
IL_0001: call      <MlEco.Food:Init ()>
IL_0006: ret       
// mlEco.SimulationObject:AngleTo (MlEco.Library/ICollidable)
IL_0000: ldarg.1   
IL_0001: callvirt  <MlEco.Library/ICollidable:get_position ()>
IL_0006: stloc.0   
IL_0007: ldloca.s  0
IL_0009: call      <mlEco.Position:get_y ()>
IL_000e: ldarg.0   
IL_000f: call      <mlEco.SimulationObject:get_position ()>
IL_0014: stloc.0   
IL_0015: ldloca.s  0
IL_0017: call      <mlEco.Position:get_y ()>
IL_001c: sub       
IL_001d: ldarg.1   
IL_001e: callvirt  <MlEco.Library/ICollidable:get_position ()>
IL_0023: stloc.0   
IL_0024: ldloca.s  0
IL_0026: call      <mlEco.Position:get_x ()>
IL_002b: ldarg.0   
IL_002c: call      <mlEco.SimulationObject:get_position ()>
IL_0031: stloc.0   
IL_0032: ldloca.s  0
IL_0034: call      <mlEco.Position:get_x ()>
IL_0039: sub       
IL_003a: call      <System.Math:Atan2 (double,double)>
IL_003f: call      <MlEco.Library:RangeTwoPI (double)>
IL_0044: ret       
// mlEco.SimulationObject:get_position ()
IL_0000: ldarg.0   
IL_0001: ldfld     <mlEco.SimulationObject:<position>k__BackingField>
IL_0006: ret       
// (wrapper managed-to-native) System.Math:Atan2 (double,double)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: mono_ldptr2
IL_0008: calli     <double,double>
IL_000d: mono_ldptr_int_req_flag
IL_000f: ldind.u4  
IL_0010: brfalse   IL_0025
IL_0015: mono_not_taken
IL_0017: mono_icall <mono_thread_interruption_checkpoint>
IL_001d: dup       
IL_001e: brfalse   IL_0024
IL_0023: throw     
IL_0024: pop       
IL_0025: ret       
// MlEco.Simulation:UpdateMating ()
IL_0000: newobj    <System.Collections.Generic.List`1<MlEco.Creature>:.ctor ()>
IL_0005: stloc.0   
IL_0006: newobj    <System.Collections.Generic.List`1<MlEco.Creature>:.ctor ()>
IL_000b: stloc.1   
IL_000c: newobj    <System.Collections.Generic.List`1<MlEco.Creature>:.ctor ()>
IL_0011: stloc.2   
IL_0012: ldarg.0   
IL_0013: ldfld     <MlEco.Simulation:Creatures>
IL_0018: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:GetEnumerator ()>
IL_001d: stloc.3   
IL_001e: br.s      IL_006a
IL_0020: ldloca.s  3
IL_0022: call      <System.Collections.Generic.List`1/Enumerator<MlEco.Creature>:get_Current ()>
IL_0027: stloc.s   4
IL_0029: ldarg.0   
IL_002a: ldfld     <MlEco.Simulation:ticksElapsed>
IL_002f: ldloc.s   4
IL_0031: ldfld     <MlEco.Creature:lastMatedAtTick>
IL_0036: sub       
IL_0037: ldsfld    <MlEco.Literals:MATING_CYCLE_LENGTH>
IL_003c: ble.s     IL_0048
IL_003e: ldloc.s   4
IL_0040: ldc.i4.1  
IL_0041: stfld     <MlEco.Creature:readyToMate>
IL_0046: br.s      IL_0050
IL_0048: ldloc.s   4
IL_004a: ldc.i4.0  
IL_004b: stfld     <MlEco.Creature:readyToMate>
IL_0050: ldloc.s   4
IL_0052: ldfld     <MlEco.Creature:readyToMate>
IL_0057: brfalse.s IL_006a
IL_0059: ldloc.s   4
IL_005b: ldfld     <MlEco.Creature:mating>
IL_0060: brfalse.s IL_006a
IL_0062: ldloc.0   
IL_0063: ldloc.s   4
IL_0065: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:Add (MlEco.Creature)>
IL_006a: ldloca.s  3
IL_006c: call      <System.Collections.Generic.List`1/Enumerator<MlEco.Creature>:MoveNext ()>
IL_0071: brtrue.s  IL_0020
IL_0073: leave.s   IL_0083
IL_0075: ldloca.s  3
IL_0077: constrained.<0x1b00000f>
IL_007d: callvirt  <System.IDisposable:Dispose ()>
IL_0082: endfinally
IL_0083: ldloc.0   
IL_0084: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:GetEnumerator ()>
IL_0089: stloc.3   
IL_008a: br        IL_018a
IL_008f: ldloca.s  3
IL_0091: call      <System.Collections.Generic.List`1/Enumerator<MlEco.Creature>:get_Current ()>
IL_0096: stloc.s   5
IL_0098: ldloc.s   5
IL_009a: ldfld     <MlEco.Creature:collidingCreatures>
IL_009f: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:GetEnumerator ()>
IL_00a4: stloc.s   6
IL_00a6: br        IL_016e
IL_00ab: ldloca.s  6
IL_00ad: call      <System.Collections.Generic.List`1/Enumerator<MlEco.Creature>:get_Current ()>
IL_00b2: stloc.s   7
IL_00b4: ldloc.s   7
IL_00b6: ldfld     <MlEco.Creature:readyToMate>
IL_00bb: brfalse   IL_016e
IL_00c0: ldloc.s   7
IL_00c2: ldfld     <MlEco.Creature:mating>
IL_00c7: brfalse   IL_016e
IL_00cc: ldloc.1   
IL_00cd: ldloc.s   5
IL_00cf: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:Contains (MlEco.Creature)>
IL_00d4: brtrue    IL_016e
IL_00d9: ldloc.1   
IL_00da: ldloc.s   7
IL_00dc: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:Contains (MlEco.Creature)>
IL_00e1: brtrue    IL_016e
IL_00e6: ldloc.s   5
IL_00e8: ldfld     <MlEco.Creature:brain>
IL_00ed: ldloc.s   7
IL_00ef: ldfld     <MlEco.Creature:brain>
IL_00f4: callvirt  <MlEco.mlZoo/FCBrain:CrossOver (MlEco.mlZoo/FCBrain)>
IL_00f9: call      <MlEco.Library:RandomDouble ()>
IL_00fe: call      <MlEco.Library:RandomDouble ()>
IL_0103: newobj    <mlEco.Position:.ctor (double,double)>
IL_0108: newobj    <MlEco.Creature:.ctor (MlEco.mlZoo/FCBrain,mlEco.Position)>
IL_010d: stloc.s   8
IL_010f: ldloc.2   
IL_0110: ldloc.s   8
IL_0112: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:Add (MlEco.Creature)>
IL_0117: ldloc.1   
IL_0118: ldloc.s   5
IL_011a: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:Add (MlEco.Creature)>
IL_011f: ldloc.1   
IL_0120: ldloc.s   7
IL_0122: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:Add (MlEco.Creature)>
IL_0127: ldloc.s   8
IL_0129: ldarg.0   
IL_012a: ldfld     <MlEco.Simulation:ticksElapsed>
IL_012f: stfld     <MlEco.Creature:lastMatedAtTick>
IL_0134: ldloc.s   5
IL_0136: ldarg.0   
IL_0137: ldfld     <MlEco.Simulation:ticksElapsed>
IL_013c: stfld     <MlEco.Creature:lastMatedAtTick>
IL_0141: ldloc.s   7
IL_0143: ldarg.0   
IL_0144: ldfld     <MlEco.Simulation:ticksElapsed>
IL_0149: stfld     <MlEco.Creature:lastMatedAtTick>
IL_014e: ldloc.s   5
IL_0150: dup       
IL_0151: ldfld     <MlEco.Creature:fitness>
IL_0156: ldc.i4.s  10
IL_0158: add       
IL_0159: stfld     <MlEco.Creature:fitness>
IL_015e: ldloc.s   7
IL_0160: dup       
IL_0161: ldfld     <MlEco.Creature:fitness>
IL_0166: ldc.i4.s  10
IL_0168: add       
IL_0169: stfld     <MlEco.Creature:fitness>
IL_016e: ldloca.s  6
IL_0170: call      <System.Collections.Generic.List`1/Enumerator<MlEco.Creature>:MoveNext ()>
IL_0175: brtrue    IL_00ab
IL_017a: leave.s   IL_018a
IL_017c: ldloca.s  6
IL_017e: constrained.<0x1b00000f>
IL_0184: callvirt  <System.IDisposable:Dispose ()>
IL_0189: endfinally
IL_018a: ldloca.s  3
IL_018c: call      <System.Collections.Generic.List`1/Enumerator<MlEco.Creature>:MoveNext ()>
IL_0191: brtrue    IL_008f
IL_0196: leave.s   IL_01a6
IL_0198: ldloca.s  3
IL_019a: constrained.<0x1b00000f>
IL_01a0: callvirt  <System.IDisposable:Dispose ()>
IL_01a5: endfinally
IL_01a6: ldarg.0   
IL_01a7: ldfld     <MlEco.Simulation:Creatures>
IL_01ac: ldloc.2   
IL_01ad: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:AddRange (System.Collections.Generic.IEnumerable`1<MlEco.Creature>)>
IL_01b2: ldarg.0   
IL_01b3: ldfld     <MlEco.Simulation:Creatures>
IL_01b8: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:get_Count ()>
IL_01bd: ldsfld    <MlEco.Literals:MAX_CREATURES>
IL_01c2: blt.s     IL_01fb
IL_01c4: ldarg.0   
IL_01c5: ldfld     <MlEco.Simulation:Creatures>
IL_01ca: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:Sort ()>
IL_01cf: ldc.i4.0  
IL_01d0: stloc.s   9
IL_01d2: br.s      IL_01e6
IL_01d4: ldarg.0   
IL_01d5: ldfld     <MlEco.Simulation:Creatures>
IL_01da: ldc.i4.0  
IL_01db: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:RemoveAt (int)>
IL_01e0: ldloc.s   9
IL_01e2: ldc.i4.1  
IL_01e3: add       
IL_01e4: stloc.s   9
IL_01e6: ldloc.s   9
IL_01e8: ldarg.0   
IL_01e9: ldfld     <MlEco.Simulation:Creatures>
IL_01ee: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:get_Count ()>
IL_01f3: ldsfld    <MlEco.Literals:MAX_CREATURES>
IL_01f8: sub       
IL_01f9: blt.s     IL_01d4
IL_01fb: ret       
// MlEco.mlZoo/FCBrain:CrossOver (MlEco.mlZoo/FCBrain)
IL_0000: ldarg.0   
IL_0001: ldfld     <FCBrain:topology>
IL_0006: newobj    <MlEco.mlZoo/FCBrain:.ctor (int[])>
IL_000b: stloc.0   
IL_000c: ldc.i4.1  
IL_000d: stloc.1   
IL_000e: br        IL_012f
IL_0013: ldc.i4.0  
IL_0014: stloc.2   
IL_0015: br        IL_011d
IL_001a: ldc.i4.0  
IL_001b: stloc.3   
IL_001c: br        IL_00fd
IL_0021: ldloc.0   
IL_0022: ldfld     <FCBrain:layers>
IL_0027: ldloc.1   
IL_0028: ldelem.ref
IL_0029: ldfld     <Layer:Nodes>
IL_002e: ldloc.2   
IL_002f: ldelem.ref
IL_0030: ldfld     <Node:weights>
IL_0035: ldloc.3   
IL_0036: call      <MlEco.Library:RandomDouble ()>
IL_003b: ldc.r8    0.5
IL_0044: blt.s     IL_005e
IL_0046: ldarg.1   
IL_0047: ldfld     <FCBrain:layers>
IL_004c: ldloc.1   
IL_004d: ldelem.ref
IL_004e: ldfld     <Layer:Nodes>
IL_0053: ldloc.2   
IL_0054: ldelem.ref
IL_0055: ldfld     <Node:weights>
IL_005a: ldloc.3   
IL_005b: ldelem.r8 
IL_005c: br.s      IL_0074
IL_005e: ldarg.0   
IL_005f: ldfld     <FCBrain:layers>
IL_0064: ldloc.1   
IL_0065: ldelem.ref
IL_0066: ldfld     <Layer:Nodes>
IL_006b: ldloc.2   
IL_006c: ldelem.ref
IL_006d: ldfld     <Node:weights>
IL_0072: ldloc.3   
IL_0073: ldelem.r8 
IL_0074: stelem.r8 
IL_0075: call      <MlEco.Library:RandomDouble ()>
IL_007a: ldsfld    <FCBrain:mutationRate>
IL_007f: bge.un.s  IL_00b0
IL_0081: ldloc.0   
IL_0082: ldfld     <FCBrain:layers>
IL_0087: ldloc.1   
IL_0088: ldelem.ref
IL_0089: ldfld     <Layer:Nodes>
IL_008e: ldloc.2   
IL_008f: ldelem.ref
IL_0090: ldfld     <Node:weights>
IL_0095: ldloc.3   
IL_0096: call      <MlEco.Library:RandomDouble ()>
IL_009b: ldc.r8    2
IL_00a4: mul       
IL_00a5: ldc.r8    1
IL_00ae: sub       
IL_00af: stelem.r8 
IL_00b0: call      <MlEco.Library:RandomDouble ()>
IL_00b5: ldsfld    <FCBrain:mutationRate>
IL_00ba: bge.un.s  IL_00f9
IL_00bc: ldloc.0   
IL_00bd: ldfld     <FCBrain:layers>
IL_00c2: ldloc.1   
IL_00c3: ldelem.ref
IL_00c4: ldfld     <Layer:Nodes>
IL_00c9: ldloc.2   
IL_00ca: ldelem.ref
IL_00cb: ldfld     <Node:weights>
IL_00d0: ldloc.3   
IL_00d1: ldelema   <Double>
IL_00d6: dup       
IL_00d7: ldind.r8  
IL_00d8: ldsfld    <FCBrain:mutationRate>
IL_00dd: call      <MlEco.Library:RandomDouble ()>
IL_00e2: ldc.r8    2
IL_00eb: mul       
IL_00ec: ldc.r8    1
IL_00f5: sub       
IL_00f6: mul       
IL_00f7: add       
IL_00f8: stind.r8  
IL_00f9: ldloc.3   
IL_00fa: ldc.i4.1  
IL_00fb: add       
IL_00fc: stloc.3   
IL_00fd: ldloc.3   
IL_00fe: ldarg.0   
IL_00ff: ldfld     <FCBrain:layers>
IL_0104: ldloc.1   
IL_0105: ldelem.ref
IL_0106: ldfld     <Layer:Nodes>
IL_010b: ldloc.2   
IL_010c: ldelem.ref
IL_010d: ldfld     <Node:weights>
IL_0112: ldlen     
IL_0113: conv.i4   
IL_0114: blt       IL_0021
IL_0119: ldloc.2   
IL_011a: ldc.i4.1  
IL_011b: add       
IL_011c: stloc.2   
IL_011d: ldloc.2   
IL_011e: ldarg.0   
IL_011f: ldfld     <FCBrain:topology>
IL_0124: ldloc.1   
IL_0125: ldelem.i4 
IL_0126: blt       IL_001a
IL_012b: ldloc.1   
IL_012c: ldc.i4.1  
IL_012d: add       
IL_012e: stloc.1   
IL_012f: ldloc.1   
IL_0130: ldarg.0   
IL_0131: ldfld     <FCBrain:topology>
IL_0136: ldlen     
IL_0137: conv.i4   
IL_0138: blt       IL_0013
IL_013d: ldloc.0   
IL_013e: ret       
// MlEco.Creature:.ctor (MlEco.mlZoo/FCBrain,mlEco.Position)
IL_0000: ldarg.0   
IL_0001: ldarg.2   
IL_0002: call      <MlEco.Creature:.ctor (mlEco.Position)>
IL_0007: ldarg.0   
IL_0008: ldarg.1   
IL_0009: stfld     <MlEco.Creature:brain>
IL_000e: ret       
// MlEco.Creature:CompareTo (object)
IL_0000: ldarg.1   
IL_0001: isinst    <Creature>
IL_0006: brtrue.s  IL_000e
IL_0008: newobj    <System.InvalidOperationException:.ctor ()>
IL_000d: throw     
IL_000e: ldarg.1   
IL_000f: castclass <Creature>
IL_0014: stloc.0   
IL_0015: ldarg.0   
IL_0016: ldflda    <0x04000011>
IL_001b: ldloc.0   
IL_001c: ldfld     <MlEco.Creature:fitness>
IL_0021: call      <int:CompareTo (int)>
IL_0026: ret       
// MlEco.Simulation:UpdateCreatures ()
IL_0000: newobj    <System.Collections.Generic.List`1<MlEco.Creature>:.ctor ()>
IL_0005: stloc.0   
IL_0006: ldarg.0   
IL_0007: ldfld     <MlEco.Simulation:Creatures>
IL_000c: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:GetEnumerator ()>
IL_0011: stloc.1   
IL_0012: br        IL_00ae
IL_0017: ldloca.s  1
IL_0019: call      <System.Collections.Generic.List`1/Enumerator<MlEco.Creature>:get_Current ()>
IL_001e: stloc.2   
IL_001f: ldloc.2   
IL_0020: ldfld     <MlEco.Creature:isAlive>
IL_0025: brtrue.s  IL_0030
IL_0027: ldloc.0   
IL_0028: ldloc.2   
IL_0029: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:Add (MlEco.Creature)>
IL_002e: br.s      IL_00ae
IL_0030: ldloc.2   
IL_0031: ldarg.0   
IL_0032: ldfld     <MlEco.Simulation:quadTree>
IL_0037: ldloc.2   
IL_0038: callvirt  <mlEco.SimulationObject:get_position ()>
IL_003d: stloc.3   
IL_003e: ldloca.s  3
IL_0040: call      <mlEco.Position:get_x ()>
IL_0045: conv.r4   
IL_0046: ldsfld    <MlEco.Literals:SENSORY_SPAN>
IL_004b: conv.r4   
IL_004c: sub       
IL_004d: ldloc.2   
IL_004e: callvirt  <mlEco.SimulationObject:get_position ()>
IL_0053: stloc.3   
IL_0054: ldloca.s  3
IL_0056: call      <mlEco.Position:get_y ()>
IL_005b: conv.r4   
IL_005c: ldsfld    <MlEco.Literals:SENSORY_SPAN>
IL_0061: conv.r4   
IL_0062: sub       
IL_0063: ldc.r4    2
IL_0068: ldsfld    <MlEco.Literals:SENSORY_SPAN>
IL_006d: conv.r4   
IL_006e: mul       
IL_006f: ldc.r4    2
IL_0074: ldsfld    <MlEco.Literals:SENSORY_SPAN>
IL_0079: conv.r4   
IL_007a: mul       
IL_007b: newobj    <System.Drawing.RectangleF:.ctor (single,single,single,single)>
IL_0080: callvirt  <QuadTreeLib.QuadTree`1<MlEco.Library/ICollidable>:Query (System.Drawing.RectangleF)>
IL_0085: callvirt  <MlEco.Creature:set_SensoryGroup (System.Collections.Generic.List`1<MlEco.Library/ICollidable>)>
IL_008a: ldloc.2   
IL_008b: callvirt  <MlEco.Creature:get_SensoryGroup ()>
IL_0090: ldloc.2   
IL_0091: callvirt  <System.Collections.Generic.List`1<MlEco.Library/ICollidable>:Remove (MlEco.Library/ICollidable)>
IL_0096: pop       
IL_0097: ldloc.2   
IL_0098: callvirt  <MlEco.Creature:get_SensoryGroup ()>
IL_009d: ldloc.2   
IL_009e: newobj    <MlEco.Library/IColliadbleComparer:.ctor (MlEco.Creature)>
IL_00a3: callvirt  <System.Collections.Generic.List`1<MlEco.Library/ICollidable>:Sort (System.Collections.Generic.IComparer`1<MlEco.Library/ICollidable>)>
IL_00a8: ldloc.2   
IL_00a9: callvirt  <MlEco.Creature:Update ()>
IL_00ae: ldloca.s  1
IL_00b0: call      <System.Collections.Generic.List`1/Enumerator<MlEco.Creature>:MoveNext ()>
IL_00b5: brtrue    IL_0017
IL_00ba: leave.s   IL_00ca
IL_00bc: ldloca.s  1
IL_00be: constrained.<0x1b00000f>
IL_00c4: callvirt  <System.IDisposable:Dispose ()>
IL_00c9: endfinally
IL_00ca: ldloc.0   
IL_00cb: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:GetEnumerator ()>
IL_00d0: stloc.1   
IL_00d1: br.s      IL_00ea
IL_00d3: ldloca.s  1
IL_00d5: call      <System.Collections.Generic.List`1/Enumerator<MlEco.Creature>:get_Current ()>
IL_00da: stloc.s   4
IL_00dc: ldarg.0   
IL_00dd: ldfld     <MlEco.Simulation:Creatures>
IL_00e2: ldloc.s   4
IL_00e4: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:Remove (MlEco.Creature)>
IL_00e9: pop       
IL_00ea: ldloca.s  1
IL_00ec: call      <System.Collections.Generic.List`1/Enumerator<MlEco.Creature>:MoveNext ()>
IL_00f1: brtrue.s  IL_00d3
IL_00f3: leave.s   IL_0103
IL_00f5: ldloca.s  1
IL_00f7: constrained.<0x1b00000f>
IL_00fd: callvirt  <System.IDisposable:Dispose ()>
IL_0102: endfinally
IL_0103: ldarg.0   
IL_0104: ldarg.0   
IL_0105: ldfld     <MlEco.Simulation:numDied>
IL_010a: ldloc.0   
IL_010b: callvirt  <System.Collections.Generic.List`1<MlEco.Creature>:get_Count ()>
IL_0110: add       
IL_0111: stfld     <MlEco.Simulation:numDied>
IL_0116: ret       
// MlEco.Library/IColliadbleComparer:Compare (MlEco.Library/ICollidable,MlEco.Library/ICollidable)
IL_0000: ldarg.0   
IL_0001: ldfld     <IColliadbleComparer:creature>
IL_0006: ldarg.1   
IL_0007: callvirt  <mlEco.SimulationObject:GetSquaredDistanceFrom (MlEco.Library/ICollidable)>
IL_000c: stloc.0   
IL_000d: ldarg.0   
IL_000e: ldfld     <IColliadbleComparer:creature>
IL_0013: ldarg.2   
IL_0014: callvirt  <mlEco.SimulationObject:GetSquaredDistanceFrom (MlEco.Library/ICollidable)>
IL_0019: stloc.1   
IL_001a: ldloc.0   
IL_001b: ldloc.1   
IL_001c: sub       
IL_001d: call      <System.Math:Abs (double)>
IL_0022: ldc.r8    1e-05
IL_002b: bge.un.s  IL_002f
IL_002d: ldc.i4.0  
IL_002e: ret       
IL_002f: ldloc.0   
IL_0030: ldloc.1   
IL_0031: bgt.s     IL_0035
IL_0033: ldc.i4.m1 
IL_0034: ret       
IL_0035: ldc.i4.1  
IL_0036: ret       
// mlEco.SimulationObject:GetSquaredDistanceFrom (MlEco.Library/ICollidable)
IL_0000: ldarg.0   
IL_0001: call      <mlEco.SimulationObject:get_position ()>
IL_0006: stloc.0   
IL_0007: ldloca.s  0
IL_0009: call      <mlEco.Position:get_x ()>
IL_000e: ldarg.1   
IL_000f: callvirt  <MlEco.Library/ICollidable:get_position ()>
IL_0014: stloc.0   
IL_0015: ldloca.s  0
IL_0017: call      <mlEco.Position:get_x ()>
IL_001c: sub       
IL_001d: ldc.r8    2
IL_0026: call      <MlEco.Library:Pow (double,double)>
IL_002b: ldarg.0   
IL_002c: call      <mlEco.SimulationObject:get_position ()>
IL_0031: stloc.0   
IL_0032: ldloca.s  0
IL_0034: call      <mlEco.Position:get_y ()>
IL_0039: ldarg.1   
IL_003a: callvirt  <MlEco.Library/ICollidable:get_position ()>
IL_003f: stloc.0   
IL_0040: ldloca.s  0
IL_0042: call      <mlEco.Position:get_y ()>
IL_0047: sub       
IL_0048: ldc.r8    2
IL_0051: call      <MlEco.Library:Pow (double,double)>
IL_0056: add       
IL_0057: ret       
// MlEco.Library:Pow (double,double)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: call      <System.Math:Pow (double,double)>
IL_0007: ret       
// (wrapper managed-to-native) System.Math:Pow (double,double)
IL_0000: ldarg.0   
IL_0001: ldarg.1   
IL_0002: mono_ldptr2
IL_0008: calli     <double,double>
IL_000d: mono_ldptr_int_req_flag
IL_000f: ldind.u4  
IL_0010: brfalse   IL_0025
IL_0015: mono_not_taken
IL_0017: mono_icall <mono_thread_interruption_checkpoint>
IL_001d: dup       
IL_001e: brfalse   IL_0024
IL_0023: throw     
IL_0024: pop       
IL_0025: ret       
// MlEco.Creature:Update ()
IL_0000: ldarg.0   
IL_0001: ldarg.0   
IL_0002: ldfld     <MlEco.Creature:energy>
IL_0007: ldc.r8    1
IL_0010: sub       
IL_0011: stfld     <MlEco.Creature:energy>
IL_0016: ldarg.0   
IL_0017: ldarg.0   
IL_0018: ldfld     <MlEco.Creature:lifeTime>
IL_001d: ldc.i4.1  
IL_001e: add       
IL_001f: stfld     <MlEco.Creature:lifeTime>
IL_0024: ldarg.0   
IL_0025: ldfld     <MlEco.Creature:mating>
IL_002a: brfalse.s IL_0042
IL_002c: ldarg.0   
IL_002d: ldarg.0   
IL_002e: ldfld     <MlEco.Creature:energy>
IL_0033: ldc.r8    2
IL_003c: sub       
IL_003d: stfld     <MlEco.Creature:energy>
IL_0042: ldarg.0   
IL_0043: ldfld     <MlEco.Creature:keyboardCreature>
IL_0048: brtrue.s  IL_007b
IL_004a: ldarg.0   
IL_004b: ldarg.0   
IL_004c: ldfld     <MlEco.Creature:isAlive>
IL_0051: ldarg.0   
IL_0052: ldfld     <MlEco.Creature:energy>
IL_0057: ldc.r8    0
IL_0060: ble.un.s  IL_0074
IL_0062: ldarg.0   
IL_0063: ldfld     <MlEco.Creature:lifeTime>
IL_0068: ldsfld    <MlEco.Literals:CREATURE_MAX_LIFESPAN>
IL_006d: cgt       
IL_006f: ldc.i4.0  
IL_0070: ceq       
IL_0072: br.s      IL_0075
IL_0074: ldc.i4.0  
IL_0075: and       
IL_0076: stfld     <MlEco.Creature:isAlive>
IL_007b: ldarg.0   
IL_007c: call      <MlEco.Creature:UpdateMovement ()>
IL_0081: ldarg.0   
IL_0082: ldarg.0   
IL_0083: call      <mlEco.SimulationObject:get_position ()>
IL_0088: stloc.0   
IL_0089: ldloca.s  0
IL_008b: call      <mlEco.Position:get_x ()>
IL_0090: conv.r4   
IL_0091: ldarg.0   
IL_0092: call      <mlEco.SimulationObject:get_position ()>
IL_0097: stloc.0   
IL_0098: ldloca.s  0
IL_009a: call      <mlEco.Position:get_y ()>
IL_009f: conv.r4   
IL_00a0: ldc.r4    1.5
IL_00a5: ldarg.0   
IL_00a6: ldfld     <mlEco.SimulationObject:size>
IL_00ab: conv.r4   
IL_00ac: mul       
IL_00ad: ldc.r4    100
IL_00b2: div       
IL_00b3: ldc.r4    1.5
IL_00b8: ldsfld    <MlEco.Literals:ASPECT_RATIO>
IL_00bd: conv.r4   
IL_00be: mul       
IL_00bf: ldarg.0   
IL_00c0: ldfld     <mlEco.SimulationObject:size>
IL_00c5: conv.r4   
IL_00c6: mul       
IL_00c7: ldc.r4    100
IL_00cc: div       
IL_00cd: newobj    <System.Drawing.RectangleF:.ctor (single,single,single,single)>
IL_00d2: call      <mlEco.SimulationObject:set_rectangle (System.Drawing.RectangleF)>
IL_00d7: ldarg.0   
IL_00d8: ldfld     <MlEco.Creature:mating>
IL_00dd: brfalse.s IL_00f9
IL_00df: ldarg.0   
IL_00e0: ldc.i4.3  
IL_00e1: newarr    <0x0100003e>
IL_00e6: dup       
IL_00e7: ldc.i4.0  
IL_00e8: ldc.r8    1
IL_00f1: stelem.r8 
IL_00f2: stfld     <MlEco.Creature:actionColor>
IL_00f7: br.s      IL_0105
IL_00f9: ldarg.0   
IL_00fa: ldc.i4.3  
IL_00fb: newarr    <0x0100003e>
IL_0100: stfld     <MlEco.Creature:actionColor>
IL_0105: ldarg.0   
IL_0106: ldfld     <MlEco.Creature:brain>
IL_010b: ldarg.0   
IL_010c: call      <MlEco.Creature:GetSensory ()>
IL_0111: callvirt  <MlEco.mlZoo/FCBrain:Activate (double[])>
IL_0116: pop       
IL_0117: ldarg.0   
IL_0118: ldfld     <MlEco.Creature:keyboardCreature>
IL_011d: brtrue.s  IL_0130
IL_011f: ldarg.0   
IL_0120: ldarg.0   
IL_0121: ldfld     <MlEco.Creature:brain>
IL_0126: callvirt  <MlEco.mlZoo/FCBrain:GetOutputs ()>
IL_012b: call      <MlEco.Creature:Act (double[])>
IL_0130: ret       
// MlEco.Creature:UpdateMovement ()
IL_0000: ldarg.0   
IL_0001: ldfld     <MlEco.Creature:turningLeft>
IL_0006: brfalse.s IL_003e
IL_0008: ldarg.0   
IL_0009: ldfld     <MlEco.Creature:turningRight>
IL_000e: brtrue.s  IL_003e
IL_0010: ldarg.0   
IL_0011: ldarg.0   
IL_0012: ldfld     <MlEco.Creature:energy>
IL_0017: ldc.r8    0.1
IL_0020: sub       
IL_0021: stfld     <MlEco.Creature:energy>
IL_0026: ldarg.0   
IL_0027: ldarg.0   
IL_0028: call      <MlEco.Creature:get_heading ()>
IL_002d: ldc.r8    0.15
IL_0036: add       
IL_0037: call      <MlEco.Creature:set_heading (double)>
IL_003c: br.s      IL_007a
IL_003e: ldarg.0   
IL_003f: ldfld     <MlEco.Creature:turningRight>
IL_0044: brfalse.s IL_007a
IL_0046: ldarg.0   
IL_0047: ldfld     <MlEco.Creature:turningLeft>
IL_004c: brtrue.s  IL_007a
IL_004e: ldarg.0   
IL_004f: ldarg.0   
IL_0050: ldfld     <MlEco.Creature:energy>
IL_0055: ldc.r8    0.1
IL_005e: sub       
IL_005f: stfld     <MlEco.Creature:energy>
IL_0064: ldarg.0   
IL_0065: ldarg.0   
IL_0066: call      <MlEco.Creature:get_heading ()>
IL_006b: ldc.r8    0.15
IL_0074: sub       
IL_0075: call      <MlEco.Creature:set_heading (double)>
IL_007a: ldarg.0   
IL_007b: ldfld     <MlEco.Creature:movingFarward>
IL_0080: brfalse   IL_0180
IL_0085: ldarg.0   
IL_0086: ldfld     <MlEco.Creature:movingBackward>
IL_008b: brtrue    IL_0180
IL_0090: ldarg.0   
IL_0091: ldarg.0   
IL_0092: ldfld     <MlEco.Creature:energy>
IL_0097: ldc.r8    0.1
IL_00a0: sub       
IL_00a1: stfld     <MlEco.Creature:energy>
IL_00a6: ldarg.0   
IL_00a7: ldarg.0   
IL_00a8: call      <mlEco.SimulationObject:get_position ()>
IL_00ad: stloc.0   
IL_00ae: ldloca.s  0
IL_00b0: call      <mlEco.Position:get_x ()>
IL_00b5: ldc.r8    0.01
IL_00be: ldarg.0   
IL_00bf: call      <MlEco.Creature:get_heading ()>
IL_00c4: call      <System.Math:Cos (double)>
IL_00c9: mul       
IL_00ca: add       
IL_00cb: ldarg.0   
IL_00cc: call      <mlEco.SimulationObject:get_position ()>
IL_00d1: stloc.0   
IL_00d2: ldloca.s  0
IL_00d4: call      <mlEco.Position:get_y ()>
IL_00d9: ldc.r8    0.01
IL_00e2: ldarg.0   
IL_00e3: call      <MlEco.Creature:get_heading ()>
IL_00e8: call      <System.Math:Sin (double)>
IL_00ed: mul       
IL_00ee: ldsfld    <MlEco.Literals:ASPECT_RATIO>
IL_00f3: mul       
IL_00f4: sub       
IL_00f5: newobj    <mlEco.Position:.ctor (double,double)>
IL_00fa: call      <mlEco.SimulationObject:set_position (mlEco.Position)>
IL_00ff: ldarg.0   
IL_0100: ldfld     <MlEco.Creature:obstructedFromHeadings>
IL_0105: callvirt  <System.Collections.Generic.List`1<double>:GetEnumerator ()>
IL_010a: stloc.1   
IL_010b: br.s      IL_0164
IL_010d: ldloca.s  1
IL_010f: call      <System.Collections.Generic.List`1/Enumerator<double>:get_Current ()>
IL_0114: stloc.2   
IL_0115: ldarg.0   
IL_0116: ldarg.0   
IL_0117: call      <mlEco.SimulationObject:get_position ()>
IL_011c: stloc.0   
IL_011d: ldloca.s  0
IL_011f: call      <mlEco.Position:get_x ()>
IL_0124: ldc.r8    0.01
IL_012d: ldloc.2   
IL_012e: call      <System.Math:Cos (double)>
IL_0133: mul       
IL_0134: sub       
IL_0135: ldarg.0   
IL_0136: call      <mlEco.SimulationObject:get_position ()>
IL_013b: stloc.0   
IL_013c: ldloca.s  0
IL_013e: call      <mlEco.Position:get_y ()>
IL_0143: ldc.r8    0.01
IL_014c: ldloc.2   
IL_014d: call      <System.Math:Sin (double)>
IL_0152: mul       
IL_0153: ldsfld    <MlEco.Literals:ASPECT_RATIO>
IL_0158: mul       
IL_0159: sub       
IL_015a: newobj    <mlEco.Position:.ctor (double,double)>
IL_015f: call      <mlEco.SimulationObject:set_position (mlEco.Position)>
IL_0164: ldloca.s  1
IL_0166: call      <System.Collections.Generic.List`1/Enumerator<double>:MoveNext ()>
IL_016b: brtrue.s  IL_010d
IL_016d: leave     IL_027d
IL_0172: ldloca.s  1
IL_0174: constrained.<0x1b00000e>
IL_017a: callvirt  <System.IDisposable:Dispose ()>
IL_017f: endfinally
IL_0180: ldarg.0   
IL_0181: ldfld     <MlEco.Creature:movingBackward>
IL_0186: brfalse   IL_027d
IL_018b: ldarg.0   
IL_018c: ldfld     <MlEco.Creature:movingFarward>
IL_0191: brtrue    IL_027d
IL_0196: ldarg.0   
IL_0197: ldarg.0   
IL_0198: ldfld     <MlEco.Creature:energy>
IL_019d: ldc.r8    0.1
IL_01a6: sub       
IL_01a7: stfld     <MlEco.Creature:energy>
IL_01ac: ldarg.0   
IL_01ad: ldarg.0   
IL_01ae: call      <mlEco.SimulationObject:get_position ()>
IL_01b3: stloc.0   
IL_01b4: ldloca.s  0
IL_01b6: call      <mlEco.Position:get_x ()>
IL_01bb: ldc.r8    0.01
IL_01c4: ldarg.0   
IL_01c5: call      <MlEco.Creature:get_heading ()>
IL_01ca: call      <System.Math:Cos (double)>
IL_01cf: mul       
IL_01d0: sub       
IL_01d1: ldarg.0   
IL_01d2: call      <mlEco.SimulationObject:get_position ()>
IL_01d7: stloc.0   
IL_01d8: ldloca.s  0
IL_01da: call      <mlEco.Position:get_y ()>
IL_01df: ldc.r8    0.01
IL_01e8: ldarg.0   
IL_01e9: call      <MlEco.Creature:get_heading ()>
IL_01ee: call      <System.Math:Sin (double)>
IL_01f3: mul       
IL_01f4: add       
IL_01f5: newobj    <mlEco.Position:.ctor (double,double)>
IL_01fa: call      <mlEco.SimulationObject:set_position (mlEco.Position)>
IL_01ff: ldarg.0   
IL_0200: ldfld     <MlEco.Creature:obstructedFromHeadings>
IL_0205: callvirt  <System.Collections.Generic.List`1<double>:GetEnumerator ()>
IL_020a: stloc.1   
IL_020b: br.s      IL_0264
IL_020d: ldloca.s  1
IL_020f: call      <System.Collections.Generic.List`1/Enumerator<double>:get_Current ()>
IL_0214: stloc.3   
IL_0215: ldarg.0   
IL_0216: ldarg.0   
IL_0217: call      <mlEco.SimulationObject:get_position ()>
IL_021c: stloc.0   
IL_021d: ldloca.s  0
IL_021f: call      <mlEco.Position:get_x ()>
IL_0224: ldc.r8    0.01
IL_022d: ldloc.3   
IL_022e: call      <System.Math:Cos (double)>
IL_0233: mul       
IL_0234: sub       
IL_0235: ldarg.0   
IL_0236: call      <mlEco.SimulationObject:get_position ()>
IL_023b: stloc.0   
IL_023c: ldloca.s  0
IL_023e: call      <mlEco.Position:get_y ()>
IL_0243: ldc.r8    0.01
IL_024c: ldloc.3   
IL_024d: call      <System.Math:Sin (double)>
IL_0252: mul       
IL_0253: ldsfld    <MlEco.Literals:ASPECT_RATIO>
IL_0258: mul       
IL_0259: sub       
IL_025a: newobj    <mlEco.Position:.ctor (double,double)>
IL_025f: call      <mlEco.SimulationObject:set_position (mlEco.Position)>
IL_0264: ldloca.s  1
IL_0266: call      <System.Collections.Generic.List`1/Enumerator<double>:MoveNext ()>
IL_026b: brtrue.s  IL_020d
IL_026d: leave.s   IL_027d
IL_026f: ldloca.s  1
IL_0271: constrained.<0x1b00000e>
IL_0277: callvirt  <System.IDisposable:Dispose ()>
IL_027c: endfinally
IL_027d: ldarg.0   
IL_027e: call      <mlEco.SimulationObject:get_position ()>
IL_0283: stloc.0   
IL_0284: ldloca.s  0
IL_0286: call      <mlEco.Position:get_x ()>
IL_028b: ldc.r8    1
IL_0294: ble.un.s  IL_02b8
IL_0296: ldarg.0   
IL_0297: ldc.r8    1
IL_02a0: ldarg.0   
IL_02a1: call      <mlEco.SimulationObject:get_position ()>
IL_02a6: stloc.0   
IL_02a7: ldloca.s  0
IL_02a9: call      <mlEco.Position:get_y ()>
IL_02ae: newobj    <mlEco.Position:.ctor (double,double)>
IL_02b3: call      <mlEco.SimulationObject:set_position (mlEco.Position)>
IL_02b8: ldarg.0   
IL_02b9: call      <mlEco.SimulationObject:get_position ()>
IL_02be: stloc.0   
IL_02bf: ldloca.s  0
IL_02c1: call      <mlEco.Position:get_y ()>
IL_02c6: ldc.r8    1
IL_02cf: ble.un.s  IL_02f3
IL_02d1: ldarg.0   
IL_02d2: ldarg.0   
IL_02d3: call      <mlEco.SimulationObject:get_position ()>
IL_02d8: stloc.0   
IL_02d9: ldloca.s  0
IL_02db: call      <mlEco.Position:get_x ()>
IL_02e0: ldc.r8    1
IL_02e9: newobj    <mlEco.Position:.ctor (double,double)>
IL_02ee: call      <mlEco.SimulationObject:set_position (mlEco.Position)>
IL_02f3: ldarg.0   
IL_02f4: call      <mlEco.SimulationObject:get_position ()>
IL_02f9: stloc.0   
IL_02fa: ldloca.s  0
IL_02fc: call      <mlEco.Position:get_x ()>
IL_0301: ldc.r8    0
IL_030a: bge.un.s  IL_032e
IL_030c: ldarg.0   
IL_030d: ldc.r8    0
IL_0316: ldarg.0   
IL_0317: call      <mlEco.SimulationObject:get_position ()>
IL_031c: stloc.0   
IL_031d: ldloca.s  0
IL_031f: call      <mlEco.Position:get_y ()>
IL_0324: newobj    <mlEco.Position:.ctor (double,double)>
IL_0329: call      <mlEco.SimulationObject:set_position (mlEco.Position)>
IL_032e: ldarg.0   
IL_032f: call      <mlEco.SimulationObject:get_position ()>
IL_0334: stloc.0   
IL_0335: ldloca.s  0
IL_0337: call      <mlEco.Position:get_y ()>
IL_033c: ldc.r8    0
IL_0345: bge.un.s  IL_0369
IL_0347: ldarg.0   
IL_0348: ldarg.0   
IL_0349: call      <mlEco.SimulationObject:get_position ()>
IL_034e: stloc.0   
IL_034f: ldloca.s  0
IL_0351: call      <mlEco.Position:get_x ()>
IL_0356: ldc.r8    0
IL_035f: newobj    <mlEco.Position:.ctor (double,double)>
IL_0364: call      <mlEco.SimulationObject:set_position (mlEco.Position)>
IL_0369: ret       
