
;Added by Meena(24.9.09)
;They lived there for 5 years.
(defrule ed_tam0
(declare (salience 4900))
(id-TAM ?id ed)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id live)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ed yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ed_tam.clp  	ed_tam0  "  ?id "  yA )" crlf))
)



;Modified by Meena(24.09.09)
;I knew him very well.
(defrule ed_tam1
(declare (salience 4900))
(id-TAM ?id ed)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id knew)
(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ed wA_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ed_tam.clp  	ed_tam1  "  ?id "  wA_WA )" crlf))
)




;Added by Meena(24.9.09)
;At once he knew that they were thieves.
(defrule ed_tam2
(declare (salience 4900))
(id-TAM ?id ed)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id knew)
(id-root =(- ?id 2) once)
(id-root =(- ?id 3) at)
(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ed yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ed_tam.clp        ed_tam2  "  ?id "  yA )" crlf))
)



;Added by Meena(10.5.10)
;The box contained many books , some of which were badly damaged . 
(defrule ed_tam3
(declare (salience 4800))
(id-TAM ?id ed)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id contain)
(kriyA-subject ?id ?id1)
;(kriyA-object ?id ?id2)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ed WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ed_tam.clp        ed_tam3  "  ?id "  WA )" crlf))
)



(defrule ed_tam4
(declare (salience 1000))
(id-TAM ?id ed)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id verb_past_tense)
;(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ed yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ed_tam.clp  	ed_tam4  "  ?id "  yA )" crlf))
)



(defrule ed_tam5
(declare (salience 4700))
(id-TAM ?id ed)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ed yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ed_tam.clp  	ed_tam5  "  ?id "  yA )" crlf))
)





;Added by Meena(10.4.10)
(defrule ed_tam6
(declare (salience 5000))
(id-TAM ?id ed)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id have)
(id-word ?id had)
(id-root ?id1 lunch|dinner|meal|supper|cake|biscuit|drink|tea|coffee|milk|coke|juice|water|beer|breakfast|bath|rest|wash|talk)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ed yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ed_tam.clp        ed_tam6  "  ?id "  yA )" crlf))
)





;Added by Meena(27.10.09)
;The company had international prestige.
;She had social prestige.
(defrule ed_tam7
(declare (salience 4700))
(id-TAM ?id ed)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id have)
;(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ed WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ed_tam.clp        ed_tam7  "  ?id "  WA )" crlf))
)



(defrule ed_tam8
(declare (salience 1000))
(id-TAM ?id ed)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ed yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ed_tam.clp        ed_tam8  "  ?id "  yA )" crlf))
)


;He attacked the enemy
;{ed}  yA 	rAma basa se skUla gayA.
;		Ram went to school by bus.
;      wA_WA 	rAma hara rojZa basa se skUla jAwA_WA
;		Everyday Ram went to school by bus.
;1. Everyday, always jEse kriyA-viSeRaNoM ke sAWa, ed kA arWa 'wA_WA' howA hE.
;2. yaxi kisI anucCexa meM eka bAra ed kA arWa 'wA_WA' banawA hE wo samBavawaH usa
;   anucCexa meM ed kA arWa hara jagaha wA_WA hI banegA.
;   
;    uxA. 
;	Ram went to school by bus everyday.
;	He attended all his classes && finished his homework
;        in school itself.
;
;	hara roja rAma basa se skUla jAwA WA.
;        vaha apanI saBI kakRAoM meM upasWiwa rahawA WA Ora apanA
;        gqhakArya skUla meM hI samApwa kara lewA WA.
; 
