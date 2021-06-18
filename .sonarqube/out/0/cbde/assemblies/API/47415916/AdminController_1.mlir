// Skipping function GetUsersWithRoles(), it contains poisonous unsupported syntaxes

// Skipping function EditRoles(none, none), it contains poisonous unsupported syntaxes

func @_API.Controllers.AdminController.GetPhotosForModeration$$() -> none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\AdminController.cs" :63 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: Ok
%0 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\AdminController.cs" :67 :22) // "Admins or moderators can see this" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\AdminController.cs" :67 :19) // Ok("Admins or moderators can see this") (InvocationExpression)
return %1 : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\AdminController.cs" :67 :12)

^1: // ExitBlock
cbde.unreachable

}
