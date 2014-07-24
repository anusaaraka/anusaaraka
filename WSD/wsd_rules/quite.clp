
(defrule quite0
;(declare (salience 5000)) ; Commented salience by Anita
(id-root ?id quite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niwAnwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quite.clp 	quite0   "  ?id "  niwAnwa )" crlf))
)

;"quite","Adj","1.niwAnwa"


;Added by Meena(7.9.10)
;We meet the hero quite early in the film .
(defrule quite1
(declare (salience 4900))
(id-root ?id quite)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 early)
(viSeRaNa-viSeRaka  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bilkula))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quite.clp     quite1   "  ?id "  bilkula )" crlf))
)



;Salience reduced by Meena(7.9.10)
(defrule quite2
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id quite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sacamuca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quite.clp 	quite2   "  ?id "  sacamuca )" crlf))
)

;@@@ Added by Anita-12.12.2013
;The ladder will not quite reach the top of the wall. [by mail sentence]
;सीढी दीवार के सर्वोच्च स्थान तक पूरी तरह से नहीं पहुँचेगी . [verified sentence]
(defrule quite4
(declare (salience 5000))
(id-root ?id quite)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 ladder)
(kriyA-subject  ?kriya ?id1)
(kriyA-kriyA_viSeRaNa  ?kriya ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrI_waraha_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quite.clp 	quite4   "  ?id "  pUrI_waraha_se )" crlf))
)

;default_sense && category=adverb	kAPI_haxa_waka	0
;"quite","Adv","1.kAPI_haxa_waka"
;He writes quite well.
;You're quite right.
;--"2.pUrI_wOra_se"
;Are you quite sure?  
;--"3.sacamuca_hI"
;The food was quite delicious.
;--"4.TIka_hE_!"
;They should talk about it like two adults. `Quite?'.
;
(defrule quite3
(declare (salience 4800))
(id-root ?id quite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAPI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quite.clp 	quite3   "  ?id "  kAPI )" crlf))
)

;"quite","Det","1.kAPI"
;The new actress is quite a beauty.
;It was quite a sudden change.
;It is quite small a house.

