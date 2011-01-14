
(defrule near0
(declare (salience 5000))
(id-root ?id near)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  near.clp 	near0   "  ?id "  nikata )" crlf))
)

;"near","Adj","1.nikata"
;His school is very near.
;They are his nearest relatives.
;The drought has brought near satrvation in the village.
;--"2.milawA_julawA"
;This is the nearest colour that you can get.
;
(defrule near1
(declare (salience 4900))
(id-root ?id near)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  near.clp 	near1   "  ?id "  ke_pAsa )" crlf))
)

;"near","Adv","1.ke_pAsa"
;Don't go any nearer.
;--"2.lagaBaga"
;She gave a near perfect performance.
;
(defrule near2
(declare (salience 4800))
(id-root ?id near)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_nikata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  near.clp 	near2   "  ?id "  ke_nikata )" crlf))
)

;modified nikata as ke_nikata by manju
;"near","Prep","1.nikata"
;She was standing near the door.
;
(defrule near3
(declare (salience 4700))
(id-root ?id near)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikata_pahuzca))
(assert (kriyA_id-object_viBakwi ?id ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  near.clp 	near3   "  ?id "  nikata_pahuzca )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  near.clp      near3   "  ?id "  ke )"  crlf)
)
)

;"near","VI","1.nikata_pahuzcanA"
;He is nearing his death.
;
