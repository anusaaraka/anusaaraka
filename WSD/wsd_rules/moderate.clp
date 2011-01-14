
(defrule moderate0
(declare (salience 5000))
(id-root ?id moderate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Osawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  moderate.clp 	moderate0   "  ?id "  Osawa )" crlf))
)

;"moderate","Adj","1.Osawa"
;He has a moderate income.
;
(defrule moderate1
(declare (salience 4900))
(id-root ?id moderate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XImA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  moderate.clp 	moderate1   "  ?id "  XImA_ho )" crlf))
)

(defrule moderate2
(declare (salience 4800))
(id-root ?id moderate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XImA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  moderate.clp 	moderate2   "  ?id "  XImA_ho )" crlf))
)

;"moderate","V","1.XImA_karanA[honA]"
;You have to learn to moderate your anger.
;
