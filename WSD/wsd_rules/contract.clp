
(defrule contract0
(declare (salience 5000))
(id-root ?id contract)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 continue)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sikudZanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contract.clp 	contract0   "  ?id "  sikudZanA )" crlf))
)

(defrule contract1
(declare (salience 4900))
(id-root ?id contract)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id contracting )
(id-word ?id1 continue)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sikudZanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contract.clp 	contract1   "  ?id "  sikudZanA )" crlf))
)

(defrule contract2
(declare (salience 4800))
(id-root ?id contract)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id contracting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id karAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  contract.clp  	contract2   "  ?id "  karAra )" crlf))
)

(defrule contract3
(declare (salience 4700))
(id-root ?id contract)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 face)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sikodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contract.clp 	contract3   "  ?id "  sikodZa )" crlf))
)

(defrule contract4
(declare (salience 4600))
(id-root ?id contract)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sikodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contract.clp 	contract4   "  ?id "  sikodZa )" crlf))
)

;default_sense && category=verb	sikudZa	0
;"contract","V","1.sikudZanA"
;Metals contract as they become cool.
;'Do not'is contracted to Don't
;--"2.karAra_karanA"
;She had contracted a most unsuitable marriage.
;--"3.pakadZanA"
;Bad habits of stealing contracted in his youth.
;
;
