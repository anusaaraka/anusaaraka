
(defrule rust0
(declare (salience 5000))
(id-root ?id rust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZaMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rust.clp 	rust0   "  ?id "  jZaMga )" crlf))
)

;"rust","N","1.jZaMga"
;The gate was badly corroded with rust.
;
(defrule rust1
(declare (salience 4900))
(id-root ?id rust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZaMga_laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rust.clp 	rust1   "  ?id "  jZaMga_laga )" crlf))
)

;"rust","VTI","1.jZaMga_laga"
;All her garden implements have rusted away.
;
