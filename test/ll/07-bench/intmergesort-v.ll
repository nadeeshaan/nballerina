@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare i64 @_Bb0m4lang5arraylength(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare void @_Bb0m4lang5arraypush(i8 addrspace(1)*, i8 addrspace(1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %len = alloca i64
  %a = alloca i64
  %m = alloca i64
  %x = alloca i64
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %i = alloca i64
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %s = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %i.1 = alloca i64
  %12 = alloca i1
  %13 = alloca i1
  %14 = alloca i64
  %15 = alloca i64
  %16 = alloca i64
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i1
  %19 = alloca i64
  %20 = alloca i64
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8
  %24 = load i8*, i8** @_bal_stack_guard
  %25 = icmp ult i8* %23, %24
  br i1 %25, label %106, label %26
26:
  store i64 1000000, i64* %len
  store i64 16807, i64* %a
  store i64 2147483647, i64* %m
  store i64 17, i64* %x
  %27 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %28 = bitcast i8 addrspace(1)* %27 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %29 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %29
  %30 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %30
  %31 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %31
  %32 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %32
  %33 = getelementptr i8, i8 addrspace(1)* %27, i64 1297036692682702852
  store i8 addrspace(1)* %33, i8 addrspace(1)** %1
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %34, i8 addrspace(1)** %v
  %35 = load i64, i64* %len, !dbg !14
  %36 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %35), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %36), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !14
  store i64 0, i64* %i
  br label %37
37:
  %38 = load i64, i64* %i
  %39 = load i64, i64* %len
  %40 = icmp slt i64 %38, %39
  store i1 %40, i1* %3
  %41 = load i1, i1* %3
  br i1 %41, label %59, label %42
42:
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !15
  %44 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %43), !dbg !15
  store i8 addrspace(1)* %44, i8 addrspace(1)** %7, !dbg !15
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  store i8 addrspace(1)* %45, i8 addrspace(1)** %s
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %s, !dbg !16
  %47 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %46, i64 -5), !dbg !16
  %48 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %47), !dbg !16
  store i64 %48, i64* %9, !dbg !16
  %49 = load i64, i64* %9
  %50 = load i64, i64* %len
  %51 = icmp eq i64 %49, %50
  store i1 %51, i1* %8
  %52 = load i1, i1* %8, !dbg !17
  %53 = zext i1 %52 to i64, !dbg !17
  %54 = or i64 %53, 72057594037927936, !dbg !17
  %55 = getelementptr i8, i8 addrspace(1)* null, i64 %54, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %55), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !17
  %56 = load i64, i64* %len
  %57 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %56, i64 1)
  %58 = extractvalue {i64, i1} %57, 1
  br i1 %58, label %110, label %108
59:
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !18
  %61 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %60, i64 -5), !dbg !18
  %62 = load i64, i64* %x, !dbg !18
  %63 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %62), !dbg !18
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %61, i8 addrspace(1)* %63), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !18
  %64 = load i64, i64* %x
  %65 = load i64, i64* %a
  %66 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %64, i64 %65)
  %67 = extractvalue {i64, i1} %66, 1
  br i1 %67, label %117, label %112
68:
  %69 = load i64, i64* %i
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %i
  br label %37
71:
  %72 = load i64, i64* %i.1
  %73 = load i64, i64* %11
  %74 = icmp slt i64 %72, %73
  store i1 %74, i1* %12
  %75 = load i1, i1* %12
  br i1 %75, label %88, label %76
76:
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !19
  %78 = call i64 @_B_checksum(i8 addrspace(1)* %77), !dbg !19
  store i64 %78, i64* %19, !dbg !19
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %s, !dbg !20
  %80 = call i64 @_B_checksum(i8 addrspace(1)* %79), !dbg !20
  store i64 %80, i64* %20, !dbg !20
  %81 = load i64, i64* %19
  %82 = load i64, i64* %20
  %83 = icmp eq i64 %81, %82
  store i1 %83, i1* %18
  %84 = load i1, i1* %18, !dbg !21
  %85 = zext i1 %84 to i64, !dbg !21
  %86 = or i64 %85, 72057594037927936, !dbg !21
  %87 = getelementptr i8, i8 addrspace(1)* null, i64 %86, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %87), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !21
  ret void
88:
  %89 = load i64, i64* %i.1
  %90 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %91 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %90, i64 72057594037927928)
  %92 = bitcast i8 addrspace(1)* %91 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %93 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %92, i64 0, i32 1
  %94 = load i64, i64 addrspace(1)* %93, align 8
  %95 = icmp ult i64 %89, %94
  br i1 %95, label %130, label %139
96:
  %97 = zext i1 0 to i64, !dbg !22
  %98 = or i64 %97, 72057594037927936, !dbg !22
  %99 = getelementptr i8, i8 addrspace(1)* null, i64 %98, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %99), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !22
  br label %100
100:
  br label %101
101:
  %102 = load i64, i64* %i.1
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %i.1
  br label %71
104:
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %22
  call void @_bal_panic(i8 addrspace(1)* %105)
  unreachable
106:
  %107 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %107)
  unreachable
108:
  %109 = extractvalue {i64, i1} %57, 0
  store i64 %109, i64* %11
  store i64 0, i64* %i.1
  br label %71
110:
  %111 = call i8 addrspace(1)* @_bal_panic_construct(i64 4865), !dbg !13
  store i8 addrspace(1)* %111, i8 addrspace(1)** %22
  br label %104
112:
  %113 = extractvalue {i64, i1} %66, 0
  store i64 %113, i64* %5
  %114 = load i64, i64* %5
  %115 = load i64, i64* %m
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %119, label %121
117:
  %118 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841), !dbg !13
  store i8 addrspace(1)* %118, i8 addrspace(1)** %22
  br label %104
119:
  %120 = call i8 addrspace(1)* @_bal_panic_construct(i64 3842), !dbg !13
  store i8 addrspace(1)* %120, i8 addrspace(1)** %22
  br label %104
121:
  %122 = icmp eq i64 %114, -9223372036854775808
  %123 = icmp eq i64 %115, -1
  %124 = and i1 %122, %123
  br i1 %124, label %127, label %125
125:
  %126 = srem i64 %114, %115
  store i64 %126, i64* %6
  br label %128
127:
  store i64 0, i64* %6
  br label %128
128:
  %129 = load i64, i64* %6
  store i64 %129, i64* %x
  br label %68
130:
  %131 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %92, i64 0, i32 3
  %132 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %131, align 8
  %133 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %132, i64 0, i64 %89
  %134 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %133, align 8
  %135 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %134)
  store i64 %135, i64* %14
  %136 = load i64, i64* %i.1
  %137 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %136, i64 1)
  %138 = extractvalue {i64, i1} %137, 1
  br i1 %138, label %150, label %141
139:
  %140 = call i8 addrspace(1)* @_bal_panic_construct(i64 5125), !dbg !13
  store i8 addrspace(1)* %140, i8 addrspace(1)** %22
  br label %104
141:
  %142 = extractvalue {i64, i1} %137, 0
  store i64 %142, i64* %15
  %143 = load i64, i64* %15
  %144 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %145 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %144, i64 72057594037927928)
  %146 = bitcast i8 addrspace(1)* %145 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %147 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %146, i64 0, i32 1
  %148 = load i64, i64 addrspace(1)* %147, align 8
  %149 = icmp ult i64 %143, %148
  br i1 %149, label %152, label %162
150:
  %151 = call i8 addrspace(1)* @_bal_panic_construct(i64 5121), !dbg !13
  store i8 addrspace(1)* %151, i8 addrspace(1)** %22
  br label %104
152:
  %153 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %146, i64 0, i32 3
  %154 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %153, align 8
  %155 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %154, i64 0, i64 %143
  %156 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %155, align 8
  %157 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %156)
  store i64 %157, i64* %16
  %158 = load i64, i64* %14
  %159 = load i64, i64* %16
  %160 = icmp sgt i64 %158, %159
  store i1 %160, i1* %13
  %161 = load i1, i1* %13
  br i1 %161, label %96, label %100
162:
  %163 = call i8 addrspace(1)* @_bal_panic_construct(i64 5125), !dbg !13
  store i8 addrspace(1)* %163, i8 addrspace(1)** %22
  br label %104
}
define internal i64 @_B_checksum(i8 addrspace(1)* %0) !dbg !7 {
  %v = alloca i8 addrspace(1)*
  %c = alloca i64
  %2 = alloca i64
  %i = alloca i64
  %3 = alloca i1
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %34, label %10
10:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  store i64 0, i64* %c
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !24
  %12 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %11, i64 -5), !dbg !24
  %13 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %12), !dbg !24
  store i64 %13, i64* %2, !dbg !24
  store i64 0, i64* %i
  br label %14
14:
  %15 = load i64, i64* %i
  %16 = load i64, i64* %2
  %17 = icmp slt i64 %15, %16
  store i1 %17, i1* %3
  %18 = load i1, i1* %3
  br i1 %18, label %21, label %19
19:
  %20 = load i64, i64* %c
  ret i64 %20
21:
  %22 = load i64, i64* %i
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %24 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %23, i64 72057594037927928)
  %25 = bitcast i8 addrspace(1)* %24 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %26 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %25, i64 0, i32 1
  %27 = load i64, i64 addrspace(1)* %26, align 8
  %28 = icmp ult i64 %22, %27
  br i1 %28, label %36, label %46
29:
  %30 = load i64, i64* %i
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %i
  br label %14
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 6916), !dbg !23
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
36:
  %37 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %25, i64 0, i32 3
  %38 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %37, align 8
  %39 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %38, i64 0, i64 %22
  %40 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %39, align 8
  %41 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %40)
  store i64 %41, i64* %4
  %42 = load i64, i64* %c
  %43 = load i64, i64* %4
  %44 = xor i64 %42, %43
  store i64 %44, i64* %5
  %45 = load i64, i64* %5
  store i64 %45, i64* %c
  br label %29
46:
  %47 = call i8 addrspace(1)* @_bal_panic_construct(i64 7685), !dbg !23
  store i8 addrspace(1)* %47, i8 addrspace(1)** %6
  br label %32
}
define internal i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %0) !dbg !9 {
  %v = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %mid = alloca i64
  %6 = alloca i8 addrspace(1)*
  %list1 = alloca i8 addrspace(1)*
  %i = alloca i64
  %7 = alloca i1
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %list2 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %i.1 = alloca i64
  %12 = alloca i1
  %13 = alloca i64
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8
  %20 = load i8*, i8** @_bal_stack_guard
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %93, label %22
22:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !26
  %24 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %23, i64 -5), !dbg !26
  %25 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %24), !dbg !26
  store i64 %25, i64* %3, !dbg !26
  %26 = load i64, i64* %3
  %27 = icmp sle i64 %26, 1
  store i1 %27, i1* %2
  %28 = load i1, i1* %2
  br i1 %28, label %29, label %31
29:
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  ret i8 addrspace(1)* %30
31:
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !27
  %33 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %32, i64 -5), !dbg !27
  %34 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %33), !dbg !27
  store i64 %34, i64* %4, !dbg !27
  %35 = load i64, i64* %4
  %36 = icmp eq i64 2, 0
  br i1 %36, label %95, label %97
37:
  %38 = load i64, i64* %i
  %39 = load i64, i64* %mid
  %40 = icmp slt i64 %38, %39
  store i1 %40, i1* %7
  %41 = load i1, i1* %7
  br i1 %41, label %55, label %42
42:
  %43 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %44 = bitcast i8 addrspace(1)* %43 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %45 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %44, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %45
  %46 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %44, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %46
  %47 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %44, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %47
  %48 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %44, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %48
  %49 = getelementptr i8, i8 addrspace(1)* %43, i64 1297036692682702852
  store i8 addrspace(1)* %49, i8 addrspace(1)** %10
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  store i8 addrspace(1)* %50, i8 addrspace(1)** %list2
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !28
  %52 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %51, i64 -5), !dbg !28
  %53 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %52), !dbg !28
  store i64 %53, i64* %11, !dbg !28
  %54 = load i64, i64* %mid
  store i64 %54, i64* %i.1
  br label %66
55:
  %56 = load i64, i64* %i
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %58 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %57, i64 72057594037927928)
  %59 = bitcast i8 addrspace(1)* %58 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %60 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %59, i64 0, i32 1
  %61 = load i64, i64 addrspace(1)* %60, align 8
  %62 = icmp ult i64 %56, %61
  br i1 %62, label %114, label %124
63:
  %64 = load i64, i64* %i
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %i
  br label %37
66:
  %67 = load i64, i64* %i.1
  %68 = load i64, i64* %11
  %69 = icmp slt i64 %67, %68
  store i1 %69, i1* %12
  %70 = load i1, i1* %12
  br i1 %70, label %80, label %71
71:
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %list1, !dbg !30
  %73 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %72), !dbg !30
  store i8 addrspace(1)* %73, i8 addrspace(1)** %15, !dbg !30
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %list2, !dbg !31
  %75 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %74), !dbg !31
  store i8 addrspace(1)* %75, i8 addrspace(1)** %16, !dbg !31
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !32
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %16, !dbg !32
  %78 = call i8 addrspace(1)* @_B_merge(i8 addrspace(1)* %76, i8 addrspace(1)* %77), !dbg !32
  store i8 addrspace(1)* %78, i8 addrspace(1)** %17, !dbg !32
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  ret i8 addrspace(1)* %79
80:
  %81 = load i64, i64* %i.1
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %83 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %82, i64 72057594037927928)
  %84 = bitcast i8 addrspace(1)* %83 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %85 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %84, i64 0, i32 1
  %86 = load i64, i64 addrspace(1)* %85, align 8
  %87 = icmp ult i64 %81, %86
  br i1 %87, label %126, label %136
88:
  %89 = load i64, i64* %i.1
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %i.1
  br label %66
91:
  %92 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  call void @_bal_panic(i8 addrspace(1)* %92)
  unreachable
93:
  %94 = call i8 addrspace(1)* @_bal_panic_construct(i64 9220), !dbg !25
  call void @_bal_panic(i8 addrspace(1)* %94)
  unreachable
95:
  %96 = call i8 addrspace(1)* @_bal_panic_construct(i64 10242), !dbg !25
  store i8 addrspace(1)* %96, i8 addrspace(1)** %18
  br label %91
97:
  %98 = icmp eq i64 %35, -9223372036854775808
  %99 = icmp eq i64 2, -1
  %100 = and i1 %98, %99
  br i1 %100, label %112, label %101
101:
  %102 = sdiv i64 %35, 2
  store i64 %102, i64* %5
  %103 = load i64, i64* %5
  store i64 %103, i64* %mid
  %104 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %105 = bitcast i8 addrspace(1)* %104 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %106 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %105, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %106
  %107 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %105, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %107
  %108 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %105, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %108
  %109 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %105, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %109
  %110 = getelementptr i8, i8 addrspace(1)* %104, i64 1297036692682702852
  store i8 addrspace(1)* %110, i8 addrspace(1)** %6
  %111 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %111, i8 addrspace(1)** %list1
  store i64 0, i64* %i
  br label %37
112:
  %113 = call i8 addrspace(1)* @_bal_panic_construct(i64 10241), !dbg !25
  store i8 addrspace(1)* %113, i8 addrspace(1)** %18
  br label %91
114:
  %115 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %59, i64 0, i32 3
  %116 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %115, align 8
  %117 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %116, i64 0, i64 %56
  %118 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %117, align 8
  %119 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %118)
  store i64 %119, i64* %8
  %120 = load i8 addrspace(1)*, i8 addrspace(1)** %list1, !dbg !29
  %121 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %120, i64 -5), !dbg !29
  %122 = load i64, i64* %8, !dbg !29
  %123 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %122), !dbg !29
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %121, i8 addrspace(1)* %123), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !29
  br label %63
124:
  %125 = call i8 addrspace(1)* @_bal_panic_construct(i64 11013), !dbg !25
  store i8 addrspace(1)* %125, i8 addrspace(1)** %18
  br label %91
126:
  %127 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %84, i64 0, i32 3
  %128 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %127, align 8
  %129 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %128, i64 0, i64 %81
  %130 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %129, align 8
  %131 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %130)
  store i64 %131, i64* %13
  %132 = load i8 addrspace(1)*, i8 addrspace(1)** %list2, !dbg !33
  %133 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %132, i64 -5), !dbg !33
  %134 = load i64, i64* %13, !dbg !33
  %135 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %134), !dbg !33
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %133, i8 addrspace(1)* %135), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !33
  br label %88
136:
  %137 = call i8 addrspace(1)* @_bal_panic_construct(i64 12037), !dbg !25
  store i8 addrspace(1)* %137, i8 addrspace(1)** %18
  br label %91
}
define internal i8 addrspace(1)* @_B_merge(i8 addrspace(1)* %0, i8 addrspace(1)* %1) !dbg !11 {
  %v1 = alloca i8 addrspace(1)*
  %v2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %result = alloca i8 addrspace(1)*
  %i1 = alloca i64
  %i2 = alloca i64
  %4 = alloca i64
  %len1 = alloca i64
  %5 = alloca i64
  %len2 = alloca i64
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i1
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i64
  %17 = alloca i1
  %18 = alloca i64
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i64
  %21 = alloca i1
  %22 = alloca i64
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i64
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i8
  %27 = load i8*, i8** @_bal_stack_guard
  %28 = icmp ult i8* %26, %27
  br i1 %28, label %116, label %29
29:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v1
  store i8 addrspace(1)* %1, i8 addrspace(1)** %v2
  %30 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %31 = bitcast i8 addrspace(1)* %30 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %32 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %31, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %32
  %33 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %31, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %33
  %34 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %31, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %34
  %35 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %31, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %35
  %36 = getelementptr i8, i8 addrspace(1)* %30, i64 1297036692682702852
  store i8 addrspace(1)* %36, i8 addrspace(1)** %3
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %37, i8 addrspace(1)** %result
  store i64 0, i64* %i1
  store i64 0, i64* %i2
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %v1, !dbg !35
  %39 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %38, i64 -5), !dbg !35
  %40 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %39), !dbg !35
  store i64 %40, i64* %4, !dbg !35
  %41 = load i64, i64* %4
  store i64 %41, i64* %len1
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %v2, !dbg !36
  %43 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %42, i64 -5), !dbg !36
  %44 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %43), !dbg !36
  store i64 %44, i64* %5, !dbg !36
  %45 = load i64, i64* %5
  store i64 %45, i64* %len2
  br label %46
46:
  br label %47
47:
  %48 = load i64, i64* %i1
  %49 = load i64, i64* %len1
  %50 = icmp slt i64 %48, %49
  store i1 %50, i1* %6
  %51 = load i1, i1* %6
  br i1 %51, label %53, label %84
52:
  br label %85
53:
  %54 = load i64, i64* %i2
  %55 = load i64, i64* %len2
  %56 = icmp slt i64 %54, %55
  store i1 %56, i1* %7
  %57 = load i1, i1* %7
  br i1 %57, label %58, label %83
58:
  %59 = load i64, i64* %i1
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %61 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %60, i64 72057594037927928)
  %62 = bitcast i8 addrspace(1)* %61 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %63 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %62, i64 0, i32 1
  %64 = load i64, i64 addrspace(1)* %63, align 8
  %65 = icmp ult i64 %59, %64
  br i1 %65, label %118, label %131
66:
  %67 = load i64, i64* %i1
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %69 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %68, i64 72057594037927928)
  %70 = bitcast i8 addrspace(1)* %69 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %71 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %70, i64 0, i32 1
  %72 = load i64, i64 addrspace(1)* %71, align 8
  %73 = icmp ult i64 %67, %72
  br i1 %73, label %145, label %158
74:
  %75 = load i64, i64* %i2
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %77 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %76, i64 72057594037927928)
  %78 = bitcast i8 addrspace(1)* %77 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %79 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %78, i64 0, i32 1
  %80 = load i64, i64 addrspace(1)* %79, align 8
  %81 = icmp ult i64 %75, %80
  br i1 %81, label %165, label %178
82:
  br label %46
83:
  br label %84
84:
  br label %52
85:
  %86 = load i64, i64* %i1
  %87 = load i64, i64* %len1
  %88 = icmp slt i64 %86, %87
  store i1 %88, i1* %17
  %89 = load i1, i1* %17
  br i1 %89, label %90, label %98
90:
  %91 = load i64, i64* %i1
  %92 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %93 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %92, i64 72057594037927928)
  %94 = bitcast i8 addrspace(1)* %93 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %95 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %94, i64 0, i32 1
  %96 = load i64, i64 addrspace(1)* %95, align 8
  %97 = icmp ult i64 %91, %96
  br i1 %97, label %185, label %198
98:
  br label %99
99:
  %100 = load i64, i64* %i2
  %101 = load i64, i64* %len2
  %102 = icmp slt i64 %100, %101
  store i1 %102, i1* %21
  %103 = load i1, i1* %21
  br i1 %103, label %104, label %112
104:
  %105 = load i64, i64* %i2
  %106 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %107 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %106, i64 72057594037927928)
  %108 = bitcast i8 addrspace(1)* %107 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %109 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %108, i64 0, i32 1
  %110 = load i64, i64 addrspace(1)* %109, align 8
  %111 = icmp ult i64 %105, %110
  br i1 %111, label %205, label %218
112:
  %113 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  ret i8 addrspace(1)* %113
114:
  %115 = load i8 addrspace(1)*, i8 addrspace(1)** %25
  call void @_bal_panic(i8 addrspace(1)* %115)
  unreachable
116:
  %117 = call i8 addrspace(1)* @_bal_panic_construct(i64 13316), !dbg !34
  call void @_bal_panic(i8 addrspace(1)* %117)
  unreachable
118:
  %119 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %62, i64 0, i32 3
  %120 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %119, align 8
  %121 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %120, i64 0, i64 %59
  %122 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %121, align 8
  %123 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %122)
  store i64 %123, i64* %9
  %124 = load i64, i64* %i2
  %125 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %126 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %125, i64 72057594037927928)
  %127 = bitcast i8 addrspace(1)* %126 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %128 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %127, i64 0, i32 1
  %129 = load i64, i64 addrspace(1)* %128, align 8
  %130 = icmp ult i64 %124, %129
  br i1 %130, label %133, label %143
131:
  %132 = call i8 addrspace(1)* @_bal_panic_construct(i64 15621), !dbg !34
  store i8 addrspace(1)* %132, i8 addrspace(1)** %25
  br label %114
133:
  %134 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %127, i64 0, i32 3
  %135 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %134, align 8
  %136 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %135, i64 0, i64 %124
  %137 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %136, align 8
  %138 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %137)
  store i64 %138, i64* %10
  %139 = load i64, i64* %9
  %140 = load i64, i64* %10
  %141 = icmp sle i64 %139, %140
  store i1 %141, i1* %8
  %142 = load i1, i1* %8
  br i1 %142, label %66, label %74
143:
  %144 = call i8 addrspace(1)* @_bal_panic_construct(i64 15621), !dbg !34
  store i8 addrspace(1)* %144, i8 addrspace(1)** %25
  br label %114
145:
  %146 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %70, i64 0, i32 3
  %147 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %146, align 8
  %148 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %147, i64 0, i64 %67
  %149 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %148, align 8
  %150 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %149)
  store i64 %150, i64* %11
  %151 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !37
  %152 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %151, i64 -5), !dbg !37
  %153 = load i64, i64* %11, !dbg !37
  %154 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %153), !dbg !37
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %152, i8 addrspace(1)* %154), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !37
  %155 = load i64, i64* %i1
  %156 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %155, i64 1)
  %157 = extractvalue {i64, i1} %156, 1
  br i1 %157, label %163, label %160
158:
  %159 = call i8 addrspace(1)* @_bal_panic_construct(i64 15877), !dbg !34
  store i8 addrspace(1)* %159, i8 addrspace(1)** %25
  br label %114
160:
  %161 = extractvalue {i64, i1} %156, 0
  store i64 %161, i64* %13
  %162 = load i64, i64* %13
  store i64 %162, i64* %i1
  br label %82
163:
  %164 = call i8 addrspace(1)* @_bal_panic_construct(i64 16129), !dbg !34
  store i8 addrspace(1)* %164, i8 addrspace(1)** %25
  br label %114
165:
  %166 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %78, i64 0, i32 3
  %167 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %166, align 8
  %168 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %167, i64 0, i64 %75
  %169 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %168, align 8
  %170 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %169)
  store i64 %170, i64* %14
  %171 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !38
  %172 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %171, i64 -5), !dbg !38
  %173 = load i64, i64* %14, !dbg !38
  %174 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %173), !dbg !38
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %172, i8 addrspace(1)* %174), !dbg !38
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !38
  %175 = load i64, i64* %i2
  %176 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %175, i64 1)
  %177 = extractvalue {i64, i1} %176, 1
  br i1 %177, label %183, label %180
178:
  %179 = call i8 addrspace(1)* @_bal_panic_construct(i64 16901), !dbg !34
  store i8 addrspace(1)* %179, i8 addrspace(1)** %25
  br label %114
180:
  %181 = extractvalue {i64, i1} %176, 0
  store i64 %181, i64* %16
  %182 = load i64, i64* %16
  store i64 %182, i64* %i2
  br label %82
183:
  %184 = call i8 addrspace(1)* @_bal_panic_construct(i64 17153), !dbg !34
  store i8 addrspace(1)* %184, i8 addrspace(1)** %25
  br label %114
185:
  %186 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %94, i64 0, i32 3
  %187 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %186, align 8
  %188 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %187, i64 0, i64 %91
  %189 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %188, align 8
  %190 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %189)
  store i64 %190, i64* %18
  %191 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !39
  %192 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %191, i64 -5), !dbg !39
  %193 = load i64, i64* %18, !dbg !39
  %194 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %193), !dbg !39
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %192, i8 addrspace(1)* %194), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !39
  %195 = load i64, i64* %i1
  %196 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %195, i64 1)
  %197 = extractvalue {i64, i1} %196, 1
  br i1 %197, label %203, label %200
198:
  %199 = call i8 addrspace(1)* @_bal_panic_construct(i64 19205), !dbg !34
  store i8 addrspace(1)* %199, i8 addrspace(1)** %25
  br label %114
200:
  %201 = extractvalue {i64, i1} %196, 0
  store i64 %201, i64* %20
  %202 = load i64, i64* %20
  store i64 %202, i64* %i1
  br label %85
203:
  %204 = call i8 addrspace(1)* @_bal_panic_construct(i64 19457), !dbg !34
  store i8 addrspace(1)* %204, i8 addrspace(1)** %25
  br label %114
205:
  %206 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %108, i64 0, i32 3
  %207 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %206, align 8
  %208 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %207, i64 0, i64 %105
  %209 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %208, align 8
  %210 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %209)
  store i64 %210, i64* %22
  %211 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !40
  %212 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %211, i64 -5), !dbg !40
  %213 = load i64, i64* %22, !dbg !40
  %214 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %213), !dbg !40
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %212, i8 addrspace(1)* %214), !dbg !40
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !40
  %215 = load i64, i64* %i2
  %216 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %215, i64 1)
  %217 = extractvalue {i64, i1} %216, 1
  br i1 %217, label %223, label %220
218:
  %219 = call i8 addrspace(1)* @_bal_panic_construct(i64 20229), !dbg !34
  store i8 addrspace(1)* %219, i8 addrspace(1)** %25
  br label %114
220:
  %221 = extractvalue {i64, i1} %216, 0
  store i64 %221, i64* %24
  %222 = load i64, i64* %24
  store i64 %222, i64* %i2
  br label %99
223:
  %224 = call i8 addrspace(1)* @_bal_panic_construct(i64 20481), !dbg !34
  store i8 addrspace(1)* %224, i8 addrspace(1)** %25
  br label %114
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-bench/intmergesort-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"checksum", linkageName:"_B_checksum", scope: !1, file: !1, line: 27, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"sort", linkageName:"_B_sort", scope: !1, file: !1, line: 36, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"merge", linkageName:"_B_merge", scope: !1, file: !1, line: 52, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 12, column: 4, scope: !5)
!15 = !DILocation(line: 17, column: 14, scope: !5)
!16 = !DILocation(line: 18, column: 16, scope: !5)
!17 = !DILocation(line: 18, column: 4, scope: !5)
!18 = !DILocation(line: 14, column: 9, scope: !5)
!19 = !DILocation(line: 24, column: 15, scope: !5)
!20 = !DILocation(line: 24, column: 30, scope: !5)
!21 = !DILocation(line: 24, column: 4, scope: !5)
!22 = !DILocation(line: 21, column: 12, scope: !5)
!23 = !DILocation(line: 0, column: 0, scope: !7)
!24 = !DILocation(line: 29, column: 28, scope: !7)
!25 = !DILocation(line: 0, column: 0, scope: !9)
!26 = !DILocation(line: 37, column: 8, scope: !9)
!27 = !DILocation(line: 40, column: 15, scope: !9)
!28 = !DILocation(line: 46, column: 30, scope: !9)
!29 = !DILocation(line: 43, column: 13, scope: !9)
!30 = !DILocation(line: 49, column: 17, scope: !9)
!31 = !DILocation(line: 49, column: 30, scope: !9)
!32 = !DILocation(line: 49, column: 11, scope: !9)
!33 = !DILocation(line: 47, column: 13, scope: !9)
!34 = !DILocation(line: 0, column: 0, scope: !11)
!35 = !DILocation(line: 56, column: 17, scope: !11)
!36 = !DILocation(line: 57, column: 17, scope: !11)
!37 = !DILocation(line: 62, column: 26, scope: !11)
!38 = !DILocation(line: 66, column: 26, scope: !11)
!39 = !DILocation(line: 75, column: 14, scope: !11)
!40 = !DILocation(line: 79, column: 14, scope: !11)