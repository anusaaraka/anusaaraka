
(defrule pool0
(declare (salience 5000))
(id-root ?id pool)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pool.clp 	pool0   "  ?id "  wAla )" crlf))
)

(defrule pool1
(declare (salience 4900))
(id-root ?id pool)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ikatTA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pool.clp 	pool1   "  ?id "  ikatTA_kara )" crlf))
)

;"pool","V","1.ikatTA karanA"
;All of Rani's friends pooled money to buy her gift.
;
;