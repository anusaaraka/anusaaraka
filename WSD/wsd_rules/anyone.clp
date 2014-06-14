
(defrule anyone0
(declare (salience 5000))
(id-root ?id anyone)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
(niReXAwmaka_vAkya      )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anyone.clp 	anyone0   "  ?id "  koI_BI )" crlf))
)

(defrule anyone1
(declare (salience 4900))
(id-root ?id anyone)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anyone.clp 	anyone1   "  ?id "  koI )" crlf))
)

(defrule anyone2
(declare (salience 4800))
(id-root ?id anyone)
?mng <-(meaning_to_be_decided ?id)
;(id-word 1 ?id)
(test (eq ?id 1)) ;Commented above line and added test condition by Roja 04-11-13 automatically by a programme.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anyone.clp 	anyone2   "  ?id "  koI_BI )" crlf))
)



;Added  by Meena(1.4.10)
;I challenge anyone here to race with me . 
(defrule anyone03
(declare (salience 4700))
(id-root ?id anyone)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 challenge)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawyeka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anyone.clp    anyone03   "  ?id "   prawyeka )" crlf))
)





;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 15-jan-2014
;It is not good to smear to anyone.
;किसी पर भी कीचड़ उछालना अच्छी बात नहीं है
(defrule anyone5
(declare (salience 5000))
(id-root ?id anyone)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?kri ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anyone.clp    anyone5   "  ?id "   kisI )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 15-jan-2014
;Is anyone there?[oald]
;क्या वहाँ कोई है
(defrule anyone6
(declare (salience 5000))
(id-root ?id anyone)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?kri ?id)
(id-word ?kri is)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anyone.clp    anyone6  "  ?id "   koI )" crlf))
)


;***************************DEFAULT MEANINGS*********************************


;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 15-jan-2014
;The exercises are so simple that almost anyone can do them.[oald]
;Salience reduced by Meena(1.4.10)
(defrule anyone3
(declare (salience 0))
;(declare (salience 4700))
(id-root ?id anyone)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI_BI)); meaning changed by Garima Singh from 'koI_eka' to 'koI_BI' 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anyone.clp 	anyone3   "  ?id "  koI_BI )" crlf))
)

;"anyone","Pron","1.koI_eka"
;Anyone of you can go && get the tickets.
;


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 15-jan-2014
(defrule anyone4
(declare (salience 0))
(id-root ?id anyone)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anyone.clp 	anyone4   "  ?id "  koI_BI )" crlf))
)



