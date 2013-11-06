;this rule was changed by Meena
;the rules "the0" and "the1" are modified by Sukhada on date: 09-08-09 for sentences like: "The better it is , the more people will use it." And hopefully this will work for other sentences also.
(defrule the0
(declare (salience 5000))
(id-root ?id the)
?mng <-(meaning_to_be_decided ?id)
(jiwanA-wulanAwmaka_viSeRaNa  ?id   ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jiwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  the.clp 	the0   "  ?id "  jiwanA )" crlf))
)

(defrule the1
(declare (salience 5000))
(id-root ?id the)
?mng <-(meaning_to_be_decided ?id)
(uwanA-wulanAwmaka_viSeRaNa  ?id  ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  the.clp 	the1   "  ?id "  uwanA )" crlf))
)


;(defrule the0
;(declare (salience 5000))
;(id-root ?id the)
;?mng <-(meaning_to_be_decided ?id)
;;(id-cat_coarse =(+ ?id 1)  adverb_comp)
;(id-word =(+ ?id 1) more|less)
;(jiwanA-wulnAwmaka_viSeRaNa  ?id  =(+ ?id 1))
;;(id-word 1 ?id)
;(test (eq ?id 1)) ;Commented above line and added test condition by Roja 04-11-13 automatically by a programme.
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id jiwanA))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  the.clp    the0   "  ?id "  jiwanA )" crlf))
;)

;(defrule the1
;(declare (salience 4900))
;(id-root ?id the)
;?mng <-(meaning_to_be_decided ?id)
;;(id-cat_coarse =(+ ?id 1)  adjective_comp)
;(id-word =(+ ?id 1) more|less)
;(uwanA-wulnAwmaka_viSeRaNa  ?id  =(+ ?id 1))
;;;(id-word 1 ?id)
;(test (eq ?id 1)) ;Commented above line and added test condition by Roja 04-11-13 automatically by a programme.
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id uwanA))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  the.clp    the1   "  ?id "  uwanA )" crlf))
;)



(defrule the2
(declare (salience 4800))
(id-root ?id the)
?mng <-(meaning_to_be_decided ?id)
(id-cat =(+ ?id 1)  adjective_comparative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  the.clp 	the2   "  ?id "  uwanA )" crlf))
)

;The faster it is, the more they will like it.
; Added by Amba
;counter example : He was sitting on the farther side of the table.


;Modified by Meena(28.7.11);added(not(id-word =(+ ?id 2) to)) to stop this rule for the cases like  ;This is the way to go.
;This is the place I live.
(defrule the3
(declare (salience 4700))
(id-root ?id the)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) is)
(id-word =(- ?id 2) this)
(not(id-word =(+ ?id 2) to)) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  the.clp 	the3   "  ?id "  vahI )" crlf))
)

(defrule the4
(declare (salience 4600))
(id-root ?id the)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) most)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  the.clp 	the4   "  ?id "  - )" crlf))
)

;That is the most I can do to help you.
(defrule the5
(declare (salience 4500))
(id-root ?id the)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) is)
(id-word  =(- ?id 2) that)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  the.clp 	the5   "  ?id "  vahI )" crlf))
)

;following_word=only	vaha-	0
; He may sleep on the only bed (there is).
; the only  mOjUxa akelA/ vaha- akelA

;;Commented by Meena(28.7.11) to stop it for the example : This is the way to go.
;(defrule the6
;(declare (salience 4400))
;(id-root ?id the)
;?mng <-(meaning_to_be_decided ?id)
;(id-word =(+ ?id 1) way)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id vaha))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  the.clp 	the6   "  ?id "  vaha )" crlf))
;)




;to be checked again(Meena)
;;Added by Meena(22.3.10)
;;The man with whom I play tennis is here.( In the sentences like this where we dont have wh word after the noun "man",so even though there is relative clause , the parser is not taking it this way, hence the rule) 
;;cf : The man whom I play tennis with is here.(see rule  the_relc)
;(defrule the7
;(declare (salience 4900))
;(id-root ?id the)
;?mng <-(meaning_to_be_decided ?id)
;(viSeRya-det_viSeRaNa ?id1 ?id)
;(kriyA-subject ?id2  ?id1)
;;(muKya_vAkya-sApekRa_upavAkya  ?id2 ?id3)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id vaha ))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  the.clp       the7   "  ?id "  vaha  )" crlf))
;)



;Added by Meena(3.6.11)
;Within the relationship he feels ill-used most of the time.
(defrule the08
;(declare (salience 0)) 
(declare (salience 4900))
(id-root ?id the)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id determiner)
(id-root  =(- ?id 1) within)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id isa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  the.clp       the08   "  ?id "   isa )" crlf))
)



;Salience reduced by Meena(22.3.10)
(defrule the8
(declare (salience 0)) 
;(declare (salience 4900)) 
(id-root ?id the)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id - ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  the.clp 	the8   "  ?id "  -  )" crlf))
)

;always the is not 'vaha'. More conditins need to be imposed on it.
;default_sense && category=det	vaha	0
;"the","Art","1.vaha"
;This is the picture which we saw yesterday.
;The girl is playing in the garden.
;
;

;Modified by Meena(22.3.10)
;The man with whom I play tennis is here.( In the sentences like this where we dont have wh word after the noun "man",so even though there is relative clause , the parser is not taking it this way, hence the modification in the rule) 
;The man whom I play tennis with is here.
;Modified by sheetal(08-03-10)
(defrule the_relc
(declare (salience 4999))
(id-root ?id the)
(viSeRya-det_viSeRaNa  ?vi ?id)
(or (kriyA-object ?kriyA ?vi)(kriyA-subject  ?kriyA ?vi)(kriyA-object_2  ?kriyA ?vi));fact "kriyA-object_2" is added by sheetal
;(or(muKya_vAkya-sApekRa_upavAkya  ?kriyA ?)                          ;(or(muKya_vAkya-sApekRa_upavAkya ...)(and(....    )added by Meena
;  (and(id-word  =(+ ?vi 1) with)(id-word =(+ ?id 2) whom)))
(or (viSeRya-jo_samAnAXikaraNa  ?vi  ?id1)(and(id-word  =(+ ?vi 1) with)(id-word =(+ ?id 3) whom)))
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  the.clp    the_relc    "?id"  vaha)" crlf))
)
;The boy who you called yesterday has arrived. I saw the man who you love .
;I will show you the house where I met your mother .
;Added by sukhada





(defrule the_moment
(declare (salience 4999))
(id-root ?id the)
(viSeRya-det_viSeRaNa  ?vi ?id)
(id-root ?vi moment)
(kriyA-at_saMbanXI  ?kriyA ?vi)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  the.clp    the_moment    "?id"  yaha)" crlf))
)
;Ex. At the moment , the spokesman said , the President is busy .
;Added by sukhada

