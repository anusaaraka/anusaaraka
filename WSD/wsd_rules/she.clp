
(defrule she0
(declare (salience 5000))
(id-root ?id she)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id swrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  she.clp 	she0   "  ?id "  swrI )" crlf))
)

;"she","N","1.swrI"
;oh! what a Wonderful cat is it he or she?
;
(defrule she1
(declare (salience 4900))
(id-root ?id she)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  she.clp 	she1   "  ?id "  vaha )" crlf))
)

;"she","Pron","1.vaha{swrI}"
;I stroked the cat && she rubbed againast my leg.
;India - she is my motherland.
;
