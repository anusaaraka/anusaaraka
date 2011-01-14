
;Added by Meena(8.02.10)
;US Economic indicators fell sharply last month . 
(defrule sharply0
(declare (salience 5000))
(id-root ?id sharply)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id wejI_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sharply.clp       sharply0   "  ?id "  wejI_se )" crlf))
)

