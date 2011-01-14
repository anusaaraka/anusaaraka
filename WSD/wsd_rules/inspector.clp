;Added by Human being
(defrule inspector0
(declare (salience 5000))
(id-root ?id inspector)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirIkRaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inspector.clp 	inspector0   "  ?id "  nirIkRaka )" crlf))
)

(defrule inspector1
(declare (salience 4900))
(id-root ?id inspector)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirIkRaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inspector.clp 	inspector1   "  ?id "  nirIkRaka )" crlf))
)

;default_sense && category=noun	nirIkRaka	0
;"inspector","N","1.nirIkRaka"
;An inspector visits the school often.
;--"2.inspektara"
;An inspector controls the traffic.
;
;
