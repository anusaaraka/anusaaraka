
(defrule frolic0
(declare (salience 5000))
(id-root ?id frolic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AnanxaxAyaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  frolic.clp 	frolic0   "  ?id "  AnanxaxAyaka )" crlf))
)

;"frolic","N","1.AnanxaxAyaka"
;The party was just a frolic.
;
(defrule frolic1
(declare (salience 4900))
(id-root ?id frolic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Amoxa_pramoxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  frolic.clp 	frolic1   "  ?id "  Amoxa_pramoxa_kara )" crlf))
)

;"frolic","VI","1.Amoxa_pramoxa_karanA"
;Children are frolicking in the play ground.
;
