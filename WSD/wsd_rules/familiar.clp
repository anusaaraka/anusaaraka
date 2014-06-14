;@@@ Added bY Krithika 10/3/2014
; I am very familiar with people of Ratlam. [old clp]
; mEM rawalAma ke logoM ke sAWa awyanwa pariciwa hUz.

(defrule familiar2
(declare (salience 5000))
(id-root ?id familiar)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-with_saMbanXI  ?id ?)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  familiar.clp 	familiar2   "  ?id "  pariciwa )" crlf))
)

; ####################Default rules########################
; Removed salience by Krithika 10/2/2014
(defrule familiar0
(id-root ?id familiar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAnA_pahacAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  familiar.clp 	familiar0   "  ?id "  jAnA_pahacAnA )" crlf))
)

; Removed salience by Krithika 10/2/2014
(defrule familiar1
(id-root ?id familiar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAnA-mAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  familiar.clp 	familiar1   "  ?id "  jAnA-mAnA )" crlf))
)

;"familiar","Adj","1.jAnA-mAnA"
;Amitabh Bacchan is a very a familiar figure.
;--"2.pariciwa"
;I am very familiar with people of Ratlam.

;########################Additional examples#########################
; This dark [matter] is most probably different from the stuff we are [familiar] with, e.g. atoms, neutrons, protons, etc.
; You are already familiar with some direct methods for the measurement of length.
