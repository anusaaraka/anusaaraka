
(defrule bad0
(declare (salience 5000))
(id-root ?id bad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KZarAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bad.clp 	bad0   "  ?id "  KZarAba )" crlf))
)

(defrule bad1
(declare (salience 4900))
(id-root ?id bad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bad.clp 	bad1   "  ?id "  KarAba )" crlf))
)

;"bad","Adj","1.KarAba"
;Foreigners' pronunciation of Hindi is mostly bad.
;vixeSiyoM kA hiMxI uccAraNa aXikawara burA howA hE.
;Cricketers can't play if the light is bad.
;yaxi bawwI KarAba ho wo kriketarsa nahIM Kela sakawehEM.
;--"2.burA"
;He is going through a bad period.
;vaha bure xOra se gujZara rahA hE.
;--"3.gamBIra"
;Ravi's accident was quite a bad one.
;ravi kI xurGatanA kAPI gamBIra WI.
;
;