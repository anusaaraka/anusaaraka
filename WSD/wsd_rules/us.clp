
(defrule us0
(declare (salience 5000))
(id-root ?id us)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id amarikA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  us.clp 	us0   "  ?id "  amarikA )" crlf))
)

(defrule us1
(declare (salience 4900))
(id-root ?id us)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hama))
(assert (id-H_vib_mng ?id ko))
(assert (id-wsd_number ?id p))
;(assert (root_id-TAM-vachan ?id p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  us.clp 	us1   "  ?id "  hama )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng   " ?*wsd_dir* "  us.clp        us1   "  ?id " ko )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_number   " ?*wsd_dir* "  us.clp        us1   "  ?id " p )" crlf))
)

;default_sense && category=pronoun	hama{vib:ko}	0
;"us","Pron","1.hameM/hama_ko"
;We took our pets with us for picnic.
;

(defrule us2
(declare (salience 4900))
(id-root ?id us)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) let)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caliye_hama))
(assert (id-wsd_number ?id p))
;(assert (root_id-TAM-vachan ?id p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  us.clp        us2   "  ?id "  caliye_hama)" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_number   " ?*wsd_dir* "  us.clp        us2   "  ?id " p )" crlf))
)
 ; Added by Shirisha Manju (08-12-09) (suggested by Sheetal)
 ; Ex : Let us go to the market.

