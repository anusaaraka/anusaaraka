
(defrule grate0
(declare (salience 5000))
(id-root ?id grate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id grating )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id KijAnevAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  grate.clp  	grate0   "  ?id "  KijAnevAlA )" crlf))
)

;"grating","Adj","1.KijAnevAlA"
(defrule grate1
(declare (salience 4900))
(id-root ?id grate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id grating )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id JaMJarI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  grate.clp  	grate1   "  ?id "  JaMJarI )" crlf))
)

;"grating","N","1.JaMJarI"
(defrule grate2
(declare (salience 4800))
(id-root ?id grate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kruxXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " grate.clp	grate2  "  ?id "  " ?id1 "  kruxXa_kara  )" crlf))
)

;His voice really grates on me.
;usakI AvAjZa muJe kruxXa kara xewI hE
(defrule grate3
(declare (salience 4700))
(id-root ?id grate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JaMJarI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grate.clp 	grate3   "  ?id "  JaMJarI )" crlf))
)

;"grate","N","1.JaMJarI"
(defrule grate4
(declare (salience 4600))
(id-root ?id grate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ragadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grate.clp 	grate4   "  ?id "  ragadZa )" crlf))
)

;"grate","VT","1.ragadZanA"
