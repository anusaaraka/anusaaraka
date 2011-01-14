
(defrule moisten0
(declare (salience 5000))
(id-root ?id moisten)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id moistened )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  moisten.clp  	moisten0   "  ?id "  nama )" crlf))
)

;"moistened","Adj","1.nama"
;He put a moistened piece of cloth on her feverish brow.
;
(defrule moisten1
(declare (salience 4900))
(id-root ?id moisten)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  moisten.clp 	moisten1   "  ?id "  nama_kara )" crlf))
)

;"moisten","V","1.nama_karanA"
;Moisten the cloth && put on his brow.
;He moistened his lips out of habit.
;
;