;Added by sheetal(21-03-10)
;He told them about the accident , presumably .
(defrule presumably0
(declare (salience 5000))
(id-root ?id presumably)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?kriyA ?id)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id saMBavawaH))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  presumably.clp       presumably0   "  ?id "  saMBavawaH )" crlf))
)
