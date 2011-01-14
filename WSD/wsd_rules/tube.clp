
(defrule tube0
(declare (salience 5000))
(id-root ?id tube)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id tubing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id tyUba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  tube.clp  	tube0   "  ?id "  tyUba )" crlf))
)

;"tubing","N","1.tyUba"
;Measure the length of the tubing.
;
(defrule tube1
(declare (salience 4900))
(id-root ?id tube)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tyUba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tube.clp 	tube1   "  ?id "  tyUba )" crlf))
)

;default_sense && category=noun	nalI	0
;"tube","N","1.nalI"
;Laboratory is equipped with tubes && glass containers.
;Squeeze the ointment from the tube.
;
;