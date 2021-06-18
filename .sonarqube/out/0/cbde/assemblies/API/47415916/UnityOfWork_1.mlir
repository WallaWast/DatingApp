// Skipping function Complete(), it contains poisonous unsupported syntaxes

func @_API.Data.UnityOfWork.HasChanges$$() -> i1 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\UnityOfWork.cs" :35 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\UnityOfWork.cs" :37 :19) // Not a variable of known type: _context
%1 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\UnityOfWork.cs" :37 :19) // _context.ChangeTracker (SimpleMemberAccessExpression)
%2 = cbde.unknown : i1 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\UnityOfWork.cs" :37 :19) // _context.ChangeTracker.HasChanges() (InvocationExpression)
return %2 : i1 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\UnityOfWork.cs" :37 :12)

^1: // ExitBlock
cbde.unreachable

}
