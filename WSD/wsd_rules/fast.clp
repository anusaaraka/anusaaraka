;Added by Human being
(defrule fast0
(declare (salience 5000))
(id-root ?id fast)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 friend)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GaniRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fast.clp 	fast0   "  ?id "  GaniRta )" crlf))
)


;Added by Sukhada (4-11-11)
; The water was rising fast.
(defrule fast_s
(declare (salience 5000))
(id-root ?id fast)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejI_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fast.clp      fast_s  "  ?id "  wejI_se )" crlf))
)

(defrule fast1
(declare (salience 4900))
(id-root ?id fast)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 friend)
(samAsa_viSeRya-samAsa_viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GaniRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fast.clp 	fast1   "  ?id "  GaniRta )" crlf))
)

;He is my fast friend.
;
; Added by human being
(defrule fast2
(declare (salience 4800))
(id-root ?id fast)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 moving)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejI_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fast.clp 	fast2   "  ?id "  wejI_se )" crlf))
)

; Each galaxy is fast moving away from other galaxies
(defrule fast3
(declare (salience 4700))
(id-root ?id fast)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id weja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fast.clp 	fast3   "  ?id "  weja )" crlf))
)

(defrule fast4
(declare (salience 4600))
(id-root ?id fast)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adverb|adverb_comparative|adverb_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id weja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fast.clp 	fast4   "  ?id "  weja )" crlf))
)

(defrule fast5
(declare (salience 4500))
(id-root ?id fast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vrawa_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fast.clp 	fast5   "  ?id "  vrawa_raKa )" crlf))
)

;Ex. The faster it is , the more they will like it. Added by Sukhada (01-04-10)
(defrule fast6
(declare (salience 4500))
(id-word ?id faster)
?mng <-(meaning_to_be_decided ?id)
(or (jiwanA-wulanAwmaka_viSeRaNa ?the ?id) (uwanA-wulanAwmaka_viSeRaNa ?the ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXika_weja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fast.clp      fast6   "  ?id "  aXika_weja )" crlf))
)

;"fast","VI","1.vrawa_raKanA"
;He is fasting.
;
;
;LEVEL 
;Headword : fast
;
;Examples --
;
;"fast","Adj","1.wejZa"
;There are several fast trains from here to Delhi.
;yahAz se xillI ke liye kaI wejZa gAdZiyAz hEM.
;A fast food restaurant
;wejZa (pakAne_vAlA)jalapAnagqha
;--"2.Age"
;The watch is fast
;GadI Age hE. <--wejZa gawi se cala rahI hE.
;
;"fast","Adv","majZabUwI_se" <--xqDZawA_se
;The boat was stuck fast in the mud
;nAvaz majZabUwI se mittI meM Pazsa gayI hE
;--"2.wejI_se"
;The water was rising fast
;pAnI wejI se Upara A rahA WA
;
;"fast","N","upavAsa"
;People keep fast on important occasions 
;loga viSeRa avasara para vrawa raKawe hEM
;
;"fast","V","upavAsa_raKanA"
;He is fasting today
;usane Aja vrawa raKA hE
;
;vyAKyA --
;Upara xiye uxAharaNoM se lagawA hE ki aMgrejZI Sabxa 'fast' 'viSeRaNa' prayoga
;meM eka arWa liye hE Ora 'saMjFA' arWa meM xUsarA arWa. 'viSeRaNa' meM
;'wIvrawA' kA BAva hE - cAheM vaha gawi(wejZa calanA) kI ho yA pakadZa kI (kasa
;kara bAzXanA). 'saMjFA' arWa isa arWa se sarvaWA alaga lagawA hE. 'saMjFA' meM
;'fast' kA arWa 'upavAsa' kA hE. saMjFA arWa hI kriyA meM jAkara (aMgrejZI
;kI sAmAnya prakqwi anusAra) 'upavAsa_karanA' ho jAwA hE. 'viSeRaNa' se 'saMjFA'
;ke arWa meM wAra jodZA jA sakawA hE - 
;
;anwarnihiwa sUwra ; 
;
;(eka samBAvanA)
;
;wIvra- majZabUwa_pakadZa - xqDZa -- xqDZa niScaya (na KAne kA) - upavAsa
;
;isakA sUwra banegA 
;
;sUwra : wejZa^xqDZa^upavAsa
;
