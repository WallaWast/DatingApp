// Skipping function GetUsersAsync(), it contains poisonous unsupported syntaxes

// Skipping function GetUserByIdAsync(i32), it contains poisonous unsupported syntaxes

// Skipping function GetUserByUserNameAsync(none), it contains poisonous unsupported syntaxes

func @_API.Data.UserRepository.Update$API.Entities.AppUser$(none) -> () loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\UserRepository.cs" :45 :8) {
^entry (%_user : none):
%0 = cbde.alloca none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\UserRepository.cs" :45 :27)
cbde.store %_user, %0 : memref<none> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\UserRepository.cs" :45 :27)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\UserRepository.cs" :47 :12) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\UserRepository.cs" :47 :27) // Not a variable of known type: user
%3 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\UserRepository.cs" :47 :12) // _context.Entry(user) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\UserRepository.cs" :47 :12) // _context.Entry(user).State (SimpleMemberAccessExpression)
// Entity from another assembly: EntityState
%5 = constant unit loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\UserRepository.cs" :47 :41) // EntityState.Modified (SimpleMemberAccessExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function GetMembersAsync(none), it contains poisonous unsupported syntaxes

// Skipping function GetMemberAsync(none), it contains poisonous unsupported syntaxes

// Skipping function GetUserGender(none), it contains poisonous unsupported syntaxes

