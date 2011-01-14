
(defrule refund0
(declare (salience 5000))
(id-root ?id refund)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vApasI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refund.clp 	refund0   "  ?id "  vApasI )" crlf))
)

;"refund","N","1.vApasI"
;You should claim a tax refund.
;
(defrule refund1
(declare (salience 4900))
(id-root ?id refund)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vApasa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refund.clp 	refund1   "  ?id "  vApasa_kara )" crlf))
)

;"refund","VT","1.vApasa_karanA"
;We assure you to refund your money in full if you are not satisfied with our
;product.
;
