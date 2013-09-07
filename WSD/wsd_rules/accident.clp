;;Modified  'hAxasA' meaning to 'xurGatanA' by Roja(29-08-11) ; Suggested by Sukhada.

;He met an accident.
;added by HARSHIT PAHUJA    5-6-11
(defrule accident0
(declare (salience 5000))
(id-root ?id accident)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xurGatanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  accident.clp 	accident0   "  ?id "  xurGatanA )" crlf))
)
;--------------------------------------------------------------------------------------------------------------------------

;We met by accident.
;It is no accident that the most gripping section of his latest novel, The Innocent, is the part where his hero and herione dismember the corpse of the latter's ex-husband.
;added by HARSHIT PAHUJA    5-6-11
(defrule accident1
(declare (salience 5100))
(id-root ?id accident)
(id-root =(- ?id 1) by|no)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMyoga)); Modified spelling from saMyog to saMyoga by Roja(07-09-13)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  accident.clp 	accident1   "  ?id "  saMyoga )" crlf))
)

;--------------------------------------------------------------------------------------------------------------------------

;I met with an accident.
;added by HARSHIT PAHUJA    5-6-11
(defrule accident2
(declare (salience 5200))
(id-root ?id accident)
(id-root ?id1 with)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xurGatanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  accident.clp 	accident2   "  ?id "  xurGatanA )" crlf))
)
;------------------------------------------------------------------------------------------------------
;He died in a road accident.
;added by HARSHIT PAHUJA    5-6-11
(defrule accident3
(declare (salience 5300))
(id-root ?id accident)
(samAsa ?id ?id1)
(kriyA-in_saMbanXI ?id2 ?id)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xurGatanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  accident.clp 	accident3   "  ?id "  xurGatanA )" crlf))
)
;------------------------------------------------------------------------------------------------------
;A series of happy accidents led to his promotion.
;added by HARSHIT PAHUJA    5-6-11
(defrule accident4
(declare (salience 5400))
(id-root ?id accident)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-word ?id1 happy|merry)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GatanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  accident.clp 	accident4   "  ?id "  GatanA )" crlf))
)
;------------------------------------------------------------------------------------------------------
