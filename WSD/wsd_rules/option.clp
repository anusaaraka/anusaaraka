;Added by Human
(defrule option0
(declare (salience 5000))
(id-root ?id option)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vikalpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  option.clp 	option0   "  ?id "  vikalpa )" crlf))
)

(defrule option1
(declare (salience 4900))
(id-root ?id option)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pasanxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  option.clp 	option1   "  ?id "  pasanxa )" crlf))
)

;"option","N","1.pasanxa"
;At dinner my option is chapati.
;--"2.cunane_kA_aXikAra"
;We have a 1.day option on the house.
;
;
