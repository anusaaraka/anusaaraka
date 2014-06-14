

;Added by Meena(4.11.09)
;Could this be that?
(defrule could_0_tam0
(declare (salience 5000))
(id-TAM ?id could_0)
?mng <-(meaning_to_be_decided ?id)
(yes_no_question)
(id-word 1 could)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id could_0 0_sakawA_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  could_0_tam.clp        could_0_tam0  "  ?id "  0_sakawA_hE )" crlf))
)



;Added by Meena(4.11.09)
;This could be that.
(defrule could_0_tam1
(declare (salience 4800))
(id-TAM ?id could_0)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id be|stand)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id could_0 0_sakawA_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  could_0_tam.clp        could_0_tam1  "  ?id "  0_sakawA_WA )" crlf))
)




;Added by Meena(4.11.09)
;He could go.(for all verbs except "be")
(defrule could_0_tam2
(declare (salience 1000))
(id-TAM ?id could_0)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id could_0 0_sakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  could_0_tam.clp        could_0_tam2  "  ?id "  0_sakA )" crlf))
)

;@@@ Added by Prachi Rathore
;I'm not implying anything about your cooking, but could we eat out tonight?[cambridge]
;मैं आपके खाना पकाने की विधि के बारे में कुछ भी अर्थ नहीं निकाल रहा हूँ, परन्तु क्या हम आज की रात बाहर खा सकते हैं.
;Could you teach me to do that?[oald]
(defrule could_0_tam3
(declare (salience 4800))
(id-TAM ?id could_0)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id eat|get|teach|arrive);Added 'arrive' by Roja Ex: The baby could arrive any time now. 
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id could_0 0_sakawA_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  could_0_tam.clp        could_0_tam3  "  ?id "  0_sakawA_hE )" crlf))
)


