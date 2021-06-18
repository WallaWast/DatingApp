func @_API.Controllers.FallbackController.Index$$() -> none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\FallbackController.cs" :7 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: PhysicalFile
// Entity from another assembly: Path
// Entity from another assembly: Directory
%0 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\FallbackController.cs" :9 :45) // Directory.GetCurrentDirectory() (InvocationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\FallbackController.cs" :9 :78) // "wwwroot" (StringLiteralExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\FallbackController.cs" :9 :89) // "index.html" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\FallbackController.cs" :9 :32) // Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "index.html") (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\FallbackController.cs" :9 :104) // "text/HTML" (StringLiteralExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\FallbackController.cs" :9 :19) // PhysicalFile(Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "index.html"), "text/HTML") (InvocationExpression)
return %5 : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Controllers\\FallbackController.cs" :9 :12)

^1: // ExitBlock
cbde.unreachable

}
