



;She is born in Patna.
(defrule is_en_tam0
(declare (salience 5000))
(id-TAM ?id is_en)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id born)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id is_en yA_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  is_en_tam.clp  	is_en_tam0  "  ?id "  yA_hE )" crlf))
(assert (id-tam_type ?id passive))
)


; Protoplasm is known as the physical basis for life.
;Modified by Meena(19.11.10);Added "use" in the list.
;In physics, the term “fluid” is used to mean either a gas or a liquid.
(defrule is_en_tam1
(declare (salience 4900))
(id-TAM ?id is_en)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id  know|play|use)
;(id-word ?id  known|played)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id is_en yA_jAwA_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  is_en_tam.clp  	is_en_tam1  "  ?id "  yA_jAwA_hE )" crlf))
(assert (id-tam_type ?id passive))
)

;The fruit is eaten by the child.
(defrule is_en_tam2
(declare (salience 4800))
(id-TAM ?id is_en)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) as|by|for|of)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id is_en yA_gayA_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  is_en_tam.clp  	is_en_tam2  "  ?id "  yA_gayA_hE )" crlf))
(assert (id-tam_type ?id passive))
)



