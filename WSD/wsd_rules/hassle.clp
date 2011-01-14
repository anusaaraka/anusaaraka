
(defrule hassle0
(declare (salience 5000))
(id-root ?id hassle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pareSAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hassle.clp 	hassle0   "  ?id "  pareSAnI )" crlf))
)

;"hassle","N","1.pareSAnI"
;It is really a hassle to manage small kids .
;Cote baccoM ko samBAlanA vAswava meM eka pareSAnI kA kAma hE .
;
(defrule hassle1
(declare (salience 4900))
(id-root ?id hassle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pareSAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hassle.clp 	hassle1   "  ?id "  pareSAna_kara )" crlf))
)

;"hassle","V","1.pareSAna_karanA"
;wuma muJe pareSAna kyoM karawe ho ?
;
