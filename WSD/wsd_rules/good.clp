;This file is created by Aditya and Hardik,IIT(BHU)

;I paid him a good amount of cash to let me go in the hall.
(defrule good1
(declare (salience 5000))
(id-root ?id good)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) amount)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acCA_KAsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  good.clp 	good1   "  ?id "  acha_khasa )" crlf))
)


;My watch is good for nothing.
;These are good for nothing.
(defrule good2
(declare (salience 4900))
(id-root ?id good)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) for)
(id-root =(+ ?id 2) nothing)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) =(+ ?id 2) kisI_kAma_kA_nahIM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " good.clp	  good2  "  ?id "  " (+ ?id 1) "   "  (+ ?id 2)  "  kisI_kAma_kA_nahIM )" crlf))
)

