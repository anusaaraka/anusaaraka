
(defrule lodge0
(declare (salience 5000))
(id-root ?id lodge)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id lodging )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id asWAyI_nivAsa_sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  lodge.clp  	lodge0   "  ?id "  asWAyI_nivAsa_sWAna )" crlf))
)

;"lodging","N","1.asWAyI_nivAsa_sWAna"
;Board && lodging will be taken care of by the society.
;
(defrule lodge1
(declare (salience 4900))
(id-root ?id lodge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id makAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lodge.clp 	lodge1   "  ?id "  makAna )" crlf))
)

;$$$--- Modified by Nandini(21-5-14)
;Portugal has lodged a complaint with the International Court of Justice.[OALD]
;purwagAla ne  anwarrARtrIya nyAya court ke samakRa SikAyawa xarja kI hE.
(defrule lodge2
(declare (salience 4850))
(id-root ?id lodge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1) ;condition Added by Nandini(21-5-14)
(id-root ?id1 complaint)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarja_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lodge.clp 	lodge2   "  ?id "  xarja_kara )" crlf))
)

;@@@--- Added by Nandini(21-5-14)
;He lodged with Mrs Brown when he arrived in the city.[OALD]
;jaba vaha Sahara Aye vaha SrImawI brown ke sAWa Tahare .
(defrule lodge3
(declare (salience 4800))
(id-root ?id lodge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Tahara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lodge.clp 	lodge3   "  ?id "  Tahara )" crlf))
)

;@@@--- Added by Nandini(21-5-14)
;The refugees are being lodged at an old army base.[OALD]
;SaraNArWI purAne senA AXAra meM TaharAe jA rahe hEM.
(defrule lodge4
(declare (salience 4800))
(id-root ?id lodge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI  ?id ?id1)
(id-root ?id1 base)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TaharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lodge.clp 	lodge4   "  ?id "  TaharA )" crlf))
)

;@@@--- Added by Nandini(21-5-14)
;She lodged the number firmly in her mind.[OALD]
;vaha apane mana meM xqDawA se aMka raKA.
(defrule lodge5
(declare (salience 4800))
(id-root ?id lodge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 number)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lodge.clp 	lodge5   "  ?id "  raKa )" crlf))
)







;"lodge","V","1.xarja karanA"
;He lodged a complaint with the police.
;--"2.TaharAnA"
;He was lodged in the outhouse. 
;--"3.TaharanA"
;He is lodging in a family as a paying guest.
;--"4.jamA karanA"
;Lodging valuables with the bank.
;
;
