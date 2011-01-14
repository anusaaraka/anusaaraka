
(defrule lick0
(declare (salience 5000))
(id-root ?id lick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id puwAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lick.clp 	lick0   "  ?id "  puwAI )" crlf))
)

(defrule lick1
(declare (salience 4900))
(id-root ?id lick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lick.clp 	lick1   "  ?id "  cAta )" crlf))
)

;default_sense && category=noun	lehana	0
;"lick","N","1.lehana"
;You may have a lick of this pickle.
;--"2.WodI mAwrA"
;A small lick will change the look of this chair.
;--"3.gawi"
;The car was running at a tremendous lick.
;
;