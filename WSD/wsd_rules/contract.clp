
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

;$$$ Modified by Preeti(8-11-13) meaning from 'sikudZanA' to 'sikudZa' 
;Just as the Sun was formed from a shrinking cloud of gas, so a typical star condenses from a contracting cloud. [By mail]
;jEse sUraja gEsa ke eka sikudawe huA bAxala se banAyA gayA WA, vEse hI eka viSiRta wArA eka sikudane vAle bAxala se GanIBUwa howA hE.
(defrule contract1
(declare (salience 4900))
(id-root ?id contract)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id contracting )
;(id-word ?id1 continue) Commented by Preeti
;(kriyA-object ?id ?id1) Commented by Preeti
(samAsa_viSeRya-samAsa_viSeRaNa  ? ?id) ;Added by Preeti
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sikudZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contract.clp 	contract1   "  ?id "  sikudZa )" crlf))
)

;$$$ Modified by Preeti(26-12-13)
;We won the contract in the face of stiff competition. 
;hameM kadI sparXA ke bAvajUxa TekA milA.
(defrule contract2
(declare (salience 4800))
(id-root ?id contract)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id contracting )
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id);Added by Preeti(1-3-14)
(id-root ?id1 win)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id TekA));mng changedd from 'karAra' to 'TekA' by preeti
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  contract.clp  	contract2   "  ?id "  TekA)" crlf))
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

;------------------------ Default rules -------------------------
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
;@@@ Added by Preeti(1-3-14)
;His contract was terminated last month. 
;usakA anubanXa piCale mahIne samApwa kiyA gayA WA.
(defrule contract5
(id-root ?id contract)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id anubanXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  contract.clp  	contract5   "  ?id "  anubanXa)" crlf))
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
