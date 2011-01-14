
(defrule hard0
(declare (salience 5000))
(id-root ?id hard)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 work)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hard.clp 	hard0   "  ?id "  kaTora )" crlf))
)

(defrule hard1
(declare (salience 4900))
(id-root ?id hard)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 study)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hard.clp 	hard1   "  ?id "  kaTora )" crlf))
)

; He is working hard.
; He is studying hard.
(defrule hard2
(declare (salience 4800))
(id-root ?id hard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective|adjective_comparative|adjective_superlative);"_coarse" is added by sheetal:The last part of the course was hard because I was running against the wind.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTina))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hard.clp 	hard2   "  ?id "  kaTina )" crlf))
)

(defrule hard3
(declare (salience 4700))
(id-root ?id hard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTina))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hard.clp 	hard3   "  ?id "  kaTina )" crlf))
)

;Meaning is modified by sheetal
(defrule hard4
(declare (salience 4600))
(id-root ?id hard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTina))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hard.clp 	hard4   "  ?id "  kaTina )" crlf))
)

;"hard","Adv","1.kaTina"
;He tried hard to finish the work in time.
;
;
