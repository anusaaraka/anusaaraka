
(defrule brief0
(declare (salience 5000))
(id-root ?id brief)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) in)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkRepa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brief.clp 	brief0   "  ?id "  saMkRepa )" crlf))
)

(defrule brief1
(declare (salience 4900))
(id-root ?id brief)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alpakAlIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brief.clp 	brief1   "  ?id "  alpakAlIna )" crlf))
)

(defrule brief2
(declare (salience 4800))
(id-root ?id brief)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sArapawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brief.clp 	brief2   "  ?id "  sArapawra )" crlf))
)

;"brief","N","1.sArapawra"
;In the  beginning he presented a brief of the last meeting.
;
;
;LEVEL 
;Headword : brief
;
;Examples --
;
;Adj
;"1.saMkRipwa"
;A brief style is that which expresses much in little.
;saMkRipwa SElI vaha hE jo WodZe meM bahuwa kuCa kahe.  
;--"2.CotA"
;manuRya kI jZinxagI kiwanI CotI hE ?   
;
;N
;"1.saMkRipwa_vivaraNa"
;The barrister accepted his brief.
;bEristara ne usakA KulAsA mAna liyA.
;--"2.AxeSa_pawra"
;Training new employees was part of his brief.
;naye praSikRArWiyoM ko praSikRaNa xenA usake AxeSa-pawra kA hissA WA. <--AxeSa-pawra meM uwwaraxAyiwvoM kA saMkRipwa vivaraNa honA
;
;Adv 
;"briefly" 
;"1.saMkRepa_meM"
;Answer briefly.
;saMkRepa_meM uwwara xo.
;
;
;sUwra : saMkRepa[>CotA_*]
