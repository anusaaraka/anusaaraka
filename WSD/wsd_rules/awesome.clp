(defrule awesome1
(declare (salience 6400))
(id-root ?id awesome)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gajaba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "awesome.clp	awesome1 " ?id "gajaba)" crlf))
)
;Added by Veena Bagga (10-12-09)
;She was looking awesome in that dress .
;vaha usa libAsa meM #gajaba xeKa rahI WI
