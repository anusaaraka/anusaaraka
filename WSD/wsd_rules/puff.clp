
(defrule puff0
(declare (salience 5000))
(id-root ?id puff)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id puffed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id PUlA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  puff.clp  	puff0   "  ?id "  PUlA_huA )" crlf))
)

;"puffed","Adj","1.PUlA_huA"
;She was puffed after climbing the stairs.
;
(defrule puff1
(declare (salience 4900))
(id-root ?id puff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JakorA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  puff.clp 	puff1   "  ?id "  JakorA )" crlf))
)

;"puff","Adj","1.JakorA"
;A puff of air brought a little relief during power cut.
;--"2.lacCA"
;A puff of smoke emerged out from the chimney.
;--"3.eka_waraha_kA_viSiRta_piRtaka"
;She is expert in making chololate puffs.
;--"4.Svasana"
;He was merely able to speak out of puff.
;
(defrule puff2
(declare (salience 4800))
(id-root ?id puff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PUzka-PUzkakara_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  puff.clp 	puff2   "  ?id "  PUzka-PUzkakara_nikAla )" crlf))
)

;"puff","V","1.PUzka-PUzkakara_nikAlanA"
;He was punished for puffing smoke into people's faces.
;--"2.sigareta_pInA"
;Puffing pipe in cinema hall his prohibitted.
;--"3.kaSa_yA_xama_lagAnA"
;He was puffing hard when he reached the hill top.
;
