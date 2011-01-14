
(defrule anguish0
(declare (salience 5000))
(id-root ?id anguish)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id anguished )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id manovexanA_se_BarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  anguish.clp  	anguish0   "  ?id "  manovexanA_se_BarA )" crlf))
)

;"anguished","Adj","1.manovexanA se BarA"
;When he realized that he was unwanted,at once he wrote an anguished letter.
;
(defrule anguish1
(declare (salience 4900))
(id-root ?id anguish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAnasika_vexanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anguish.clp 	anguish1   "  ?id "  mAnasika_vexanA )" crlf))
)

;"anguish","N","1.mAnasika vexanA/kaRta"
;I saw him in a state of anguish.
;
;
