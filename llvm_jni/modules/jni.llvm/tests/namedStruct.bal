import ballerina/test;

function namedStruct() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    StructType structTy = context.structCreateNamed("structTy");
    FunctionType fnTy = functionType(structTy, [structTy, "i64"]);
    context.structSetBody(structTy, ["i64", pointerType(structTy), structTy, pointerType(fnTy)]);
    StructType notUsed = context.structCreateNamed("notUsed");
    context.structSetBody(notUsed, ["i32", "i32", structTy]);

    ConstPointerValue g = m.addGlobal(structTy, "g");
    ConstPointerValue g1 = m.addGlobal(structTy, "g1", addressSpace=1);

    FunctionDefn foo = m.addFunctionDefn("foo", { returnType: structTy, paramTypes: [] });
    BasicBlock fooBB = foo.appendBasicBlock();
    builder.positionAtEnd(fooBB);
    builder.ret(g);

    FunctionDefn bar = m.addFunctionDefn("bar", { returnType: "void", paramTypes: [structTy] });
    BasicBlock barBB = bar.appendBasicBlock();
    builder.positionAtEnd(barBB);
    Value v = <Value> builder.call(foo, []);
    builder.ret();
    return m;
}

@test:Config {}
function testNamedStruct() returns error? {
    return runTest(namedStruct, "named_struct.ll");
}
