@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare void @_Bb0m4lang5arraypush(i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %42, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %10 = bitcast i8 addrspace(1)* %9 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %11 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %10, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %11
  %12 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %10, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %12
  %13 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %10, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %13
  %14 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %10, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %14
  %15 = getelementptr i8, i8 addrspace(1)* %9, i64 1297036692682702852
  store i8 addrspace(1)* %15, i8 addrspace(1)** %1
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %16, i8 addrspace(1)** %v
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !8
  %18 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %17, i64 -5), !dbg !8
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !8
  %20 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %19, i64 -5), !dbg !8
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %18, i8 addrspace(1)* %20), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %21 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %22 = bitcast i8 addrspace(1)* %21 to [4 x i8 addrspace(1)*] addrspace(1)*
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %24 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %22, i64 0, i64 0
  store i8 addrspace(1)* %23, i8 addrspace(1)* addrspace(1)* %24
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %26 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %22, i64 0, i64 1
  store i8 addrspace(1)* %25, i8 addrspace(1)* addrspace(1)* %26
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %28 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %27, i64 -5)
  %29 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %22, i64 0, i64 2
  store i8 addrspace(1)* %28, i8 addrspace(1)* addrspace(1)* %29
  %30 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  %31 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %22, i64 0, i64 3
  store i8 addrspace(1)* %30, i8 addrspace(1)* addrspace(1)* %31
  %32 = bitcast [4 x i8 addrspace(1)*] addrspace(1)* %22 to [0 x i8 addrspace(1)*] addrspace(1)*
  %33 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %34 = bitcast i8 addrspace(1)* %33 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %35 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %34, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %35
  %36 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %34, i64 0, i32 1
  store i64 4, i64 addrspace(1)* %36
  %37 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %34, i64 0, i32 2
  store i64 4, i64 addrspace(1)* %37
  %38 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %34, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %32, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %38
  %39 = getelementptr i8, i8 addrspace(1)* %33, i64 1297036692682702852
  store i8 addrspace(1)* %39, i8 addrspace(1)** %3
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !9
  %41 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %40, i64 -5), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %41), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  ret void
42:
  %43 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %43)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/20-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 3, scope: !5)
!9 = !DILocation(line: 7, column: 2, scope: !5)