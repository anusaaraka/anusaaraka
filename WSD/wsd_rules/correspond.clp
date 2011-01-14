
(defrule correspond0
(declare (salience 5000))
(id-root ?id correspond)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id corresponding )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jo_samawulya_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  correspond.clp  	correspond0   "  ?id "  jo_samawulya_ho )" crlf))
)

;"corresponding","Adj","1.jo_samawulya_ho"
;Draw two corresponding lines.
;
(defrule correspond1
(declare (salience 4900))
(id-root ?id correspond)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawrAcAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  correspond.clp 	correspond1   "  ?id "  pawrAcAra_kara )" crlf))
)

;default_sense && category=verb	anurupa_ho	0
;"correspond","V","1.anurupa_honA"
;Her motive for life corresponds with her father's.
;--"2.pawra_vyavahAra_honA"
;They have been corresponding each other for years.
;
;
