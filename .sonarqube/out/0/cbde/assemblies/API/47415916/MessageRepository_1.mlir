func @_API.Data.MessageRepository.AddGroup$API.Entities.Group$(none) -> () loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :26 :8) {
^entry (%_group : none):
%0 = cbde.alloca none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :26 :29)
cbde.store %_group, %0 : memref<none> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :26 :29)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :28 :12) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :28 :12) // _context.Groups (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :28 :32) // Not a variable of known type: group
%4 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :28 :12) // _context.Groups.Add(group) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_API.Data.MessageRepository.AddMessage$API.Entities.Message$(none) -> () loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :31 :8) {
^entry (%_message : none):
%0 = cbde.alloca none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :31 :31)
cbde.store %_message, %0 : memref<none> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :31 :31)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :33 :12) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :33 :12) // _context.Messages (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :33 :34) // Not a variable of known type: message
%4 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :33 :12) // _context.Messages.Add(message) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_API.Data.MessageRepository.DeleteMessage$API.Entities.Message$(none) -> () loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :36 :8) {
^entry (%_message : none):
%0 = cbde.alloca none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :36 :34)
cbde.store %_message, %0 : memref<none> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :36 :34)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :38 :12) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :38 :12) // _context.Messages (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :38 :37) // Not a variable of known type: message
%4 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :38 :12) // _context.Messages.Remove(message) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function GetConnection(none), it contains poisonous unsupported syntaxes

// Skipping function GetGroupForConnection(none), it contains poisonous unsupported syntaxes

// Skipping function GetMessage(i32), it contains poisonous unsupported syntaxes

// Skipping function GetMessageGroup(none), it contains poisonous unsupported syntaxes

// Skipping function GetMessagesForUser(none), it contains poisonous unsupported syntaxes

// Skipping function GetMessageThread(none, none), it contains poisonous unsupported syntaxes

func @_API.Data.MessageRepository.RemoveConnection$API.Entities.Connection$(none) -> () loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :111 :8) {
^entry (%_connection : none):
%0 = cbde.alloca none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :111 :37)
cbde.store %_connection, %0 : memref<none> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :111 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :113 :12) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :113 :12) // _context.Connections (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :113 :40) // Not a variable of known type: connection
%4 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\MessageRepository.cs" :113 :12) // _context.Connections.Remove(connection) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
