
;Added by Meena(20.4.10)
;My watch was broken.
(defrule was_en_tam00
(declare (salience 5000))
(id-TAM ?id was_en)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 disappoint|break|relate|bless)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id was_en WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  was_en_tam.clp    was_en_tam00  "  ?id "  WA )" crlf))
(assert (id-tam_type ?id passive))
)




;She was born in Patna.
(defrule was_en_tam0
(declare (salience 5000))
(id-TAM ?id was_en)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 born)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id was_en yA_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  was_en_tam.clp  	was_en_tam0  "  ?id "  yA_WA )" crlf))
(assert (id-tam_type ?id passive))
)



;Added "call" in the list (Meena 23.3.11)
;He was called simply Clint Jr. because his Daddy was Clint Sr..
; Protoplasm is known as the physical basis for life.
(defrule was_en_tam1
(declare (salience 4900))
(id-TAM ?id was_en)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1  know|call)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id was_en yA_jAwA_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  was_en_tam.clp  	was_en_tam1  "  ?id "  yA_jAwA_WA )" crlf))
(assert (id-tam_type ?id passive))
)




;Added by Meena(19.4.11)
;The silver was tarnished by the long exposure to the air.
(defrule was_en_tam02
(declare (salience 4900))
(id-TAM ?id was_en)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id tarnish|destroy);Added destroy by Manju Suggested by Preeti (21-08-13) Ex: The building was completely destroyed by fire.
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id was_en 0_gayA_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  was_en_tam.clp    was_en_tam02  "  ?id "  0_gayA_WA )" crlf))
(assert (id-tam_type ?id passive))
)

;Modified by Meena(14.4.10)
(defrule was_en_tam2
(declare (salience 4800))
(id-TAM ?id was_en)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-subject ?id ?id1)(kriyA-object ?id ?id1))
(or(id-root ?id2 about|for|in|out|with|by)(kriyA-kriyA_viSeRaNa ?id ?id2))
(not(id-root ?id1 spell))
;(test(> ?id2 ?id))
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id was_en yA_gayA_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  was_en_tam.clp    was_en_tam2  "  ?id "  yA_gayA_WA )" crlf))
(assert (id-tam_type ?id passive))
)





;Salience reduced by Meena(20.4.10)
;The fruit was eaten.
(defrule was_en_tam3
(declare (salience 0))
;(declare (salience 4800))
(id-TAM ?id was_en)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
;(assert (id-E_tam-H_tam_mng ?id was_en yA_huA_WA))
(assert (id-E_tam-H_tam_mng ?id was_en yA_gayA_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  was_en_tam.clp  	was_en_tam3  "  ?id "  yA_gayA_WA )" crlf))
(assert (id-tam_type ?id passive))
)




;She was asked about the pay increase but made no comment.
(defrule was_en_tam4
(declare (salience 4850))
(id-TAM ?id was_en)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id ask|found)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id were_en yA_gayA_WA))
;(assert (root_id-TAM-vachan ?id were_en p))
(assert (kriyA_id-subject_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  was_en_tam.clp   was_en_tam4  "  ?id "  yA_gayA_WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  was_en_tam.clp   was_en_tam4  "  ?id " were_en p )" crlf))
(assert (id-tam_type ?id passive))
)



;Added by Meena(20.4.10)
;Someone laughed suddenly and the spell was broken .
(defrule was_en_tam5
(declare (salience 0))
;(declare (salience 4800))
(id-TAM ?id was_en)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 spell)
(kriyA-subject ?id ?id1)
=>
(retract ?mng)
;(assert (id-E_tam-H_tam_mng ?id was_en yA_huA_WA))
(assert (id-E_tam-H_tam_mng ?id was_en 0_gayA_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  was_en_tam.clp    was_en_tam5  "  ?id "  0_gayA_WA )" crlf))
(assert (id-tam_type ?id passive))
)




;Modified by Meena(1.8.11)
;Uttar pradesh is a land of cultural and geographical diversity, which is blessed by an innumerable perennial rivers, dense forests, and fertile soil. 
;The fruit is eaten by the child.
(defrule was_en_tam6
(declare (salience 4800))
(id-TAM ?id was_en)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) as|by|for|of)
(id-root  ?id ?root)
=>
;(retract ?mng)
(if (eq ?root bless) then
        (assert (id-E_tam-H_tam_mng ?id was_en WA ))       
        (retract ?mng)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng   " ?*wsd_dir* "  was_en_tam.clp      was_en_tam6   "  ?id "  WA )" crlf)
)
else
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id was_en yA_gayA_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  was_en_tam.clp     was_en_tam2  "  ?id "  yA_gayA_WA )" crlf))
(assert (id-tam_type ?id passive))
))



