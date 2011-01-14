
(defrule nickname0
(declare (salience 5000))
(id-root ?id nickname)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upanAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nickname.clp 	nickname0   "  ?id "  upanAma )" crlf))
)

;"nickname","N","1.upanAma"
;Joe's mother would not use his nickname && always called him Joseph.
;
(defrule nickname1
(declare (salience 4900))
(id-root ?id nickname)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upanAma_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nickname.clp 	nickname1   "  ?id "  upanAma_xe )" crlf))
)

;"nickname","VT","1.upanAma_xenA"
;She nicknamed her son.
;
