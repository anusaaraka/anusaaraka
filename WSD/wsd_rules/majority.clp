
(defrule majority0
(declare (salience 5000))
(id-root ?id majority)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahumawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  majority.clp 	majority0   "  ?id "  bahumawa )" crlf))
)

(defrule majority1
(declare (salience 4900))
(id-root ?id majority)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) of )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikAMSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  majority.clp 	majority1   "  ?id "  aXikAMSa )" crlf))
)

;default_sense && category=noun	aXikAMSa	0
;"majority","N","1.aXikAMSa"
;The majority of the members voted for the motion.
;--"2.bahumawa"
;This government does not have an absolute majority.
;
;
