
(defrule squeak0
(declare (salience 5000))
(id-root ?id squeak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cUz-cUz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squeak.clp 	squeak0   "  ?id "  cUz-cUz )" crlf))
)

;"squeak","N","1.cUz-cUz"
;The cat was woken up by the mouse's squeak.
;
(defrule squeak1
(declare (salience 4900))
(id-root ?id squeak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cUz-cUz_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squeak.clp 	squeak1   "  ?id "  cUz-cUz_kara )" crlf))
)

;"squeak","V","1.cUz-cUz_karanA/kikiyAnA"
;These new shoes squeak.
;--"2.bAla-bAla_bacanA"
;He squeaked in when the teacher was facing towards the window.
;
