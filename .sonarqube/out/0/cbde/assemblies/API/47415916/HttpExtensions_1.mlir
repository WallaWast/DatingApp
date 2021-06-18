func @_API.Extensions.HttpExtensions.AddPaginationHeader$Microsoft.AspNetCore.Http.HttpResponse.int.int.int.int$(none, i32, i32, i32, i32) -> () loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :8 :8) {
^entry (%_response : none, %_currentPage : i32, %_itemsPerPage : i32, %_totalItems : i32, %_totalPages : i32):
%0 = cbde.alloca none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :8 :47)
cbde.store %_response, %0 : memref<none> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :8 :47)
%1 = cbde.alloca i32 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :8 :75)
cbde.store %_currentPage, %1 : memref<i32> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :8 :75)
%2 = cbde.alloca i32 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :8 :92)
cbde.store %_itemsPerPage, %2 : memref<i32> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :8 :92)
%3 = cbde.alloca i32 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :8 :110)
cbde.store %_totalItems, %3 : memref<i32> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :8 :110)
%4 = cbde.alloca i32 loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :8 :126)
cbde.store %_totalPages, %4 : memref<i32> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :8 :126)
br ^0

^0: // SimpleBlock
%5 = cbde.load %1 : memref<i32> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :10 :56)
%6 = cbde.load %2 : memref<i32> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :10 :69)
%7 = cbde.load %3 : memref<i32> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :10 :83)
%8 = cbde.load %4 : memref<i32> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :10 :95)
%9 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :10 :35) // new PaginationHeader(currentPage, itemsPerPage, totalItems, totalPages) (ObjectCreationExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :12 :26) // new JsonSerializerOptions             {                 PropertyNamingPolicy = JsonNamingPolicy.CamelCase             } (ObjectCreationExpression)
// Entity from another assembly: JsonNamingPolicy
%12 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :14 :39) // JsonNamingPolicy.CamelCase (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :17 :12) // Not a variable of known type: response
%15 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :17 :12) // response.Headers (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :17 :33) // "Pagination" (StringLiteralExpression)
// Entity from another assembly: JsonSerializer
%17 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :17 :72) // Not a variable of known type: paginationHeader
%18 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :17 :90) // Not a variable of known type: options
%19 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :17 :47) // JsonSerializer.Serialize(paginationHeader, options) (InvocationExpression)
%20 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :17 :12) // response.Headers.Add("Pagination", JsonSerializer.Serialize(paginationHeader, options)) (InvocationExpression)
%21 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :18 :12) // Not a variable of known type: response
%22 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :18 :12) // response.Headers (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :18 :33) // "Access-Control-Expose-Headers" (StringLiteralExpression)
%24 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :18 :66) // "Pagination" (StringLiteralExpression)
%25 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Extensions\\HttpExtensions.cs" :18 :12) // response.Headers.Add("Access-Control-Expose-Headers", "Pagination") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
