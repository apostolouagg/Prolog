%males
male(tom_fox).
male(jim_fox).
male(lakis_gavalas).
male(petros_gavalas).
male(vassilis_karras).
male(iakovos_karras).
male(alexandros_karras).
male(tasos_karras).

%females
female(ann_fox).
female(pat_fox).
female(georgia_gavala).
female(anthi_gavala).
female(elpida_gavala).
female(pinelopi_karra).
female(despoina_karra).

%parent
parent(tom_fox, jim_fox).
parent(tom_fox, pat_fox).
parent(ann_fox, jim_fox).
parent(ann_fox, pat_fox).
parent(lakis_gavalas, petros_gavalas).
parent(lakis_gavalas, anthi_gavala).
parent(lakis_gavalas, elpida_gavala).
parent(georgia_gavala, petros_gavalas).
parent(georgia_gavala, anthi_gavala).
parent(georgia_gavala, elpida_gavala).
parent(vassilis_karras, iakovos_karras).
parent(vassilis_karras, alexandros_karras).
parent(vassilis_karras, tasos_karras).
parent(vassilis_karras, despoina_karra).
parent(pinelopi_karra, iakovos_karras).
parent(pinelopi_karra, alexandros_karras).
parent(pinelopi_karra, tasos_karras).
parent(pinelopi_karra, despoina_karra).

%family
family(tom_fox, ann_fox,[jim_fox, pat_fox]).
family(lakis_gavalas, georgia_gavala, [petros_gavalas, anthi_gavala, elpida_gavala]).
family(vassilis_karras, pinelopi_karra, [iakovos_karras, alexandros_karras, tasos_karras, despoina_karra]).

%for the family name
person([ann, fox], [jim_fox, pat_fox]).
person([georgia, gavala], [petros_gavalas, anthi_gavala, elpida_gavala]).
person([pinelopi, karra], [iakovos_karras, alexandros_karras, tasos_karras, despoina_karra]).

%rules
father(X,Y):- male(X), parent(X,Y).
mother(X,Y):- female(X), parent(X,Y).
sibling(X,Y):- parent(_,X,Y).

has3children(MOM):-
  family(_,MOM, CHILDREN),
  length(CHILDREN, X),
  X>=3.

familyname(LASTNAME):-
  person([_,LASTNAME], CH),
  length(CH, X),
  X>=3.

