
(defrule flatten0
(declare (salience 5000))
(id-root ?id flatten)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samawala_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flatten.clp 	flatten0   "  ?id "  samawala_kara )" crlf))
)

(defrule flatten1
(declare (salience 4900))
(id-root ?id flatten)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samawala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flatten.clp 	flatten1   "  ?id "  samawala_ho )" crlf))
)

;"flatten","V","1.samawala_honA[karanA]"
;Please flatten out the map of this area on the table.
;--"2.pUrI_waraha_harA_xenA"
;He was comletely flattened by his arguments.
;
