func @_API.SignalR.PresenceTracker.UserConnected$string.string$(none, none) -> none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :10 :8) {
^entry (%_username : none, %_connectionId : none):
%0 = cbde.alloca none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :10 :40)
cbde.store %_username, %0 : memref<none> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :10 :40)
%1 = cbde.alloca none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :10 :57)
cbde.store %_connectionId, %1 : memref<none> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :10 :57)
br ^0

^0: // LockBlock
%2 = constant 0 : i1 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :12 :28) // false
%3 = cbde.alloca i1 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :12 :17) // isOnline
cbde.store %2, %3 : memref<i1> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :12 :17)
%4 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :14 :18) // Not a variable of known type: OnlineUsers
br ^1

^1: // BinaryBranchBlock
%5 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :16 :20) // Not a variable of known type: OnlineUsers
%6 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :16 :44) // Not a variable of known type: username
%7 = cbde.unknown : i1 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :16 :20) // OnlineUsers.ContainsKey(username) (InvocationExpression)
cond_br %7, ^2, ^3 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :16 :20)

^2: // SimpleBlock
%8 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :18 :20) // Not a variable of known type: OnlineUsers
%9 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :18 :32) // Not a variable of known type: username
%10 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :18 :20) // OnlineUsers[username] (ElementAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :18 :46) // Not a variable of known type: connectionId
%12 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :18 :20) // OnlineUsers[username].Add(connectionId) (InvocationExpression)
br ^4

^3: // SimpleBlock
%13 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :22 :20) // Not a variable of known type: OnlineUsers
%14 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :22 :36) // Not a variable of known type: username
%15 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :22 :46) // new List<string> { connectionId } (ObjectCreationExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :22 :65) // Not a variable of known type: connectionId
%17 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :22 :20) // OnlineUsers.Add(username, new List<string> { connectionId }) (InvocationExpression)
%18 = constant 1 : i1 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :23 :31) // true
cbde.store %18, %3 : memref<i1> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :23 :20)
br ^4

^4: // JumpBlock
// Entity from another assembly: Task
%19 = cbde.load %3 : memref<i1> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :27 :35)
%20 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :27 :19) // Task.FromResult(isOnline) (InvocationExpression)
return %20 : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :27 :12)

^5: // ExitBlock
cbde.unreachable

}
func @_API.SignalR.PresenceTracker.UserDisconnected$string.string$(none, none) -> none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :30 :8) {
^entry (%_username : none, %_connectionId : none):
%0 = cbde.alloca none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :30 :43)
cbde.store %_username, %0 : memref<none> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :30 :43)
%1 = cbde.alloca none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :30 :60)
cbde.store %_connectionId, %1 : memref<none> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :30 :60)
br ^0

^0: // LockBlock
%2 = constant 0 : i1 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :32 :29) // false
%3 = cbde.alloca i1 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :32 :17) // isOffline
cbde.store %2, %3 : memref<i1> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :32 :17)
%4 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :34 :18) // Not a variable of known type: OnlineUsers
br ^1

^1: // BinaryBranchBlock
%5 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :36 :21) // Not a variable of known type: OnlineUsers
%6 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :36 :45) // Not a variable of known type: username
%7 = cbde.unknown : i1 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :36 :21) // OnlineUsers.ContainsKey(username) (InvocationExpression)
%8 = cbde.unknown : i1 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :36 :20) // !OnlineUsers.ContainsKey(username) (LogicalNotExpression)
cond_br %8, ^2, ^3 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :36 :20)

^2: // JumpBlock
// Entity from another assembly: Task
%9 = cbde.load %3 : memref<i1> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :37 :43)
%10 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :37 :27) // Task.FromResult(isOffline) (InvocationExpression)
return %10 : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :37 :20)

^3: // BinaryBranchBlock
%11 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :39 :16) // Not a variable of known type: OnlineUsers
%12 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :39 :28) // Not a variable of known type: username
%13 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :39 :16) // OnlineUsers[username] (ElementAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :39 :45) // Not a variable of known type: connectionId
%15 = cbde.unknown : i1 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :39 :16) // OnlineUsers[username].Remove(connectionId) (InvocationExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :41 :20) // Not a variable of known type: OnlineUsers
%17 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :41 :32) // Not a variable of known type: username
%18 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :41 :20) // OnlineUsers[username] (ElementAccessExpression)
%19 = cbde.unknown : i32 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :41 :20) // OnlineUsers[username].Count (SimpleMemberAccessExpression)
%20 = constant 0 : i32 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :41 :51)
%21 = cmpi "eq", %19, %20 : i32 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :41 :20)
cond_br %21, ^4, ^5 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :41 :20)

^4: // SimpleBlock
%22 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :43 :20) // Not a variable of known type: OnlineUsers
%23 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :43 :39) // Not a variable of known type: username
%24 = cbde.unknown : i1 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :43 :20) // OnlineUsers.Remove(username) (InvocationExpression)
%25 = constant 1 : i1 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :44 :32) // true
cbde.store %25, %3 : memref<i1> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :44 :20)
br ^5

^5: // JumpBlock
// Entity from another assembly: Task
%26 = cbde.load %3 : memref<i1> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :48 :35)
%27 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :48 :19) // Task.FromResult(isOffline) (InvocationExpression)
return %27 : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :48 :12)

^6: // ExitBlock
cbde.unreachable

}
// Skipping function GetOnlineUsers(), it contains poisonous unsupported syntaxes

func @_API.SignalR.PresenceTracker.GetConnectionsForUser$string$(none) -> none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :63 :8) {
^entry (%_username : none):
%0 = cbde.alloca none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :63 :56)
cbde.store %_username, %0 : memref<none> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :63 :56)
br ^0

^0: // LockBlock
%2 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :67 :18) // Not a variable of known type: OnlineUsers
br ^1

^1: // SimpleBlock
%3 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :69 :34) // Not a variable of known type: OnlineUsers
%4 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :69 :64) // Not a variable of known type: username
%5 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :69 :34) // OnlineUsers.GetValueOrDefault(username) (InvocationExpression)
br ^2

^2: // JumpBlock
// Entity from another assembly: Task
%6 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :72 :35) // Not a variable of known type: connectionnsIds
%7 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :72 :19) // Task.FromResult(connectionnsIds) (InvocationExpression)
return %7 : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\SignalR\\PresenceTracker.cs" :72 :12)

^3: // ExitBlock
cbde.unreachable

}
