func @_API.Data.CityRepository.AddCity$API.Entities.City$(none) -> () loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CityRepository.cs" :22 :8) {
^entry (%_city : none):
%0 = cbde.alloca none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CityRepository.cs" :22 :28)
cbde.store %_city, %0 : memref<none> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CityRepository.cs" :22 :28)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CityRepository.cs" :24 :12) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CityRepository.cs" :24 :12) // _context.Cities (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CityRepository.cs" :24 :32) // Not a variable of known type: city
%4 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CityRepository.cs" :24 :12) // _context.Cities.Add(city) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_API.Data.CityRepository.DeleteCity$API.Entities.City$(none) -> () loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CityRepository.cs" :27 :8) {
^entry (%_city : none):
%0 = cbde.alloca none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CityRepository.cs" :27 :31)
cbde.store %_city, %0 : memref<none> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CityRepository.cs" :27 :31)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CityRepository.cs" :29 :12) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CityRepository.cs" :29 :12) // _context.Cities (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CityRepository.cs" :29 :35) // Not a variable of known type: city
%4 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CityRepository.cs" :29 :12) // _context.Cities.Remove(city) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function GetCityAsync(i32), it contains poisonous unsupported syntaxes

// Skipping function GetCitiesByStateIdAsync(i32), it contains poisonous unsupported syntaxes

