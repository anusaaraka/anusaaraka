
(defrule drill0
(declare (salience 5000))
(id-root ?id drill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cexa_karane_vAlI_maSIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drill.clp 	drill0   "  ?id "  Cexa_karane_vAlI_maSIna )" crlf))
)

;"drill","N","1.Cexa_karane_vAlI_maSIna"
;The carpenter uses drill machine to make holes in the wall.
;--"2.POjI_SikRA_kavAyaxa"
;The soldiers were at drill.
;--"3.kaTora_anuSAsana_meM_raha_kara_SikRA_xenA"
;The N.C.C.cadets have practised rifle drill. 
;--"4.kisI_kAma_ko_karane_kA_sahI_warIkA"
;What is the drill for claiming insurance money? 
;
(defrule drill1
(declare (salience 4900))
(id-root ?id drill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cexa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drill.clp 	drill1   "  ?id "  Cexa_kara )" crlf))
)

;"drill","V","1.Cexa_karanA"
;My neighbour is drilling a new borewell beside the old one.
;--"2.anuSAsana_meM_raha_kara_SikRA_xenA"
;The teacher drilled the whole class in mathematics. 
;
