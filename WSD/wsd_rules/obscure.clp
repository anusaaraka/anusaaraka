;Added by Meena(19.3.10)
;He was convicted under an obscure 1990 law .
(defrule obscure0
(declare (salience 5000))
(id-root ?id obscure)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ajaFAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  obscure.clp   obscure0   "  ?id "  ajaFAwa )" crlf))
)





;Salience reduced by Meena(19.3.10)
(defrule obscure1
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id obscure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XuzXalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  obscure.clp 	obscure1   "  ?id "  XuzXalA )" crlf))
)

;"obscure","Adj","1.XuzXalA"
;--"2.kaTina{samaJane_meM}"
;That is an obscure example.
;
(defrule obscure2
(declare (salience 4900))
(id-root ?id obscure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id boJawma_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  obscure.clp 	obscure2   "  ?id "  boJawma_kara_xe )" crlf))
)

;"obscure","V","1.boJawma_kara_xenA"
;Reporters obscure facts.
;


;@@@ Added by Sonam Gupta MTech IT Banasthali 10-3-2014
;His meaning is obscure. [rajpal]
;उसका अर्थ दुरूह है .
(defrule obscure3
(declare (salience 5500))
(id-root ?id obscure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 meaning|sense)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xurUha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  obscure.clp 	obscure3   "  ?id "  xurUha )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 10-3-2014
;The labourer was too obscure to protest. [rajpal]
;मजदूर इतना दीनहीन था कि विरोध नहीं कर सकता था .
(defrule obscure4
(declare (salience 5500))
(id-root ?id obscure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaka  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xInahIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  obscure.clp 	obscure4   "  ?id "  xInahIna )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 10-3-2014
;Obscure author. [rajpal]
;अविदित लेखक .
(defrule obscure5
(declare (salience 5500))
(id-root ?id obscure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 author|writer)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avixiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  obscure.clp 	obscure5   "  ?id "  avixiwa )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 10-3-2014
;He obscured his explanation further. [rajpal]
;उसने अपनी व्याख्या को और दुर्बोध बना दिया .
(defrule obscure6
(declare (salience 5500))
(id-root ?id obscure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 explanation|reason|description|justification|clarification)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xurboXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  obscure.clp 	obscure6   "  ?id "  xurboXa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 10-3-2014
;The clouds obscure the sun. [rajpal]
;बादलों ने सूरज को छिपा दिया .
(defrule obscure7
(declare (salience 5500))
(id-root ?id obscure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 cloud|fog|smoke)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CipA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  obscure.clp 	obscure7   "  ?id "  CipA_xe )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 10-3-2014
(defrule obscure8
(id-root ?id obscure)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XuzXalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  obscure.clp   obscure8   "  ?id "  XuzXalA )" crlf))
)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_obscure5
(declare (salience 5500))
(id-root ?id obscure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 author|writer)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avixiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " obscure.clp   sub_samA_obscure5   "   ?id " avixiwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_obscure5
(declare (salience 5500))
(id-root ?id obscure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 author|writer)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avixiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " obscure.clp   obj_samA_obscure5   "   ?id " avixiwa )" crlf))
)
