func @_API.Extensions.DateTimeExtensions.CalculateAge$System.DateTime$(none) -> i32 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\DateTimeExtensions.cs" :6 :8) {
^entry (%_dateOfBirth : none):
%0 = cbde.alloca none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\DateTimeExtensions.cs" :6 :39)
cbde.store %_dateOfBirth, %0 : memref<none> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\DateTimeExtensions.cs" :6 :39)
br ^0

^0: // BinaryBranchBlock
// Entity from another assembly: DateTime
%1 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\DateTimeExtensions.cs" :8 :24) // DateTime.Today (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\DateTimeExtensions.cs" :9 :22) // Not a variable of known type: today
%4 = cbde.unknown : i32 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\DateTimeExtensions.cs" :9 :22) // today.Year (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\DateTimeExtensions.cs" :9 :35) // Not a variable of known type: dateOfBirth
%6 = cbde.unknown : i32 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\DateTimeExtensions.cs" :9 :35) // dateOfBirth.Year (SimpleMemberAccessExpression)
%7 = subi %4, %6 : i32 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\DateTimeExtensions.cs" :9 :22)
%8 = cbde.alloca i32 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\DateTimeExtensions.cs" :9 :16) // age
cbde.store %7, %8 : memref<i32> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\DateTimeExtensions.cs" :9 :16)
%9 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\DateTimeExtensions.cs" :11 :16) // Not a variable of known type: dateOfBirth
%10 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\DateTimeExtensions.cs" :11 :30) // Not a variable of known type: today
%11 = cbde.load %8 : memref<i32> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\DateTimeExtensions.cs" :11 :46)
%12 = cbde.neg %11 : i32 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\DateTimeExtensions.cs" :11 :45)
%13 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\DateTimeExtensions.cs" :11 :30) // today.AddYears(-age) (InvocationExpression)
%14 = cbde.unknown : i1  loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\DateTimeExtensions.cs" :11 :16) // comparison of unknown type: dateOfBirth > today.AddYears(-age)
cond_br %14, ^1, ^2 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\DateTimeExtensions.cs" :11 :16)

^1: // SimpleBlock
%15 = cbde.load %8 : memref<i32> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\DateTimeExtensions.cs" :11 :52)
%16 = constant 1 : i32 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\DateTimeExtensions.cs" :11 :52)
%17 = subi %15, %16 : i32 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\DateTimeExtensions.cs" :11 :52)
cbde.store %17, %8 : memref<i32> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\DateTimeExtensions.cs" :11 :52)
br ^2

^2: // JumpBlock
%18 = cbde.load %8 : memref<i32> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\DateTimeExtensions.cs" :13 :19)
return %18 : i32 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\DateTimeExtensions.cs" :13 :12)

^3: // ExitBlock
cbde.unreachable

}
