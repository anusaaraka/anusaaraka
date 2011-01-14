
(defrule fete0
(declare (salience 5000))
(id-root ?id fete)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwsava))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fete.clp 	fete0   "  ?id "  uwsava )" crlf))
)

;"fete","N","1.uwsava/wyOhAra"
;We are going to the fete arranged by the church.
;
(defrule fete1
(declare (salience 4900))
(id-root ?id fete)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sawkAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fete.clp 	fete1   "  ?id "  sawkAra_kara )" crlf))
)

;"fete","V","1.sawkAra_karanA"
;The cricket team was feted on their return.
;
