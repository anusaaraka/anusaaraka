;@@@ Added by Pramila(Banasthali University) on 21-01-2014
;What will be the effect of these reforms ?          ;shiksharthi
;इन सुधारों का क्या परिणाम होगा ?
(defrule effect2
(declare (salience 5000))
(id-root ?id effect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariNAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  effect.clp   effect2   "  ?id "  pariNAma )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 21-01-2014
;I have also received notice to the same effect.         ;shiksharthi
;मुझे भी इसी आशय की सूचना मिली है.
(defrule effect3
(declare (salience 5000))
(id-root ?id effect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-to_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ASaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  effect.clp   effect3   "  ?id "  ASaya )" crlf))
)

;------------------ Default rules -----------------

(defrule effect0
(declare (salience 4000))
(id-root ?id effect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praBAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  effect.clp 	effect0   "  ?id "  praBAva )" crlf))
)

(defrule effect1
(declare (salience 4900))
(id-root ?id effect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  effect.clp 	effect1   "  ?id "  pUrA_kara )" crlf))
)

;"effect","VT","1.pUrA_karanA"
;The company's transition to automation was effected recently.
;
;
