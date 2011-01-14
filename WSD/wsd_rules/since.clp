;Modified by Meena(18.02.10)
(defrule since0
(declare (salience 5000))
(id-root ?id since)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) yesterday|tomorrow|today)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  since.clp 	since0   "  ?id "  se )" crlf))
)



(defrule since1
;(declare (salience 4700))
(declare (salience 0))
(id-root ?id since)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waba_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  since.clp 	since1   "  ?id "  waba_se )" crlf))
)

;"since","Adv","1.waba_se"



;Added by Meena(28.10.10)
;I heard from him twice since he went away.
(defrule since2
(declare (salience 4700))
(id-root ?id since)
?mng <-(meaning_to_be_decided ?id)
(kriyA-conjunction   ?id1  ?id)
;(kriyA-subject ?id2 ?id1)
(id-root ?id2 go|leave)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jaba_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  since.clp   since2   "  ?id "  jaba_se )" crlf))
)


;Modified by Meena(28.10.10)
;Since I know English, he spoke to me.
;It makes sense that the charge approaches zero, since the balloon is losing its charge.
;Modified by Meena(18.02.10)
;Since native speakers of English do not produce a variable mishmash of words of the sort in 4 , there must be another sort of rules according to which sentences are composed . 
(defrule since3
(declare (salience 4600))
(id-root ?id since)
?mng <-(meaning_to_be_decided ?id)
(kriyA-conjunction   ?id1  ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyoMki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  since.clp   since3   "  ?id "  kyoMki )" crlf))
)




;Added by Meena(26.10.10)
;It makes sense that the charge approaches zero, since the balloon is losing its charge.
;(defrule since4
;(declare (salience 10))
;;(declare (salience 4600))
;(id-root ?id since)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id conjunction)   
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id kyoMki))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  since.clp   since3   "  ?id "  kyoMki )" crlf))
;)

;"since","Conj","1.cUzki"
(defrule since4
;(declare (salience 0))
;(declare (salience 4500))
(id-root ?id since)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jaba_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  since.clp 	since4   "  ?id "  jaba_se )" crlf))
)

;"since","Prep","1.jaba[waba]_se"


;Added by sheetal(5-10-09)
(defrule since5
(declare (salience 4550))
(id-root ?id since)
?mng <-(meaning_to_be_decided ?id)
(kriyA-since_saMbanXI ? ?id1)
(id-word ?id1 day)
;(link_name-lnode-rnode Jp ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  since.clp     since5   "  ?id "  se )" crlf))
)
;Added kriyA-since_saMbanXI relation instead of link-name "jp"
