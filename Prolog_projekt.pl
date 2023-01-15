places(zamek_krzyzacki_w_malborku,malbork,pomorskie,zamki,4,brak).
places(sredniowiczny_zespol_miejski_w_trouniu,torun,kuj_pomorskie,zabytkowe_miasta,2,4).
places(puszcza_bialowieska,bialowieza,podlaskie,parki_i_puszcze,9,10).
places(stare_miasto_w_warszawie,warszawa,mazowieckie,zabytkowe_miasta,2,6).
places(park_muzakowski,leknica,lubuskie,parki_i_puszcze,1,4).
places(hala_stulecia,wroclaw,dolnoslaskie,pozostale,1,2).
places(koscioly_pokoju,swidnica,dolnoslaskie,koscioly_i_cerkwie,3,4).
places(kopalnia_srebra_olowiu,tarnowskie_gory,slaskie,kopalnia,1,2).
places(stare_miasto_w_krakowie,krakow,malopolskie,zabytkowe_miasta,4,brak).
places(auschwitz_birkenau,oswiecim,malopolska,pozostale,6,brak).
places(kalwaria_zebrzydowska,kalwaria_zebrzydowska,malopolska,zabytkowe_miasta,2,4).
places(kopalnia_soli_w_bochni,bochnia,malopolskie,kopalnia,4,brak).
places(kopalnia_soli_w_wieliczce,wieliczka,malopolskie,kopalnia,4,brak).
places(drewnany_kosciol_w_haczowie,haczow,malopolska,koscioly_i_cerkwie,3,4).
places(drewaniany_kosciol_w_blizne,blizne,malopolska,koscioly_i_cerkwie,3,4).
places(drewniany_kosciol_w_binarowej,binarowa,malopolska,koscioly_i_cerkwie,3,4).
places(drewniana_cerkwia_w_turzansku,turzansk,podkarpackie,koscioly_i_cerkwie,1,2).
places(drewniana_cerkwia_w_smolniku,smolnik,podkarpackie,koscioly_i_cerkwie,1,2).
places(drewniana_cerkwia_w_chotyncu,chotyniec,podkarpackie,koscioly_i_cerkwie,1,2).
places(region_gornictwa_krzemienia,gory_swietokrzyskie,swietokrzyskie,kopalnia,3,4).
places(stare_miasto_w_zamosciu,zamosc,lubelskie,zabytkowe_miasta,4,brak).
places(pradawne_pierwotne_lasy_bukowe,karpaty,podkarpackie,parki_i_puszcze,9,brak).


typ(Type, Places):-
    findall(Name,(places(Name,_,_,Type,_,_)),Places),
    write('Szukane miejsca to: '), write(Places),nl.
w_wojewodztwie(Province, Places):-
    findall(Name, (places(Name, _, Province, _, _, _)), Places),
    write('Szukane miejsca to: '),nl, write(Places),nl.
w_miescie(Miasto, Places):-
    findall(Name, (places(Name, Miasto,_, _, _, _)), Places),
    write('Szukane miejsca to: '),nl, write(Places),nl.



kategoria(Category) :-
    findall(Name, (places(Name,_,_,_,Category,_);places(Name,_,_,_,_,Category)), KategoriList),
    write('Miejsca o wskazanej kategorii '), write(Category),write(' to :'),nl, write(KategoriList), nl.

%info(Nazwa,Places):-
%    findall(Nazwa,(places(Nazwa,Miasto,Wojewodztwo,Typ,Kat_1,Kat_2)),Places),
%    write(Nazwa), write('informacje: '),nl,
%    write('miasto: '),write(Miasto),nl,
%    write('wojewodztwo: '),write(Wojewodztwo),nl,
%    write('typ: '),write(Typ),nl,
%    write('kategoria 1: '),write(Kat_1),nl,
%    write('kategoria 2: '), write(Kat_2),nl,
%    write(Places),nl.
%places(puszcza_bialowieska,Miasto,Wojewodztwo,Typ,Kat1,Kat2).
%Miasto = bialowieza,
%Wojewodztwo = podlaskie,
%Typ = parki_i_puszcze,
%Kat1 = 9,
%Kat2 = 10.
