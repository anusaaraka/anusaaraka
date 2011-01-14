
(defrule undo0
(declare (salience 5000))
(id-root ?id undo)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id undoing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ulata_pulata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  undo.clp  	undo0   "  ?id "  ulata_pulata )" crlf))
)

;"undoing","N","1.ulata_pulata/barabAxI/nASa"
;Gambling was his undoing.
;
(defrule undo1
(declare (salience 4900))
(id-root ?id undo)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id akqwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  undo.clp 	undo1   "  ?id "  akqwa_kara )" crlf))
)

;default_sense && category=verb	Kola_dAla	0
;"undo","VT","1.Kola_dAla"
;Undo your neck-tie && relax!
;--"2.mitA_xenA"
;You cannot undo the damage!
;
;