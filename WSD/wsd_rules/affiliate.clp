
(defrule affiliate0
(declare (salience 5000))
(id-root ?id affiliate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  affiliate.clp 	affiliate0   "  ?id "  SAKA )" crlf))
)

;"affiliate","N","1.SAKA"
;This college is an affiliate of the University.
;
(defrule affiliate1
(declare (salience 4900))
(id-root ?id affiliate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahabaxXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  affiliate.clp 	affiliate1   "  ?id "  sahabaxXa_kara )" crlf))
)

;"affiliate","V","1.sahabaxXa_karanA"
;Our school is affiliated to the Central Board of Secondary Education && The state Goverment.
;
