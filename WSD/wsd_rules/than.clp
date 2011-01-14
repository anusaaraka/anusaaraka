
(defrule than0
(declare (salience 5000))
(id-root ?id than)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI_wulanA_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  than.clp 	than0   "  ?id "  kI_wulanA_meM )" crlf))
)

;default_sense && category=conjunction	isakI_apekRA__ki	0
;"than","Conj","1.se"
;She got a better position this year than last year.
;
(defrule than1
(declare (salience 4900))
(id-root ?id than)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI_apekRA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  than.clp 	than1   "  ?id "  kI_apekRA )" crlf))
)

;se is changed to kI_apekRA because
; 1. se in Hindi is overloaded.
; 2. kI_apekRA works in all cases, whereas 'se' does not work e.g. in case of
; It is more likely that Joe will go than that Fred will go.
;default_sense && category=preposition	se	0
;"than","Prep","1.se[wulanA_meM]"
;Ram  is taller than his sister.
;
(defrule than2
(declare (salience 4800))
(id-root ?id than)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI_apekRA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  than.clp 	than2   "  ?id "  kI_apekRA )" crlf))
)

