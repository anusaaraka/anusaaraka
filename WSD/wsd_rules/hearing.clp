
;Added by Meena(5.12.09)
;Many people were angered by the hearings . 
(defrule hearing0
(declare (salience 5000))
;(id-root ?id hear)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id hearing )
(or(kriyA-by_saMbanXI  ?id1 ?id)(viSeRya-viSeRaNa ?id ?id1))
;(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sunavAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hear.clp       hearing0   "  ?id "  sunavAI )" crlf))
)





;Added by Meena(5.12.09)
;The explosion damaged his hearing . 
(defrule hearing1
(declare (salience 0))
;(id-root ?id hear)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id hearing )
;(or(kriyA-by_saMbanXI  ?id1 ?id)(viSeRya-viSeRaNa ?id ?id1))
;(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id  SravaNa_Sakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hear.clp       hearing0   "  ?id "   SravaNa_Sakwi  )" crlf))
)

