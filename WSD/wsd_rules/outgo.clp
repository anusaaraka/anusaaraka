
(defrule outgo0
(declare (salience 5000))
(id-root ?id outgo)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id outgoing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id KuSamijZAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  outgo.clp  	outgo0   "  ?id "  KuSamijZAja )" crlf))
)

;"outgoing","Adj","1.KuSamijZAja"
;Everybody likes her outgoing personality.
;--"2.sawwA_CodZanevAlA"
;Bill Clinton is the outgoing president of the U.S.
;--"3.bahirgAmI"
;Enter the outgoing cell in this register.
;
(defrule outgo1
(declare (salience 4900))
(id-root ?id outgo)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id outgoing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Karca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  outgo.clp  	outgo1   "  ?id "  Karca )" crlf))
)

;"outgoing","N","1.Karca/vyaya"
;What are the company outgoings.
;
