@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb0m4lang5arraypush(i8 addrspace(1)*, i8 addrspace(1)*)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %7, label %6
6:
  call void @_B_test1(), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !14
  call void @_B_test2(), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !15
  ret void
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
define internal void @_B_test1() !dbg !7 {
  %1 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %24, label %8
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
  store i8 addrspace(1)* %16, i8 addrspace(1)** %x
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %x, !dbg !17
  %18 = call i8 addrspace(1)* @_B_foo(i8 addrspace(1)* %17), !dbg !17
  store i8 addrspace(1)* %18, i8 addrspace(1)** %2, !dbg !17
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %2, !dbg !18
  %20 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %19, i64 -5), !dbg !18
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !18
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %20, i8 addrspace(1)* %21), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !18
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %x, !dbg !19
  %23 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %22, i64 -5), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %23), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !19
  ret void
24:
  %25 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %25)
  unreachable
}
define internal void @_B_test2() !dbg !9 {
  %1 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %24, label %8
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
  store i8 addrspace(1)* %16, i8 addrspace(1)** %x
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %x, !dbg !21
  %18 = call i8 addrspace(1)* @_B_foo(i8 addrspace(1)* %17), !dbg !21
  store i8 addrspace(1)* %18, i8 addrspace(1)** %2, !dbg !21
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %2, !dbg !22
  %20 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %19, i64 -5), !dbg !22
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2), !dbg !22
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %20, i8 addrspace(1)* %21), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !22
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %x, !dbg !23
  %23 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %22, i64 -5), !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %23), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !23
  ret void
24:
  %25 = call i8 addrspace(1)* @_bal_panic_construct(i64 4356), !dbg !20
  call void @_bal_panic(i8 addrspace(1)* %25)
  unreachable
}
define internal i8 addrspace(1)* @_B_foo(i8 addrspace(1)* %0) !dbg !11 {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %7, label %5
5:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %6 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  ret i8 addrspace(1)* %6
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 5892), !dbg !24
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-function/call-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"test1", linkageName:"_B_test1", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"test2", linkageName:"_B_test2", scope: !1, file: !1, line: 17, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 23, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 7, column: 2, scope: !5)
!15 = !DILocation(line: 8, column: 2, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
!17 = !DILocation(line: 13, column: 4, scope: !7)
!18 = !DILocation(line: 13, column: 11, scope: !7)
!19 = !DILocation(line: 14, column: 3, scope: !7)
!20 = !DILocation(line: 0, column: 0, scope: !9)
!21 = !DILocation(line: 19, column: 3, scope: !9)
!22 = !DILocation(line: 19, column: 9, scope: !9)
!23 = !DILocation(line: 20, column: 3, scope: !9)
!24 = !DILocation(line: 0, column: 0, scope: !11)