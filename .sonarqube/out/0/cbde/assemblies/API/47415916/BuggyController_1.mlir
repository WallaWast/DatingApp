func @_API.Controllers.BuggyController.GetSecret$$() -> none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :16 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :20 :19) // "secret text" (StringLiteralExpression)
return %0 : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :20 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_API.Controllers.BuggyController.GetNotFound$$() -> none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :23 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :26 :23) // Not a variable of known type: _context
%1 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :26 :23) // _context.Users (SimpleMemberAccessExpression)
%2 = constant 1 : i32 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :26 :44)
%3 = cbde.neg %2 : i32 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :26 :43)
%4 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :26 :23) // _context.Users.Find(-1) (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :28 :16) // Not a variable of known type: user
%7 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :28 :24) // null (NullLiteralExpression)
%8 = cbde.unknown : i1  loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :28 :16) // comparison of unknown type: user == null
cond_br %8, ^1, ^2 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :28 :16)

^1: // JumpBlock
// Entity from another assembly: NotFound
%9 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :28 :37) // NotFound() (InvocationExpression)
return %9 : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :28 :30)

^2: // JumpBlock
// Entity from another assembly: Ok
%10 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :30 :22) // Not a variable of known type: user
%11 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :30 :19) // Ok(user) (InvocationExpression)
return %11 : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :30 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_API.Controllers.BuggyController.GetServerError$$() -> none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :33 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :36 :23) // Not a variable of known type: _context
%1 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :36 :23) // _context.Users (SimpleMemberAccessExpression)
%2 = constant 1 : i32 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :36 :44)
%3 = cbde.neg %2 : i32 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :36 :43)
%4 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :36 :23) // _context.Users.Find(-1) (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :38 :31) // Not a variable of known type: user
%7 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :38 :31) // user.ToString() (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :40 :19) // Not a variable of known type: userToReturn
return %9 : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :40 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_API.Controllers.BuggyController.GetBadRequest$$() -> none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :43 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: BadRequest
%0 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :46 :30) // "That was a very bad request!" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :46 :19) // BadRequest("That was a very bad request!") (InvocationExpression)
return %1 : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\BuggyController.cs" :46 :12)

^1: // ExitBlock
cbde.unreachable

}
