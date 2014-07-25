

;He was sitting.
(defrule was_ing_tam1
(declare (salience 4900))
(id-TAM ?id was_ing)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id  sit|miss|stand|trend);$$$ Added 'trend' by Roja(06-02-13)Ex:Within minutes of the incident her name was trending on Twitter. 
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id was_ing yA_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  was_ing_tam.clp  	was_ing_tam1  "  ?id "  yA_WA )" crlf))
)


;He was eating fruits.
(defrule was_ing_tam2
(declare (salience 4800))
(id-TAM ?id was_ing)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id was_ing 0_rahA_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  was_ing_tam.clp  	was_ing_tam2  "  ?id "  0_rahA_WA )" crlf))
)

;$$$ modified by Pramila(BU) on 24-02-2014 [added 'wear' in list]
;She was wearing a cream-coloured suit.  ;oald
;वह एक क्रीम रंग का सूट पहने हुए थी.
;@@@ Added by Prachi Rathore[17-01-14]
;He was holding the baby in his arms.
(defrule was_ing_tam3
(declare (salience 5000))
(id-TAM ?id was_ing)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id hold|wear)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id was_ing yA_huA_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  was_ing_tam.clp  	was_ing_tam3  "  ?id " yA_huA_WA )" crlf))
)

;------------ Removed rules --------------------
;was_ing_tam0
;	if root stand then  WA
;	Ex : He was standing.
