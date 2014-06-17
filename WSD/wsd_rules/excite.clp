

;Added by Meena(6.3.10)
;I am quite excited about next week. 
(defrule excite0
(declare (salience 5000))
(id-root ?id excite)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id excited )
(or (viSeRya-about_saMbanXI  ?id ?id1) (subject-subject_samAnAXikaraNa  ?id1 ?id)) ;
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id uwsAhiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  excite.clp     excite0   "  ?id "  uwsAhiwa )" crlf))
)



;Salience reduced by Meena(6.3.10)
(defrule excite1
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id excite)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id excited )
(id-cat_coarse ?id adjective)  ; Modified verb as adjective by sukhada
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id uwwejiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  excite.clp  	excite1   "  ?id "  uwwejiwa )" crlf))
)

(defrule excite2
(declare (salience 4000))
(id-root ?id excite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwejiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  excite.clp 	excite2   "  ?id "  uwwejiwa_kara )" crlf))
)

;@@@ added by pramila(BU) on 10-12-2013
;She excited her friend for the competition.
;usane apanI miwra ko prawiyogiwA ke liye jAgqwa kiyA.
(defrule excite3
(declare (salience 5000))
(id-root ?id excite)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id ?id1)
(id-root ?id1 competition)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAgqwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  excite.clp 	excite3   "  ?id "  jAgqwa_kara )" crlf))
)



;"excite","VT","1.uwwejiwa_karanA"
;We were very much excited by the news of India's victory over Australia.
;
;LEVEL 
;Headword : excite
;
;Examples --
;
;"excite","VT","1.uwwejiwa karanA" 
;She was very excited about the trip.
;vaha tripa ke viRaya meM bahuwa uwwejiwa WI.
;--"2.jAgqwa karanA"-ukasAnA-uwwejiwa karanA
;She excited her friend for the Comptetion.
;usane apanI miwra ko prawiyogiwA ke liye jAgqwa kiyA.
;--"3.uwwapanna karanA/AnA"-uwwejiwa karanA
;The begger's condition excited my pity. 
;BiKArI kI xaSA se muJe xayA A gayI.
;
;"excited","A","1.uwwejiwa"
;Ravi looked at her excited face. 
;ravi ne usake uwwejiwa cehare ko xeKA.
;
;nota:--uparokwa 'excite'Sabxa ke arWa evaM vAkyoM ko xeKane se yaha kaha sakawe hEM   
;     ki inheM eka hI Sabxa 'uwwejiwa karanA'se jodZA jA sakawA hE
;          
;sUwra : uwwejiwa_[karanA/honA]  
