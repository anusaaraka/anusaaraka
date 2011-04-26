



;Added by Meena(25.4.11)
;They had a passionate affair for six months. 
(defrule affair0
(declare (salience 4000))
?mng <-(meaning_to_be_decided ?id)
(id-root ?id affair)
(or(viSeRya-with_saMbanXI  ?id ?id1)(viSeRya-viSeRaNa  ?id ?id1)(samAsa  ?id ?id1))
(id-root ?id1 passionate|love|extramarital|adulterous|man|person|boy|girl|woman)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prema_saMbanXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  affair.clp       affair0   "  ?id "  prema_saMbanXa )" crlf))
)





(defrule affair00
(declare (salience 4000))
?mng <-(meaning_to_be_decided ?id)
(id-root ?id affair)
(or(viSeRya-viSeRaNa  ?id ?id1)(samAsa  ?id ?id1))
(id-root ?id1 amaze|quiet|velvet)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIjZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  affair.clp       affair00   "  ?id "  cIjZa )" crlf))
)




;Added by Meena(25.4.11)
(defrule affair1
(declare (salience 0))
;(declare (salience 4000))
?mng <-(meaning_to_be_decided ?id)
(id-root ?id affair)
;(or(viSeRya-RaRTI_viSeRaNa  ?id ?id1)(viSeRya-viSeRaNa  ?id ?id1)(samAsa  ?id ?id1))
;(id-root ?id1 internal|domestic|financial|people|arms-dealing|world|foreign|family|international|business)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAmalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  affair.clp       affair1   "  ?id "  mAmalA )" crlf))
)




;Added by Meena(25.4.11)
;How I spend my money is my affair.
(defrule affair2
(declare (salience 0))
?mng <-(meaning_to_be_decided ?id)
(id-root ?id affair)
(id-root =(- ?id 1) my|your|his|our|their|her)
;(viSeRya-RaRTI_viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samasyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  affair.clp       affair2   "  ?id "  samasyA)" crlf))
)


