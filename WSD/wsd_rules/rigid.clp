
(defrule rigid0
(declare (salience 5000))
(id-root ?id rigid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rigid.clp 	rigid0   "  ?id "  xqDZa )" crlf))
)

(defrule rigid1
(declare (salience 4900))
(id-root ?id rigid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rigid.clp 	rigid1   "  ?id "  kadZA )" crlf))
)

;"rigid","Adj","1.kadZA"
;Her boss is a man of rigid principles
;
;
