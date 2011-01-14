
(defrule plane0
(declare (salience 5000))
(id-root ?id plane)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 hijack)
(kriyA-subject ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vimAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plane.clp 	plane0   "  ?id "  vimAna )" crlf))
)

(defrule plane1
(declare (salience 4900))
(id-root ?id plane)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samawala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plane.clp 	plane1   "  ?id "  samawala )" crlf))
)

;default_sense && category=noun	havAI-jahAjZa	0
;"plane","N","1.havAI-jahAjZa"
;Aeroplanes are filled with gasoline.
;--"2.wala"
;A vertical plane was drawn.
;--"3.ranxA"
;The carpenter made the surface of the wood smooth by a plane.
;--"4.canAra"
;Planes have broad leaves && thin bark.
;
;
