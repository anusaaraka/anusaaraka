
(defrule mutiny0
(declare (salience 5000))
(id-root ?id mutiny)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mutiny.clp 	mutiny0   "  ?id "  gaxara )" crlf))
)

;"mutiny","N","1.gaxara"
;The king supressed the mutiny in a very short time.
;
(defrule mutiny1
(declare (salience 4900))
(id-root ?id mutiny)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vixroha_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mutiny.clp 	mutiny1   "  ?id "  vixroha_kara )" crlf))
)

;"mutiny","VI","1.vixroha_karanA"
