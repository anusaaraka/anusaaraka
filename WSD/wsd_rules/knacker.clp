
(defrule knacker0
(declare (salience 5000))
(id-root ?id knacker)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id knackered )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Waka_kara_cUra_ho))
(assert (id-H_vib_mng ?id inf.))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  knacker.clp  	knacker0   "  ?id "  Waka_kara_cUra_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  knacker.clp    knacker0   "  ?id " inf. )" crlf))
)

;"knackered","V","1.Waka_kara_cUra_honA{inf.}"
;He is knackered after playing tennis.
;
(defrule knacker1
(declare (salience 4900))
(id-root ?id knacker)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kabAdZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  knacker.clp 	knacker1   "  ?id "  kabAdZI )" crlf))
)

;"knacker","N","1.kabAdZI"
(defrule knacker2
(declare (salience 4800))
(id-root ?id knacker)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Waka))
(assert (id-H_vib_mng ?id inf.))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  knacker.clp 	knacker2   "  ?id "  Waka )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng   " ?*wsd_dir* "  knacker.clp   knacker2   "  ?id " inf. )" crlf))
)

;"knacker","V","1.WakanA{inf.}"
;The long journey knackers me.
;
