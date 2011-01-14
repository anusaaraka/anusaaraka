
;Modified by Meena(20.4.10)
;She wept bitterly at the news.
;Added by sheetal(31-10-09).
(defrule news0
(declare (salience 5000))
(id-word ?id news)    ; changed "id-root"  to  "id-word"
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id samAcAra))   ;changed from "id-wsd_root_mng"  to   " id-wsd_word_mng"
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  news.clp    news0   "  ?id "  samAcAra )" crlf))
)
;On hearing the news of his father's death Sachin returned back to India .


