func @_API.Data.CountryRepository.AddCountry$API.Entities.Country$(none) -> () loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CountryRepository.cs" :21 :8) {
^entry (%_country : none):
%0 = cbde.alloca none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CountryRepository.cs" :21 :31)
cbde.store %_country, %0 : memref<none> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CountryRepository.cs" :21 :31)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CountryRepository.cs" :23 :12) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CountryRepository.cs" :23 :12) // _context.Countries (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CountryRepository.cs" :23 :35) // Not a variable of known type: country
%4 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CountryRepository.cs" :23 :12) // _context.Countries.Add(country) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_API.Data.CountryRepository.DeleteCountry$API.Entities.Country$(none) -> () loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CountryRepository.cs" :26 :8) {
^entry (%_country : none):
%0 = cbde.alloca none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CountryRepository.cs" :26 :34)
cbde.store %_country, %0 : memref<none> loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CountryRepository.cs" :26 :34)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CountryRepository.cs" :28 :12) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CountryRepository.cs" :28 :12) // _context.Countries (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CountryRepository.cs" :28 :38) // Not a variable of known type: country
%4 = cbde.unknown : none loc("C:\\Users\\Wallace\\Documents\\GitHub\\DatingApp\\API\\Data\\CountryRepository.cs" :28 :12) // _context.Countries.Remove(country) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function GetCountryAsync(i32), it contains poisonous unsupported syntaxes

// Skipping function GetAllCountriesAsync(), it contains poisonous unsupported syntaxes

