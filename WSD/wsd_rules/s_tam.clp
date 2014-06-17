
(defrule s_tam0
(declare (salience 4900))
(id-TAM ?id s)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id s wA_hE))
(assert (root_id-TAM-vachan ?id s s))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  s_tam.clp  	s_tam0  "  ?id "  wA_hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  s_tam.clp         s_tam0  "  ?id " s s )" crlf))
)

;He chairs the session.
(defrule s_tam1
(declare (salience 4900))
(id-TAM ?id s)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (root_id-TAM-vachan ?id s s))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  s_tam.clp         s_tam1  "  ?id " s s )" crlf))
)

;The chairs are good.
;{s}  saMjFA - bahuvacana;  chair  chair{s}
;
;     kriyA - -wA_hE   play  play{s}
;    
; uxA:
; 1.Kela{s}  KelawA_hE  He/She/It plays. vaha{pu.}/vaha{swrI.}/vaha{napu.} KelawA_hE.
;              Kela    The plays were superb.  Kela bahuwa acCe We.

;     2.ladakA{s}  ladake	The boys have come. ladZake A gaye hEM.




;Added by Meena(31.8.09)
;I hope he comes to the party tomorrow . 
(defrule s_tam2
(declare (salience 5000))
(id-TAM ?id s)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 tomorrow)
(kriyA-kAlavAcI  ?id ?id1)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id s gA))
(assert (root_id-TAM-vachan ?id s s))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  s_tam.clp        s_tam2  "  ?id "  gA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  s_tam.clp        s_tam2  "  ?id " s s )" crlf))
)

;@@@ Added by Pramila(BU) on 11-02-2014
;The season ticket expires on 31st August.   ;shiksharthi
;31 अगस्त को सीजन टिकट की अवधि समाप्त हो रही है.
;Our holidays expires next week.        ;shiksharthi
;हमारा छुट्टियाँ अगले सप्ताह समाप्त हो रही है.
(defrule s_tam3
(declare (salience 5000))
(id-TAM ?id s)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-on_saMbanXI  ?id ?id1)(kriyA-kAlavAcI  ?id ?id1))
(id-root ?id expire)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id s 0_rahA_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  s_tam.clp  	s_tam3 "  ?id "  0_rahA_hE )" crlf))
)


;@@@ Added by Pramila(BU) on 11-02-2014
;His term of office expires at the end of June.            ;oald
;उसकी पदावधि जून के अन्त में समाप्त होगी . 
(defrule s_tam4
(declare (salience 5000))
(id-TAM ?id s)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-root ?id expire)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id s gA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  s_tam.clp  	s_tam4 "  ?id "  gA )" crlf))
)





     	
