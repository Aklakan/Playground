:- table triple/3.

% Rules are taken nearly 1:1 from: http://www.w3.org/TR/rdf11-mt/#patterns-of-rdfs-entailment-informative

% rdfs2 (domain)
triple(Y, rdfType, X) :- triple(A, rdfsDomain, X), triple(Y, A, _).

% rdfs3 (range)
triple(Z, rdfType, X) :- triple(A, rdfsRange, X), triple(_, A, Z).

% rdfs4a
triple(X, rdfType, rdfsResource) :- triple(X, _, _).

% rdfs4b
triple(Y, rdfType, rdfsResource) :- triple(_, _, Y).

% rdfs5
triple(X, rdfsSubPropertyOf, Z) :- triple(X, rdfsSubPropertyOf, Y), triple(Y, rdfsSubPropertyOf, Z).

% rdfs6
triple(X, rdfsSubPropertyOf, X) :- triple(X, rdfType, rdfProperty).

% rdfs7
triple(X, B, Y) :- triple(A, rdfsSubPropertyOf, B), triple(X, A, Y).

% rdfs8
triple(X, rdfsSubClassOf, rdfsResource) :- triple(X, rdfType, rdfsClass).

% rdfs9
triple(Z, rdfType, Y) :- triple(X, rdfsSubClassOf, Y), triple(Z, rdfType, X).

% rdfs10
triple(X, rdfsSubClassOf, X) :- triple(X, rdfType, rdfsClass).

% rdfs11
triple(X, rdfsSubClassOf, Z) :- triple(X, rdfsSubClassOf, Y), triple(Y, rdfsSubClassOf, Z).

% rdfs12
%triple(X, rdfsSubPropertyOf, rdfsMember) :- triple(X, rdfType, rdfsContainerMembershipProperty).

% rdfs13
%triple(X, rdfsSubClassOf, rdfsLiteral) :- triple(X, rdfType, rdfsDatatype).


triple(P, rdfType, rdfProperty) :- triple(_, P, _).

triple(person, rdfsSubClassOf, owlThing).
triple(claus, rdfType, person).

test(1, X) :- triple(X, rdfType, owlThing).

