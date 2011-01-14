
(defrule chicken0
(declare (salience 5000))
(id-root ?id chicken)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAyarawAvaSa_kisI_kAma_ko_na_kara_pA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " chicken.clp	chicken0  "  ?id "  " ?id1 "  kAyarawAvaSa_kisI_kAma_ko_na_kara_pA  )" crlf))
)

;I was going to tell him what i thought of him but i chickened out.
;mEM use bawAne jA rahA WA ki mEM usake bAre meM kyA socawA hUz para mEM EsA kara na sakA
(defrule chicken1
(declare (salience 4900))
(id-root ?id chicken)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id murgI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chicken.clp 	chicken1   "  ?id "  murgI )" crlf))
)

;default_sense && category=noun	murgI[murgA]	0
;"chicken","N","1.murgI[murgA]"
;Our neighbour keeps chickens.
;He loves to eat chicken every meal.
;--"2.darapoka"
;She is chicken hearted.
;
;