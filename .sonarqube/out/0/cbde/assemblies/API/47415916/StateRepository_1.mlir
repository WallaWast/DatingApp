func @_API.Data.StateRepository.AddState$API.Entities.State$(none) -> () loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\StateRepository.cs" :22 :8) {
^entry (%_state : none):
%0 = cbde.alloca none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\StateRepository.cs" :22 :29)
cbde.store %_state, %0 : memref<none> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\StateRepository.cs" :22 :29)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\StateRepository.cs" :24 :12) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\StateRepository.cs" :24 :12) // _context.States (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\StateRepository.cs" :24 :32) // Not a variable of known type: state
%4 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\StateRepository.cs" :24 :12) // _context.States.Add(state) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_API.Data.StateRepository.DeleteState$API.Entities.State$(none) -> () loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\StateRepository.cs" :27 :8) {
^entry (%_state : none):
%0 = cbde.alloca none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\StateRepository.cs" :27 :32)
cbde.store %_state, %0 : memref<none> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\StateRepository.cs" :27 :32)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\StateRepository.cs" :29 :12) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\StateRepository.cs" :29 :12) // _context.States (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\StateRepository.cs" :29 :35) // Not a variable of known type: state
%4 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\StateRepository.cs" :29 :12) // _context.States.Remove(state) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function GetStateAsync(i32), it contains poisonous unsupported syntaxes

// Skipping function GetStatesByCountryIdAsync(i32), it contains poisonous unsupported syntaxes

