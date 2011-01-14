
(defrule classic0
(declare (salience 5000))
(id-root ?id classic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwkqRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  classic.clp 	classic0   "  ?id "  uwkqRta )" crlf))
)

(defrule classic1
(declare (salience 4900))
(id-root ?id classic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAcIna_sAhiwya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  classic.clp 	classic1   "  ?id "  prAcIna_sAhiwya )" crlf))
)

;"classic","N","1.prAcIna_sAhiwya/kalA"
;I enjoy reading classics.
;--"2.SreRtawama"
;The tennis match of today was a classic.
;
;
;LEVEL 
;Headword :classic
;
;
;Examples --
;
;1. The amateur dancers gave a classic performance.
;avyavasAyI narwakoM ne uccakoti kA niRpAxana xiyA.
;2. The interiors of her house have a classic design.
;usake Gara ke BIwarI BAga kI banAvata uccakoti kI hE.
;3. She likes to read classics.
;use prAcIna sAhiwya paDZanA pasanxa hE.
;4. He opted for Classics at university.
;usane viSvaviXyAlaya meM prAcIna sAhiwya [kA aByAsa] cunA.
;5. These are classic symptoms of a nervous breakdown.
;ye mAnasika bimArI ke prawiRTa rogalakRaNa hE.
;
;uparaliKiwa vAkyoM meM "classic" Sabxa ke alaga alaga arWa A rahe hEM. kinwu ina Binna 
;laganevAle arWoM meM saMbaMXa isa prakAra xiKA sakawe hEM.
;
;vAkya 1 Ora 2 meM "classic" Sabxa kA prayoga kisI uccakoti kI vaswu ke lie kiyA
;gayA hE. wo isa saMxarBa meM "classic" kA arWa "uccakoti kA" EsA A rahA hE. 
;
;vAkya 3 Ora 4 meM "classic" kA jo arWa A rahA hE vaha hE "prAcIna sAhiwya" kA. 
;prAcIna sAhiwya ko uccakoti kA mAnA jAwA hE. wo aba hama "classic" ke uparaliKiwa 
;arWa (uccakoti kA) ko prAcIna sAhiwya ke arWa se saMbaxXa kara sakawe hE.
;
;vAkya 5. meM "classic" kA arWa "prArUpika" EsA A rahA hE.
;wo aba hama "classic" ke lie sUwra isa prakAra xe sakawe hEM.
;
;anwarnihiwa sUwra ; uccakoti_kA - uccakoti_kA_[sAhiwya]/prArUpika 
; 
;sUwra : uccakoti_kA/prArUpika
