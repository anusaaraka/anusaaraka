
;Added by Meena(19.02.10)
;There must be another sort of rules according to which sentences are composed .
;(defrule another00
;(declare (salience 5000))
;(id-root ?id another)
;?mng <-(meaning_to_be_decided ?id)
;(viSeRya-of_saMbanXI  ?id1 ?id2)
;;(id-root ?id1 sort|room|matter)
;(viSeRya-det_viSeRaNa  ?id1 ?id)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id xUsarA))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  another.clp   another00   "  ?id "  xUsarA )" crlf))
;)



;Added by Meena(19.02.10)
;There must be another sort of rules according to which sentences are composed .
(defrule another0
(declare (salience 4000))
(id-root ?id another)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUsarA))
;(assert (id-wsd_root_mng ?id anya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  another.clp   another0   "  ?id "  anya )" crlf))
)



;Salience reduced by Meena(19.02.10)
(defrule another1
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id another)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_Ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  another.clp   another1   "  ?id "  eka_Ora )" crlf))
)




;"another","Adj","1.eka_Ora/xUsarA"
;Would you like to have another cup of tea?
;Take this book && bring another one.
;


;Salience reduced by Meena(19.02.10)
(defrule another2
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id another)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_Ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  another.clp 	another2   "  ?id "  eka_Ora )" crlf))
)

;"another","Det","1.eka_Ora"
