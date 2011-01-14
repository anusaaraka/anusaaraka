
(defrule present0
(declare (salience 5000))
(id-root ?id present)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id presents )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id upahAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  present.clp  	present0   "  ?id "  upahAra )" crlf))
)

(defrule present1
(declare (salience 4900))
(id-root ?id present)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 buy)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BeMta_vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  present.clp 	present1   "  ?id "  BeMta_vaswu )" crlf))
)

(defrule present2
(declare (salience 4800))
(id-root ?id present)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) a )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upahAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  present.clp 	present2   "  ?id "  upahAra )" crlf))
)





;Modified by Meena(26.02.10); added (viSeRya-det_viSeRaNa ?id ?id1)) and commented (id-word ?id1 expensive)
;I gave her the present I bought for her .
(defrule present3
(declare (salience 4700))
(id-root ?id present)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 expensive)
(or (viSeRya-viSeRaNa ?id ?id1)(viSeRya-det_viSeRaNa ?id ?id1))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upahAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  present.clp 	present3   "  ?id "  upahAra )" crlf))
)




;Salience reduced by Meena(30.8.10)
(defrule present4
(declare (salience 0))
;(declare (salience 4600))
(id-root ?id present)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upasWiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  present.clp 	present4   "  ?id "  upasWiwa )" crlf))
)

;"present","Adj","1.upasWiwa"
;I was not present when the telegram came.
;--"2.varwamAna"
;The present age is computer age.



;Added by Meena(30.8.10)
;Many sentences are required , in the present context , to test the rule for debugging . 
(defrule present05
(declare (salience 4500))
(id-root ?id present)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 ?)
(or(samAsa ?id1 ?id)(viSeRya-viSeRaNa ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varwamAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  present.clp   present05   "  ?id "  varwamAna )" crlf))
)




;
(defrule present5
(declare (salience 0))
;(declare (salience 4500))
(id-root ?id present)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varwamAnakAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  present.clp 	present5   "  ?id "  varwamAnakAla )" crlf))
)

;"present","N","1.varwamAnakAla"
;The present society is a sophisticated society.
;--"2.upahAra"
;This book was a present from my elder brother.
;
(defrule present6
(declare (salience 4400))
(id-root ?id present)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  present.clp 	present6   "  ?id "  xe )" crlf))
)

;"present","V","1.xe{upahAra}"
;--"2.xenA{upahAra}"
;My father presented me a bycycle on my birthday.
;--"3.xiKAnA"
;Present the entry-pass to go into the auditorium.
;--"4.praswuwa_karanA"
;The present cinema culture presents the abnormal development in the children.
;
;LEVEL 
;
;
;"present"
;
;
;nIce xiye gae vAkyoM meM "present" Sabxa kA alaga sanxarBoM meM alaga arWa
;ho rahA hEM jEse :
;
;Examples :
;
;1.He presented her a gold watch.
;1.usane use sone kI GadZI xI{upahAra}     --- xenA
;2.We have to present our passport at the border.
;3.Army life presents many difficulties.
;3.sEnika jIvana aneka kaTinAIyAz upasWiwa karawA hE  --- upasWiwa_karanA
;4.The present situation in the city is bad.
;4.Sahara ke (mOjUxA) hAlAwa KarAba hEM                   --- Ajakala_ke
;5.She is preparing for the exams at present.
;5.vaha (varwamAnakAla) meM parIkRA kI wEyArI kara rahI hE         --- Ajakala
;
;agara hama "present" kA arWa "peSa_karanA" le, wo vaha (1-3) vAkyoM ke sanxarBoM
;meM uciwa ho sakawA hE. jEse :
;
;1.He presented her a gold watch.
;1.usane use sone kI GadZI peSa_kI
;2.We have to present our passport at the border.
;2.hameM sImA para apanA pAsaporta{pArapawra} peSa karanA hogA
;3.Army life presents many difficulties.
;3.sEnika jIvana aneka kaTinAIyAz peSa karawA hE
;
;lekina (4-5) vAkyoM ke sanxarBa meM "peSa_karanA" anuciwa howA hE. jEse :
;
;4.The present situation in the city is bad.
;4. * Sahara ke peSa_kie hAlAwa KarAba hEM
;5.She is preparing for the exams at present.
;5. * vaha peSakAla meM parIkRA kI wEyArI kara rahI hE
; 
;agara "present" kA arWa "praswuwa" xiyA jAe wo vaha saBI sanxarBoM meM uciwa
;howA hE.  jEse :
;
;1.He presented her a gold watch.
;1.usane use sone kI GadZI praswuwa kI
;2.We have to present our passport at the border.
;2.hameM sImA para apanA pAsaporta{pArapawra} praswuwa karanA hogA
;3.Army life presents many difficulties.
;
;3.sEnika jIvana aneka kaTinAIyAz praswuwa karawA hE
;4.She is preparing for the exams at present.
;4.vaha praswuwakAla meM parIkRA kI wEyArI kara rahI hE
;5.The present situation in the city is bad.
;5.Sahara ke praswuwa hAlAwa KarAba hEM
;
;
;aba hama "present" kA arWa `praswuwa' Ese aBivyakwa kara sakawe hEM :
;
;"present","V","1.praswuwa_kara"
;He presented her a gold watch.
;usane use sone kI GadZI praswuwa kI
;
;
;"present","N","1.praswuwa[kAla]"
;She is preparing for the exams at present.
;vaha praswuwakAla meM parIkRA kI wEyArI kara rahI hE
;
;"present","Adj","1.praswuwa"
;The present situation in the city is bad.
;Sahara ke praswuwa hAlAwa KarAba hEM
;
;sUwra : praswuwa`
;
;
;
