;$$$  Modified by Preeti(22-4-14)
;His arrival set off a surprising chain of events. [Cambridge Learner’s Dictionary]
;usake Agamana ne GatanAoM kI eka AScaryajanaka SrqMKalA AraMBa kI.
(defrule chain0
(declare (salience 1000));salience changed
(id-root ?id chain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?);condition added
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SrqMKalA));seplling corrected
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chain.clp 	chain0   "  ?id "  SrqMKalA )" crlf))
)

(defrule chain1
;(declare (salience 4900));salience changed
(id-root ?id chain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sikadZI_bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chain.clp 	chain1   "  ?id "  sikadZI_bAzXa )" crlf))
)

;@@@ Added by Preeti(22-4-14)
;The prisoners were chained together. [merriam-webster.com]
;banxiyoM ko eka sAWa jaMjIra_se bAzXA gayA WA.
(defrule chain2
(declare (salience 4900))
(id-root ?id chain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id chained)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jaMjZIra_se_bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chain.clp 	chain2   "  ?id "  jaMjZIra_se_bAzXa )" crlf))
)

;@@@ Added by Preeti(22-4-14)
;I have been chained to my desk all week. [Oxford Advanced Learner's Dictionary]
;mEM pUre sapwAha apanI deska se bazXA rahA.
(defrule chain3
(declare (salience 4950))
(id-root ?id chain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id chained)
(kriyA-to_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_bazXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chain.clp 	chain3   "  ?id "  se_bazXa )" crlf))
)

;@@@ Added by Preeti(22-4-14)
;She wore a heavy gold chain around her neck. [Oxford Advanced Learner's Dictionary]
;usane apane gale meM eka BArI sone_kI mAlA pahanI WI.
(defrule chain4
(declare (salience 1000))
(id-root ?id chain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 wear)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chain.clp 	chain4   "  ?id "  mAlA )" crlf))
)


;@@@ Added by Preeti(22-4-14)
;The prisoners were kept in chains. [merriam-webster.com]
;banxiyoM ko jaMjIroM meM raKA gayA WA.
(defrule chain5
;(declare (salience 1000))
(id-root ?id chain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jaMjIra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chain.clp 	chain5   "  ?id "  jaMjIra )" crlf))
)

;"chain","V","1.sikadZI_bAzXanA"
;The dog was chained to the post.
;
;
