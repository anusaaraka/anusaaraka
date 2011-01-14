
(defrule gleam0
(declare (salience 5000))
(id-root ?id gleam)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kiraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gleam.clp 	gleam0   "  ?id "  kiraNa )" crlf))
)

;"gleam","N","1.kiraNa"
;The gleam of the evening sunlight is coming through the window.
;
(defrule gleam1
(declare (salience 4900))
(id-root ?id gleam)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kiraNa_biKera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gleam.clp 	gleam1   "  ?id "  kiraNa_biKera )" crlf))
)

;"gleam","V","1.kiraNa_biKeranA"
;The sunlight gleamed through the window.
;
