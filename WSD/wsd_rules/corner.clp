;@@@ Added by Preeti(9-12-13)
;There is a hotel at the corner of my street. [ Oxford Advanced Learner's Dictionary]
;merI galI ke nukkadza  para hotala hE.
(defrule corner2
(declare (salience 4950))
(id-root ?id corner)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id  noun)
(or(viSeRya-of_saMbanXI  ?id ?id1) (samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1))
(id-root ?id1 street)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nukkadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  corner.clp        corner2   "  ?id "  nukkadZa )" crlf))
)

;@@@ Added by Preeti(9-12-13)
;They had got her in a corner, and there was not much she could do about it. [ Oxford Advanced Learner's Dictionary]
;unhoMne usako kaTina parisWiwi meM dAlA WA,  Ora vaha isake bAre meM kuCa nahIM kara sakawI WI.
(defrule corner3
(declare (salience 5000))
(id-root ?id corner)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id  noun)
(or(kriyA-of_saMbanXI  ?id1 ?id) (kriyA-in_saMbanXI  ?id1 ?id))
(id-root ?id1 get|talk)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTina_parisWiwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  corner.clp        corner3   "  ?id "  kaTina_parisWiwi )" crlf))
)

;@@@ Added by Preeti(9-12-13)
;The referee awarded a corner. [ Oxford Advanced Learner's Dictionary]
;reParI ne kArnara_kIka praxAna kiyA.
(defrule corner4
(declare (salience 5000))
(id-root ?id corner)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id  noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 award)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArnara_kIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  corner.clp        corner4   "  ?id "  kArnara_kIka )" crlf))
)

;@@@ Added by Preeti(9-12-13)
;They have cornered the market in silver. 
;ve bAjAra meM cAzxI para aXikAra_kara cuke hEM.
(defrule corner5
(declare (salience 4950))
(id-root ?id corner)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id  verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 market)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  corner.clp        corner5   "  ?id "  aXikAra_kara )" crlf))
)


;@@@ Added by Preeti(9-12-13)
;His attackers cornered him in a dark alley. [ Oxford Advanced Learner's Dictionary]
;usake AkramaNakAriyoM ne eka aMXerI gaII meM usako GerA.
(defrule corner0
(declare (salience 4900))
(id-root ?id corner)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id  verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  corner.clp        corner0   "  ?id "  Gera )" crlf))
)


;Added by Meena(1.4.11)
;The frightened children bunched together in the corner of the classroom. 
(defrule corner1
(declare (salience 4900))
(id-root ?id corner)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id  noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id konA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  corner.clp        corner1   "  ?id "  konA )" crlf))
)

