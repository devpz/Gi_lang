declare i32 @printf(i8*, ...)
declare i32 @__isoc99_scanf(i8*, ...)
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg)
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg)
@strpi = constant [4 x i8] c"%d\0A\00"
@strpd = constant [4 x i8] c"%f\0A\00"
@strs = constant [3 x i8] c"%d\00"
@strd = constant [4 x i8] c"%lf\00"
@strps = constant [4 x i8] c"%s\0A\00"
@.str = private unnamed_addr constant [3 x i8] c"%s\00"
@__const.main.a = private unnamed_addr constant [7 x i8] c"Hello \00"
@__const.main.b = private unnamed_addr constant [7 x i8] c"World!\00"
@__const.main.aPlusb = private unnamed_addr constant [13 x i8] c"Hello World!\00"
@__const.main.anonymous0 = private unnamed_addr constant [4 x i8] c"Hi \00"
@__const.main.anonymous1 = private unnamed_addr constant [6 x i8] c"User!\00"
@__const.main.hi = private unnamed_addr constant [9 x i8] c"Hi User!\00"
define i32 @main() nounwind{
%1 = alloca [7 x i8]
%2 = bitcast [7 x i8]* %1 to i8*
call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main.a, i32 0, i32 0), i64 7, i1 false)
%3 = alloca [7 x i8]
%4 = bitcast [7 x i8]* %3 to i8*
call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main.b, i32 0, i32 0), i64 7, i1 false)
%5 = getelementptr inbounds [7 x i8], [7 x i8]* %1, i32 0, i32 0
%6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @strps, i32 0, i32 0), i8* %5)
%7 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i32 0, i32 0
%8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @strps, i32 0, i32 0), i8* %7)
%z = alloca i32
store i32 30, i32* %z
%x = alloca i32
store i32 10, i32* %x
%9 = load i32, i32* %x
%10 = icmp eq i32 %9, 10
br i1 %10, label %true1, label %false1
true1:
%11 = load i32, i32* %z
%12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @strpi, i32 0, i32 0), i32 %11)
br label %false1
false1:
%13 = alloca [13 x i8]
%14 = bitcast [13 x i8]* %13 to i8*
call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.main.aPlusb, i32 0, i32 0), i64 13, i1 false)
%15 = getelementptr inbounds [13 x i8], [13 x i8]* %13, i32 0, i32 0
%16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @strps, i32 0, i32 0), i8* %15)
%17 = alloca [4 x i8]
%18 = bitcast [4 x i8]* %17 to i8*
call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.main.anonymous0, i32 0, i32 0), i64 4, i1 false)
%19 = alloca [6 x i8]
%20 = bitcast [6 x i8]* %19 to i8*
call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.main.anonymous1, i32 0, i32 0), i64 6, i1 false)
%21 = alloca [9 x i8]
%22 = bitcast [9 x i8]* %21 to i8*
call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.main.hi, i32 0, i32 0), i64 9, i1 false)
%23 = getelementptr inbounds [9 x i8], [9 x i8]* %21, i32 0, i32 0
%24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @strps, i32 0, i32 0), i8* %23)
ret i32 0 }

