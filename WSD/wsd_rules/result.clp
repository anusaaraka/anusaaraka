
(defrule result0
(declare (salience 5000))
(id-root ?id result)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariNAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  result.clp 	result0   "  ?id "  pariNAma )" crlf))
)

;"result","N","1.pariNAma"
;She died as a result of heart failure.
;Result of a mathematical problem.
;The result of the match was a draw.
;
(defrule result1
(declare (salience 4900))
(id-root ?id result)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariNAmiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  result.clp 	result1   "  ?id "  pariNAmiwa_ho )" crlf))
)

;default_sense && category=verb	nawIjA_nikala	0
;"result","VI","1.nawIjA_nikalanA"
;Their negligence resulted in a heavy loss.
;Undue haste results badly.     
;
