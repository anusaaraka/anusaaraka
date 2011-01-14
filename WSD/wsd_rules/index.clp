
(defrule index0
(declare (salience 5000))
(id-root ?id index)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) finger)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warjanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  index.clp 	index0   "  ?id "  warjanI )" crlf))
)

(defrule index1
(declare (salience 4900))
(id-root ?id index)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUcaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  index.clp 	index1   "  ?id "  sUcaka )" crlf))
)

;default_sense && category=noun	sUcipqRTa	0
;"index","N","1.sUcipqRTa"
;He published an index of film titles.
;
;
