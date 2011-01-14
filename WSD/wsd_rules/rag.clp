
(defrule rag0
(declare (salience 5000))
(id-root ?id rag)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id ragged )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id guxadZiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  rag.clp  	rag0   "  ?id "  guxadZiyA )" crlf))
)

;"ragged","Adj","1.guxadZiyA"
;There is a ragged && barefoot old woman.
;--"2.Pate-purAne_vaswra"   
;He has a ragged coat. 
;
(defrule rag1
(declare (salience 4900))
(id-root ?id rag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ciWadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rag.clp 	rag1   "  ?id "  ciWadZA )" crlf))
)

;"rag","N","1.ciWadZA"
;She uses an old rag to clean the floor.
;--"2.nimna_koti_kA_samAcAra_pawra"
;I read this news in a local rag.
;--"3.Pate_purAne_vaswra"
;My shirt was worn to rags.
;
(defrule rag2
(declare (salience 4800))
(id-root ?id rag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CedZa-CAdZa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rag.clp 	rag2   "  ?id "  CedZa-CAdZa_kara )" crlf))
)

;"rag","V","1.CedZa-CAdZa_karanA"
;They have ragged her after the college. 
;
