
(defrule nod0
(declare (salience 5000))
(id-root ?id nod)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 so_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " nod.clp	nod0  "  ?id "  " ?id1 "  so_jA  )" crlf))
)

;He nodded off while watching the movie.
;vaha Pilma xeKawe -xeKawe so gayA
(defrule nod1
(declare (salience 4900))
(id-root ?id nod)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAmI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nod.clp 	nod1   "  ?id "  hAmI )" crlf))
)

;"nod","N","1.hAmI"
;He gave a nod of agreement to his son.
;
(defrule nod2
(declare (salience 4800))
(id-root ?id nod)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sira_hilA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nod.clp 	nod2   "  ?id "  sira_hilA )" crlf))
)

;"nod","VTI","1.sira_hilAnA"
;He nodded his head for approval.
;--"2.UzGanA"
;The old man was nodding in his chair.
;--"3.JUmanA"
;The daffodils nodded in the wind.
;
;LEVEL 
;Headword : nod
;
;Examples --
;
;"nod","N","1.hAmI"
;He gave a nod of agreement to his son.
;usane apane bete kI ora sahamawi kI hAmI BarI 
;"nod","VTI","1.sira_hilAnA"
;He nodded his head for approval.
;usane sahamawi meM sira_hilAyA 
;--"2.UzGanA"
;The old man was nodding in his chair.
;vqxXa apanI kursI meM bETe UzGa rahA WA.
;--"3.JUmanA"
;The daffodils nodded in the wind.
;havA meM PUla JUma rahe We.
;
;ukwa uxAharaNoM se 'nod' Sabxa kA mUla arWa 'hilAnA' AwA hE. prAyaH isakA
;prayoga sira_hilAne ke arWa meM howA hE awaH isakA mUla arWa 'sira_hilAnA' BI
;mAna sakawe hEM. jisameM se 'hilAnA' yA 'hilanA' se anya arWa prajaniwa howe hEM.
;isakA anwarnihiwa sUwra hogA --
;
;
;anwarnihiwa sUwra ;
;
;                        sira_hilAnA
;                             |
;                             |
;                 |-----------|--------------|
;         sira_hilA_kara_hAmI_BaranA |       sira_hilA_kara_namaswe_karanA
;                     |       |       (He entered the room && nodded
;                   hAmI      |        in the direction of his friend-
;                             |       vaha kamare meM GusA Ora apane miwra kI ora
;                             |        vanxanA meM sira hilAyA)
;                             |
;                           JUmanA, UzGanA (UzGane meM BI sira sahilawA hE)     
;
;
;sUwra : [sira]_hilAnA[>hAmI_BaranA]
